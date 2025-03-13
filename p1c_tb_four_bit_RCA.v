`timescale 1ns / 1ps

module tb_four_bit_RCA;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    // Instantiate the RCA module
    four_bit_RCA uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_four_bit_RCA);
    end

    initial begin
        $monitor("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
        
        // Test cases
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b0110; B = 4'b0101; Cin = 0; #10;
        A = 4'b1001; B = 4'b0111; Cin = 1; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;

        $finish;
    end
endmodule

