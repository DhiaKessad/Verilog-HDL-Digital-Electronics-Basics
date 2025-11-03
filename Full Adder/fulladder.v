// File: FULL-ADDER using 
module fulladder (
    input a,
    input b,
    output x, 
    output y,
    input carry_in
);
    assign x =  (a & b) | (carry_in & (a ^ b)); //( ~(~(~((~(a & a) & ~(b & b))& ~(a & b))& carry_in) & ~(~(a & b) & ~(a & b)))
    assign y = (a ^ b) ^ carry_in;
endmodule
