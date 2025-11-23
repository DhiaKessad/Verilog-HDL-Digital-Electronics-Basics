`timescale 1ns/1ps
module time_coder;
  reg a1, a2, a3, a4;
  wire y, x;

  priority_coder uut (.a1(a1), .a2(a2), .a3(a3), .a4(a4), .x(x), .y(y));

  initial begin
    $dumpfile("waveform");
    $dumpvars(0, time_coder);

    a1 = 0; a2=0; a3=0; a4=0;
    #5 a1 = 1; a2=0; a3=0; a4=0;
    #5 a1 = 0; a2=1; a3=0; a4=0;
    #5 a1 = 0; a2=0; a3=1; a4=0;
    #5 a1 = 0; a2=0; a3=0; a4=1;
    #5 $finish;
  end

  initial begin
    $monitor("time=%0t | a1=%b a2=%b a3=%b a4=%b x=%b y=%b", $time, a1, a2, a3, a4, x, y);
  end
endmodule
