`timescale 1ns/1ps
module Full_Adder_tb;
  reg a, b, carry_in;
  wire y, x;

  fulladder uut (.a(a), .b(b), .y(y), .x(x), . carry_in(carry_in));

  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0, Full_Adder_tb);

    a = 1; b = 1; carry_in = 0;
    #5 a = 0; b = 1 ; carry_in = x;
    #5 a = 1; b = 0;carry_in = x;
    #5 a = 0; b = 1;carry_in = x;
    #5 a = 1; b = 1;carry_in = x;
    #5 a = 0; b = 0;carry_in = x;
    #5 a = 1; b = 1;carry_in = x;
    #5 a = 0; b = 1;carry_in = x;
    #5 a = 0; b = 0;carry_in = x;
    #5 $finish;
  end

  initial begin
    $monitor("time=%0t | a=%b b=%b y=%b x=%b z=%b", $time, a, b, y, x, carry_in);
  end
endmodule
