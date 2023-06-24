`timescale 1ns / 1ps
module lab4ROM (
	input [3:0] romAddr, 
	output reg[4:0] romOutput);
	
	reg[4:0] arr[0:15];
	
	initial begin
		arr[0] = 5'b00000;
		arr[1] = 5'b00001;
		arr[2] = 5'b00110;
		arr[3] = 5'b00111;
		arr[4] = 5'b01011;
		arr[5] = 5'b01100;
		arr[6] = 5'b01101;
		arr[7] = 5'b01110;
		arr[8] = 5'b11101;
		arr[9] = 5'b11110;
		arr[10] = 5'b11111;
		arr[11] = 5'b10000;
		arr[12] = 5'b10111;
		arr[13] = 5'b11000;
		arr[14] = 5'b11001;
		arr[15] = 5'b11010;
	end

	always @ (*) romOutput = arr[romAddr];
	
endmodule
																							
module lab4RAM (
	input ramMode, //0:read, 1:write
	input [3:0] ramAddr, 
	input [4:0] ramInput,
	input ramOp, //0:polynomial, 1:derivative
	input [1:0] ramArg,  //00:+1, 01:+2, 10:-1, 11:-2
	input CLK, 
	output reg [8:0] ramOutput);
	integer i;
	
	reg[8:0] arr[0:15];
	integer sum;
	integer j;
	integer val;
	integer result;
	
	initial begin
		ramOutput = 0;
		arr[0] = 0;
		arr[1] = 0;
		arr[2] = 0;
		arr[3] = 0;
		arr[4] = 0;
		arr[5] = 0;
		arr[6] = 0;
		arr[7] = 0;
		arr[8] = 0;
		arr[9] = 0;
		arr[10] = 0;
		arr[11] = 0;
		arr[12] = 0;
		arr[13] = 0;
		arr[14] = 0;
		arr[15] = 0;
	end
	
	always @ (~ramMode) begin
		ramOutput = arr[ramAddr];
	end
	
	always @ (posedge CLK) begin
		sum = 0;
		if (ramMode == 1) begin
			if (ramArg == 2'b00) val = 1;
			else if (ramArg == 2'b01) val = 2;
			else if (ramArg == 2'b10) val = -1;
			else val = -2;
			
			if (ramOp == 0) begin // polynomial
				//Iterate every input bit
				for (i = 0; i < 5; i = i + 1) begin
					result = 1;

					for (j = 0; j < i; j = j + 1) begin
						result = result * val;
					end
					
					if (ramInput[i] == 1) result = -result;
					else result = result;
					sum = sum + result;
				end
			end else begin //derivative
				//Iterate every input bit
				for (i = 0; i < 5; i = i + 1) begin
					result = 1;

					for (j = 0; j < i - 1; j = j + 1) begin
						result = result * val;
					end
					
					result = result * i;
					
					if (ramInput[i] == 1) result = -result;
					else result = result;
					
					sum = sum + result;
				end
			end
			if (sum < 0) begin
				sum = -sum;
				arr[ramAddr][7:0] = sum;
				arr[ramAddr][8] = 1;
			end else begin
				arr[ramAddr] = sum;
			end

		end
		
	end
	
/*Write your code here*/	

endmodule


module polMEM(input mode, input [3:0] memAddr, input op, input [1:0] arg, input CLK, output wire [8:0] memOutput);

	/*Don't edit this module*/
	wire [4:0]  romOutput;

	lab4ROM RO(memAddr, romOutput);
	lab4RAM RA(mode, memAddr, romOutput, op, arg, CLK, memOutput);



endmodule
