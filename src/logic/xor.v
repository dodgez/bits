module XOR(in_1, in_2, out);
  input in_1, in_2;
  wire inter_1, inter_2, inter_3;
  output out;

  OR or_1(in_1, in_2, inter_1);
  AND and_1(in_1, in_2, inter_2);
  NOT not_1(inter_2, inter_3);
  AND and_2(inter_1, inter_3, out);
endmodule
