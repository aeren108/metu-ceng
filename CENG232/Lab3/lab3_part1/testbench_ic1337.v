`timescale 1ns / 1ps

module testbench_ic1337;
	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg clk;
	// Outputs
	wire Q0;
	wire Q1;
	wire Z;

    // You can add additional declarations here
    // ...

	// Instantiate the Unit Under Test (UUT)
	ic1337 uut (.I0(I0),
                .I1(I1),
                .I2(I2),
                .clk(clk),
                .Q0(Q0),
                .Q1(Q1),
                .Z(Z));

    // Clock Related
    // At 5, 15, 25, .. clk will change 0->1
	// At 10, 20, 30, .. clk will change 1->0
    initial clk = 0;
    always #5 clk = ~clk;

	initial begin
        // You can write your testbench here
        // ...
        // ...
		  
		$monitor("Time=%.2d | I0=%b I1=%b I2=%b| Q0=%b Q1=%b Z=%b", $time, I0, I1, I2, Q0, Q1, Z);
		
		I0 = 0;I1 = 0;I2 = 0;
		#6 //t=6ns
		if (Q0 == 0 && Q1 == 1 && Z == 1) $display("True");
		else $display("False");

		#4 //t=10ns
		I0 = 1;I1 = 0;I2 = 0;
		if (Q0 == 0 && Q1 == 1 && Z == 1) $display("True");
		else $display("False");
		#6 //t=16ns
		if (Q0 == 0 && Q1 == 0 && Z == 0) $display("True");
		else $display("False");
		
		I0 = 0;I1 = 1;I2 = 0;
		#10 //t=26ns
		if (Q0 == 0 && Q1 == 0 && Z == 0) $display("True");
		else $display("False");
		$finish;
	end

endmodule

