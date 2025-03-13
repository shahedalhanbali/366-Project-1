`timescale 1ns / 1ps

module tb_PPA;
    reg [15:0] A, B;
    reg Cin;
    wire [15:0] S;
    wire Cout;
    
    PPA uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );


    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, tb_PPA);      
    end

    initial begin
        $monitor("A=%h B=%h Cin=%b | S=%h Cout=%b", A, B, Cin, S, Cout);
        
        // Test cases
        A = 16'h0000; B = 16'h0000; Cin = 0; #10;
        A = 16'h0001; B = 16'h0002; Cin = 0; #10;
        A = 16'hFFFF; B = 16'h0001; Cin = 0; #10;
        A = 16'h1234; B = 16'h5678; Cin = 0; #10;
        A = 16'hAAAA; B = 16'h5555; Cin = 1; #10;
        A = 16'hFFFF; B = 16'hFFFF; Cin = 1; #10;
        
        $finish;
    end
endmodule
