module controller (
    input clk,
    input start,
    input carry_out,
    output rst,
    output en_counter,
    output sel,
    output done
);

    reg [2:1] y, Y;
    parameter [2:1] IDLE = 2'b00, read_memory = 2'b01, first_multiplication = 2'b10, finish = 2'b11;

    always @(*) begin
        case (y)
            IDLE: if (start) Y = read_memory;
                  else       Y = IDLE;
            
            read_memory: if (carry_out) Y = first_multiplication;
                         else           Y = read_memory;

            first_multiplication: Y = finish;

            finish: if (start) Y = IDLE;
                    else       Y = finish;

            default: Y = 2'bxx;
        endcase
    end

    always @(posedge clk)
        y <= Y;

    assign rst = (y == IDLE);
    assign en_counter = (y == read_memory);
    assign sel = (y == finish);
    assign done = (y == finish);

endmodule