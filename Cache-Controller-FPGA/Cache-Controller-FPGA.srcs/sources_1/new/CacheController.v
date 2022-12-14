`timescale 1ns / 1ps

module CacheController #(parameter n_pa_bits = 32)(
    input clk, reset, halt,
    input [n_pa_bits:0] instruction,
    output reg fetch,
    output reg [12:0] hit_count,
    output reg [12:0] miss_count
);

    parameter n_blk_bits = 4;
    parameter n_set_bits = 6;
    parameter n_tag_bits = (n_pa_bits - n_set_bits - n_blk_bits);
    parameter n_lines = 2 ** (n_set_bits + 2); // 4 wsa hence added 2

    // Current instruction address properties
    // [Tag (n_tag_bits), Set (n_set_bits), Blk offset (n_blk_bits)]
    reg [n_pa_bits:0] current_instr;
    reg rw_req;
    reg [n_tag_bits-1:0] tag_bits;
    reg [n_set_bits-1:0] set_bits;
    reg [n_blk_bits-1:0] blk_offset;

    reg [1:0] set_offset; // 4 way set-associative
    reg [1:0] hit_line_age;

    reg [2:0] state;

    // Initialising tag directory
    // Bits splitting [Valid (1), Dirty (1), Age (2), Tag (n_tag_bits)]
    parameter n_valid_index = n_tag_bits + 3;
    parameter n_dirty_index = n_tag_bits + 2;
    parameter n_age_index = n_tag_bits; // lsb index of age bits  
    reg [n_valid_index:0] tag_dir [0:n_lines-1];

    integer i;

    always @(posedge clk) begin
        if (!reset) begin
            // Reset
            state <= 6;
            hit_count <= 0;
            miss_count <= 0;
            fetch <= 0;

            // instantiate tag_dir age in the order 3, 2, 1, 0 for each set 
            // instantiate tag_dir valid & dirty bit = 0 for all lines
            for (i = 0; i < n_lines; i = i + 1) begin
                tag_dir[i][n_age_index+1:n_age_index] <= 3 - (i % 4);
                tag_dir[i][n_valid_index:n_dirty_index] <= 2'b00;
            end
        end
        else begin
            
            if (!halt) begin
                case(state)
                    0: begin
                        // Read instruction and proceed to next state
                        // Instatiating various bits
                        rw_req = instruction[n_pa_bits];
                        tag_bits = instruction[n_pa_bits-1:n_set_bits+n_blk_bits];
                        set_bits = instruction[n_set_bits+n_blk_bits-1:n_blk_bits];
                        blk_offset = instruction[n_blk_bits-1:0];

                        $display("current_instr = %b", instruction);

                        state <= 1;

                        // Instructing prog_count to increment for fetching from next address
                        fetch = 1;
                    end

                    1: begin
                        // compare valid and tag of instruction and tag directory
                        // if hit -> go to state 2 with set offset and line
                        // else miss -> go to state 3 with set offset and line
                        state <= 3;

                        if(tag_dir[{set_bits, 2'b00}][n_valid_index] && tag_dir[{set_bits, 2'b00}][n_tag_bits-1:0] == tag_bits) begin
                            set_offset = 2'b00;
                            state <= 2;
                        end

                        if (tag_dir[{set_bits, 2'b01}][n_valid_index] && tag_dir[{set_bits, 2'b01}][n_tag_bits-1:0] == tag_bits) begin
                            set_offset = 2'b01;
                            state <= 2;
                        end

                        if (tag_dir[{set_bits, 2'b10}][n_valid_index] && tag_dir[{set_bits, 2'b10}][n_tag_bits-1:0] == tag_bits) begin
                            set_offset = 2'b10;
                            state <= 2;
                        end

                        if (tag_dir[{set_bits, 2'b11}][n_valid_index] && tag_dir[{set_bits, 2'b11}][n_tag_bits-1:0] == tag_bits) begin
                            set_offset = 2'b11;
                            state <= 2;
                        end

                        fetch = 0;
                    end

                    2: begin
                        // Cache Hit
                        hit_count <= hit_count + 1;
                        $display("Cache hit: hit_count = %d", hit_count);

                        // Update Age
                        hit_line_age = tag_dir[{set_bits, set_offset}][n_age_index+:2];
                        if (tag_dir[{set_bits, 2'b00}][n_age_index+:2] < hit_line_age) begin
                            tag_dir[{set_bits, 2'b00}][n_age_index+:2] = tag_dir[{set_bits, 2'b00}][n_age_index+:2] + 1;
                        end

                        if (tag_dir[{set_bits, 2'b01}][n_age_index+:2] < hit_line_age) begin
                            tag_dir[{set_bits, 2'b01}][n_age_index+:2] = tag_dir[{set_bits, 2'b01}][n_age_index+:2] + 1;
                        end

                        if (tag_dir[{set_bits, 2'b10}][n_age_index+:2] < hit_line_age) begin
                            tag_dir[{set_bits, 2'b10}][n_age_index+:2] = tag_dir[{set_bits, 2'b10}][n_age_index+:2] + 1;
                        end

                        if (tag_dir[{set_bits, 2'b11}][n_age_index+:2] < hit_line_age) begin
                            tag_dir[{set_bits, 2'b11}][n_age_index+:2] = tag_dir[{set_bits, 2'b11}][n_age_index+:2] + 1;
                        end
                        tag_dir[{set_bits, set_offset}][n_age_index+:2] = 0;

                        // Instruction MSB -> 1 (Write) & 0 -> (Read)
                        if (rw_req) begin
                            // Write
                            state <= 5;
                        end
                        else begin
                            // Read
                            state <= 4;
                        end
                    end

                    3: begin
                        // Cache Miss
                        miss_count <= miss_count + 1;
                        $display("Cache miss: miss_count = %d", miss_count);

                        // Implementing LRU
                        casex({tag_dir[{set_bits, 2'b00}][n_valid_index],
                        tag_dir[{set_bits, 2'b01}][n_valid_index],
                        tag_dir[{set_bits, 2'b10}][n_valid_index],
                        tag_dir[{set_bits, 2'b11}][n_valid_index]})
                            4'b0xxx: set_offset = 2'b00;
                            4'b10xx: set_offset = 2'b01;
                            4'b110x: set_offset = 2'b10;
                            4'b1110: set_offset = 2'b11;
                            default: case (3) //selecting line with age 3, Capacity Miss
                                tag_dir[{set_bits, 2'b00}][n_age_index+:2]: set_offset = 2'b00;
                                tag_dir[{set_bits, 2'b01}][n_age_index+:2]: set_offset = 2'b01;
                                tag_dir[{set_bits, 2'b10}][n_age_index+:2]: set_offset = 2'b10;
                                tag_dir[{set_bits, 2'b11}][n_age_index+:2]: set_offset = 2'b11;
                            endcase
                        endcase
                        // Fetch data from Main Memory and store on cache line ({set_bits, set_offset})
                        // $display("Fetch data from MM");

                        // Update valid bit
                        tag_dir[{set_bits, set_offset}][n_valid_index] = 1;

                        // Update dirty bit
                        tag_dir[{set_bits, set_offset}][n_dirty_index] = 0;

                        // Update age bits - add 1 to all
                        tag_dir[{set_bits, 2'b00}][n_age_index+:2] = tag_dir[{set_bits, 2'b00}][n_age_index+:2] + 1;
                        tag_dir[{set_bits, 2'b01}][n_age_index+:2] = tag_dir[{set_bits, 2'b01}][n_age_index+:2] + 1;
                        tag_dir[{set_bits, 2'b10}][n_age_index+:2] = tag_dir[{set_bits, 2'b10}][n_age_index+:2] + 1;
                        tag_dir[{set_bits, 2'b11}][n_age_index+:2] = tag_dir[{set_bits, 2'b11}][n_age_index+:2] + 1;

                        // Update the tag bits
                        tag_dir[{set_bits, set_offset}][n_tag_bits-1:0] = tag_bits;

                        if (rw_req)
                            state <= 5;
                        else
                            state <= 4;
                    end

                    4: begin
                        // $display("Read from cache");

                        // // data_out = cache[{set_bits, set_offset}][blk_offset];

                        state <= 0;
                    end

                    5: begin
                        // Write in cache
                        // $display("Written in cache");

                        // Update Dirty bit
                        tag_dir[{set_bits, set_offset}][n_dirty_index] = 1;

                        state <= 0;
                    end
                    6: begin
                        state <= 4;
                    end
                endcase
                
            end
        end
    end

endmodule