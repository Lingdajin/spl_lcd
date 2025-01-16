// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Jan 15 23:54:47 2025
//
// Verilog Description of module spi_lcd
//

module spi_lcd (sys_clk, sys_rst_n, lcd_rst, lcd_dc, lcd_sclk, lcd_mosi, 
            lcd_cs, lcd_led, debug_led1, debug_led2) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(18[9:16])
    input sys_clk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    input sys_rst_n;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    output lcd_rst;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    output lcd_dc;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    output lcd_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    output lcd_mosi;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    output lcd_cs;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    output lcd_led;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    output debug_led1;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(29[21:31])
    output debug_led2;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[21:31])
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, lcd_mosi_c, 
        lcd_cs_c, GND_net;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(37[17:26])
    
    wire en_write_init;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    
    wire sys_clk_50MHz_enable_45, debug_led1_c_5;
    wire [5:0]state_adj_287;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    
    wire sys_clk_50MHz_enable_42;
    wire [8:0]init_data_8__N_240;
    
    wire n3041, n3049, VCC_net, n3179;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .cnt_sclk({cnt_sclk}), .n3041(n3041), .lcd_mosi_c(lcd_mosi_c), 
            .\data[2] (data[2]), .\data[3] (data[3]), .\data[5] (data[5]), 
            .\data[6] (data[6]), .\state_3__N_25[1] (state_3__N_25[1]), 
            .sys_clk_50MHz_enable_45(sys_clk_50MHz_enable_45), .\data[1] (data[1]), 
            .\data[0] (data[0]), .\data[4] (data[4]), .\state[2] (state[2]), 
            .lcd_sclk_c(lcd_sclk_c), .lcd_cs_c(lcd_cs_c), .\data[7] (data[7]), 
            .n3049(n3049)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(63[12] 75[2])
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_131_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_131_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_131_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_131_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_131_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_131_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n3049), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    ROM128X1A mux_131_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_131_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    LUT4 i281_2_lut (.A(wr_done), .B(state_adj_287[4]), .Z(sys_clk_50MHz_enable_42)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i281_2_lut.init = 16'hbbbb;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 i2573_2_lut_rep_41 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n3049)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2573_2_lut_rep_41.init = 16'heeee;
    LUT4 i2686_3_lut_rep_33_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n3041)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2686_3_lut_rep_33_4_lut.init = 16'h0100;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    OB debug_led1_pad (.I(debug_led1_c_5), .O(debug_led1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(29[21:31])
    OB debug_led2_pad (.I(GND_net), .O(debug_led2));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[21:31])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    lcd_init lcd_init_inst (.\init_data_8__N_240[5] (init_data_8__N_240[5]), 
            .\state[4] (state_adj_287[4]), .GND_net(GND_net), .cnt_s2_num({cnt_s2_num}), 
            .sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_42(sys_clk_50MHz_enable_42), 
            .init_data({init_data}), .debug_led1_c_5(debug_led1_c_5), .n3179(n3179), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .\init_data_8__N_240[2] (init_data_8__N_240[2]), 
            .wr_done(wr_done), .lcd_rst_c(lcd_rst_c), .en_write_init(en_write_init), 
            .\init_data_8__N_240[0] (init_data_8__N_240[0])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(91[11] 101[2])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(57[5] 61[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n3179)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    control control_inst (.lcd_dc_c_8(lcd_dc_c_8), .sys_clk_50MHz(sys_clk_50MHz), 
            .debug_led1_c_5(debug_led1_c_5), .init_data({init_data}), .\data[7] (data[7]), 
            .\data[6] (data[6]), .\data[5] (data[5]), .\data[4] (data[4]), 
            .\data[3] (data[3]), .\data[2] (data[2]), .\data[1] (data[1]), 
            .\state_3__N_25[1] (state_3__N_25[1]), .en_write_init(en_write_init), 
            .\data[0] (data[0])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(77[10] 89[2])
    VHI i2858 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, cnt_sclk, n3041, lcd_mosi_c, 
            \data[2] , \data[3] , \data[5] , \data[6] , \state_3__N_25[1] , 
            sys_clk_50MHz_enable_45, \data[1] , \data[0] , \data[4] , 
            \state[2] , lcd_sclk_c, lcd_cs_c, \data[7] , n3049) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output [3:0]cnt_sclk;
    input n3041;
    output lcd_mosi_c;
    input \data[2] ;
    input \data[3] ;
    input \data[5] ;
    input \data[6] ;
    input \state_3__N_25[1] ;
    input sys_clk_50MHz_enable_45;
    input \data[1] ;
    input \data[0] ;
    input \data[4] ;
    output \state[2] ;
    output lcd_sclk_c;
    output lcd_cs_c;
    input \data[7] ;
    input n3049;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]n15;
    
    wire sys_clk_50MHz_enable_2, n445;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n954;
    wire [4:0]n25;
    
    wire mosi_N_61, n646, mosi_N_58, n644;
    wire [3:0]n100;
    
    wire n630;
    wire [3:0]state_3__N_29;
    
    wire n629, mosi_N_64, mosi_N_63;
    wire [0:0]n321;
    
    wire mosi_N_60, n640;
    wire [3:0]state_3__N_33;
    
    wire n1, mosi_N_65, sys_clk_50MHz_enable_19;
    wire [15:0]n66;
    
    wire n2403, n13, n14, mosi_N_59, mosi_N_62, mosi_N_55, n3031, 
        n2776, n645, mosi_N_56, n6, sys_clk_50MHz_enable_14, sclk_N_53, 
        n2719, n3048, n2779, n627, n2768;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n3041), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n445), .SP(sys_clk_50MHz_enable_2), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    FD1S3IX cnt_delay_251__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n954), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_251__i4.GSR = "ENABLED";
    FD1S3IX cnt_delay_251__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n954), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_251__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_251__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n954), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_251__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_251__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n954), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_251__i1.GSR = "ENABLED";
    LUT4 i519_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i519_3_lut.init = 16'hcaca;
    LUT4 i517_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i517_3_lut.init = 16'hcaca;
    LUT4 i341_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i341_2_lut.init = 16'h6666;
    LUT4 i503_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n630)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i503_2_lut.init = 16'h2222;
    LUT4 i502_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n629)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i502_4_lut.init = 16'heca0;
    LUT4 i2710_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i2710_4_lut.init = 16'h0200;
    LUT4 i495_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_45), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i495_2_lut.init = 16'h6666;
    LUT4 i538_4_lut (.A(mosi_N_64), .B(\data[1] ), .C(mosi_N_63), .D(\data[0] ), 
         .Z(n321[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i538_4_lut.init = 16'hcac0;
    LUT4 i520_3_lut (.A(n646), .B(\data[4] ), .C(mosi_N_60), .Z(n640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i520_3_lut.init = 16'hcaca;
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n66[14]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    LUT4 i2692_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n2403), .D(state[1]), 
         .Z(sys_clk_50MHz_enable_2)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2692_4_lut.init = 16'hfbfa;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n2403)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i5_4_lut (.A(mosi_N_63), .B(mosi_N_64), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n66[12]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_58), .C(mosi_N_60), .D(mosi_N_65), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    LUT4 i1604_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n445)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i1604_2_lut.init = 16'h2222;
    FD1P3IX cnt1_FSM_i11 (.D(n66[10]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n66[8]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    LUT4 i2670_4_lut_4_lut (.A(n3031), .B(n2776), .C(n645), .D(n321[0]), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i2670_4_lut_4_lut.init = 16'hf4b0;
    FD1P3IX cnt1_FSM_i7 (.D(n66[6]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:57])
    defparam i4_4_lut.init = 16'hfffb;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_14), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:57])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX cnt1_FSM_i5 (.D(n66[4]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n66[2]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n66[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n66[0]), .SP(sys_clk_50MHz_enable_19), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_251__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n954), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_251__i0.GSR = "ENABLED";
    LUT4 i2688_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n2719), .D(cnt_delay[2]), 
         .Z(n954)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i2688_4_lut.init = 16'hfffb;
    LUT4 i2567_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n2719)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2567_2_lut.init = 16'heeee;
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i2210_2_lut_rep_40 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n3048)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2210_2_lut_rep_40.init = 16'h8888;
    LUT4 i2622_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n2776)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2622_2_lut.init = 16'h1111;
    LUT4 i2221_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2221_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2214_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2214_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n3041), .C(state[1]), .Z(sys_clk_50MHz_enable_14)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    PFUMX mosi_I_1 (.BLUT(n640), .ALUT(mosi_N_56), .C0(n2779), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;
    LUT4 i2207_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2207_2_lut.init = 16'h6666;
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_45), .CD(n3041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_45), .CD(n3041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_45), .CD(n3041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n630), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n629), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n627), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i355_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i355_3_lut_4_lut.init = 16'h7f80;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i2205_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2205_1_lut.init = 16'h5555;
    LUT4 i2228_3_lut_4_lut (.A(cnt_delay[2]), .B(n3048), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i2228_3_lut_4_lut.init = 16'h7f80;
    LUT4 i348_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i348_2_lut_3_lut.init = 16'h7878;
    LUT4 state_3__N_21_I_0_2_lut_rep_23 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n3031)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam state_3__N_21_I_0_2_lut_rep_23.init = 16'h2222;
    LUT4 i518_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n644), .Z(n645)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i518_3_lut_4_lut.init = 16'hfd20;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i2701_4_lut (.A(n3031), .B(mosi_N_58), .C(mosi_N_59), .D(n2768), 
         .Z(n2779)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i2701_4_lut.init = 16'hfffe;
    LUT4 i2614_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n2768)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2614_3_lut.init = 16'h0101;
    LUT4 i32_2_lut_rep_22_4_lut (.A(n3049), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_19)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_22_4_lut.init = 16'h0400;
    LUT4 i500_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n627)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i500_3_lut_4_lut.init = 16'h2f22;
    
