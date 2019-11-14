module NOT(in, out);
  input in;
  output out;

  NAND nand_1(in, in, out);
endmodule
