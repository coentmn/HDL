module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset-异步复位
    output q);

    always @(posedge clk or posedge ar) begin
        if(ar) begin
            q <= 0;
        end
        else begin
            q <= d;
        end
    end
    
endmodule
