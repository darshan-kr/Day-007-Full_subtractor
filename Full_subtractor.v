module subtractor(
  input a, b, cin,
  output barr, diff);
  assign diff = a^b^cin;
  assign barr = ~a&b | b&cin | ~a&cin;
endmodule
