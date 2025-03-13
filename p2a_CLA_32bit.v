`timescale 1ns / 1ps

// Part (a): 4-bit Carry Look Ahead Adder (CLA) - Qudsia
module four_bit_CLA(A, B, Cin, S, Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;
    
    wire [3:0] P, G;
    wire [4:0] C;
    
    assign C[0] = Cin;
    
    // Generate and Propagate signals
    assign G = A & B; // Generate
    assign P = A ^ B; // Propagate
    
    // Carry computation
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign C[4] = G[3] | (P[3] & C[3]);
    
    // Sum computation
    assign S = P ^ C[3:0];
    assign Cout = C[4];
endmodule

// Part (a): 32-bit Carry Lookahead Adder (CLA) - Shahed
module CLA(A, B, Cin, S, Cout);
    input [31:0] A, B;
    input Cin;
    output [31:0] S;
    output Cout;
    
    wire [7:0] carry;
    
    // Instantiate eight 4-bit CLAs
    four_bit_CLA CLA0 (A[3:0],   B[3:0],   Cin,       S[3:0],   carry[0]);
    four_bit_CLA CLA1 (A[7:4],   B[7:4],   carry[0],  S[7:4],   carry[1]);
    four_bit_CLA CLA2 (A[11:8],  B[11:8],  carry[1],  S[11:8],  carry[2]);
    four_bit_CLA CLA3 (A[15:12], B[15:12], carry[2],  S[15:12], carry[3]);
    four_bit_CLA CLA4 (A[19:16], B[19:16], carry[3],  S[19:16], carry[4]);
    four_bit_CLA CLA5 (A[23:20], B[23:20], carry[4],  S[23:20], carry[5]);
    four_bit_CLA CLA6 (A[27:24], B[27:24], carry[5],  S[27:24], carry[6]);
    four_bit_CLA CLA7 (A[31:28], B[31:28], carry[6],  S[31:28], carry[7]);
    
    assign Cout = carry[7];
endmodule
