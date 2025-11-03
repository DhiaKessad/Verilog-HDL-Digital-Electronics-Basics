`timescale 1ns/1ps
module tb_and_gate;
  reg a, b, carry_in;
  wire y, x;

  and_gate uut (.a(a), .b(b), .y(y), .x(x), . carry_in(carry_in));

  initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, tb_and_gate);

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