endmodule
//
// Verilog Description of module lcd_init
//

module lcd_init (\init_data_8__N_240[5] , \state[4] , GND_net, cnt_s2_num, 
            sys_clk_50MHz, sys_clk_50MHz_enable_42, init_data, debug_led1_c_5, 
            n3179, \init_data_8__N_240[4] , \init_data_8__N_240[2] , wr_done, 
            lcd_rst_c, en_write_init, \init_data_8__N_240[0] ) /* synthesis syn_module_defined=1 */ ;
    input \init_data_8__N_240[5] ;
    output \state[4] ;
    input GND_net;
    output [6:0]cnt_s2_num;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_42;
    output [8:0]init_data;
    output debug_led1_c_5;
    input n3179;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    input wr_done;
    output lcd_rst_c;
    output en_write_init;
    input \init_data_8__N_240[0] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire n2695;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [8:0]init_data_8__N_97;
    
    wire n2369;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    wire [17:0]n357;
    
    wire n2370, n2894, n2893, n2895, n406;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_271, n3050;
    wire [6:0]n24;
    
    wire n3036, n3032, n2368, n46, n2363, n2364, n3022, n2362, 
        n1849, n3044, n3027;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_273, n15, n2995, n2789;
    wire [8:0]init_data_8__N_240;
    
    wire n3054, n367, sys_clk_50MHz_enable_3, n3025, n3053, n6, 
        n2697, n2381;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n52, n3024, n3026, n2793, n2380, n3052, n2379, n2794, 
        n2892, n2897, n2791, n2994, n2993, n3033;
    wire [6:0]n159;
    wire [5:0]state_5__N_168;
    wire [5:0]state_5__N_174;
    
    wire n657, n2378, n11, n9, n3028, n2882, n3038, n2698, n3035, 
        n2881, n3043, n2649, n4, n2734, n2975, n2972, n2976, 
        n2971, n2377, n2974, n2973, n3039, n41, n2886, n2883, 
        n2887, n15_adj_275, n14, n3029, n2367, n2885, n3045, n2920, 
        n654, lcd_rst_high_flag, n659, n661, n663, n3046, n2648, 
        n12, n3037, n2365, n905, n881, n2376, n835, n14_adj_276, 
        n2682, n30, n2785, n2884, n876, n3034, n2708, n2710;
    wire [8:0]init_data_8__N_231;
    
    wire n7, n2756, cnt_150ms_22__N_221, n4_adj_277, n13, n2970, 
        n8, n19, sys_clk_50MHz_enable_25, n2375, n2374, n956, lcd_rst_high_flag_N_270, 
        n1803, n2723, n2792, n2787, n3023, n2797, n2795, n2796, 
        n2699, n2786, n2373, n2389, n2372, n2366, n2709, n2729, 
        n2754, n7_adj_279, n2742, n2371, n6_adj_280;
    wire [5:0]state_5__N_186;
    
    wire n2732, n2650, n4_adj_281;
    
    LUT4 init_data_8__I_0_i6_4_lut (.A(n2695), .B(\init_data_8__N_240[5] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2369), .COUT(n2370), .S0(n357[15]), .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    PFUMX i2734 (.BLUT(n2894), .ALUT(n2893), .C0(cnt_s2_num[5]), .Z(n2895));
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1S3AX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_271), .CK(sys_clk_50MHz), 
            .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n3050), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_24 (.A(cnt_s4_num[10]), .B(n3036), .Z(n3032)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_24.init = 16'heeee;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2368), .COUT(n2369), .S0(n357[13]), .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 mux_131_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_131_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2363), .COUT(n2364), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_1__bdd_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[0]), .Z(n3022)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)+!B !(C (D))))) */ ;
    defparam cnt_s4_num_1__bdd_4_lut.init = 16'h4b51;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2362), .COUT(n2363), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 i3_3_lut_rep_19_4_lut (.A(cnt_s4_num[10]), .B(n3036), .C(n1849), 
         .D(n3044), .Z(n3027)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_19_4_lut.init = 16'hfffe;
    FD1S3AX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_273), .CK(sys_clk_50MHz), 
            .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    LUT4 i30_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[0]), .Z(n15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i30_4_lut_4_lut.init = 16'h2851;
    LUT4 i1623_2_lut_2_lut_4_lut (.A(cnt_s2_num[6]), .B(n2995), .C(n2789), 
         .D(cnt_s2_num[5]), .Z(init_data_8__N_240[8])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1623_2_lut_2_lut_4_lut.init = 16'h5044;
    LUT4 i1_2_lut_4_lut (.A(n3044), .B(n3032), .C(n1849), .D(n3054), 
         .Z(n367)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    FD1P3AX state_FSM_i1 (.D(n3179), .SP(sys_clk_50MHz_enable_3), .CK(sys_clk_50MHz), 
            .Q(debug_led1_c_5));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i88_then_4_lut (.A(cnt_s4_num[1]), .B(n3027), .C(cnt_s4_num[2]), 
         .D(n3025), .Z(n3053)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i88_then_4_lut.init = 16'hf0e0;
    LUT4 i2_4_lut_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[0]), .Z(n6)) /* synthesis lut_function=(A (B (C (D)))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h8404;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n2697), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    CCU2D cnt_150ms_253_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2381), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_23.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n52), .B(n3024), .C(cnt_s4_num[1]), .D(n3026), 
         .Z(n2697)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut.init = 16'hcecc;
    LUT4 i2639_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n2793)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i2639_3_lut_4_lut_4_lut.init = 16'h7808;
    CCU2D cnt_150ms_253_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2380), .COUT(n2381), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_21.INJECT1_1 = "NO";
    LUT4 i88_else_4_lut (.A(cnt_s4_num[1]), .B(n3026), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[0]), .Z(n3052)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i88_else_4_lut.init = 16'h8400;
    LUT4 i69_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .Z(n52)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i69_3_lut.init = 16'h1818;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n367), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    CCU2D cnt_150ms_253_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2379), .COUT(n2380), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_19.INJECT1_1 = "NO";
    LUT4 i2640_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n2794)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam i2640_4_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 n2896_bdd_2_lut_4_lut (.A(n2895), .B(n2892), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(n2897)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2896_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i2637_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n2791)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i2637_4_lut_4_lut.init = 16'h08e0;
    PFUMX i2780 (.BLUT(n2994), .ALUT(n2993), .C0(cnt_s2_num[3]), .Z(n2995));
    LUT4 i405_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n3033), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i405_3_lut_4_lut.init = 16'h7f80;
    LUT4 i530_4_lut (.A(state[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state[0]), .Z(n657)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i530_4_lut.init = 16'hb3a0;
    CCU2D cnt_150ms_253_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2378), .COUT(n2379), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_17.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(n11), .B(n9), .C(cnt_s2_num[6]), .D(cnt_s2_num[5]), 
         .Z(cnt_s2_num_done_N_271)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0080;
    LUT4 i2696_2_lut_rep_20_3_lut_3_lut_4_lut (.A(n1849), .B(n3044), .C(cnt_s4_num[10]), 
         .D(n3036), .Z(n3028)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2696_2_lut_rep_20_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 n781_bdd_3_lut_2739 (.A(n3027), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n2882)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n781_bdd_3_lut_2739.init = 16'h0404;
    LUT4 i2_2_lut (.A(cnt_s2_num[4]), .B(wr_done), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(n3027), .B(n3038), .C(n15), .D(n3028), .Z(n2698)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1_3_lut_4_lut_adj_4 (.A(n3027), .B(n3038), .C(n3028), .D(n3022), 
         .Z(n2695)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_adj_4.init = 16'hfeee;
    LUT4 i2707_2_lut_rep_18_2_lut_3_lut_4_lut (.A(n1849), .B(n3044), .C(n3036), 
         .D(cnt_s4_num[10]), .Z(n3026)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2707_2_lut_rep_18_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1592_2_lut_rep_36 (.A(cnt_s4_num[13]), .B(cnt_s4_num[15]), .Z(n3044)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1592_2_lut_rep_36.init = 16'heeee;
    LUT4 i1_2_lut_rep_27_3_lut_4_lut (.A(cnt_s4_num[13]), .B(cnt_s4_num[15]), 
         .C(cnt_s4_num[10]), .D(n1849), .Z(n3035)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_27_3_lut_4_lut.init = 16'hfffe;
    LUT4 n781_bdd_3_lut_2724_4_lut_4_lut (.A(n3036), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[2]), .D(n3035), .Z(n2881)) /* synthesis lut_function=(!(A+(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam n781_bdd_3_lut_2724_4_lut_4_lut.init = 16'h0014;
    LUT4 i1_2_lut_rep_35_3_lut (.A(cnt_s4_num[13]), .B(cnt_s4_num[15]), 
         .C(n1849), .Z(n3043)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_35_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_5 (.A(n2649), .B(cnt_150ms[13]), .C(n4), .D(n2734), 
         .Z(state_5__N_174[1])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_5.init = 16'hfbff;
    L6MUX21 i2767 (.D0(n2975), .D1(n2972), .SD(cnt_s2_num[5]), .Z(n2976));
    LUT4 n39_bdd_4_lut_2775_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n2971)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;
    defparam n39_bdd_4_lut_2775_4_lut.init = 16'h0414;
    CCU2D cnt_150ms_253_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2377), .COUT(n2378), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_15.INJECT1_1 = "NO";
    PFUMX i2765 (.BLUT(n2974), .ALUT(n2973), .C0(cnt_s2_num[3]), .Z(n2975));
    LUT4 cnt_s2_num_4__bdd_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[4]), .Z(n2994)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B+(C+(D))))) */ ;
    defparam cnt_s2_num_4__bdd_4_lut_4_lut.init = 16'h55d4;
    LUT4 i398_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n3039), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i398_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1609_2_lut_2_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n41)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1609_2_lut_2_lut.init = 16'hdddd;
    L6MUX21 i2729 (.D0(n2886), .D1(n2883), .SD(cnt_s4_num[0]), .Z(n2887));
    LUT4 i8_4_lut (.A(n15_adj_275), .B(cnt_s4_num[0]), .C(n14), .D(n3029), 
         .Z(cnt_s4_num_done_N_273)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i8_4_lut.init = 16'h0080;
    LUT4 i6_4_lut_adj_6 (.A(cnt_s4_num[11]), .B(wr_done), .C(cnt_s4_num[17]), 
         .D(cnt_s4_num[14]), .Z(n15_adj_275)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i6_4_lut_adj_6.init = 16'h8000;
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2367), .COUT(n2368), .S0(n357[11]), .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 n70_bdd_2_lut_2789_4_lut (.A(n3044), .B(n3032), .C(n1849), .D(cnt_s4_num[1]), 
         .Z(n2885)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam n70_bdd_2_lut_2789_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_37 (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .Z(n3045)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_37.init = 16'h8888;
    LUT4 cnt_s4_num_0__bdd_4_lut_2846 (.A(cnt_s4_num[0]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[2]), .Z(n2920)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam cnt_s4_num_0__bdd_4_lut_2846.init = 16'h3819;
    FD1S3AY state_FSM_i6 (.D(n654), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i6.GSR = "ENABLED";
    LUT4 i5_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[12]), 
         .D(cnt_s4_num[1]), .Z(n14)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i5_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_30_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n3038)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_30_3_lut.init = 16'h8080;
    FD1P3AX lcd_rst_172 (.D(n3179), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n657), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n659), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n661), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n663), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1629_2_lut_rep_38 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n3046)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1629_2_lut_rep_38.init = 16'h8888;
    LUT4 i6_4_lut_adj_7 (.A(n2648), .B(n12), .C(cnt_150ms[19]), .D(cnt_150ms[22]), 
         .Z(n2649)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i6_4_lut_adj_7.init = 16'hfeff;
    LUT4 i379_2_lut_rep_31_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .Z(n3039)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i379_2_lut_rep_31_3_lut.init = 16'h8080;
    LUT4 i575_2_lut_rep_29_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .Z(n3037)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i575_2_lut_rep_29_3_lut.init = 16'h7878;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2364), .COUT(n2365), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n905), .B(n881), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    CCU2D cnt_150ms_253_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2376), .COUT(n2377), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n3043), .B(cnt_s4_num[0]), .C(n3036), 
         .D(cnt_s4_num[10]), .Z(n835)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2703_2_lut_rep_17_3_lut_4_lut_4_lut (.A(n3043), .B(cnt_s4_num[1]), 
         .C(n3036), .D(cnt_s4_num[10]), .Z(n3025)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2703_2_lut_rep_17_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i2581_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n2734)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2581_2_lut.init = 16'h8888;
    PFUMX i1023 (.BLUT(n14_adj_276), .ALUT(init_data_8__N_240[8]), .C0(state[2]), 
          .Z(init_data_8__N_97[8]));
    PFUMX i2631 (.BLUT(n2682), .ALUT(n30), .C0(cnt_s2_num[4]), .Z(n2785));
    LUT4 i386_2_lut_rep_25_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n3033)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i386_2_lut_rep_25_3_lut_4_lut.init = 16'h8000;
    LUT4 i384_2_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i384_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i2727 (.BLUT(n2885), .ALUT(n2884), .C0(cnt_s4_num[3]), .Z(n2886));
    LUT4 i3_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[6]), .C(cnt_s4_num[9]), 
         .D(cnt_s4_num[8]), .Z(n1849)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_26 (.A(n876), .B(n905), .Z(n3034)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(n876), .B(n905), .C(n2708), .Z(n2710)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1665_4_lut (.A(n2920), .B(\state[4] ), .C(n3024), .D(n3028), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1665_4_lut.init = 16'hc8c0;
    LUT4 i2603_2_lut_4_lut (.A(cnt_s4_num[4]), .B(n3035), .C(n7), .D(cnt_s4_num[3]), 
         .Z(n2756)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2603_2_lut_4_lut.init = 16'hfffe;
    PFUMX init_data_8__I_0_i2 (.BLUT(init_data_8__N_231[1]), .ALUT(init_data_8__N_240[1]), 
          .C0(state[2]), .Z(init_data_8__N_97[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;
    PFUMX i2725 (.BLUT(n2882), .ALUT(n2881), .C0(cnt_s4_num[1]), .Z(n2883));
    FD1S3IX cnt_150ms_253__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i0.GSR = "ENABLED";
    LUT4 i127_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_3)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i127_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_8 (.A(cnt_s4_num[17]), .B(n3038), .C(n2756), .D(n4_adj_277), 
         .Z(n13)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_4_lut_adj_8.init = 16'hcdcc;
    LUT4 mux_131_Mux_6_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n30)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam mux_131_Mux_6_i30_3_lut_4_lut.init = 16'h2f20;
    PFUMX i2762 (.BLUT(n2971), .ALUT(n2970), .C0(cnt_s2_num[4]), .Z(n2972));
    LUT4 i1_4_lut_adj_9 (.A(cnt_s4_num[3]), .B(n3025), .C(n3024), .D(cnt_s4_num[2]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_4_lut_adj_9.init = 16'ha888;
    PFUMX i25 (.BLUT(n8), .ALUT(n13), .C0(cnt_s4_num[0]), .Z(n19));
    LUT4 i2599_3_lut_rep_21_4_lut (.A(cnt_s4_num[10]), .B(n3043), .C(n7), 
         .D(cnt_s4_num[4]), .Z(n3029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2599_3_lut_rep_21_4_lut.init = 16'hfffe;
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    CCU2D cnt_150ms_253_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2375), .COUT(n2376), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_253_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2374), .COUT(n2375), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_9.INJECT1_1 = "NO";
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n956), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(\state[4] ), .B(n3027), .C(n19), .Z(init_data_8__N_231[1])) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i4_4_lut_rep_28 (.A(n7), .B(n1803), .C(cnt_s4_num[17]), .D(cnt_s4_num[4]), 
         .Z(n3036)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_rep_28.init = 16'hfffe;
    LUT4 i5_4_lut (.A(cnt_150ms[11]), .B(cnt_150ms[5]), .C(cnt_150ms[8]), 
         .D(cnt_150ms[6]), .Z(n12)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i5_4_lut.init = 16'hfbff;
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    LUT4 i280_1_lut (.A(\state[4] ), .Z(n406)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i280_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_16_4_lut (.A(n3044), .B(n3032), .C(n1849), .D(n3038), 
         .Z(n3024)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_16_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n2723), .D(cnt_150ms[18]), 
         .Z(n2648)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_4_lut.init = 16'hffdf;
    FD1P3IX cnt_s2_num__i2 (.D(n3037), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_10 (.A(\state[4] ), .B(n3027), .C(n2887), .D(n6), 
         .Z(n14_adj_276)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1_4_lut_adj_10.init = 16'haaa8;
    FD1P3IX cnt_s2_num__i1 (.D(n159[1]), .SP(sys_clk_50MHz_enable_25), .CD(n3050), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    LUT4 i2638_4_lut_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n2792)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i2638_4_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 init_data_8__I_0_i7_4_lut_4_lut (.A(cnt_s2_num[6]), .B(state[2]), 
         .C(n2787), .D(init_data_8__N_231[7]), .Z(init_data_8__N_97[6])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam init_data_8__I_0_i7_4_lut_4_lut.init = 16'h7340;
    LUT4 i1661_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n2976), .Z(init_data_8__N_240[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1661_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_15_3_lut_4_lut_4_lut (.A(cnt_s4_num[1]), .B(n3045), 
         .C(n3027), .D(n3028), .Z(n3023)) /* synthesis lut_function=(A (B+(C))+!A (C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_15_3_lut_4_lut_4_lut.init = 16'hfdf8;
    LUT4 state_5__N_164_I_0_2_lut (.A(state[2]), .B(\state[4] ), .Z(en_write_init)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(275[19:72])
    defparam state_5__N_164_I_0_2_lut.init = 16'heeee;
    LUT4 i1652_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n2797), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1652_2_lut_2_lut.init = 16'h4444;
    LUT4 i277_1_lut_rep_42 (.A(state[2]), .Z(n3050)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i277_1_lut_rep_42.init = 16'h5555;
    LUT4 i29_4_lut (.A(\state[4] ), .B(\init_data_8__N_240[0] ), .C(state[2]), 
         .D(n2698), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i29_4_lut.init = 16'hcac0;
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    LUT4 i527_2_lut (.A(state[0]), .B(state_5__N_168[0]), .Z(n654)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i527_2_lut.init = 16'h8888;
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    LUT4 i496_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i496_2_lut_3_lut_3_lut.init = 16'h3939;
    L6MUX21 i2643 (.D0(n2795), .D1(n2796), .SD(cnt_s2_num[5]), .Z(n2797));
    LUT4 i278_2_lut_rep_32_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_25)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i278_2_lut_rep_32_2_lut.init = 16'hdddd;
    LUT4 n70_bdd_4_lut_2790 (.A(n3023), .B(n3027), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[1]), .Z(n2884)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam n70_bdd_4_lut_2790.init = 16'ha3a0;
    LUT4 n39_bdd_3_lut_2774 (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), .C(cnt_s2_num[2]), 
         .Z(n2970)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n39_bdd_3_lut_2774.init = 16'h0202;
    LUT4 i1_4_lut_adj_11 (.A(n2699), .B(n2710), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_11.init = 16'hffef;
    LUT4 cnt_s2_num_4__bdd_4_lut_2779 (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n2993)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C+(D)))) */ ;
    defparam cnt_s2_num_4__bdd_4_lut_2779.init = 16'hb9bf;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[1]), .Z(n2682)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_42), 
            .CD(n406), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_42), .CD(n406), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i22.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_253__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253__i1.GSR = "ENABLED";
    LUT4 cnt_s2_num_0__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n2974)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B (C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut.init = 16'h4a2a;
    LUT4 i4_2_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[1]), .Z(n11)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i4_2_lut_3_lut_4_lut.init = 16'h0008;
    L6MUX21 i2633 (.D0(n2785), .D1(n2786), .SD(cnt_s2_num[5]), .Z(n2787));
    LUT4 i2635_4_lut_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[2]), .C(cnt_s2_num[4]), 
         .D(n41), .Z(n2789)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;
    defparam i2635_4_lut_4_lut.init = 16'h5f5d;
    CCU2D cnt_150ms_253_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2373), .COUT(n2374), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_7.INJECT1_1 = "NO";
    LUT4 i391_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n3046), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i391_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_2_lut_3_lut_3_lut_4_lut_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n2389)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    CCU2D cnt_150ms_253_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2372), .COUT(n2373), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_5.INJECT1_1 = "NO";
    LUT4 i2683_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i2683_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_adj_12 (.A(n1803), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .Z(n4_adj_277)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_3_lut_adj_12.init = 16'h5151;
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2362), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    PFUMX i2642 (.BLUT(n2793), .ALUT(n2794), .C0(cnt_s2_num[4]), .Z(n2796));
    LUT4 i1_3_lut_adj_13 (.A(n881), .B(cnt_150ms[18]), .C(cnt_150ms[9]), 
         .Z(n2708)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut_adj_13.init = 16'hbfbf;
    LUT4 cnt_s2_num_2__bdd_4_lut_2732_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[0]), .Z(n2892)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_2732_4_lut.init = 16'h0704;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2365), .COUT(n2366), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i823_1_lut (.A(state[0]), .Z(n956)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i823_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_14 (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n881)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_14.init = 16'hffef;
    LUT4 cnt_s2_num_2__bdd_4_lut_2733_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n2893)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_2733_4_lut.init = 16'h1040;
    LUT4 i2699_4_lut (.A(n2709), .B(n2699), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2699_4_lut.init = 16'h0010;
    LUT4 i2_4_lut_adj_15 (.A(n2708), .B(n876), .C(n2729), .D(n2754), 
         .Z(n2709)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_4_lut_adj_15.init = 16'hefff;
    LUT4 i2577_2_lut (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .Z(n2729)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2577_2_lut.init = 16'h8888;
    LUT4 cnt_s2_num_2__bdd_4_lut_2794 (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n2894)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_2794.init = 16'hc088;
    LUT4 i4_4_lut (.A(n7_adj_279), .B(n2742), .C(cnt_150ms[22]), .D(cnt_150ms[12]), 
         .Z(n876)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut.init = 16'hffbf;
    LUT4 i2_2_lut_adj_16 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .Z(n7_adj_279)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_2_lut_adj_16.init = 16'heeee;
    PFUMX i2736 (.BLUT(init_data_8__N_231[7]), .ALUT(n2897), .C0(state[2]), 
          .Z(init_data_8__N_97[7]));
    LUT4 i2601_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n2754)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2601_3_lut.init = 16'h8080;
    LUT4 i2589_3_lut (.A(cnt_150ms[19]), .B(cnt_150ms[8]), .C(cnt_150ms[11]), 
         .Z(n2742)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2589_3_lut.init = 16'h8080;
    PFUMX i2799 (.BLUT(n3052), .ALUT(n3053), .C0(cnt_s4_num[3]), .Z(n3054));
    LUT4 cnt_s2_num_0__bdd_4_lut_2764_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[4]), .D(cnt_s2_num[0]), .Z(n2973)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_2764_4_lut.init = 16'h2f0c;
    CCU2D cnt_150ms_253_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2371), .COUT(n2372), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_253_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_3.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_17 (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .C(cnt_150ms[1]), 
         .D(n6_adj_280), .Z(n905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_17.init = 16'hfffe;
    LUT4 i2571_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n2723)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2571_2_lut.init = 16'h8888;
    LUT4 i370_2_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n159[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i370_2_lut.init = 16'h6666;
    LUT4 i532_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state[1]), .Z(n659)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i532_4_lut.init = 16'h3b0a;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n2699)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut.init = 16'hfefe;
    PFUMX i2632 (.BLUT(n46), .ALUT(n2389), .C0(cnt_s2_num[4]), .Z(n2786));
    PFUMX i2641 (.BLUT(n2791), .ALUT(n2792), .C0(cnt_s2_num[4]), .Z(n2795));
    LUT4 i534_4_lut (.A(state[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n661)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i534_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_18 (.A(n2732), .B(n2650), .C(cnt_150ms[16]), .D(n3034), 
         .Z(state_5__N_186[3])) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut_adj_18.init = 16'hffdf;
    LUT4 i2579_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n2732)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2579_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_19 (.A(cnt_150ms[14]), .B(n2648), .C(cnt_150ms[6]), 
         .D(cnt_150ms[5]), .Z(n2650)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_19.init = 16'hfffe;
    LUT4 i2_2_lut_adj_20 (.A(cnt_s4_num[5]), .B(cnt_s4_num[16]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_20.init = 16'heeee;
    LUT4 i536_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state[3]), .Z(n663)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i536_4_lut.init = 16'h3b0a;
    LUT4 i1662_4_lut (.A(cnt_s4_num[1]), .B(\state[4] ), .C(n3027), .D(n4_adj_281), 
         .Z(init_data_8__N_231[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1662_4_lut.init = 16'hc8c0;
    CCU2D cnt_150ms_253_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2371), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_253_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_253_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_253_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_253_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_21 (.A(n835), .B(cnt_s4_num[2]), .C(n3024), .D(cnt_s4_num[3]), 
         .Z(n4_adj_281)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_21.init = 16'hc088;
    LUT4 i2_3_lut_adj_22 (.A(cnt_s4_num[12]), .B(cnt_s4_num[14]), .C(cnt_s4_num[11]), 
         .Z(n1803)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_22.init = 16'hfefe;
    LUT4 i1_2_lut_adj_23 (.A(cnt_150ms[2]), .B(cnt_150ms[4]), .Z(n6_adj_280)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_adj_23.init = 16'heeee;
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2366), .COUT(n2367), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2370), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll
//

module pll (sys_clk_c, sys_clk_50MHz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input sys_clk_c;
    output sys_clk_50MHz;
    input GND_net;
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    EHXPLLJ PLLInst_0 (.CLKI(sys_clk_c), .CLKFB(sys_clk_50MHz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(sys_clk_50MHz)) /* synthesis FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(57[5] 61[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 4;
    defparam PLLInst_0.CLKOP_DIV = 11;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 10;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module control
//

module control (lcd_dc_c_8, sys_clk_50MHz, debug_led1_c_5, init_data, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , \state_3__N_25[1] , en_write_init, 
            \data[0] ) /* synthesis syn_module_defined=1 */ ;
    output lcd_dc_c_8;
    input sys_clk_50MHz;
    input debug_led1_c_5;
    input [8:0]init_data;
    output \data[7] ;
    output \data[6] ;
    output \data[5] ;
    output \data[4] ;
    output \data[3] ;
    output \data[2] ;
    output \data[1] ;
    output \state_3__N_25[1] ;
    input en_write_init;
    output \data[0] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    FD1S3IX data__i8 (.D(init_data[8]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i8.GSR = "ENABLED";
    FD1S3IX data__i7 (.D(init_data[7]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i7.GSR = "ENABLED";
    FD1S3IX data__i6 (.D(init_data[6]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i6.GSR = "ENABLED";
    FD1S3IX data__i5 (.D(init_data[5]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i5.GSR = "ENABLED";
    FD1S3IX data__i4 (.D(init_data[4]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i4.GSR = "ENABLED";
    FD1S3IX data__i3 (.D(init_data[3]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i3.GSR = "ENABLED";
    FD1S3IX data__i2 (.D(init_data[2]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i2.GSR = "ENABLED";
    FD1S3IX data__i1 (.D(init_data[1]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i1.GSR = "ENABLED";
    FD1S3IX en_write_19 (.D(en_write_init), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\state_3__N_25[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    FD1S3IX data__i0 (.D(init_data[0]), .CK(sys_clk_50MHz), .CD(debug_led1_c_5), 
            .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data__i0.GSR = "ENABLED";
    
endmodule
