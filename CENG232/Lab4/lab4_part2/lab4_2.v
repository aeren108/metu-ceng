`timescale 1ns / 1ps

module lab4_2(// INPUTS
              input wire      mode,
              input wire[2:0] opCode,
              input wire[3:0] value,
              input clk,
              input reset,
              // OUTPUTS
              output reg[9:0] result,
              output reg cacheFull,
              output reg invalidOp,
              output reg overflow);
		
		reg[9:0] p0;
		reg[9:0] p1;
		reg[5:0] i;
		reg[5:0] j;
		reg[5:0] size;
		reg[3:0] bits;
		reg[5:0] offset;
		reg[2:0] ops [0:31];
		reg[3:0] vals [0:31];
		
		//================//
		// INITIAL BLOCK  //
		//================//
		initial begin
			result = 0;
			p0 = 0;
			p1 = 0;
			i = 0;
			size = 0;
			offset = 0;
			cacheFull = 0;
			bits = 0;
			
			for (j = 0; j < 32; j = j + 1) begin
				ops[j] = 0; vals[j] = 0;
			end
		end

		//================//
		//      LOGIC     //
		//================//
		always @(posedge clk or posedge reset) begin
			if (reset == 1) begin
				for (j = 0; j < 32; j = j + 1) begin
					ops[j] = 0; vals[j] = 0; i=0; cacheFull = 0;
					size = 0; offset = 0; p0 = 0; p1 = 0; result = 0;
					
				end
			end else begin
				if (mode == 0) begin //Load instruction
					overflow = 0;
					if (opCode == 3'b011 || opCode == 3'b111) begin
						invalidOp = 1;
					end else begin
						invalidOp = 0;
						if (size == 32) begin
							cacheFull = 1;
						end else begin
							ops[size] = opCode;
							vals[size] = value;
							size = size + 1;
						end
					end
				end else begin //Execute instructions
					invalidOp = 0;
					if (ops[i] == 3'b000) begin //ADD p0 + v
						result = p0 + vals[i];
						if (p0 + vals[i] >= 1024) overflow = 1;
						else overflow = 0;
					end else if (ops[i] == 3'b001) begin //ADD2 p0 + p1 + v
						result = p0 + p1 + vals[i];
						if (p0 + p1 + vals[i] >= 1024) overflow = 1;
						else overflow = 0;
					end else if (ops[i] == 3'b010) begin //FMA p0 * p1 + v
						result = p0 * p1 + vals[i];
						if (p0 * p1 + vals[i] >= 1024) overflow = 1;
						else overflow = 0;
					end else if (ops[i] == 3'b100) begin //POPC
						bits = 0;
						for (j = 0; j < 10; j = j + 1) begin
							if (p0[j] == 1) bits = bits + 1;
						end
						result = bits;
						overflow = 0;
					end else if (ops[i] == 3'b101) begin //BREV
						for (j = 0; j < 10; j = j + 1) begin
							result[j] = p0[9 - j];
						end
						overflow = 0;
					end else if (ops[i] == 3'b110) begin //SETR
						offset = vals[i];
					end else begin //Not available
						
					end
					
					if (ops[i] != 3'b110) begin 
						p1 = p0;
						p0 = result;
					end
					
					i = i + 1; 
					if (i == size) i = offset;
				end
			end
		end
endmodule
