module testbench();

reg clk, reset, push, push1, push2, push3, push4, push5, push6, push7, push8, push9, push10, push11, push12, push13;
wire O1;
CYA U1(clk, reset, push, push1, push2, push3, push4, push5, push6, push7, push8, push9, push10, push11, push12, push13, O1);
always
  #5 clk <= ~clk;


initial begin
#1
$display(" Cubo Rubik");
$display("clk push reset | O");
$display("-----------|---------");
$monitor("%b %b %b %b %b %b %b %b %b %b %b %b %b %b  |  %b" , push, push1, push2, push3, push4, push5, push6, push7, push8, push9, push10, push11, push12, push13, O1);
end
  initial begin
    reset = 0; clk = 0;
  #1 reset = 1;
  #1 reset = 0;
  #1 push = 0;
  #1 push = 1;
  #1 push = 0; push1 = 0;
  #1 push = 0; push1 = 1;
  #1 push = 0; push1 = 0; push2 = 0;
  #1 push = 0; push1 = 0; push2 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0;
  #1 push = 0; push1 = 0; push2 = 1; push3 = 0; push4 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 1; push6 = 1; push7 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=1;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=0;
  #1 push = 0; push1 = 0; push2 = 0; push3 = 0; push4 = 0; push5 = 0; push6 = 0; push7 = 0; push8 = 0; push9 = 0; push10=0; push11=0; push12=0; push13=1;













  end

  initial
    #500 $finish;
  initial begin
      $dumpfile("proyecto_tb.vcd");
      $dumpvars(0, testbench);
    end
  endmodule
