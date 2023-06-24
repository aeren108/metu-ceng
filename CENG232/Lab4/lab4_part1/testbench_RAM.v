`timescale 1ns / 1ps
module testbench_RAM(
    );

	reg ramMode; //0:read, 1:write
	reg [3:0] ramAddr; 
	reg [4:0] ramInput;
	reg ramOp; //0:polynomial, 1:derivative
	reg [1:0] ramArg; //00:+1, 01:+2, 10:-1, 11:-2
	reg CLK;
	wire [8:0] ramOutput;
	 
	//instance
	lab4RAM RAM(ramMode, ramAddr, ramInput, ramOp, ramArg, CLK, ramOutput);
	//Set initial values
	initial CLK = 0;	
	always #5 CLK = ~CLK;	 

	initial begin
	
		$display("Starting Testbench");
		ramMode=1'b1;//write
		ramAddr=4'b0100;
		ramInput=5'b01011;
		ramOp=1'b1; //derivative
		ramArg=2'b10; //-1
		#10;
		
		ramMode=1'b0;//read
		#1;
		if (ramOutput==9'b100001010) $display("CASE 1 passed..");	
			else $display("CASE 1: time:",$time,":For ramAddr:%b Error in ramOutput:%b",ramAddr,ramOutput);

		//You are free to add new cases...
		ramMode=1'b1;//write
		ramAddr=4'b0100;
		ramInput=5'b00001;
		ramOp=1'b0; //derivative
		ramArg=2'b00; //-1
		#10;
		
		ramMode=1'b0;//read
		#1;
		if (ramOutput==9'b000000011) $display("CASE 2 passed..");	
			else $display("CASE 2: time:",$time,":For ramAddr:%b Error in ramOutput:%b",ramAddr,ramOutput);

		
		ramMode=1'b1;//write
		ramAddr=4'b0100;
		ramInput=5'b11111;
		ramOp=1'b1; //derivative
		ramArg=2'b01; //-1
		#10;
		
		ramMode=1'b0;//read
		#1;
		if (ramOutput==9'b100110001) $display("CASE 3 passed..");	
			else $display("CASE 3: time:",$time,":For ramAddr:%b Error in ramOutput:%b",ramAddr,ramOutput);
		
		ramMode=1'b1;//write
		ramAddr=4'b0100;
		ramInput=5'b00001;
		ramOp=1'b0; //derivative
		ramArg=2'b00; //-1
		#10;
		
		ramMode=1'b0;//read
		#1;
		if (ramOutput==9'b000000011) $display("CASE 4 passed..");	
			else $display("CASE 4: time:",$time,":For ramAddr:%b Error in ramOutput:%b",ramAddr,ramOutput);
		$display("Testbench was finished");	
		$finish;
	end

endmodule