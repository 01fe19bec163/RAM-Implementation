`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:10 03/14/2022
// Design Name:   ram_3
// Module Name:   D:/verilog/RAM/ram_3_test.v
// Project Name:  RAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_3_test;

	// Inputs
	reg [7:0] data_in;
	reg [9:0] addr;
	reg wr;
	reg cs;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	ram_3 uut (
		.data_out(data_out), 
		.data_in(data_in), 
		.addr(addr), 
		.wr(wr), 
		.cs(cs)
	);

	
	integer k;
	initial begin
	for(k=0;k<=200;k=k+1)
	begin
	data_in = (k+k)%256;
	wr = 1;
	cs = 1;
	#2 addr = k;
	wr = 0;
	cs = 0;
	$display("Address : %5d, Data: %4d", addr,data_in);
	end
	end
  
endmodule

