module tb_CLA_32bit;
    reg [31:0] A, B;
    reg Cin;
    wire [31:0] S;
    wire Cout;
    

    CLA uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Declare unsigned wire versions of the signals
    wire [31:0] unsigned_A, unsigned_B, unsigned_S;
    wire unsigned_Cout;

    // Assign unsigned interpretations
    assign unsigned_A = A;
    assign unsigned_B = B;
    assign unsigned_S = S;
    assign unsigned_Cout = Cout;

    
    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, tb_CLA_32bit); 
    end

    initial begin
        $monitor("A=%h B=%h Cin=%b | S=%h Cout=%b", unsigned_A, unsigned_B, Cin, unsigned_S, unsigned_Cout);
        
        // Test cases with descriptions
        A = 32'h00000000; B = 32'h00000000; Cin = 0; #10;  // Zero inputs
        A = 32'h00000001; B = 32'h00000002; Cin = 0; #10;  // Small numbers
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0; #10;  // Max positive + 1
        A = 32'h12345678; B = 32'h87654321; Cin = 0; #10;  // Random values
        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 1; #10;  // Alternating bit patterns
        A = 32'hFFFFFFFF; B = 32'hFFFFFFFF; Cin = 1; #10;  // Max values
        
        $display("Test completed successfully!");
        $finish;
    end
endmodule
