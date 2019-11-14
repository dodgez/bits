module testbench();
  reg in_1, in_2;
  wire nand_out, not_out, and_out, or_out, xor_out;
  NAND test_nand(in_1, in_2, nand_out);
  NOT test_not(in_1, not_out);
  AND test_and(in_1, in_2, and_out);
  OR test_or(in_1, in_2, or_out);
  XOR test_xor(in_1, in_2, xor_out);
  initial
    $monitor("in_1=%b, in_2=%b, nand_out=%b, not_out=%b, and_out=%b, or_out=%b, xor_out=%b"
      , in_1, in_2, nand_out, not_out, and_out, or_out, xor_out);
  initial
    begin
      #0 in_1=0;
      #0 in_2=0;
      #1 in_2=1;

      #1 in_1=1;
      #0 in_2=0;
      #1 in_2=1;
    end
endmodule
