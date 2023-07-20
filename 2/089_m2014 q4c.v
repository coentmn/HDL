module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset-同步复位
    output q);
    
    always @(posedge clk) begin
        if(r) begin
            q <= 0;
        end
        else begin
            q <= d;
        end
    end

endmodule
