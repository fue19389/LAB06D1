//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Modulo flipflop tipo d


module fliflop4b(input clk, reset, input[3:0]d, output[3:0]q0);

  always@(posedge clk, posedge reset)
    if (reset) q <= 4'b0;
    else       q <= d;
endmodule

module filflop1b(input clk, reset, Sf, ouput S);

  always@(posedge clk, posedge reset)
    if (reset) q<=1'b0;
    else       q<=d;
endmodule

module ejer1()
