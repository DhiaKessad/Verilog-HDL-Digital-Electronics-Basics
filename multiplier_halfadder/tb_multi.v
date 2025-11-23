`timescale 1ns/1ps
module tb_multi;
  reg a0, a1, b0, b1;
  wire q0, q1, q2, q3;

  multiplier uut (.a0(a0), .a1(a1), .b0(b0), .b1(b1), 
                  .q0(q0), .q1(q1), .q2(q2), .q3(q3));

  initial begin
    $dumpfile("simu");
    $dumpvars(0, tb_multi);

    a0 = 0; a1 = 0; b0 = 0; b1 = 0;
    #5  a0 = 1; a1 = 0; b0 = 0; b1 = 0;
    #5  a0 = 0; a1 = 1; b0 = 0; b1 = 0;
    #5  a0 = 1; a1 = 1; b0 = 0; b1 = 0;
    #5  a0 = 0; a1 = 0; b0 = 1; b1 = 0;
    #5  a0 = 1; a1 = 0; b0 = 1; b1 = 0;
    #5  a0 = 0; a1 = 1; b0 = 1; b1 = 0;
    #5  a0 = 1; a1 = 1; b0 = 1; b1 = 0;
    #5  a0 = 0; a1 = 0; b0 = 0; b1 = 1;
    #5  a0 = 1; a1 = 0; b0 = 0; b1 = 1;
    #5  a0 = 0; a1 = 1; b0 = 0; b1 = 1;
    #5  a0 = 1; a1 = 1; b0 = 0; b1 = 1;
    #5  a0 = 0; a1 = 0; b0 = 1; b1 = 1;
    #5  a0 = 1; a1 = 0; b0 = 1; b1 = 1;
    #5  a0 = 0; a1 = 1; b0 = 1; b1 = 1;
    #5  a0 = 1; a1 = 1; b0 = 1; b1 = 1;
    #5 $finish;
  end

  initial begin
    $monitor("time = %0t | a0 = %b a1 = %b b0 = %b b1 = %b q0 = %b q1 = %b q2 = %b q3 = %b", $time, a0, a1, b0, b1, q0, q1, q2, q3);
  end
endmodule