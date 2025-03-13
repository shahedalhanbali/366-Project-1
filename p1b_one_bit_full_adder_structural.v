`timescale 1ns / 1ps
module one_bit_full_adder_structural(A, B, Cin, S, Cout);
    input A, B, Cin;
    output S, Cout;

    wire w1, w2, w3;

    xor (w1, A, B);
    xor (S, w1, Cin);
    and (w2, A, B);
    and (w3, w1, Cin);
    or  (Cout, w2, w3);

endmodule
