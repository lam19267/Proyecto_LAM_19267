module FFD(input wire clk, reset, D, output reg Y);
  always @ (posedge clk or posedge reset ) begin
  if (reset)
  Y <= 1'b0;
  else
  Y <= D;
  end
endmodule

module antirebote(input wire clk, reset, push, output wire O);
  wire Y1, Y2;
  assign Y2 = (push);
  FFD F1(clk, reset, Y2, Y1);
  assign  O = (~Y1 & push);
endmodule


module contador1(input wire clk, reset, push, output reg cont);
  always @ (posedge push or posedge reset) begin
  if (reset )
    cont <= 2'b00;
  else
    cont <= cont + 2'b1;
  end
endmodule

module contador2(input wire clk, reset, push, output reg[2:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 3'b000;
  else if (cont >= 3'd4)
    cont <= 3'b000;
  else
    cont <= cont + 3'b1;
  end
endmodule

module contador3(input wire clk, reset, push, output reg[3:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 4'b0000;
  else if (cont >= 4'd9)
    cont <= 4'b0000;
  else
    cont <= cont + 4'b1;
  end
endmodule

module contador4(input wire clk, reset, push, output reg[3:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 4'b0000;
  else if (cont >= 4'd14)
    cont <= 4'b0000;
  else
    cont <= cont + 4'b1;
  end
endmodule

module contador5(input wire clk, reset, push, output reg[3:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 4'b0000;
  else if (cont >= 4'd3)
    cont <= 4'b0000;
  else
    cont <= cont + 4'b1;
  end
endmodule

module contador6(input wire clk, reset, push, output reg[3:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 4'b0000;
  else if (cont >= 4'd2)
    cont <= 4'b0000;
  else
    cont <= cont + 4'b1;
  end
endmodule

module contador7(input wire clk, reset, push, output reg[3:0] cont);
  always @ (posedge push or posedge reset) begin
  if (reset)
    cont <= 3'b000;
  else if (cont >= 3'd4)
    cont <= 3'b000;
  else
    cont <= cont + 3'b1;
  end
endmodule



module requisitos(input wire B, output wire Y1);
  assign Y1 = (B);
endmodule

module CYA(input wire clk, reset, push, push1, push2, push3, push4, push5, push6, push7, push8, push9, push10, push11, push12, push13, output wire Y);
    wire W, Y1, W1, Y2, Y3, W2, A, B, C, W3, W4, Y8, Y13, Y14, W6, Y15, W7, YY;
    wire[2:0] Y5;
    wire[3:0] Y6;
    wire[3:0] Y7;
    wire[3:0] Y9;
    wire[3:0] Y10;
    wire[3:0] Y11;
    wire[3:0] Y12;
    wire[3:0] Y16;
    wire[3:0] Y17;
    wire[3:0] Y18;
    wire[3:0] Y20;
    wire[3:0] Y21;
    wire[3:0] Y22;
    wire[3:0] Y23;
    wire[3:0] Y24;
    wire[3:0] Y25;
    wire[3:0] Y26;
    wire[3:0] Y27;
    wire[3:0] Y28;
    assign C = Y5[0];
    assign B = Y5[1];
    assign A = Y5[2];
    assign D1 = Y6[0];
    assign C1 = Y6[1];
    assign B1 = Y6[2];
    assign A1 = Y6[3];
    assign D2 = Y7[0];
    assign C2 = Y7[1];
    assign B2 = Y7[2];
    assign A2 = Y7[3];
    assign D3 = Y9[0];
    assign C3 = Y9[1];
    assign B3 = Y9[2];
    assign A3 = Y9[3];
    assign D4 = Y10[0];
    assign C4 = Y10[1];
    assign B4 = Y10[2];
    assign A4 = Y10[3];
    assign D5 = Y11[0];
    assign C5 = Y11[1];
    assign B5 = Y11[2];
    assign A5 = Y11[3];
    assign D7 = Y12[0];
    assign C7 = Y12[1];
    assign B7 = Y12[2];
    assign A7 = Y12[3];
    assign Y15 = (Y13 & Y14);
    assign D8 = Y16[0];
    assign C8 = Y16[1];
    assign B8 = Y16[2];
    assign A8 = Y16[3];
    assign D9 = Y17[0];
    assign C9 = Y17[1];
    assign B9 = Y17[2];
    assign A9 = Y17[3];
    assign D10 = Y18[0];
    assign C10 = Y18[1];
    assign B10 = Y18[2];
    assign A10 = Y18[3];
    assign D11 = Y20[0];
    assign C11 = Y20[1];
    assign B11 = Y20[2];
    assign A11 = Y20[3];
    assign D12 = Y21[0];
    assign C12 = Y21[1];
    assign B12 = Y21[2];
    assign A12 = Y21[3];
    assign D13 = Y22[0];
    assign C13 = Y22[1];
    assign B13 = Y22[2];
    assign A13 = Y22[3];
    assign D14 = Y23[0];
    assign C14 = Y23[1];
    assign B14 = Y23[2];
    assign A14 = Y23[3];
    assign D15 = Y25[0];
    assign C15 = Y25[1];
    assign B15 = Y25[2];
    assign A15 = Y25[3];
    assign D16 = Y26[0];
    assign C16 = Y26[1];
    assign B16 = Y26[2];
    assign A16 = Y26[3];
    assign D17 = Y27[0];
    assign C17 = Y27[1];
    assign B17 = Y27[2];
    assign A17 = Y27[3];
    assign D18 = Y28[0];
    assign C18 = Y28[1];
    assign B18 = Y28[2];
    assign A18 = Y28[3];



    antirebote AA(clk, reset, push, W);
    contador1 CC(clk, reset, W, Y1);
    requisitos R(Y1, Y2);

    antirebote AA1(clk, reset, push1, W1);
    contador1 CC1(clk, reset, W1, Y3);
    compReq CR1(Y2, Y3, Y4);

    antirebote AA2(clk, reset, push2, W2);
    contador2 CC2(clk, reset, W2, Y5);
    alg1 R1(clk, reset, A, B, C, Y4, Y6);

    antirebote AA3(clk, reset, push3, W3);
    contador3 CC3(clk, reset, W3, Y7);
    comparador L1(A1, B1, C1, D1, B2, C2, D2, Y8);

    antirebote AA4(clk, reset, push4, W4);
    contador4 CC4(clk, reset, W4, Y9);
    alg2 R2(clk, reset, A3, B3, C3, D3, Y8, Y10, Y11);

    antirebote AA5(clk, reset, push5, W5);
    contador3 CC5(clk, reset, W5, Y12);
    comparador L2(A7, B7, C7, D7, B4, C4, D4, Y13);
    comparador L3(A7, B7, C7, D7, B5, C5, D5, Y14);

    antirebote AA6(clk, reset, push6, W6);
    contador5 CC6(clk, reset, W6, Y16);
    alg3 R3(C8, D8, Y15, Y17);

    antirebote AA7(clk, reset, push7, W7);
    contador3 CC7(clk, reset, W7, Y18);
    comparador L4(A9, B9, C9, D9, B10, C10, D10, Y19);

    antirebote AA8(clk, reset, push8, W8);
    contador6 CC8(clk, reset, W8, Y20);
    alg4 L5(C11, D11, Y19, Y21);

    antirebote AA9(clk, reset, push9, W9);
    contador3 CC9(clk, reset, W9, Y22);
    comparador L6(A13, B13, C13, D13, B11, C11, D11, YY);

    antirebote AA10(clk, reset, push10, W10);
    contador5 CC10(clk, reset, W10, Y23);
    alg5 L7(C14, D14, YY, Y25);

    antirebote AA11(clk, reset, push11, W11);
    contador3 CC11(clk, reset, W11, Y24);
    comparador L8(A15, B15, C15, D15, B14, C14, D14, YYY);

    antirebote AA12(clk, reset, push12, W12);
    contador7 CC12(clk, reset, W12, Y26);
    alg6 L9(B16, C16, D16, YYY, Y27);

    antirebote AA13(clk, reset, push13, W13);
    contador3 CC13(clk, reset, W13, Y28);
    comparador L10(A18, B18, C18, D18, B16, C16, D16, Y);





endmodule

module compReq(input wire B, D, output wire Y2);
  assign Y2 = (B & D);
endmodule

module comparador(input wire A1, B1, C, D, E, F, G, output wire Y);
  assign Y = (~A1 & ~B1 & ~C & ~D & ~E & ~F & ~G)|(~A1 & ~B1 & C & ~D & ~E & ~F & G)|(~A1 & B1 & ~C & ~D & ~E & F & ~G)|(~A1 & B1 & C & ~D & ~E & F & G)
  |(A1 & ~B1 & ~C & ~D & E & ~F & ~G);
endmodule



module alg1(input wire clk, reset, A, B, C, T0, output wire[3:0] Y);
  wire S1, S2, S3;
  assign SF1 = (S1 & ~S2 & ~S3 & A & ~B & ~C & T0);
  assign SF2 = 0;
  assign SF3 = 0;
  assign Y1 = 0;
  assign Y2 = (A & ~B & ~C & T0);
  assign Y3 = (~A & B & ~C & T0)|(~A & B & C & T0);
  assign Y4 = (~A & ~B & C & T0)|(~A & B & C & T0);
  assign Y = {Y1, Y2, Y3, Y4};
  FFD F2(clk, reset, SF1, S1);
  FFD F3(clk, reset, SF2, S2);
  FFD F4(clk, reset, SF3, S3);
endmodule

module alg2(input wire clk, reset, A, B, C, D, T1, output wire[3:0] Y5, output wire[3:0] Y4);
 wire S1, S2, S3, S4;
 assign SF1 = ((~S1& ~S2& ~S3& ~S4& ~A& ~B& ~C& ~D& T1)|(~S1& ~S2& ~S3& S4& ~A& ~B& ~C& D& T1)|(~S1& ~S2& S3& ~S4& ~A& ~B& C& ~D& T1)
 |(~S1& ~S2& S3& S4& ~A& ~B& C& D& T1)|(~S1& S2& ~S3& ~S4& ~A& B& ~C& ~D& T1)|(~S1& S2& ~S3& S4& ~A& B& ~C& D& T1)
 |(~S1& S2& S3& ~S4& ~A& B& C& ~D& T1)|(~S1& S2& S3& S4& ~A& B& C& D& T1)|(S1& ~S2& ~S3& ~S4& A& ~B& ~C& ~D& T1)
 |(S1& ~S2& ~S3& S4& A& ~B& ~C& D& T1)|(S1& ~S2& S3& ~S4& A& ~B& C& ~D& T1)|(S1& ~S2& S3& S4& A& ~B& C& D& T1)|(S1& S2& ~S3& ~S4& A& B& ~C& ~D& T1)
 |(S1& S2& ~S3& S4& A& B& ~C& D& T1)|(S1& S2& S3& ~S4& A& B& C& ~D& T1));
 assign SF2 = ((~S1& ~S2& ~S3& ~S4& ~A& ~B& ~C& ~D& T1)|(~S1& ~S2& ~S3& S4& ~A& ~B& ~C& D& T1)|(~S1& ~S2& S3& ~S4& ~A& ~B& C& ~D& T1)
 |(~S1& ~S2& S3& S4& ~A& ~B& C& D& T1)|(~S1& S2& ~S3& ~S4& ~A& B& ~C& ~D& T1)|(~S1& S2& ~S3& S4& ~A& B& ~C& D& T1)
 |(~S1& S2& S3& ~S4& ~A& B& C& ~D& T1)|(~S1& S2& S3& S4& ~A& B& C& D& T1)|(S1& ~S2& ~S3& ~S4& A& ~B& ~C& ~D& T1)|(S1& ~S2& ~S3& S4& A& ~B& ~C& D& T1)
 |(S1& ~S2& S3& ~S4& A& ~B& C& ~D& T1)|(S1& ~S2& S3& S4& A& ~B& C& D& T1)|(S1& S2& ~S3& ~S4& A& B& ~C& ~D& T1)|(S1& S2& ~S3& S4& A& B& ~C& D& T1)
 |(S1& S2& S3& ~S4& A& B& C& ~D& T1));
 assign SF3 = (~S1& ~S2& ~S3& ~S4& ~A& ~B& ~C& ~D& T1)|(~S1& ~S2& ~S3& S4& ~A& ~B& ~C& D& T1)|(~S1& ~S2& S3& ~S4& ~A& ~B& C& ~D& T1)
 |(~S1& ~S2& S3& S4& ~A& ~B& C& D&T1)|(~S1& S2& ~S3& ~S4& ~A& B& ~C& ~D& T1)|(~S1& S2& ~S3& S4& ~A& B& ~C& D& T1)
 |(~S1& S2& S3& ~S4& ~A& B& C& ~D& T1)|(~S1& S2& S3& S4& ~A& B& C& D& T1)|(S1& ~S2& ~S3& ~S4& A& ~B& ~C& ~D& T1)
 |(S1& ~S2& ~S3& S4& A& ~B& ~C& D& T1)|(S1& ~S2& S3& ~S4& A& ~B& C& ~D& T1)|(S1& ~S2& S3& S4& A& ~B& C& D& T1)|(S1& S2& ~S3& ~S4& A& B& ~C& ~D& T1)
 |(S1& S2& ~S3& S4& A& B& ~C& D& T1)|(S1& S2& S3& ~S4& A& B& C& ~D& T1);
 assign A1 = 0;
 assign A2 = (~A & ~B & ~C & ~D & T1);
 assign A3 = (~A & ~B & ~C & D & T1)|(~A & ~B & C & ~D & T1)|(~A & B & ~C & ~D & T1)|(~A & B & ~C & D & T1)|(~A & B & C & D & T1);
 assign A4 = (~A & ~B & ~C & D & T1)|(~A & ~B & C & D & T1)|(~A & B & ~C & ~D & T1)|(~A & B & C & ~D & T1)|(A & ~B & ~C & ~D & T1)|(A & ~B & ~C & D & T1);
 assign B1 = 0;
 assign B2 = (A & ~B & C & ~D & T1);
 assign B3 = (~A & ~B & C & ~D & T1)|(~A & ~B & C & D & T1)|(~A & B & C & ~D & T1)|(A & ~B & C & D & T1)|(A & B & ~C & ~D & T1);
 assign B4 = (~A & ~B & ~C & D & T1)|(~A & ~B & C & D & T1)|(~A & B & ~C & D & T1)|(A & ~B & ~C & ~D & T1)|(A & ~B & C & D & T1)|(A & B & ~C & D & T1);
 FFD F5(clk, reset, SF1, S1);
 FFD F6(clk, reset, SF2, S2);
 FFD F7(clk, reset, SF3, S3);
 assign Y5 = {A1, A2, A3, A4};
 assign Y4 = {B1, B2, B3, B4};
endmodule

module alg3(input wire A, B, T2, output wire [3:0]Y);
  wire S1, S2;
  assign SF1 = 1;
  assign SF2 = 1;
  assign Y1 =0;
  assign Y2 =0;
  assign Y3 = (~A & ~B & T2)|(~A & B & T2);
  assign Y4 = (~A & ~B & T2)|(A & ~B & T2);
  FFD F8(clk, reset, SF1, S1);
  FFD F9(clk, reset, SF2, S2);
  assign Y = {Y1, Y2, Y3, Y4};

endmodule

module alg4(input wire A, B, T3, output wire[3:0] Y);
  wire S1, S2;
  assign SF1 = 1;
  assign SF2 = 0;
  assign Y1 =0;
  assign Y2 =0;
  assign Y3 = (~A & ~B & T3);
  assign Y4 = (A & ~B & T3);
  FFD F10(clk, reset, SF1, S1);
  FFD F11(clk, reset, SF2, S2);
  assign Y = {Y1, Y2, Y3, Y4};
endmodule

module alg5(input wire A, B, T4, output wire[3:0] Y);
  wire S1, S2;
  assign SF1 = 1;
  assign SF2 = 1;
  assign Y1 = 0;
  assign Y2 = 0;
  assign Y3 = (~A & ~B & T4)|(~A & B & T4);
  assign Y4 = (~A & ~B & T4)|(A & ~B & T4);
  FFD F12(clk, reset, SF1, S1);
  FFD F13(clk, reset, SF2, S2);
  assign Y = {Y1, Y2, Y3, Y4};
endmodule

module alg6(input wire A, B, C, T5, output wire[3:0] Y);
  wire S1, S2, S3;
  assign SF1 = ((~S1& ~S2& ~S3& ~A& ~B& ~C)|(~S1& ~S2& S3& ~A& ~B& C)|(~S1& S2& ~S3& ~A& B& ~C)|(~S1& S2& S3& ~A& B& C)
  |(S1& ~S2& ~S3& A& ~B& ~C));
  assign SF2 = 0;
  assign SF3 = 0;
  assign Y1 = 0;
  assign Y2 = (~A & ~B & ~C & T5);
  assign Y3 = (~A & ~B & C & T5)|(~A & B & ~C & T5);
  assign Y4 = (~A & ~B & C & T5)|(~A & B & C & T5);
  FFD F14(clk, reset, SF1, S1);
  FFD F15(clk, reset, SF2, S2);
  FFD F16(clk, reset, SF3, S3);
  assign Y = {Y1, Y2, Y3, Y4};
endmodule
