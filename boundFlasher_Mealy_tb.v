`timescale 1ns / 1ps

module BoundFlasher_Mealy_tb(

    );
        reg clk;
        reg flick;
        reg rst;
        wire [15:0] lamps;
        
        BoundFlasher_Mealy UUT
        (
            clk, rst, flick, lamps
        );
    
        // Create clock
        always #1 clk = !clk;
    
        initial begin
            // Initial state
            clk = 0;
            flick = 0;
            rst = 0;
            #10;
            flick = 1;
            @(UUT.state == 2) rst =1; //test rst
            #20;
            // flick = 1 -> system starts operating
            rst=0;
            flick = 1;
            #10;
            flick = 0; 
        
            // Test kickback points at L[5] at state 3
            @(UUT.state == 3)
                begin
                    flick = 1;
                    #30;
                    flick = 0;
                end
           
            @(UUT.state == 2) flick = 0;
            
            // Test kickback points at L[10] at state 4
            @(UUT.state == 4) flick=1; 
            @(UUT.state == 2) flick = 0;
            
            // Test kickback points at L[5] at state 6
            @(UUT.state == 6) begin
            flick = 1;
            #50;
            flick = 0;
            end
            @(UUT.state == 5) flick = 0;
            
            // Test kickback points at L[10] at state 7
            @(UUT.lamps == 16'h07FF) flick=1; //befclks7
            @(UUT.state == 5) flick = 0;
            #50000;
            $finish;
        end
    
        initial begin
            $recordfile ("waves");
            $recordvars ("depth=0", BoundFlasher_Mealy_tb);
        end
    
endmodule

