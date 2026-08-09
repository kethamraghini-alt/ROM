`timescale 1ns/1ps

module ROM_tb;

    reg clk;
    reg [2:0] address;
    wire [7:0] data;

    ROM uut (
        .clk(clk),
        .address(address),
        .data(data)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | Address=%0d | Data=%h",
                 $time, address, data);

        clk = 0;
        address = 0;

        #10 address = 1;
        #10 address = 2;
        #10 address = 3;
        #10 address = 4;
        #10 address = 5;
        #10 address = 6;
        #10 address = 7;

        #10 $finish;
    end

endmodule