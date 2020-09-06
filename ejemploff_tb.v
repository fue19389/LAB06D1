//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Modulo flipflop tipo d

module testbench();
  reg clk;
  reg entrada;
  wire salida;
  wire [2:0] estado;

  Moore_1101 FSM (clk, entrada, salida, estado);

  initial
    begin
      entrada = 0;
      clk=1;
      $display("\t\t Time \t In \t Out \t State");
      $monitor("%d \t %d \t %d \t %d", $time, entrada, salida, estado);
      #20 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 0;
      #10 entrada = 1;
      #10 entrada = 0;
      #10 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 0;
      #10 entrada = 1;
      #10 entrada = 0;
      #10 entrada = 1;
      #10 entrada = 1;
      #10 entrada = 0;
      #10 entrada = 0;
      #10 entrada = 1;
      #10 $finish;

    end

  always
    #5 clk = ~clk;

    initial
    begin
      $dumpfile("dump.vcd");
  	  $dumpvars(1);
    end

endmodule
