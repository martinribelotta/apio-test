//------------------------------------------------------------------
//-- Blinking LED
//------------------------------------------------------------------

module Test (
  input CLK,    // 12MHz clock
  output LED0,   // D6
  output LED1,   // D7
  output LED2,   // D8
  output LED3    // D9
);
  reg [23:0] counter = 0;

  always @(posedge CLK) 
    counter <= counter + 1;

  assign {LED0, LED1, LED2, LED3} = counter[23:20];

endmodule
