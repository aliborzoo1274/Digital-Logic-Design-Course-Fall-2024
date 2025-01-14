module controller (
    input clk,
    input start,
    input carry_out,
    output rst,
    output en_counter,
    output sel,
    output done
);

    reg [3:1] y, Y;
    parameter [3:1] IDLE = 3'b000, read_memory = 3'b001, first_multiplication = 3'b010,
    second_multiplication = 3'b011, subtraction = 3'b100, finish = 3'b101;

    always @(*) begin
        case (y)
            IDLE: if (start) Y = read_memory;
                  else       Y = IDLE;
            
            read_memory: if (carry_out) Y = first_multiplication;
                         else           Y = read_memory;

            first_multiplication: Y = second_multiplication;

            second_multiplication: Y = subtraction;

            subtraction: Y = finish;

            finish: if (start) Y = IDLE;
                    else       Y = finish;

            default: Y = IDLE;
        endcase
    end

    always @(posedge clk)
        y <= Y;

    assign rst = (y == IDLE);
    assign en_counter = (y == read_memory);
    assign sel = (y == second_multiplication);
    assign done = (y == finish);

endmodule