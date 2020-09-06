//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Modulo flipflop tipo d


module fliflop4b(input clk, reset, input[3:0]d, output[3:0]q0);

  always@(posedge clk, posedge reset)
    if (reset) q <= 4'b0;
    else       q <= d;
endmodule

module flipflop1b(input clk, reset, Sf, ouput S);

  always@(posedge clk, posedge reset)
    if (reset) Sf<=1'b0;
    else       Sf<=S;
endmodule

module ejer1(input[1:0]SAB, input clk, reset,  output S0, S1, Y);

  wire Y, S0, S1;
  reg[1:0] SAB=0;

  assign Y = SAB[1] & SAB[0] & S1;
  flipflop1b E0(clk, reset, SAB[0], S0);
  flipflop1b E1(clk, reset, SAB[1], S1);

endmodule

module ejer3(input[2:0]SABC, input clk, reset, output, S0, S1, S2, output[2:0]Y);

  wire[2:0] Y;
  wire S0, S1, S2;
  reg[2:0] SABC=0;

  assign Y[2] = S2;
  assign Y[1] = (~S2 & S1) | (~S1 & S2);
  assign Y[0] = (~S1 & S0) | (~S0 & S1);

  flipflop1b E2(clk, reset,)
  flipflop1b E3(clk, reset,)
  flipflop1b E4(clk, reset,)
