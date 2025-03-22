// Code your testbench here
// or browse Examples
module andgate_tb;
  reg a,b;
  wire y;
  // Instantiating and gate
  andgate uut(
    .a(a),
    .b(b),
    .y(y)
  );
  //Dump file setup
  initial begin
  $dumpfile("andgate.vcd");
  $dumpvars(0,andgate_tb);
  end
  initial begin 
    $monitor("Time = %0t | a= %b | b= %b | y=% b", $time, a, b,y);
    a=0 ; b= 0;  #10;
    a=0 ; b= 1;  #10;
    a=1 ; b= 0;  #10;
    a=1 ; b= 1;  #10;
    $finish;
  end
endmodule
             
  
