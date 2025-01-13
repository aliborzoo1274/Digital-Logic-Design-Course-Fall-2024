module register_16bit (
    input wire clk,
    input wire load,
    input wire [15:0] data_in,
    output reg [15:0] data_out
);

    always @(posedge clk) begin
        if (load) begin
            data_out <= data_in;
        end
    end
endmodule