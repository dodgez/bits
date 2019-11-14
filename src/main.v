module NAND(in_1, in_2, out);
  input in_1, in_2;
  output out;

  assign out=!(in_1&in_2);
endmodule

module nand_testbench;
  reg in;
  wire out;
  NAND test_nand(in, in, out);
  initial
    $monitor($time, " in=%b, out=%b", in, out);
  initial
    begin
      #0 in=0;
      #1 in=1;
    end
endmodule
