
typedef class fa_gen;
typedef class fa_bfm;

class fa_env;

 fa_gen gen = new();
 fa_bfm bfm = new();

task env_run();
	$display ("Inside Env");
	fork
		gen.gen_run();
		//$display ("Inside Env");
		bfm.bfm_run();
	join
endtask
endclass