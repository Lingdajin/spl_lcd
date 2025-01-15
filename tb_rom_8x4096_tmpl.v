//Verilog testbench template generated by SCUBA Diamond (64-bit) 3.13.0.56.2
`timescale 1 ns / 1 ps
module tb;
    reg [11:0] Address = 12'b0;
    reg OutClock = 0;
    reg OutClockEn = 0;
    reg Reset = 0;
    wire [7:0] Q;

    integer i0 = 0, i1 = 0, i2 = 0, i3 = 0, i4 = 0;

    GSR GSR_INST (.GSR(1'b1));
    PUR PUR_INST (.PUR(1'b1));

    rom_8x4096 u1 (.Address(Address), .OutClock(OutClock), .OutClockEn(OutClockEn), 
        .Reset(Reset), .Q(Q)
    );

    initial
    begin
       Address <= 0;
      #100;
      @(Reset == 1'b0);
      for (i1 = 0; i1 < 4099; i1 = i1 + 1) begin
        @(posedge OutClock);
        #1  Address <= Address + 1'b1;
      end
    end
    always
    #5.00 OutClock <= ~ OutClock;

    initial
    begin
       OutClockEn <= 1'b0;
      #100;
      @(Reset == 1'b0);
       OutClockEn <= 1'b1;
    end
    initial
    begin
       Reset <= 1'b1;
      #100;
       Reset <= 1'b0;
    end
endmodule