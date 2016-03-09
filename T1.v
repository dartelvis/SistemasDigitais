module Values(input clk, output led);

    assign led = clk;

endmodule

module LigaDesliga;

  reg clk;

       always #10 clk = ~clk;
	Values io(clk, led);
  initial begin
    $dumpvars(0, io);
    clk <=  0;
    #500;
    $finish;
  end
endmodule
