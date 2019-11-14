module NAND(in_1, in_2, out);
  input in_1, in_2;
  output out;

  assign out=!(in_1&in_2);
endmodule
