`timescale 1ns/1ps
module timing_subs;
  reg a, b, borrow;
  wire y, x;

  substractor uut (.a(a), .b(b), .y(y), .x(x), .borrow(borrow));

  initial begin
    $dumpfile("c");
    $dumpvars(0, timing_subs);

    a = 1; b = 1; borrow = 0;
    #5 a = 0; b = 1 ; borrow = x;
    #5 a = 1; b = 0;borrow = x;
    #5 a = 0; b = 1;borrow = x;
    #5 a = 1; b = 1;borrow = x;
    #5 a = 0; b = 0;borrow = x;
    #5 a = 1; b = 1;borrow = x;
    #5 a = 0; b = 1;borrow = x;
    #5 a = 0; b = 0;borrow = x;
    #5 $finish;
  end

  initial begin
    $monitor("time=%0t | a=%b b=%b y=%b x=%b z=%b", $time, a, b, y, x, borrow);
  end
endmodule
