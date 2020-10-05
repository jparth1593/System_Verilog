
`include "fa_bfm.sv"
`include "fa_gen.sv"
`include "fa_tx.sv"
`include "fa_env.sv"
`include "fa_intf.sv"
`include "fa_cfg.sv"
`include "fa_design.v"

typedef class fa_env;
//typedef class fa_intf;

module top;

 fa_intf pif ();
 
 // svif tp pif connection
initial begin
	fa_cfg :: svif = pif; //svif to pif connection
end

// initiate dut from design file and fa_intf file

fulladder dut (.a(pif.a),.b(pif.b),.cin(pif.cin),.sum(pif.s),.carry(pif.c_out));


 
 fa_env env = new();

initial begin
	$display("Inside Top");
	env.env_run();
end
endmodule