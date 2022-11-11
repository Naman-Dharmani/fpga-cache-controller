module cache_controller(
		input clk, reset,
		output reg [4:0] hit_count,
		output reg [4:0] miss_count
	);

	reg [4:0] prog_count = 0;
	reg [16:0] instructions [0:31]; // 1 write/read_bar bit and 16 addresss bits

	// Current instruction address properties
	reg [16:0] current_instr;
	reg rw_req;
	reg [9:0] tag_bits;
	reg [3:0] set_bits;
	reg [1:0] blk_offset;
	reg [1:0] set_offset;

	reg [1:0] hit_line_age;

	reg [2:0] state, next_state;

	// Initialising tag directory
	// Bits splitting [Valid (1), Dirty (1), Age (2), Tag (10)]
	reg [13:0] tag_dir [0:63];

	integer i;
	initial begin
		// Reading memory instructions from trace file
		$readmemb("./instructions.trace", instructions);

		// instantiate tag_dir age in the order 3, 2, 1, 0 for each set 
		// instantiate tag_dir valid & dirty bit = 0 for all lines
		for (i = 0; i < 64; i = i + 1) begin
			tag_dir[i][11:10] = 3 - (i % 4);
			tag_dir[i][13:12] = 2'b00;
		end

		hit_count = 0;
		hit_count = 1;
	end

	always @(state) begin
		case(state)
			0: begin
				// Read instruction and proceed to next state
				current_instr = instructions[prog_count];

				// Instatiating various bits
				rw_req = current_instr[16];
				tag_bits = current_instr[15:6];
				set_bits = current_instr[5:2];
				blk_offset = current_instr[1:0];
				
				prog_count += 1;
				next_state = 1;
			end

			1: begin
				// compare valid and tag of instruction and tag directory
				// if hit -> go to state 2 with set offset and line
				// else miss -> go to state 3 with set offset and line
				
				if(tag_dir[{set_bits, 2'b00}][13] && tag_dir[{set_bits, 2'b00}][9:0] == tag_bits) begin
					set_offset = 2'b00;
					next_state = 2;
				end
				
				else if (tag_dir[{set_bits, 2'b01}][13] && tag_dir[{set_bits, 2'b01}][9:0] == tag_bits) begin
					set_offset = 2'b01;
					next_state = 2;
				end

				else if (tag_dir[{set_bits, 2'b10}][13] && tag_dir[{set_bits, 2'b10}][9:0] == tag_bits) begin
					set_offset = 2'b10;
					next_state = 2;
				end

				else if (tag_dir[{set_bits, 2'b11}][13] && tag_dir[{set_bits, 2'b11}][9:0] == tag_bits) begin
					set_offset = 2'b11;
					next_state = 2;
				end

				else begin
					next_state = 3;
				end
			end

			2: begin
				// Cache Hit
				hit_count += 1;

				// Update Age
				hit_line_age = tag_dir[{set_bits, set_offset}][11:10];
				if (hit_line_age < tag_dir[{set_bits, 2'b00}][11:10]) tag_dir[{set_bits, 2'b00}][11:10] += 1;
				if (hit_line_age < tag_dir[{set_bits, 2'b01}][11:10]) tag_dir[{set_bits, 2'b01}][11:10] += 1;
				if (hit_line_age < tag_dir[{set_bits, 2'b10}][11:10]) tag_dir[{set_bits, 2'b10}][11:10] += 1;
				if (hit_line_age < tag_dir[{set_bits, 2'b11}][11:10]) tag_dir[{set_bits, 2'b11}][11:10] += 1;
				tag_dir[{set_bits, set_offset}][11:10] = 0;

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
				miss_count += 1;
				
				// Implementing LRU
				// Compulsory Miss
				if (!tag_dir[{set_bits, 2'b00}][13])
					set_offset = 2'b00;
				else if (!tag_dir[{set_bits, 2'b01}][13]) 
					set_offset = 2'b01;
				else if (!tag_dir[{set_bits, 2'b10}][13]) 
					set_offset = 2'b10;
				else if (!tag_dir[{set_bits, 2'b11}][13]) 
					set_offset = 2'b11;
				else begin
					// Capacity Miss
					case (3)
						tag_dir[{set_bits, 2'b00}][11:10]: set_offset = 2'b00;
						tag_dir[{set_bits, 2'b01}][11:10]: set_offset = 2'b01;
						tag_dir[{set_bits, 2'b10}][11:10]: set_offset = 2'b10;
						tag_dir[{set_bits, 2'b11}][11:10]: set_offset = 2'b11;
					endcase
				end
				
				// Fetch data from Main Memory and store on cache line ({set_bits, set_offset})
				$display("Fetch data from MM");

				// Update valid bit
				tag_dir[{set_bits, set_offset}][13] = 1;

				// Update dirty bit
				tag_dir[{set_bits, set_offset}][12] = 0;

				// Update age bits - add 1 to all
				tag_dir[{set_bits, 2'b00}][11:10] += 1;
				tag_dir[{set_bits, 2'b01}][11:10] += 1;
				tag_dir[{set_bits, 2'b10}][11:10] += 1;
				tag_dir[{set_bits, 2'b11}][11:10] += 1;

				// Update the tag bits
				tag_dir[{set_bits, set_offset}][9:0] = tag_bits;

				if (rw_req)
					next_state = 5;
				else
					next_state = 4;
			end

			4: begin
				$display("Read from cache");

				// // data_out = cache[{set_bits, set_offset}][blk_offset];

				next_state = 0;
			end

			5: begin
				// Write in cache
				$display("Written in cache");

				// Update Dirty bit
				tag_dir[{set_bits, set_offset}][12] = 1;

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