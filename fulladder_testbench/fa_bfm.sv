
typedef class fa_tx;
//typedef class fa_intf;
typedef class fa_cfg;

class fa_bfm;
	fa_tx tx = new();
	virtual fa_intf bfm_vif; //initiate vif


task bfm_run();

	//$display("Inside BFM (Driver)");
	bfm_vif = fa_cfg::svif; //connect vif to svif
	forever begin
		#6;
		fa_cfg::gentobfm.get(tx);
		//driving tx to interface
		bfm_vif.a = tx.a;
		bfm_vif.b =	tx.b;
		bfm_vif.cin = tx.cin;
		
		//collect output from the interface
		#2;
		tx.s = bfm_vif.s;
		tx.c_out = bfm_vif.c_out;
		
		tx.printout("from BFM");
	end
	
endtask

endclass