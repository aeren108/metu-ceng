`timescale 1ns / 1ps 
module lab3_2(
			input[4:0] smartCode,
			input CLK, 
			input lab, //0:Digital, 1:Mera
			input [1:0] mode, //00:exit, 01:enter, 1x: idle 
			output reg [5:0] numOfStuInMera,
			output reg [5:0] numOfStuInDigital,
			output reg restrictionWarnMera,//1:show warning, 0:do not show warning
			output reg isFullMera, //1:full, 0:not full
			output reg isEmptyMera, //1: empty, 0:not empty
			output reg unlockMera,	//1:door is open, 0:closed
			output reg restrictionWarnDigital,//1:show warning, 0:do not show warning
			output reg isFullDigital, //1:full, 0:not full
			output reg isEmptyDigital, //1: empty, 0:not empty
			output reg unlockDigital //1:door is open, 0:closed
	);
	 
	// You may declare your variables below	
	reg isEven = 1;
	reg isOdd = 1;
	
	initial begin
			numOfStuInMera=0;
			numOfStuInDigital=0;
			restrictionWarnMera=0;
			isFullMera=0;
			isEmptyMera=1'b1;
			unlockMera=0;		
			restrictionWarnDigital=0;
			isFullDigital=0;
			isEmptyDigital=1'b1;
			unlockDigital=0;
	end
	//Modify the lines below to implement your design
	//always @(posedge CLK) 
	//...
	
	always@(posedge CLK)
	begin
		if (mode == 2'b01) begin //Entry mode
			if (lab == 1'b1) begin //Mera
				restrictionWarnDigital = 0;
				if (isFullMera) begin
					unlockMera = 0;
					restrictionWarnMera = 0;
				end
				else if (numOfStuInMera < 15) begin
					unlockMera = 1;
					numOfStuInMera = numOfStuInMera + 1;
					restrictionWarnMera = 0;
				end
				else begin
					isEven = 1;
					if (smartCode[0] == 1) isEven = ~isEven;
					if (smartCode[1] == 1) isEven = ~isEven;
					if (smartCode[2] == 1) isEven = ~isEven;
					if (smartCode[3] == 1) isEven = ~isEven;
					if (smartCode[4] == 1) isEven = ~isEven;
					
					if (isEven == 1) begin
						unlockMera = 1;
						numOfStuInMera = numOfStuInMera + 1;
					end
					else begin
						unlockMera = 0;
						restrictionWarnMera = 1;
					end
					//Compute if smartcode has even number of 1s
					//Handle restrictionWarn
				end
				unlockDigital = 0;
				if (numOfStuInMera == 5'b11110) isFullMera = 1;
				if (numOfStuInMera != 5'b11110) isEmptyMera = 0;
			end			
			else begin //Digital
				restrictionWarnMera = 0;
				if (isFullDigital) begin
					unlockDigital = 0;
					restrictionWarnDigital = 0;
				end
				else if (numOfStuInDigital < 15) begin
					unlockDigital = 1;
					numOfStuInDigital = numOfStuInDigital + 1;
					restrictionWarnDigital = 0;
				end
				else begin
					isOdd = 0;
					if (smartCode[0] == 1) isOdd = ~isOdd;
					if (smartCode[1] == 1) isOdd = ~isOdd;
					if (smartCode[2] == 1) isOdd = ~isOdd;
					if (smartCode[3] == 1) isOdd = ~isOdd;
					if (smartCode[4] == 1) isOdd = ~isOdd;
					
					if (isOdd == 1) begin
						unlockDigital = 1;
						numOfStuInDigital = numOfStuInDigital + 1;
						restrictionWarnDigital = 0;
					end
					else begin
						unlockDigital = 0;
						restrictionWarnDigital = 1;
					end
				end
				unlockMera = 0;
				if (numOfStuInDigital == 5'b11110) isFullDigital = 1;
				if (numOfStuInDigital != 5'b11110) isEmptyDigital = 0;
			end
		end
		else if (mode == 2'b00) begin //Exit mode
			restrictionWarnDigital = 0;
			restrictionWarnMera = 0;
			if (lab == 1'b1) begin //Mera
				unlockMera = 1;
				unlockDigital = 0;
				numOfStuInMera = numOfStuInMera - 1;
				if (numOfStuInMera != 5'b11110) isFullMera = 0;
				if (numOfStuInMera == 0) isEmptyMera = 1;
			end				
			else begin //Digital
				unlockDigital = 1;
				unlockMera = 0;
				numOfStuInDigital = numOfStuInDigital - 1;
				if (numOfStuInDigital != 5'b11110) isFullDigital = 0;
				if (numOfStuInDigital == 0) isEmptyDigital = 1;
			end
		end
		else begin //Idle mode
			unlockMera = 0;
			unlockDigital = 0;
			restrictionWarnDigital = 0;
			restrictionWarnMera = 0;
		end
	end
	
endmodule

