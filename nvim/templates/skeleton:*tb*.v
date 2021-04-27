`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Module Type      TESTBENCH
// Author           Cole Roper
// 
// Create Date      %DATE%
// Module Name      %FILE%
// Description      
//////////////////////////////////////////////////////////////////////////////////


module %FILE% ();
    // Inputs
    
    // Outputs

    %HERE%
    MODULE uut(PORTS);
    
    initial begin

        $dumpfile"%FILE%.vcd");
        $dumpvars(0, %FILE%);



        $display("Test complete!");

    end
    
endmodule
