module fulladder (
		input logic a, b, cin,
		output logic s, cout);

	assign s = (a===1'bz|b===1'bz|cin===1'bz) ? 1'bz :a^b^cin;
	assign cout = (a===1'bz|b===1'bz|cin===1'bz) ? 1'bz : (a&b)|(cin&(a^b));
	
	 

endmodule
