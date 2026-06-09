`timescale 1ns / 1ps

module all_logic_gates(
    input a,b,
    output not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out
    );
    
    assign not_out = ~a;
    assign and_out = a & b;
    assign or_out  = a | b;
    assign nand_out= ~(a & b);
    assign nor_out = ~(a | b);
    assign xor_out = a ^ b;
    assign xnor_out= ~(a ^ b);
    
endmodule
