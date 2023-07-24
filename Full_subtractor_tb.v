module tb;
  reg a, b, cin;
  wire  barr, diff;
  
  subtractor d1(a, b, cin, barr, diff);
  
  initial begin
    $monitor("a=%b, b=%b, cin=%b, barr=%b, diff=%b", a, b, cin, barr,diff);
    $dumpfile("dump.vcd"); $dumpvars;
    {a, b, cin} = 3'd0;
    #5;
    if({barr, diff} == a-b-cin)
        $display("correct");
      else
        $display("wrong");
    
    repeat(15) begin
      {a, b, cin} = {a, b, cin} +1;
      #5;
      if({barr, diff} == a-b-cin)
        $display("correct");
      else
        $display("wrong");    
    end
  end
endmodule
  
    
