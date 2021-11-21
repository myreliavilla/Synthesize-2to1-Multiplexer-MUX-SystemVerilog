//2to4 decoder testbench code
`timescale 1ns/1ns
module decoder_2to4_testbench;
logic[1:0] tb_sel;
logic[3:0] tb_out;

// Instantiate design under test
decoder design_instance(
.sel(tb_sel),
.out(tb_out)
);

initial begin
// Initialize Inputs
tb_sel = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
#50 tb_sel[0]=0;
tb_sel[1]=1;
#50 tb_sel[0]=1;
tb_sel[1]=0;
#50 tb_sel[0]=1;
tb_sel[1]=1;
end

initial begin
 $monitor(" time=%0t,  sel=%b   out=%b\n",$time, tb_sel, tb_out);
end
endmodule