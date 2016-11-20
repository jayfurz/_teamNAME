module tb_top;

logic clk;
logic [5:0] ra1;
logic [5:0] ra2;
logic [5:0] wa;
logic we; 
logic [31:0] wd;
wire [31:0] rd1;
wire [31:0] rd2;

regfile regfile_inst (
			.clk(clk);
			.ra1(ra1),
			.ra2(ra2),
			.wa(wa),
			.we(we),
			.wd(wd),
			.rd1(rd1),
			.rd2(rd2));

initial begin
/*#10ns;
we=1;
$display ("we is %b", we);
#10ns;
we=0;
$display ("we is %b", we);
#10ns;
we=1;
$display ("we is %b", we);*/
/*#10ns;
clk=1;
we = 1'b1; rs = 2; rt = 1; rd = 2; wd = 10; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10ns;
clk=0;
we = 1; rs = 2; rt = 3; rd = 0; wd = 25; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10ns;
clk=1;
we = 1; rs = 2; rt = 3; rd = 0; wd = 25; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10ns;
clk=0;
we = 1; rs = 2; rt = 0; rd = 1; wd = 50; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10ns;
clk=1;
we = 1; rs = 2; rt = 3; rd = 1; wd = 50; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10ns;
clk=0;
we = 1;
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);*/
#50ns;clk=1'b1;
we=1;wa=0;wd=11;clk=1;
$display ("rd1 is %d  rd2 is %d ", rd1, rd2);
#50ns;
clk=1'b0;wa=1;wd=11;ra2=1;
ra1=0;
$display ("rd1 is %d  rd2 is %d ", rd1, rd2);

#50ns;
clk=1'b1;
$display ("rd1 is %d  rd2 is %d ", rd1, rd2);
end
endmodule;
