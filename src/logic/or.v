module OR(in_1, in_2, out);
  input in_1, in_2;
  wire inter_1, inter_2, inter_3;
  output out;

  NOT not_1(in_1, inter_1);
  NOT not_2(in_2, inter_2);
  AND and_1(inter_1, inter_2, inter_3);
  NOT not_3(inter_3, out);
endmodule
