`timescale 1ns / 1ps

module all_logic_gates_tb( );

    reg a, b;
    wire not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out;
    
    all_logic_gates dut (a, b, not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out);
    initial begin
    
    $monitor ("a=%b b=%b | not_out=%b and_out=%b or_out=%b nand_out=%b nor_out=%b xor_out=%b xnor_out=%b",
               a, b, not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out);
    
              a=0; b=0; #10;
              a=0; b=1; #10;
              a=1; b=0; #10;
              a=1; b=1; #10; 
    
    $finish;
 end
endmodule
