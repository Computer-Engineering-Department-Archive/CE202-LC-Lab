/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 32 Bit Adder/Subtractor
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module AdderSubtractor32x32 (
	input  [31:0] A    , // input  [2's complement 32 bits]
	input  [31:0] B    , // input  [2's complement 32 bits]
	input         sel  , // input  [add:sel=0 || sub:sel=1] 
	output [31:0] S      // output [2's complement 32 bits]
);

		reg [31:0] s2;
		always @(sel or A or B)
		if(sel)
			begin
				s2=A-B;
			end
		else
			begin
				s2=A+B;
			end
		assign S=s2;
endmodule
