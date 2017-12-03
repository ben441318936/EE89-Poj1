// EEM16 - Logic Design
// Design Assignment #1 - Problem #1.2
// dassign1_2.v
// Verilog template

// You may define any additional modules as necessary
// Do not change the module or port names of these stubs

// Max/argmax (declarative verilog)
// IMPORTANT: Do not change module or port names
module mam (in1_value, in1_label, in2_value, in2_label, out_value, out_label);
    input   [7:0] in1_value, in2_value;
    input   [4:0] in1_label, in2_label;
    output  [7:0] out_value;
    output  [4:0] out_label;
    // your code here
  	wire select;
    assign select = in2_value >= in1_value; //1 if 2 >= 1, 0 ow
  	assign out_value = select ? in2_value : in1_value; //sets accordingly
  	assign out_label = select ? in2_label : in1_label; //sets accordingly
    // do not use any delays!
endmodule

// Maximum index (structural verilog)
// IMPORTANT: Do not change module or port names
module maxindex(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,out);
    input [7:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z;
    output [4:0] out;
    // your code here

  	//1st level of mam
  	wire [7:0] out_1_1, out_1_2, out_1_3, out_1_4, out_1_5, out_1_6, out_1_7, out_1_8, out_1_9, out_1_10, out_1_11, out_1_12, out_1_13;
  	wire [4:0] outL_1_1, outL_1_2, outL_1_3, outL_1_4, outL_1_5, outL_1_6, outL_1_7, outL_1_8, outL_1_9, outL_1_10, outL_1_11, outL_1_12, outL_1_13;
  mam mam_1_1(a,5'b00000,b,5'b00001,out_1_1,outL_1_1);
  mam mam_1_2(c,5'b00010,d,5'b00011,out_1_2,outL_1_2);
  mam mam_1_3(e,5'b00100,f,5'b00101,out_1_3,outL_1_3);
  	mam mam_1_4(g,5'b00110,h,5'b00111,out_1_4,outL_1_4);
  	mam mam_1_5(i,5'b01000,j,5'b01001,out_1_5,outL_1_5);
  	mam mam_1_6(k,5'b01010,l,5'b01011,out_1_6,outL_1_6);
  	mam mam_1_7(m,5'b01100,n,5'b01101,out_1_7,outL_1_7);
  	mam mam_1_8(o,5'b01110,p,5'b01111,out_1_8,outL_1_8);
  	mam mam_1_9(q,5'b10000,r,5'b10001,out_1_9,outL_1_9);
  	mam mam_1_10(s,5'b10010,t,5'b10011,out_1_10,outL_1_10);
  	mam mam_1_11(u,5'b10100,v,5'b10101,out_1_11,outL_1_11);
  	mam mam_1_12(w,5'b10110,x,5'b10111,out_1_12,outL_1_12);
  	mam mam_1_13(y,5'b11000,z,5'b11001,out_1_13,outL_1_13);
  	//2nd level of mam
  	wire [7:0] out_2_1, out_2_2, out_2_3, out_2_4, out_2_5, out_2_6;
  	wire [4:0] outL_2_1, outL_2_2, outL_2_3, outL_2_4, outL_2_5, outL_2_6;
  	mam mam_2_1(out_1_1,outL_1_1,out_1_2,outL_1_2,out_2_1,outL_2_1);
  	mam mam_2_2(out_1_3,outL_1_3,out_1_4,outL_1_4,out_2_2,outL_2_2);
  	mam mam_2_3(out_1_5,outL_1_5,out_1_6,outL_1_6,out_2_3,outL_2_3);
  	mam mam_2_4(out_1_7,outL_1_7,out_1_8,outL_1_8,out_2_4,outL_2_4);
  	mam mam_2_5(out_1_9,outL_1_9,out_1_10,outL_1_10,out_2_5,outL_2_5);
  	mam mam_2_6(out_1_11,outL_1_11,out_1_12,outL_1_12,out_2_6,outL_2_6);
  	//3rd level of mam
  	wire [7:0] out_3_1, out_3_2, out_3_3;
  	wire [4:0] outL_3_1, outL_3_2, outL_3_3;
  	mam mam_3_1(out_2_1,outL_2_1,out_2_2,outL_2_2,out_3_1,outL_3_1);
  	mam mam_3_2(out_2_3,outL_2_3,out_2_4,outL_2_4,out_3_2,outL_3_2);
  	mam mam_3_3(out_2_5,outL_2_5,out_2_6,outL_2_6,out_3_3,outL_3_3);
  	//4th level of mam
  	wire [7:0] out_4_1, out_4_2;
  	wire [4:0] outL_4_1, outL_4_2;
  	mam mam_4_1(out_3_1,outL_3_1,out_3_2,outL_3_2,out_4_1,outL_4_1);
  	mam mam_4_2(out_3_3,outL_3_3,out_1_13,outL_1_13,out_4_2,outL_4_2);
  	//5th level of mam
 	wire [7:0] dontcare;
  	mam mam_5(out_4_1,outL_4_1,out_4_2,outL_4_2, dontcare, out);
    // do not use any delays!
endmodule
