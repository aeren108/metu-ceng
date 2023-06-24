`timescale 1ns / 1ps
`define print $display("Time=%.2d | mode = %b opCode = %b value = %b reset = %b | result = %d cacheFull = %b invalidOp = %b overflow = %b",$time, mode, opCode, value, reset, result, cacheFull, invalidOp, overflow);
module testbench(
	);
	//INPUTS
	reg mode;
   reg[2:0] opCode;
   reg[3:0] value;
	reg clk;
	reg reset;
	//OUTPUTS
	wire[9:0] result;
	wire cacheFull;
	wire invalidOp;
   wire overflow;
	
	lab4_2 uut(
		.mode (mode),
		.opCode (opCode),
		.value (value),
		.clk (clk),
		.reset (reset),
		
		.result (result),
		.cacheFull (cacheFull),
		.invalidOp (invalidOp),
		.overflow (overflow)
	);
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial begin
		reset = 0;
		mode = 0; opCode = 3'b000; value = 4'b0001;
		#6 //t = 6
		`print
		
		#5 //t=11
		mode = 0; opCode = 3'b011; value = 4'b0001;
		#5 //t = 16
		`print
		
		#5
		mode = 0; opCode = 3'b001; value = 4'b0000;
		#5 //t = 26
		`print
		
		#5
		mode = 0; opCode = 3'b110; value = 4'b0011;
		#5 //t = 36
		`print
		
		#5
		mode = 0; opCode = 3'b001; value = 4'b0000;
		#5 //t = 46
		`print
		
		#5
		mode = 1;
		#5 //t = 56
		`print;
		
		#10
		`print
		
		#10
		`print
		
		#10
		`print
		
		#10
		`print
		#10
		`print
		#10
		`print
		#10
		`print
		#10
		`print
		#10
		`print
		#10
		`print
		#70
		`print
		
		#5
		mode = 0; opCode = 3'b100; value = 4'b0000;
		#5
		`print
		
		#5
		mode = 1;
		#5
		`print
		
		#10
		`print
		
		
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		
		#5
		mode = 1;
		#5
		`print
		
		#10
		`print
		$display("RES = %b", result);
		
		#10
		`print
		$display("RES = %b", result);
		
		
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		#5
		`print
		
		#5
		mode = 0; opCode = 3'b101; value = 4'b0000;
		reset =  1;
		#5
		`print
		
		#5
		mode = 1; opCode = 3'b101; value = 4'b0000; reset = 0;
		#5
		`print
		
		#10
		`print
		#10
		`print
		#10
		`print
		
		$display("End of Sim!");
		$finish;

	end

endmodule
