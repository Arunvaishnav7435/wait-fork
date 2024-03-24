//SV Topics : Thread
//Problem statement : waiting for fork to complete outside the fork join block
//======================================

module test;
  initial begin
    fork : name
    	begin
          	#5;
          $display($time, " inside fork join at 5\n");
    	end
    
    	begin
          	#2;
          $display($time, " inside fork join 2\n");
    	end
    join_none //non blocking, so does not block the execution of subsequent statements
    $display($time, " this starts at 0\n");
    #3;
    wait fork;		//fork will disabled at 3 so first thread will not complete
  end
endmodule
