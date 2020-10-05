class fa_tx;

//declare inputs
	rand bit a;
	rand bit b;
	rand bit cin;
	
//declare outpus no need rand since they are outputs
	bit s;
	bit c_out;
	
	virtual function void printin (string name= "Default Print");
	$display ("*************** %s*****************",name);
	$display (" a = %0b",a);
	$display (" b = %0b",b);
	$display (" cin = %0b",cin);
	endfunction
	
	virtual function void printout (string name= "Default Print");
	$display ("*************** %s*****************",name);
	$display (" time = %0t",$time);
	$display (" sum = %0b",s);
	$display (" c_out = %0b",c_out);
	$display("*****************************************");
	endfunction

endclass