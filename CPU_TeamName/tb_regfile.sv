module tb_top;

logic [5:0] rs, [5:0] rt, [5:0] rd, we, [31:0] wd;
wire operandA, operandB;

regfile regfile_inst (
			.ra1(rs),
			.ra2(rt),
			.wa(rd),
			.we(we),
			.wd(wd)
			.rd1(operandA)
			.rd2(operandB));

initial begin
#10
we = 1; rs = 0; rt = 1; rd = 2; wd = 10; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10
we = 0; rs = 2; rt = 3; rd = 0; wd = 25; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10
we = 1; rs = 2; rt = 3; rd = 0; wd = 25; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10
we = 0; rs = 2; rt = 0; rd = 1; wd = 50; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10
we = 1; rs = 2; rt = 3; rd = 1; wd = 50; 
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);
#10
we = 0;
$display ("rd1 is %d  rd2 is %d ", operandA, operandB);

endmodule;