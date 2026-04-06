`timescale 1ns/1ps

typedef enum logic [1:0] {
    ZERO, ONE, TWO, THREE
} nums;

class myclass #(
    parameter DATA_W = 8
);

bit [DATA_W-1:0] m_bit;
logic [DATA_W-1:0] m_logic;
integer m_integer;
int m_int;

function integer plus2 (input integer p_arg);
    return p_arg + 2;
endfunction

endclass

module top();

    integer n;
    myclass i_myclass;
    nums i_num;

    initial begin
        n = 10;
        $display("i_myclass.DATA_W = %d", n, i_myclass.DATA_W); 
        $display("i_myclass.plus2(%d) = %d", n, i_myclass.plus2(n)); 
        // void'(i_myclass.randomize());
    end
endmodule
