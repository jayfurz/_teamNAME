module pc(
    input clk,
    input rst,
    output logic [5:0] pout
    );
    
     always_ff @(posedge clk) begin
        if(rst) begin
        output <= 0;
        end
        else begin 
        output++;
        end
        
           
   end  
    
