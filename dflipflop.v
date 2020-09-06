//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Modulo flipflop tipo d

//NO ES MUCHO PERO ES TRABAJO HONESTO

//MODULO FLIPFLP DE 4 BITS
module fliflop4b(input clk, reset, input[3:0]d, output[3:0]q0);

  always@(posedge clk, posedge reset)
    if (reset) q <= 4'b0;
    else       q <= d;
endmodule


//MODULO FLIPFLOP DE 1 BIT, PARA CALCAR EL EJERCICIO EN CIRCUITVERSE
module flipflop1b(input clk, reset, S, ouput Sf);

  always@(posedge clk, posedge reset)
    if (reset) Sf<=1'b0;
    else       Sf<=S;
endmodule


//MODULO DEL EJERCICIO NO.1
module ejer1(input clk, reset,  output Y, S0, S1, output[1:0]S, SAB);

  wire Y, S0, S1;
  reg[1:0] SAB=0;

  assign Y = SAB[1] & SAB[0] & S1;
  assign S[0] = (~S0 & ~S1 & SAB[1]);
  assign S[1] = (S0 & SAB[0])|(S1 & SAB[0] & SAB[1]);
  flipflop1b E0(clk, reset, S[0], S0);
  flipflop1b E1(clk, reset, S[1], S1);

endmodule


// MODULO DEL EJERCICIO NO.2
module ejer3(input clk, reset, output, S0, S1, S2, A, output[2:0]Y, S);

  wire[2:0] Y, S;
  wire S0, S1, S2;
  reg A=0;

  assign Y[2] = S2;
  assign Y[1] = (~S2 & S1) | (~S1 & S2);
  assign Y[0] = (~S1 & S0) | (~S0 & S1);
  assign S[2] = (S2 & S1 & S0 & ~A)|(~S2 & ~S1 & ~S0 & ~A)|(S2 & S0 & ~A)|(S2 & ~S1 & A)|(S2 $ S1 & ~S0);
  assign S[1] = (S1 & S0 & ~A)|(~S1 & S0 & A)|(~S1 & ~S0 & A)|(S1 & ~S0 & A);
  assign S[0] = ~S0;
  flipflop1b E2(clk, reset, S[0], S0);
  flipflop1b E3(clk, reset, S[1], S1);
  flipflop1b E4(clk, reset, S[2], S2);

endmodule
