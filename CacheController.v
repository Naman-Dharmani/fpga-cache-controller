module CacheController(
		input clk, reset,
		output reg [13:0] hit_count,
		output reg [13:0] miss_count
	);
	
	
	parameter n_pa_bits = 32;
	parameter n_blk_bits = 4;
	parameter n_set_bits = 12;
	parameter n_tag_bits = (n_pa_bits - n_set_bits - n_blk_bits);
	parameter n_lines = 2 ** (n_set_bits + 2);	// 4 wsa hence added 2

	reg [13:0] prog_count = 0;	// 14 for 9999 instructions
	reg [n_pa_bits:0] instructions [0:99]; // 1 write/read_bar bit and 16 addresss bits

	// Current instruction address properties
	// [Tag (n_tag_bits), Set (n_set_bits), Blk offset (n_blk_bits)]
	reg [n_pa_bits:0] current_instr;
	reg rw_req;
	reg [n_tag_bits-1:0] tag_bits;
	reg [n_set_bits-1:0] set_bits;
	reg [n_blk_bits-1:0] blk_offset;

	reg [1:0] set_offset;	// 4 way set-associative
	reg [1:0] hit_line_age;

	reg [2:0] state, next_state;

	// Initialising tag directory
	// Bits splitting [Valid (1), Dirty (1), Age (2), Tag (n_tag_bits)]
	parameter n_valid_index = n_tag_bits + 3;
	parameter n_dirty_index = n_tag_bits + 2;
	parameter n_age_index = n_tag_bits; // lsb index of age bits  
	reg [n_valid_index:0] tag_dir [0:n_lines-1];

	integer i;
	initial begin
		// Reading memory instructions from trace file
		$readmemb("/home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-GroupID-8/Cache-Controller-GroupID-8.srcs/sources_1/imports/Cache-Controller-GroupID-8/instructions.mem", instructions);

		// instantiate tag_dir age in the order 3, 2, 1, 0 for each set 
		// instantiate tag_dir valid & dirty bit = 0 for all lines
		for (i = 0; i < n_lines; i = i + 1) begin
			tag_dir[i][n_age_index+1:n_age_index] = 3 - (i % 4);
			tag_dir[i][n_valid_index:n_dirty_index] = 2'b00;
		end

		hit_count = 0;
		miss_count = 0;
	end

	always @(state) begin
		case(state)
			0: begin
				// Read instruction and proceed to next state
				current_instr = instructions[prog_count];
				$display("current_instr = %b", current_instr);

				// Instatiating various bits
				rw_req = current_instr[n_pa_bits];
				tag_bits = current_instr[n_pa_bits-1:n_set_bits+n_blk_bits];
				set_bits = current_instr[n_set_bits+n_blk_bits-1:n_blk_bits];
				blk_offset = current_instr[n_blk_bits-1:0];
				
				prog_count = prog_count + 1;
				next_state = 1;
			end

			1: begin
				// compare valid and tag of instruction and tag directory
				// if hit -> go to state 2 with set offset and line
				// else miss -> go to state 3 with set offset and line
				
				if(tag_dir[{set_bits, 2'b00}][n_valid_index] && tag_dir[{set_bits, 2'b00}][n_tag_bits-1:0] == tag_bits) begin
					set_offset = 2'b00;
					next_state = 2;
				end
				
				else if (tag_dir[{set_bits, 2'b01}][n_valid_index] && tag_dir[{set_bits, 2'b01}][n_tag_bits-1:0] == tag_bits) begin
					set_offset = 2'b01;
					next_state = 2;
				end

				else if (tag_dir[{set_bits, 2'b10}][n_valid_index] && tag_dir[{set_bits, 2'b10}][n_tag_bits-1:0] == tag_bits) begin
					set_offset = 2'b10;
					next_state = 2;
				end

				else if (tag_dir[{set_bits, 2'b11}][n_valid_index] && tag_dir[{set_bits, 2'b11}][n_tag_bits-1:0] == tag_bits) begin
					set_offset = 2'b11;
					next_state = 2;
				end

				else begin
					next_state = 3;
				end
			end

			2: begin
				// Cache Hit
				hit_count = hit_count + 1;
				$display("Cache hit: hit_count = %d", hit_count);

				// Update Age
				hit_line_age = tag_dir[{set_bits, set_offset}][n_age_index+1:n_age_index];
				if (hit_line_age < tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index]) begin
					tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index] + 1;
				end
				
				if (hit_line_age < tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index]) begin
					tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index] + 1;
				end
				
				if (hit_line_age < tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index]) begin
					tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index] + 1;
				end

				if (hit_line_age < tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index]) begin
					tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index] + 1;
				end
				tag_dir[{set_bits, set_offset}][n_age_index+1:n_age_index] = 0;

				// Instruction MSB -> 1 (Write) & 0 -> (Read)
				if (rw_req)
					// Write
					next_state = 5;
				else
					// Read
					next_state = 4;
			end

			3: begin
				// Cache Miss
				miss_count = miss_count + 1;
				$display("Cache miss: miss_count = %d", miss_count);
				
				// Implementing LRU
				// Compulsory Miss
				if (!tag_dir[{set_bits, 2'b00}][n_valid_index])
					set_offset = 2'b00;
				else if (!tag_dir[{set_bits, 2'b01}][n_valid_index]) 
					set_offset = 2'b01;
				else if (!tag_dir[{set_bits, 2'b10}][n_valid_index]) 
					set_offset = 2'b10;
				else if (!tag_dir[{set_bits, 2'b11}][n_valid_index]) 
					set_offset = 2'b11;
				else begin
					// Capacity Miss
					case (3)
						tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index]: set_offset = 2'b00;
						tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index]: set_offset = 2'b01;
						tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index]: set_offset = 2'b10;
						tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index]: set_offset = 2'b11;
					endcase
				end
				
				// Fetch data from Main Memory and store on cache line ({set_bits, set_offset})
				// $display("Fetch data from MM");

				// Update valid bit
				tag_dir[{set_bits, set_offset}][n_valid_index] = 1;

				// Update dirty bit
				tag_dir[{set_bits, set_offset}][n_dirty_index] = 0;

				// Update age bits - add 1 to all
				tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b00}][n_age_index+1:n_age_index] + 1;
				tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b01}][n_age_index+1:n_age_index] + 1;
				tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b10}][n_age_index+1:n_age_index] + 1;
				tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index] = tag_dir[{set_bits, 2'b11}][n_age_index+1:n_age_index] + 1;

				// Update the tag bits
				tag_dir[{set_bits, set_offset}][n_tag_bits-1:0] = tag_bits;

				if (rw_req)
					next_state = 5;
				else
					next_state = 4;
			end

			4: begin
				// $display("Read from cache");

				// // data_out = cache[{set_bits, set_offset}][blk_offset];

				next_state = 0;
			end

			5: begin
				// Write in cache
				// $display("Written in cache");

				// Update Dirty bit
				tag_dir[{set_bits, set_offset}][n_dirty_index] = 1;

				next_state = 0;
			end
		endcase
	end


	always @(posedge clk or negedge reset) begin
		if (!reset)
			// Reset
			state = 0;
		else
			state = next_state;
	end

endmodule