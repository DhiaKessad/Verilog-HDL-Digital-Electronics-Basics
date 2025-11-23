// File: FULL-ADDER using 
module model (
    input a,
    input b,
    input c,
    output x, 
    wire wire1,
    wire wire2,
    wire wire3
);
    assign wire1 = ~ ( c | a);
    assign wire2 = ( c & b);
    assign wire3 = ~ ( wire1 | wire2);
    assign x = wire3 ^ a;
endmodule
