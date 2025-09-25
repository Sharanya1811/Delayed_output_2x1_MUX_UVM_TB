
// The dut design will be mux and output data of mux is reflected after 4 clock pulses
module mux2_1_clock(input clk,rst,input sel, input [1:0]din, output dout);

  wire y=sel?din[1]:din[0];
  reg [3:0]sisoin;
  
  always@(posedge clk or posedge rst) begin
    if(rst)
      sisoin='0;
    else begin
      sisoin={sisoin[2:0],y};
    end
  end
  assign dout=sisoin[3];
endmodule
