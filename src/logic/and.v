module AND(in_1, in_2, out);
  input in_1, in_2;
  wire inter;
  output out;

  NAND nand_1(in_1, in_2, inter);
  NOT not_1(inter, out);
endmodule
