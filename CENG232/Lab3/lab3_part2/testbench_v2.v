`timescale 1ns / 1ps
`define print $display("Time=%.2d | smartCode=%b lab=%b mode=%b| stuInMera=%d stuInDigi=%d warnMera=%b fullMera=%b emptyMera=%b unlockMera=%b warnDigi=%b fullDigi = %b emptyDigi=%b unlockDigi=%b", $time, smartCode, lab, mode, numOfStuInMera, numOfStuInDigital, restrictionWarnMera, isFullMera, isEmptyMera, unlockMera, restrictionWarnDigital, isFullDigital, isEmptyDigital, unlockDigital)
module testbench_v2;
	//inputs
	reg [4:0] smartCode;
	reg CLK;
	reg lab;
	reg [1:0] mode;
	//outputs
	wire [5:0] numOfStuInMera;
	wire [5:0] numOfStuInDigital;
	wire restrictionWarnMera;//1:show warning, 0:do not show warning
	wire isFullMera; //1:full, 0:not full
	wire isEmptyMera; //1: empty, 0:not empty
	wire unlockMera;//1:door is open, 0:closed
	wire restrictionWarnDigital;//1:show warning, 0:do not show warning
	wire isFullDigital; //1:full, 0:not full
	wire isEmptyDigital; //1: empty, 0:not empty
	wire unlockDigital; //1:door is open, 0:closed

	lab3_2 uut (
		.smartCode (smartCode),
		.CLK (CLK),
		.lab (lab),
		.mode (mode),
		.numOfStuInMera (numOfStuInMera),
		.numOfStuInDigital (numOfStuInDigital),
		.restrictionWarnMera (restrictionWarnMera),
		.isFullMera (isFullMera),
		.isEmptyMera (isEmptyMera),
		.unlockMera (unlockMera),
		.restrictionWarnDigital (restrictionWarnDigital),
		.isFullDigital (isFullDigital),
		.isEmptyDigital (isEmptyDigital),
		.unlockDigital (unlockDigital)
	);
	
	// Clock Related
   // At 5, 15, 25, .. clk will change 0->1
	// At 10, 20, 30, .. clk will change 1->0
	initial CLK = 0;
	always #5 CLK = ~CLK;
	
	initial begin
		//$monitor("Time=%.2d | smartCode=%b lab=%b mode=%b| stuInMera=%d stuInDigi=%d warnMera=%b fullMera=%b emptyMera=%b unlockMera=%b warnDigi=%b fullDigi = %b emptyDigi=%b unlockDigi=%b", $time, 
		//smartCode, lab, mode, numOfStuInMera, numOfStuInDigital, restrictionWarnMera, isFullMera, isEmptyMera, unlockMera, restrictionWarnDigital, isFullDigital, isEmptyDigital, unlockDigital);
		
		smartCode = 5'b11001; lab = 0; mode = 2'b01;
		#6
		`print;
		mode = 2'b00;
		#10
		`print;
		
		$display("End of Sim!");
		$finish;
	end

endmodule
