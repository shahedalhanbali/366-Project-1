`timescale 1ns / 1ps

module tb_four_bit_RCS;
    reg [3:0] A, B;
    reg Sub; // Subtraction control signal
    wire [3:0] S;
    wire Cout;

    // Instantiate the RCS module
    four_bit_RCS uut (
        .A(A),
        .B(B),
        .Sub(Sub),
        .S(S),
        .Cout(Cout)
    );

    // Enable waveform dumping
    initial begin
        $dumpfile("waveform.vcd");  // Creates waveform file
        $dumpvars(0, tb_four_bit_RCS);  // Dumps all signals from the testbench
    end

    initial begin
        $monitor("A=%b B=%b Sub=%b | S=%b Cout=%b", A, B, Sub, S, Cout);
        
        // Test cases
        A = 4'b0101; B = 4'b0011; Sub = 0; #10;  // 5 + 3 = 8
        A = 4'b0101; B = 4'b0011; Sub = 1; #10;  // 5 - 3 = 2
        A = 4'b1001; B = 4'b0100; Sub = 1; #10;  // 9 - 4 = 5
        A = 4'b0001; B = 4'b0010; Sub = 1; #10;  // 1 - 2 = -1 (should show 1111 in 2's complement)
        A = 4'b1111; B = 4'b0001; Sub = 1; #10;  // -1 - 1 = -2 (should show 1110 in 2's complement)
        
        $finish;
    end
endmodule
