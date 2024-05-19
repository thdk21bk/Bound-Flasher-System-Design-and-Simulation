`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 05:20:34 PM
// Design Name: 
// Module Name: BoundFlasher_Mealy
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BoundFlasher_Mealy(
    input clk, rst, flick,
    output reg [15:0] lamps
    );
    parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4, s5 = 5, s6 = 6, s7 = 7, s8 = 8, s9 = 9, s10 = 10;
    parameter idle = 11;
    parameter TIMER = 100;
    
    integer counter = 0;
    reg finish1 = 1, finish0 = 1;
    reg [3:0] state = idle;
    
always @(posedge clk) begin
    if (rst) begin
        state <= idle;
        //lamps <= 16'h0000;
    end
    else begin
        case (state)
        idle: begin
            state <= s0;
            lamps <= 16'h0000; //Mealy
            counter <= 0;
          
        end
        s0: begin
            if (finish1 == 1) begin
                if (flick == 1) begin
                    finish1 <= 0;
                    
                end
                else begin
                    state <= s0;
                end
            end
            
            if(finish1 == 0) begin
                
                counter <= counter + 1;
                if(counter == TIMER) begin
                    lamps <= (lamps << 1) + 1;
                    counter <= 0;
                end
                
                if(lamps == 16'h003F) begin
                    state <= s1;
                    counter <= 0;
                    finish1 <= 1;
                    
                end
            end
        end
        
        s1: begin
            counter <= counter + 1;
            if (counter == TIMER) begin
                lamps <= lamps >> 1; //turn off GRADUALLY
                counter <= 0;
            end
            if (lamps == 16'h0000) begin
                state <= s2;
                counter <= 0;
            end
        end
        
        s2: begin
            counter <= counter + 1;
            if (counter == TIMER) begin
                lamps <= (lamps << 1) + 1;
                counter <= 0;
            end
            if (lamps == 16'h003F) begin
                state <= s3;
                counter <= 0;
            end
        end
        
        s3: begin
            if (finish1 == 1 && finish0 == 1) begin
                if (flick) finish1 <= 0;
                else finish0 <= 0;
            end
            
            if (!finish1) begin
                counter <= counter + 1;
                if(counter == TIMER) begin
                   lamps <= lamps >> 1;
                   counter <= 0;
                end
                if (lamps == 16'h0000) begin
                    state <= s2;
                    counter <= 0;
                    finish1 <= 1;
                end  
            end
            
            if (!finish0) begin
                counter <= counter + 1;
                if(counter == TIMER) begin
                    lamps <= (lamps << 1) + 1;
                    counter <= 0;
                end
                if (lamps == 16'h07FF) begin
                    state <= s4;
                    counter <= 0;
                    finish0 <= 1;
                end  
            end               
        end
        
        s4: begin
            if (finish0 && finish1) begin
                if (flick) finish1 <= 0;
                else finish0 <= 0;
            end
            
            if (!finish1) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= lamps >> 1; 
                    counter <= 0;
                end
                if (lamps == 16'h0000) begin
                    finish1 <= 1;
                    state <= s2;
                    counter <= 0;
                end
            end
            
            if(!finish0) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= lamps >> 1; //L[10] -> L[5] off
                    counter <= 0;
                end
                if(lamps == 16'h001F) begin
                    finish0 <= 1;
                    state <= s5;
                    counter <= 0;
                end
                
            end
        end
        s5: begin
            counter <= counter + 1;
            if(counter == TIMER) begin
                lamps <= (lamps << 1) + 1;
                counter <= 0;
            end
            if (lamps == 16'h003F) begin
                state <= s6;
                counter <= 0;
            end
        end
        s6: begin
            if(finish0 && finish1) begin
                if(flick) finish1 <= 0;
                else finish0 <= 0;
            end
            if (!finish1) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= lamps >> 1;
                    counter <= 0;
                end
                if (lamps == 16'h001F) begin
                    finish1 <= 1;
                    state <= s5;
                    counter <= 0; 
                end
            end
            if (!finish0) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= (lamps << 1) + 1;
                    counter <= 0;
                end
                if (lamps == 16'h07FF) begin
                    finish0 <= 1;
                    state <= s7;
                    counter <= 0;
                end
            end
        end
        s7: begin
            if (finish0 && finish1) begin
                if (flick) finish1 <= 0;
                else finish0 <= 0;
            end
            if (!finish1) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= lamps >> 1;
                    counter <= 0;
                end
                if (lamps == 16'h001F) begin
                    finish1 <= 1;
                    state <= s5;
                    counter <= 0;
                end
            end
            if (!finish0) begin
                counter <= counter + 1;
                if (counter == TIMER) begin
                    lamps <= (lamps << 1) + 1;
                    counter <= 0;
                end
                if (lamps == 16'hFFFF) begin
                    finish0 <= 1;
                    state <= s8;
                    counter <= 0;
                end
            end
            
        end
        s8: begin
            counter <= counter + 1;
            if(counter == TIMER) begin
                lamps <= lamps >> 1;
                counter <= 0;
            end
            if (lamps == 16'h0000) begin
                state <= s9;
                counter <= 0;
            end
        end
        
        s9: begin
            counter <= counter + 1;
            if (counter == TIMER) begin
            lamps <= 16'hFFFF;
            counter <= 0;
            state <= s10;
            end
        end
        
        s10: begin
           counter <= counter + 1;
            if (counter == TIMER) begin
           lamps <= 16'h0000; // need this
           state <= s0;
           counter <= 0;
            end
        end
        
        default: begin
        state <= idle;
        lamps <= 16'h0000;
        end
        endcase
    end
    
end

    
endmodule

