`timescale 1ns / 1ps
module one_bit_full_adder(A, B, Cin, S, Cout);
    input A, B, Cin;
    output S, Cout;

    assign S = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

module four_bit_RCS(A, B, Sub, S, Cout);
    input [3:0] A, B;
    input Sub;  // Control signal: 0 for addition, 1 for subtraction
    output [3:0] S;
    output Cout;

    wire [3:0] B_comp; // Complemented B
    wire C1, C2, C3;

    // If Sub = 1, invert B (two's complement)
    assign B_comp = B ^ {4{Sub}};

    // Instantiate four 1-bit full adders
    one_bit_full_adder FA0 (A[0], B_comp[0], Sub,  S[0], C1);
    one_bit_full_adder FA1 (A[1], B_comp[1], C1,   S[1], C2);
    one_bit_full_adder FA2 (A[2], B_comp[2], C2,   S[2], C3);
    one_bit_full_adder FA3 (A[3], B_comp[3], C3,   S[3], Cout);

endmodule
