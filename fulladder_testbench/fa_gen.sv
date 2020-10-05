
typedef class fa_tx;

class fa_gen;

 fa_tx tx = new();

task gen_run();
	for(int i=0;i<5;i=i+1) begin
	#5;
	//$display("Inside Generator");
	assert(tx.randomize());
	tx.printin("from Gen");
	fa_cfg::gentobfm.put(tx);
	
	end
	
endtask

endclass