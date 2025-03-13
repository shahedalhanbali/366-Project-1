module tb_PPA_32;
    reg [31:0] A, B;
    reg Cin;
    wire [31:0] S;
    wire Cout;
    
    PPA_32 uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
    // Enable waveform dumping
    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, tb_PPA_32);   
    end

    initial begin
        $monitor("A=%h B=%h Cin=%b | S=%h Cout=%b", A, B, Cin, S, Cout);
        
        // Test cases
        A = 32'h00000000; B = 32'h00000000; Cin = 0; #10;
        A = 32'h00000001; B = 32'h00000002; Cin = 0; #10;
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0; #10;
        A = 32'h12345678; B = 32'h9ABCDEF0; Cin = 0; #10;
        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 1; #10;
        A = 32'hFFFFFFFF; B = 32'hFFFFFFFF; Cin = 1; #10;
        
        $finish;
    end
endmodule
