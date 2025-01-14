module counter_2bit (
    input wire clk,
    input wire reset,
    input wire [1:0] load_in,
    input wire enable,
    input wire load,
    output reg [1:0] count,
    output wire c_out
);

    assign c_out = (count == 2'b10) && enable && !load;

    always @(posedge clk) begin
        if (reset) begin
            count <= 2'b00;
        end else if (load) begin
            count <= load_in;
        end else if (enable) begin
            count <= count + 1;
        end
    end
endmodule