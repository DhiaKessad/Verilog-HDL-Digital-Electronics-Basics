// File: FULL-ADDER using 
module substractor (
    input a,
    input b,
    output x, 
    output y,
    input borrow
);
    assign x =  (borrow & ~(a ^ b)) | ((~(a)) & b);
    assign y = a ^ ( b ^ borrow);
endmodule
