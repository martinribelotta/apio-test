//-------------------------------------------------------------------
//-- leds_tb.v
//-- Testbench
//-------------------------------------------------------------------
//-- Juan Gonzalez (Obijuan)
//-- Jesus Arroyo Torrens
//-- GPL license
//-------------------------------------------------------------------
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 10 ns / 10 ns

module Blinky_tb();

parameter DURATION = 1000000;

//-- Clock signal. It is not used in this simulation
reg clk = 0;
always #0.5 clk = ~clk;

//-- Leds port
wire l0, l1, l2, l3, l4;

//-- Instantiate the unit to test
Test UUT (
           .LED0(l0),
           .LED1(l1),
           .LED2(l2),
           .LED3(l3),
           .CLK(clk)
         );

initial begin

  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, Blinky_tb);

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule
