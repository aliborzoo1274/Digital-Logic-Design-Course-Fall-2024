module counter_4bit (
    input wire clk,
    input wire reset,
    input wire [3:0] load_in,
    input wire enable,
    input wire load,
    output reg [3:0] count,
    output wire c_out
);

    assign c_out = (count == 4'b1110) && enable && !load;

    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000;
        end else if (load) begin
            count <= load_in;
        end else if (enable) begin
            count <= count + 1;
        end
    end
endmodule