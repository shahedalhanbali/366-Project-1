`timescale 1ns / 1ps

module tb_one_bit_full_adder_structural;
    reg A, B, Cin;
    wire S, Cout;

    one_bit_full_adder_structural uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Enable waveform dumping
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_one_bit_full_adder_structural);
    end

    initial begin
        $monitor("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
        
        // Test all possible input combinations
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end
endmodule
