`timescale 1ns / 1ps

// 16-bit Parallel Prefix Adder (PPA)
module PPA(A, B, Cin, S, Cout);
    input [15:0] A, B;
    input Cin;
    output [15:0] S;
    output Cout;
    
    wire [15:0] P, G;
    wire [15:0] C;
    
    // Step 1: Compute Generate (G) and Propagate (P) signals
    assign G = A & B; // Carry Generate
    assign P = A ^ B; // Carry Propagate
    
    // Step 2: Prefix processing to compute carries
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign C[4] = G[3] | (P[3] & C[3]);
    assign C[5] = G[4] | (P[4] & C[4]);
    assign C[6] = G[5] | (P[5] & C[5]);
    assign C[7] = G[6] | (P[6] & C[6]);
    assign C[8] = G[7] | (P[7] & C[7]);
    assign C[9] = G[8] | (P[8] & C[8]);
    assign C[10] = G[9] | (P[9] & C[9]);
    assign C[11] = G[10] | (P[10] & C[10]);
    assign C[12] = G[11] | (P[11] & C[11]);
    assign C[13] = G[12] | (P[12] & C[12]);
    assign C[14] = G[13] | (P[13] & C[13]);
    assign C[15] = G[14] | (P[14] & C[14]);
    assign Cout = G[15] | (P[15] & C[15]);
    
    // Step 3: Compute Sum bits
    assign S = P ^ C;
    
endmodule
