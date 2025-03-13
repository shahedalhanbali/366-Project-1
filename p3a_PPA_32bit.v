// 32-bit Parallel Prefix Adder (PPA)
module PPA_32(A, B, Cin, S, Cout);
    input [31:0] A, B;
    input Cin;
    output [31:0] S;
    output Cout;
    
    wire [31:0] P, G;
    wire [31:0] C;
    
    // Step 1: Compute Generate (G) and Propagate (P) signals
    assign G = A & B; // Carry Generate
    assign P = A ^ B; // Carry Propagate
    
    // Step 2: Prefix processing to compute carries
    assign C[0] = Cin;
    genvar i;
    generate
        for (i = 1; i < 32; i = i + 1) begin
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
        end
    endgenerate
    
    assign Cout = G[31] | (P[31] & C[31]);
    
    // Step 3: Compute Sum bits
    assign S = P ^ C;
    
endmodule
