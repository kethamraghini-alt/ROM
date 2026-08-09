module ROM (
    input  wire       clk,
    input  wire [2:0] address,
    output reg  [7:0] data
);

    reg [7:0] memory [0:7];

    initial begin
        memory[0] = 8'hA1;
        memory[1] = 8'hB2;
        memory[2] = 8'hC3;
        memory[3] = 8'hD4;
        memory[4] = 8'hE5;
        memory[5] = 8'hF6;
        memory[6] = 8'h17;
        memory[7] = 8'h28;
    end

    always @(posedge clk) begin
        data <= memory[address];
    end

endmodule