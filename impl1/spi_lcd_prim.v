// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Jan 18 14:12:10 2025
//
// Verilog Description of module spi_lcd
//

module spi_lcd (sys_clk, sys_rst_n, lcd_rst, lcd_dc, lcd_sclk, lcd_mosi, 
            lcd_cs, lcd_led) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(18[9:16])
    input sys_clk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    input sys_rst_n;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    output lcd_rst;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    output lcd_dc;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    output lcd_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    output lcd_mosi;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    output lcd_cs;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    output lcd_led;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, lcd_mosi_c, 
        lcd_cs_c, GND_net;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(34[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(38[17:26])
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(44[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(48[17:31])
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    
    wire n20;
    wire [5:0]state_adj_733;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_738;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(66[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:32])
    
    wire length_num_flag;
    wire [6:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(89[17:31])
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_370;
    wire [1:0]cnt1_adj_748;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[17:21])
    
    wire n5, sys_clk_50MHz_enable_24, sys_clk_50MHz_enable_80, n907, 
        sys_clk_50MHz_enable_48, sys_clk_50MHz_enable_54, n6637, n5363, 
        n11081, VCC_net, sys_clk_50MHz_enable_55, n11051, n11908, 
        n11016;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .lcd_cs_c(lcd_cs_c), 
            .wr_done(wr_done), .cnt_sclk({cnt_sclk}), .n11016(n11016), 
            .lcd_sclk_c(lcd_sclk_c), .\state[2] (state[2]), .n907(n907), 
            .\data[7] (data[7]), .n11081(n11081), .sys_clk_50MHz_enable_48(sys_clk_50MHz_enable_48), 
            .\data[0] (data[0]), .\data[1] (data[1]), .\data[2] (data[2]), 
            .\data[3] (data[3]), .\data[4] (data[4]), .\data[5] (data[5]), 
            .\data[6] (data[6]), .\state_3__N_25[1] (state_3__N_25[1]), 
            .lcd_mosi_c(lcd_mosi_c)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
    ROM128X1A mux_210_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2E */ ;
    defparam mux_210_Mux_5.initval = 128'h000000000000000003C3038607107E2E;
    ROM128X1A mux_210_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_210_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_210_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_210_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_210_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_210_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 m1_lut (.Z(n11908)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i8800_2_lut_rep_240 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n11081)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8800_2_lut_rep_240.init = 16'heeee;
    LUT4 i9909_3_lut_rep_175_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n11016)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9909_3_lut_rep_175_4_lut.init = 16'h0100;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n11081), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_48)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    lcd_init lcd_init_inst (.cnt_s2_num({cnt_s2_num}), .sys_clk_50MHz(sys_clk_50MHz), 
            .GND_net(GND_net), .init_data({init_data}), .n907(n907), .sys_clk_50MHz_enable_80(sys_clk_50MHz_enable_80), 
            .state({state_adj_733[5:4], Open_0, state_adj_733[2], Open_1, 
            Open_2}), .n11908(n11908), .lcd_rst_c(lcd_rst_c), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .n5363(n5363), .\init_data_8__N_240[5] (init_data_8__N_240[5]), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .\init_data_8__N_240[2] (init_data_8__N_240[2]), 
            .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    LUT4 i1847_2_lut_4_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(n11051), .D(cnt_length_num[0]), .Z(n20)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;
    defparam i1847_2_lut_4_lut.init = 16'hfd02;
    LUT4 i469_2_lut (.A(wr_done), .B(state_adj_733[4]), .Z(sys_clk_50MHz_enable_80)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i469_2_lut.init = 16'hbbbb;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i8845_2_lut_rep_210 (.A(cnt_length_num[6]), .B(cnt_length_num[5]), 
         .Z(n11051)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8845_2_lut_rep_210.init = 16'heeee;
    LUT4 i1_3_lut_rep_143_4_lut (.A(cnt_length_num[6]), .B(cnt_length_num[5]), 
         .C(cnt_length_num[4]), .D(length_num_flag), .Z(sys_clk_50MHz_enable_54)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_rep_143_4_lut.init = 16'h0100;
    LUT4 i477_4_lut_rep_211 (.A(state_adj_733[5]), .B(state_3__N_370[1]), 
         .C(cnt1_adj_748[0]), .D(cnt1_adj_748[1]), .Z(sys_clk_50MHz_enable_55)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i477_4_lut_rep_211.init = 16'hceee;
    LUT4 i1848_2_lut_4_lut (.A(state_adj_733[5]), .B(state_3__N_370[1]), 
         .C(cnt1_adj_748[0]), .D(cnt1_adj_748[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i1848_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i470_4_lut (.A(state_adj_738[2]), .B(length_num_flag), .C(n6637), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_24)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i470_4_lut.init = 16'hceee;
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    GSR GSR_INST (.GSR(sys_rst_n_c));
    lcd_show_char lcd_show_char_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .length_num_flag(length_num_flag), .show_char_data({show_char_data}), 
            .cnt_length_num({Open_3, Open_4, Open_5, Open_6, Open_7, 
            Open_8, cnt_length_num[0]}), .n20(n20), .cnt_rom_prepare({cnt_rom_prepare}), 
            .n11908(n11908), .\ascii_num[5] (ascii_num[5]), .\cnt_length_num[5] (cnt_length_num[5]), 
            .\cnt_length_num[4] (cnt_length_num[4]), .sys_clk_50MHz_enable_24(sys_clk_50MHz_enable_24), 
            .\cnt_length_num[6] (cnt_length_num[6]), .sys_clk_50MHz_enable_54(sys_clk_50MHz_enable_54), 
            .state({state_adj_738[3:1], Open_9}), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .\state_3__N_370[1] (state_3__N_370[1]), .n11051(n11051), .n6637(n6637)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    show_string_number_ctrl show_string_number_ctrl_inst (.\ascii_num[5] (ascii_num[5]), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_733[5]), 
            .cnt1({cnt1_adj_748}), .\state_3__N_370[1] (state_3__N_370[1]), 
            .n5(n5), .\end_y_8__N_313[4] (end_y_8__N_313[4]), .n5363(n5363), 
            .\state[3] (state_adj_738[3]), .sys_clk_50MHz_enable_55(sys_clk_50MHz_enable_55)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .\state[2] (state_adj_733[2]), 
            .\state[4] (state_adj_733[4]), .\state[1] (state_adj_738[1]), 
            .cnt_rom_prepare({cnt_rom_prepare}), .init_data({init_data}), 
            .show_char_data({show_char_data}), .\state[5] (state_adj_733[5]), 
            .lcd_dc_c_8(lcd_dc_c_8), .\data[7] (data[7]), .\data[6] (data[6]), 
            .\data[5] (data[5]), .\data[4] (data[4]), .\data[3] (data[3]), 
            .\data[2] (data[2]), .\data[1] (data[1])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    VHI i11091 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, lcd_cs_c, wr_done, cnt_sclk, n11016, 
            lcd_sclk_c, \state[2] , n907, \data[7] , n11081, sys_clk_50MHz_enable_48, 
            \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , 
            \data[5] , \data[6] , \state_3__N_25[1] , lcd_mosi_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output lcd_cs_c;
    output wr_done;
    output [3:0]cnt_sclk;
    input n11016;
    output lcd_sclk_c;
    output \state[2] ;
    output n907;
    input \data[7] ;
    input n11081;
    input sys_clk_50MHz_enable_48;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[4] ;
    input \data[5] ;
    input \data[6] ;
    input \state_3__N_25[1] ;
    output lcd_mosi_c;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]state_3__N_33;
    wire [3:0]n15;
    
    wire sclk_flag, sclk_N_53;
    wire [3:0]state_3__N_29;
    
    wire n9317, sys_clk_50MHz_enable_91, n1, sclk_flag_N_70, n13, 
        n14, mosi_N_65, mosi_N_63, mosi_N_59, mosi_N_61, mosi_N_62, 
        mosi_N_64, mosi_N_60, mosi_N_58, mosi_N_55, n1011;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    wire [4:0]n25;
    wire [15:0]n114;
    
    wire sys_clk_50MHz_enable_8, n5367, n10953, n2928, n2929, n2449, 
        n2446, mosi_N_56, n9366, sys_clk_50MHz_enable_39, n11080, 
        n9217;
    wire [3:0]n100;
    wire [0:0]n653;
    
    wire n4576, n9363, n6, n9355, n2416, n2415;
    
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n11016), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i9926_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n9317), .D(state[1]), 
         .Z(sys_clk_50MHz_enable_91)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i9926_4_lut.init = 16'hfbfa;
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    LUT4 i8902_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n9317)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i8902_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5635_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1011)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i5635_2_lut.init = 16'h2222;
    LUT4 i7699_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7699_2_lut_3_lut.init = 16'h7878;
    LUT4 i7690_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7690_1_lut.init = 16'h5555;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_8), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_451__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n5367), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_451__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_451__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n5367), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_451__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_451__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n5367), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_451__i1.GSR = "ENABLED";
    LUT4 i9906_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i9906_4_lut.init = 16'h0200;
    LUT4 i487_1_lut (.A(wr_done), .Z(n907)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i487_1_lut.init = 16'h5555;
    LUT4 state_3__N_21_I_0_2_lut_rep_112 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n10953)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_112.init = 16'h2222;
    LUT4 i2373_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n2928), .Z(n2929)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2373_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1893_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2449)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i1893_3_lut_4_lut.init = 16'h2f22;
    PFUMX mosi_I_1 (.BLUT(n2446), .ALUT(mosi_N_56), .C0(n9366), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    FD1P3IX cnt1_FSM_i15 (.D(n114[14]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n114[12]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n114[10]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n114[8]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n114[6]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n114[4]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n114[2]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n114[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n114[0]), .SP(sys_clk_50MHz_enable_39), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n11016), .C(state[1]), .Z(sys_clk_50MHz_enable_8)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i7713_3_lut_4_lut (.A(cnt_delay[2]), .B(n11080), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7713_3_lut_4_lut.init = 16'h7f80;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i32_2_lut_rep_122_4_lut (.A(n11081), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_39)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_122_4_lut.init = 16'h0400;
    LUT4 i1846_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_48), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i1846_2_lut.init = 16'h6666;
    LUT4 i9936_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n9217), .D(cnt_delay[2]), 
         .Z(n5367)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i9936_4_lut.init = 16'hfffb;
    LUT4 i8808_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n9217)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8808_2_lut.init = 16'heeee;
    LUT4 i7692_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7692_2_lut.init = 16'h6666;
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_48), .CD(n11016), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_48), .CD(n11016), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_48), .CD(n11016), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    LUT4 i1899_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n653[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1899_4_lut.init = 16'hcac0;
    LUT4 i4006_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n4576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i4006_3_lut.init = 16'hcaca;
    LUT4 i8940_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n9363)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i8940_2_lut.init = 16'h1111;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i9999_4_lut (.A(n10953), .B(mosi_N_58), .C(mosi_N_59), .D(n9355), 
         .Z(n9366)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i9999_4_lut.init = 16'hfffe;
    LUT4 i8932_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n9355)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i8932_3_lut.init = 16'h0101;
    LUT4 i561_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i561_2_lut.init = 16'h6666;
    LUT4 i9799_4_lut_4_lut (.A(n10953), .B(n9363), .C(n2929), .D(n653[0]), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i9799_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i4007_3_lut (.A(n4576), .B(\data[4] ), .C(mosi_N_60), .Z(n2446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i4007_3_lut.init = 16'hcaca;
    LUT4 i2372_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n2928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2372_3_lut.init = 16'hcaca;
    FD1S3IX cnt_delay_451__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n5367), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_451__i4.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2416), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2415), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2449), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1861_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2416)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1861_2_lut.init = 16'h2222;
    LUT4 i1860_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2415)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1860_4_lut.init = 16'heca0;
    LUT4 i575_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i575_3_lut_4_lut.init = 16'h7f80;
    LUT4 i568_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i568_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i7695_2_lut_rep_239 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n11080)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7695_2_lut_rep_239.init = 16'h8888;
    FD1P3AX mosi_100 (.D(n1011), .SP(sys_clk_50MHz_enable_91), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i7706_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i7706_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3IX cnt_delay_451__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n5367), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_451__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module lcd_init
//

module lcd_init (cnt_s2_num, sys_clk_50MHz, GND_net, init_data, n907, 
            sys_clk_50MHz_enable_80, state, n11908, lcd_rst_c, \init_data_8__N_240[0] , 
            n5363, \init_data_8__N_240[5] , \init_data_8__N_240[4] , \init_data_8__N_240[2] , 
            wr_done) /* synthesis syn_module_defined=1 */ ;
    output [6:0]cnt_s2_num;
    input sys_clk_50MHz;
    input GND_net;
    output [8:0]init_data;
    input n907;
    input sys_clk_50MHz_enable_80;
    output [5:0]state;
    input n11908;
    output lcd_rst_c;
    input \init_data_8__N_240[0] ;
    output n5363;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire n11079;
    wire [6:0]n24;
    
    wire n8119;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n8120;
    wire [8:0]init_data_8__N_97;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274, n8105;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    wire [17:0]n357;
    
    wire n8106, n11263, n11059, sys_clk_50MHz_enable_4, lcd_rst_high_flag;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272, n8118, n11219, n11216, n8117, cnt_150ms_22__N_221, 
        n11265, n11262, n8116, n9603, n9602, n8115;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n8104, n8107, n8114, n8109, n8110, n11217, n4951, n8108, 
        n10256, n10280, n9594, n10998;
    wire [6:0]n159;
    
    wire n46, n11039, n30, n15, n9614, n9613, n9611, n10255, 
        n10989, sys_clk_50MHz_enable_45, n10893, n11222, n11224, n10891, 
        n15_adj_719, n9624, n11160, n11161, n11162, n8113, n30_adj_720, 
        n10279, n10931;
    wire [5:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n21, n9077, n11070, n18, n14, n2442, n2441, n2439, 
        n2435, n2433, n10257, n23, n9305, n9331, n16, n11154, 
        n8139, n11153, n30_adj_721, n10926, n63, n10743, n10, 
        n10990, n10948, n8163, n5, n10927, n11155, n10952;
    wire [5:0]state_5__N_168;
    
    wire n5183, n9190, n9195, n9327, n5134, n6674;
    wire [5:0]state_5__N_174;
    
    wire n9185, n10_adj_722, n11058;
    wire [5:0]state_5__N_186;
    
    wire n9, n8, n10947, n9612, n9615, n8112, n11064, n8111, 
        n9616, n5366, n9_adj_723, n8_adj_724, lcd_rst_high_flag_N_270, 
        n9329, n10278, n9133, n9007, n9625, n12, n9307, n8123, 
        n8122, n11102, n10742, n8121, n11221;
    
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n11079), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    CCU2D cnt_150ms_453_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8119), .COUT(n8120), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_15.INJECT1_1 = "NO";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n907), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8105), .COUT(n8106), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_3__bdd_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[0]), .D(cnt_s4_num[2]), .Z(n11263)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut.init = 16'h0204;
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n11908), .SP(sys_clk_50MHz_enable_4), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n11908), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n907), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    CCU2D cnt_150ms_453_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8118), .COUT(n8119), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_13.INJECT1_1 = "NO";
    PFUMX i10625 (.BLUT(n11219), .ALUT(n11216), .C0(state[2]), .Z(init_data_8__N_97[1]));
    CCU2D cnt_150ms_453_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8117), .COUT(n8118), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_11.INJECT1_1 = "NO";
    FD1S3IX cnt_150ms_453__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_453__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i1.GSR = "ENABLED";
    PFUMX i10662 (.BLUT(n11265), .ALUT(n11262), .C0(state[2]), .Z(init_data_8__N_97[6]));
    CCU2D cnt_150ms_453_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8116), .COUT(n8117), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_9.INJECT1_1 = "NO";
    LUT4 n9603_bdd_4_lut (.A(n9603), .B(n9602), .C(cnt_s2_num[6]), .D(cnt_s2_num[5]), 
         .Z(n11262)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9603_bdd_4_lut.init = 16'h0a0c;
    CCU2D cnt_150ms_453_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8115), .COUT(n8116), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_7.INJECT1_1 = "NO";
    PFUMX init_data_8__I_0_i9 (.BLUT(init_data_8__N_231[8]), .ALUT(init_data_8__N_240[8]), 
          .C0(state[2]), .Z(init_data_8__N_97[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8104), .COUT(n8105), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i8.GSR = "ENABLED";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8106), .COUT(n8107), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    PFUMX init_data_8__I_0_i8 (.BLUT(init_data_8__N_231[7]), .ALUT(init_data_8__N_240[7]), 
          .C0(state[2]), .Z(init_data_8__N_97[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    CCU2D cnt_150ms_453_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8114), .COUT(n8115), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_5.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8104), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8109), .COUT(n8110), .S0(n357[11]), .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 n11218_bdd_2_lut_3_lut (.A(n11217), .B(state[4]), .C(n4951), 
         .Z(n11219)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n11218_bdd_2_lut_3_lut.init = 16'h0808;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8107), .COUT(n8108), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 n4951_bdd_4_lut_10421 (.A(n4951), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[0]), .Z(n10256)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam n4951_bdd_4_lut_10421.init = 16'h2f2b;
    LUT4 i5651_2_lut_2_lut_4_lut (.A(cnt_s2_num[6]), .B(n10280), .C(n9594), 
         .D(cnt_s2_num[5]), .Z(init_data_8__N_240[8])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i5651_2_lut_2_lut_4_lut.init = 16'h5044;
    LUT4 i618_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n10998), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i618_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 mux_210_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_210_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 i9923_4_lut (.A(cnt_s2_num[5]), .B(n11039), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i9923_4_lut.init = 16'h1000;
    LUT4 mux_210_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_210_Mux_1_i30_3_lut_4_lut.init = 16'h2062;
    LUT4 mux_210_Mux_6_i15_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam mux_210_Mux_6_i15_4_lut_4_lut_4_lut.init = 16'h8004;
    LUT4 i9191_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n9614)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam i9191_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 i9190_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n9613)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i9190_3_lut_4_lut_4_lut.init = 16'h7808;
    LUT4 i9188_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n9611)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i9188_4_lut_4_lut.init = 16'h08e0;
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i5.GSR = "ENABLED";
    LUT4 n4951_bdd_3_lut_10514 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .Z(n10255)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam n4951_bdd_3_lut_10514.init = 16'h4141;
    LUT4 i5838_2_lut_3_lut_4_lut (.A(n4951), .B(cnt_s4_num[0]), .C(state[4]), 
         .D(n10989), .Z(init_data_8__N_231[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(238[13:17])
    defparam i5838_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    LUT4 cnt_s2_num_5__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n10893)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut.init = 16'ha088;
    LUT4 n11223_bdd_2_lut_3_lut (.A(n11222), .B(state[4]), .C(n4951), 
         .Z(n11224)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n11223_bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 n11264_bdd_2_lut_3_lut (.A(n11263), .B(state[4]), .C(n4951), 
         .Z(n11265)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n11264_bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 cnt_s2_num_0__bdd_4_lut_10550 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n10891)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_10550.init = 16'h1020;
    PFUMX i9201 (.BLUT(n15_adj_719), .ALUT(n30), .C0(cnt_s2_num[4]), .Z(n9624));
    PFUMX i10593 (.BLUT(n11160), .ALUT(n11161), .C0(cnt_s4_num[1]), .Z(n11162));
    CCU2D cnt_150ms_453_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8113), .COUT(n8114), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_3.INJECT1_1 = "NO";
    PFUMX i9179 (.BLUT(n15), .ALUT(n30_adj_720), .C0(cnt_s2_num[4]), .Z(n9602));
    LUT4 cnt_s2_num_0__bdd_4_lut_10527 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n10279)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B+(C+(D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_10527.init = 16'h5d74;
    CCU2D cnt_150ms_453_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8113), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_453_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_453_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_90 (.A(n4951), .B(cnt_s4_num[0]), .Z(n10931)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_90.init = 16'hbbbb;
    LUT4 i9939_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i9939_3_lut.init = 16'h0101;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n11162), .B(\init_data_8__N_240[0] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hc5c0;
    LUT4 i4765_1_lut (.A(state[5]), .Z(n5363)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i4765_1_lut.init = 16'h5555;
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n21), .SP(sys_clk_50MHz_enable_45), .CD(n11079), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n9077), .B(cnt_s4_num[14]), .C(n11070), .D(cnt_s4_num[12]), 
         .Z(n4951)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_s4_num[9]), .B(n18), .C(n14), .D(cnt_s4_num[6]), 
         .Z(n9077)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    FD1S3AY state_FSM_i5 (.D(n2442), .CK(sys_clk_50MHz), .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2441), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2439), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2435), .CK(sys_clk_50MHz), .Q(state_c[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2433), .CK(sys_clk_50MHz), .Q(state[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i8_3_lut (.A(n10257), .B(cnt_s4_num[12]), .C(cnt_s4_num[10]), 
         .Z(n23)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i8_3_lut.init = 16'h0202;
    LUT4 i8913_4_lut (.A(n9305), .B(n14), .C(cnt_s4_num[9]), .D(cnt_s4_num[13]), 
         .Z(n9331)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8913_4_lut.init = 16'hfffe;
    LUT4 i8892_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[6]), .C(cnt_s4_num[5]), 
         .D(cnt_s4_num[8]), .Z(n9305)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8892_4_lut.init = 16'hfffe;
    LUT4 i8_3_lut_adj_29 (.A(cnt_s4_num[5]), .B(n16), .C(cnt_s4_num[13]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8_3_lut_adj_29.init = 16'hfefe;
    LUT4 i2_2_lut_4_lut_then_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[0]), .D(n4951), .Z(n11154)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_2_lut_4_lut_then_4_lut.init = 16'hffdf;
    LUT4 i6_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[10]), .C(cnt_s4_num[8]), 
         .D(cnt_s4_num[16]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[4]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    PFUMX i9180 (.BLUT(n46), .ALUT(n8139), .C0(cnt_s2_num[4]), .Z(n9603));
    LUT4 i2_2_lut_4_lut_else_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[0]), .D(n4951), .Z(n11153)) /* synthesis lut_function=(A ((D)+!B)+!A (B+((D)+!C))) */ ;
    defparam i2_2_lut_4_lut_else_4_lut.init = 16'hff67;
    LUT4 i9852_4_lut (.A(n30_adj_721), .B(n10926), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n63)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i9852_4_lut.init = 16'hcacc;
    LUT4 init_data_8__I_0_i6_4_lut (.A(state[4]), .B(\init_data_8__N_240[5] ), 
         .C(state[2]), .D(n10743), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 i5_3_lut_rep_149 (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[3]), 
         .Z(n10990)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_3_lut_rep_149.init = 16'hfefe;
    LUT4 i1_2_lut_rep_107_4_lut (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[3]), 
         .D(cnt_150ms[5]), .Z(n10948)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_rep_107_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[3]), 
         .D(n8163), .Z(n5)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n10927), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hc5c0;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n11155), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hc5c0;
    LUT4 n10891_bdd_4_lut (.A(n10891), .B(cnt_s2_num[4]), .C(n10893), 
         .D(cnt_s2_num[5]), .Z(n10926)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n10891_bdd_4_lut.init = 16'h22f0;
    LUT4 i625_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n10952), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i625_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_then_3_lut (.A(n4951), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n11161)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut_then_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_else_3_lut (.A(n4951), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[0]), .Z(n11160)) /* synthesis lut_function=(A+(B (D)+!B (C+(D)))) */ ;
    defparam i2_3_lut_else_3_lut.init = 16'hffba;
    LUT4 i336_2_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n21)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i336_2_lut.init = 16'h6666;
    PFUMX i10588 (.BLUT(n11153), .ALUT(n11154), .C0(cnt_s4_num[1]), .Z(n11155));
    LUT4 i1886_2_lut (.A(state_c[0]), .B(state_5__N_168[0]), .Z(n2442)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1886_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n5183), .B(n9190), .C(n10948), .D(n9195), .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_30 (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .C(cnt_150ms[13]), 
         .D(n9327), .Z(n5183)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_30.init = 16'hfeff;
    LUT4 i8909_3_lut (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .Z(n9327)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8909_3_lut.init = 16'h8080;
    LUT4 i1_2_lut (.A(n5134), .B(cnt_150ms[6]), .Z(n9190)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i3_4_lut_adj_31 (.A(cnt_150ms[17]), .B(n6674), .C(cnt_150ms[7]), 
         .D(cnt_150ms[20]), .Z(n9195)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_31.init = 16'hfffb;
    LUT4 i6084_2_lut (.A(cnt_150ms[18]), .B(cnt_150ms[9]), .Z(n6674)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6084_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[1]), 
         .D(cnt_150ms[2]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i3_4_lut_adj_32 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n5134)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_32.init = 16'hfffb;
    LUT4 i1885_4_lut (.A(state_c[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state_c[0]), .Z(n2441)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1885_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_33 (.A(n5), .B(n9185), .C(cnt_150ms[13]), .D(n9190), 
         .Z(state_5__N_174[1])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_33.init = 16'hffef;
    LUT4 i5_4_lut (.A(cnt_150ms[21]), .B(n10_adj_722), .C(n11058), .D(cnt_150ms[12]), 
         .Z(n9185)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_4_lut.init = 16'hfdff;
    LUT4 i4_4_lut_adj_34 (.A(cnt_150ms[11]), .B(cnt_150ms[5]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[8]), .Z(n10_adj_722)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_34.init = 16'hfffb;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n8163)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1883_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state_c[1]), .Z(n2439)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1883_4_lut.init = 16'h3b0a;
    LUT4 i1879_4_lut (.A(state_c[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n2435)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1879_4_lut.init = 16'heca0;
    LUT4 i5_4_lut_adj_35 (.A(n9), .B(cnt_150ms[14]), .C(n8), .D(n8163), 
         .Z(state_5__N_186[3])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i5_4_lut_adj_35.init = 16'hfeff;
    LUT4 i2_4_lut (.A(cnt_150ms[16]), .B(n10947), .C(cnt_150ms[10]), .D(cnt_150ms[15]), 
         .Z(n8)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 i1877_4_lut (.A(state[4]), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state_c[3]), .Z(n2433)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1877_4_lut.init = 16'h3b0a;
    PFUMX i9192 (.BLUT(n9611), .ALUT(n9612), .C0(cnt_s2_num[4]), .Z(n9615));
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8112), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_1__bdd_3_lut_rep_86_4_lut (.A(cnt_s4_num[3]), .B(n10931), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[1]), .Z(n10927)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(229[13:16])
    defparam cnt_s4_num_1__bdd_3_lut_rep_86_4_lut.init = 16'heffe;
    LUT4 i611_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n11064), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i611_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3IX cnt_150ms_453__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i22.GSR = "ENABLED";
    LUT4 state_4__bdd_4_lut_10927 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[3]), .Z(n11217)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C+(D))+!B !(D)))) */ ;
    defparam state_4__bdd_4_lut_10927.init = 16'h118c;
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8111), .COUT(n8112), .S0(n357[15]), .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    PFUMX i9193 (.BLUT(n9613), .ALUT(n9614), .C0(cnt_s2_num[4]), .Z(n9616));
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_80), 
            .CD(n11059), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_80), .CD(n11059), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    LUT4 i4768_1_lut (.A(state_c[0]), .Z(n5366)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i4768_1_lut.init = 16'h5555;
    LUT4 i9942_4_lut (.A(n9_adj_723), .B(cnt_150ms[5]), .C(n8_adj_724), 
         .D(cnt_150ms[22]), .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i9942_4_lut.init = 16'h0400;
    LUT4 i2_4_lut_adj_36 (.A(n5134), .B(cnt_150ms[3]), .C(n9329), .D(cnt_150ms[0]), 
         .Z(n8_adj_724)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_4_lut_adj_36.init = 16'hbfff;
    LUT4 i8911_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n9329)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8911_3_lut.init = 16'h8080;
    LUT4 i180_2_lut (.A(state_5__N_192[5]), .B(state[4]), .Z(sys_clk_50MHz_enable_4)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i180_2_lut.init = 16'h8888;
    LUT4 cnt_s2_num_0__bdd_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n10278)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (C+!(D))) */ ;
    defparam cnt_s2_num_0__bdd_3_lut_4_lut.init = 16'hf0df;
    LUT4 mux_210_Mux_6_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n30_adj_720)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam mux_210_Mux_6_i30_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2_2_lut_3_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n8139)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_2_lut_3_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n9133)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_148_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .Z(n10989)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i1_2_lut_rep_148_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n9007)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8110), .COUT(n8111), .S0(n357[13]), .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 n9624_bdd_4_lut (.A(n9624), .B(n9625), .C(cnt_s2_num[6]), .D(cnt_s2_num[5]), 
         .Z(n11216)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam n9624_bdd_4_lut.init = 16'h0c0a;
    LUT4 i1_2_lut_rep_217 (.A(cnt_150ms[9]), .B(cnt_150ms[18]), .Z(n11058)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_rep_217.init = 16'heeee;
    LUT4 i3_2_lut_3_lut_4_lut (.A(cnt_150ms[9]), .B(cnt_150ms[18]), .C(n10990), 
         .D(cnt_150ms[5]), .Z(n9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i468_1_lut_rep_218 (.A(state[4]), .Z(n11059)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i468_1_lut_rep_218.init = 16'h5555;
    PFUMX i10078 (.BLUT(n10279), .ALUT(n10278), .C0(cnt_s2_num[4]), .Z(n10280));
    LUT4 i9963_4_lut (.A(cnt_s4_num[11]), .B(n12), .C(n10989), .D(cnt_s4_num[14]), 
         .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i9963_4_lut.init = 16'h0200;
    LUT4 i89_4_lut_4_lut (.A(state[4]), .B(n9307), .C(n9331), .D(n23), 
         .Z(init_data_8__N_231[8])) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i89_4_lut_4_lut.init = 16'ha8aa;
    LUT4 i5_4_lut_adj_37 (.A(cnt_s4_num[0]), .B(cnt_s4_num[17]), .C(n9077), 
         .D(cnt_s4_num[12]), .Z(n12)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i5_4_lut_adj_37.init = 16'hf7ff;
    LUT4 i9189_4_lut_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n9612)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i9189_4_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 mux_210_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_719)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_210_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    CCU2D cnt_150ms_453_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8123), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_453_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8122), .COUT(n8123), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_21.INJECT1_1 = "NO";
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n5366), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i5624_2_lut_rep_261 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n11102)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i5624_2_lut_rep_261.init = 16'hdddd;
    LUT4 i1_2_lut_rep_106 (.A(cnt_150ms[6]), .B(n5183), .Z(n10947)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_106.init = 16'heeee;
    LUT4 i2_2_lut_rep_198_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n11039)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_198_3_lut_4_lut.init = 16'hfbff;
    FD1S3IX cnt_150ms_453__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453__i0.GSR = "ENABLED";
    LUT4 i9171_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(n11102), .D(cnt_s2_num[4]), .Z(n9594)) /* synthesis lut_function=(!(A (B (D))+!A (B ((D)+!C)))) */ ;
    defparam i9171_3_lut_4_lut_4_lut_4_lut.init = 16'h33fb;
    LUT4 i592_2_lut_rep_223 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n11064)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i592_2_lut_rep_223.init = 16'h8888;
    LUT4 i3_2_lut_3_lut (.A(cnt_150ms[6]), .B(n5183), .C(n9195), .Z(n9_adj_723)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_2_lut_3_lut.init = 16'hfefe;
    LUT4 i599_2_lut_rep_157_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n10998)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i599_2_lut_rep_157_3_lut.init = 16'h8080;
    LUT4 i597_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i597_2_lut_3_lut.init = 16'h7878;
    LUT4 i606_2_lut_rep_111_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n10952)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i606_2_lut_rep_111_3_lut_4_lut.init = 16'h8000;
    LUT4 i604_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i604_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n10742_bdd_2_lut (.A(n10742), .B(n4951), .Z(n10743)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n10742_bdd_2_lut.init = 16'h2222;
    PFUMX i9202 (.BLUT(n9007), .ALUT(n9133), .C0(cnt_s2_num[4]), .Z(n9625));
    LUT4 cnt_s4_num_2__bdd_4_lut_10521 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[0]), .D(cnt_s4_num[3]), .Z(n10742)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B (D)+!B (C (D))))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut_10521.init = 16'h23d5;
    LUT4 mux_210_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_721)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_210_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    CCU2D cnt_150ms_453_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8121), .COUT(n8122), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_19.INJECT1_1 = "NO";
    LUT4 i465_1_lut_rep_238 (.A(state[2]), .Z(n11079)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i465_1_lut_rep_238.init = 16'h5555;
    LUT4 i1845_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1845_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i466_2_lut_rep_172_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i466_2_lut_rep_172_2_lut.init = 16'hdddd;
    CCU2D cnt_150ms_453_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8120), .COUT(n8121), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_453_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_453_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_453_add_4_17.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_2__bdd_4_lut_11076 (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[1]), .Z(n11222)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut_11076.init = 16'h0cb1;
    LUT4 n4951_bdd_4_lut_10700 (.A(n9615), .B(n9616), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n11221)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam n4951_bdd_4_lut_10700.init = 16'h0c0a;
    LUT4 i8830_2_lut_rep_229 (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .Z(n11070)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8830_2_lut_rep_229.init = 16'heeee;
    LUT4 i8894_3_lut_4_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .C(cnt_s4_num[16]), 
         .D(cnt_s4_num[14]), .Z(n9307)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8894_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5661_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n63), .Z(init_data_8__N_240[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i5661_2_lut_2_lut.init = 16'h4444;
    PFUMX i10061 (.BLUT(n10256), .ALUT(n10255), .C0(cnt_s4_num[3]), .Z(n10257));
    PFUMX i10629 (.BLUT(n11224), .ALUT(n11221), .C0(state[2]), .Z(init_data_8__N_97[3]));
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8108), .COUT(n8109), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module pll
//

module pll (sys_clk_c, sys_clk_50MHz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input sys_clk_c;
    output sys_clk_50MHz;
    input GND_net;
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
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
            .PLLADDR4(GND_net), .CLKOP(sys_clk_50MHz)) /* synthesis FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=79, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
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
// Verilog Description of module lcd_show_char
//

module lcd_show_char (sys_clk_50MHz, wr_done, length_num_flag, show_char_data, 
            cnt_length_num, n20, cnt_rom_prepare, n11908, \ascii_num[5] , 
            \cnt_length_num[5] , \cnt_length_num[4] , sys_clk_50MHz_enable_24, 
            \cnt_length_num[6] , sys_clk_50MHz_enable_54, state, \end_y_8__N_313[4] , 
            \state_3__N_370[1] , n11051, n6637) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    input wr_done;
    output length_num_flag;
    output [8:0]show_char_data;
    output [6:0]cnt_length_num;
    input n20;
    output [2:0]cnt_rom_prepare;
    input n11908;
    input \ascii_num[5] ;
    output \cnt_length_num[5] ;
    output \cnt_length_num[4] ;
    input sys_clk_50MHz_enable_24;
    output \cnt_length_num[6] ;
    input sys_clk_50MHz_enable_54;
    output [3:0]state;
    input \end_y_8__N_313[4] ;
    input \state_3__N_370[1] ;
    input n11051;
    output n6637;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(92[17:34])
    
    wire cnt_wr_color_data_5__N_443;
    wire [5:0]n1;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_374;
    
    wire state1_finish_flag_N_463;
    wire [15:0]n203;
    
    wire cnt_set_windows_3__N_386;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(83[17:21])
    
    wire sys_clk_50MHz_enable_90;
    wire [7:0]temp_7__N_345;
    
    wire length_num_flag_N_466, sys_clk_50MHz_enable_63;
    wire [8:0]show_char_data_8__N_275;
    
    wire n10943;
    wire [2:0]n12;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:25])
    
    wire n9243, sys_clk_50MHz_enable_22, n9401;
    wire [15:0]n33;
    
    wire sys_clk_50MHz_enable_12;
    wire [5:0]n436;
    
    wire n11117, n11118, n11119, n1120, n11111, n11112, n11113, 
        n11020, n5039, n11108, n11109, n125;
    wire [6:0]n850;
    
    wire n4926, n4928, n4930;
    wire [4:0]n843;
    wire [6:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(89[17:31])
    
    wire n364, n10959, n380, n9916, n10991;
    wire [6:0]n367;
    
    wire n891;
    wire [2:0]n132;
    
    wire n11008, n11024, n11078, n11105, n11106, n11107, n11091, 
        n11046;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(80[17:22])
    
    wire n2046, n10957, n272, n11056;
    wire [8:0]show_char_data_8__N_453;
    
    wire n10949, n11043, n9087, n8_adj_713, n10981, n11073, n9247, 
        n10530, n6, n11060, n8_adj_714, n3949, n10944, n764, n8234, 
        n10966, n11095, n1755;
    wire [3:0]state_3__N_378;
    
    wire n11057, n9114, n9169, n469, n4528, n11055, n9223, sys_clk_50MHz_enable_58, 
        n557, n10986, n9, n9161, n4183, n4, n9309, n6_adj_715;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(66[17:22])
    
    wire n2412, n6854, n2421, n2457, n10272, n11074, n1596, n1172, 
        n2025, n9468, n11899, n301, n9777, n11030, n11034, n158, 
        n9414, n308, n317, n270, n286, n9431, n11049, n4688, 
        n11098, n1436, n9249, n1181, n10980, n1723, n5226, n1676, 
        n94, n332, n5246, n10748, n10992, n10954, n126, n9127, 
        n3295, n891_adj_716, n892, n8373, n1534, n270_adj_717, n9596, 
        n11090, n349, n11089, n10987, n1148, n1069, n1084, n10950, 
        n1101, n1149, n11900, n11023, n1851, n1275, n460, n452, 
        n10483, n3699, n10709, n1405, n1278, n9686, n1661, n10531, 
        n5259, n2974, n2975, n21, n16, n23, n8427, n127, n9509, 
        n10607, n723, n1565, n10970, n11094, n94_adj_718, n1529, 
        n9588;
    
    FD1S3IX cnt_wr_color_data__i0 (.D(n1[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_443), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_178 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(122[10] 125[30])
    defparam the1_wr_done_178.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_180 (.D(state1_finish_flag_N_463), .CK(sys_clk_50MHz), 
            .Q(state_3__N_374[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(140[10] 143[36])
    defparam state1_finish_flag_180.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n203[15]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_466), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(206[10] 223[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n20), .CK(sys_clk_50MHz), .CD(n10943), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    LUT4 i8834_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n9243)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i8834_2_lut_2_lut.init = 16'hdddd;
    FD1P3AX rom_addr__i1 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_22), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n203[11]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    LUT4 i9954_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n9401)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9954_3_lut_3_lut.init = 16'hfbfb;
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n203[9]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n203[8]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n203[7]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n203[6]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n203[5]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX temp_i7 (.D(temp_7__N_345[7]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n203[4]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n203[3]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n203[2]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n203[1]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n203[0]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n436[5]), .SP(sys_clk_50MHz_enable_12), 
            .CD(cnt_wr_color_data_5__N_443), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    PFUMX i10564 (.BLUT(n11117), .ALUT(n11118), .C0(rom_addr[3]), .Z(n11119));
    FD1P3IX cnt_wr_color_data__i4 (.D(n436[4]), .SP(sys_clk_50MHz_enable_12), 
            .CD(cnt_wr_color_data_5__N_443), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n436[3]), .SP(sys_clk_50MHz_enable_12), 
            .CD(cnt_wr_color_data_5__N_443), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n436[2]), .SP(sys_clk_50MHz_enable_12), 
            .CD(cnt_wr_color_data_5__N_443), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n436[1]), .SP(sys_clk_50MHz_enable_12), 
            .CD(cnt_wr_color_data_5__N_443), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3AX rom_addr__i11 (.D(n11908), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i11.GSR = "ENABLED";
    FD1P3AX rom_addr__i9 (.D(n1120), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i9.GSR = "ENABLED";
    PFUMX i10560 (.BLUT(n11111), .ALUT(n11112), .C0(rom_addr[4]), .Z(n11113));
    LUT4 i8982_2_lut_rep_179_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n11020)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i8982_2_lut_rep_179_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n5039)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    PFUMX i10558 (.BLUT(n11108), .ALUT(n11109), .C0(rom_addr[3]), .Z(n125));
    FD1P3AX rom_addr__i10 (.D(\ascii_num[5] ), .SP(sys_clk_50MHz_enable_22), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i10.GSR = "ENABLED";
    FD1P3AX rom_addr__i8 (.D(n850[3]), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i8.GSR = "ENABLED";
    FD1P3AX rom_addr__i7 (.D(n4926), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i7.GSR = "ENABLED";
    FD1P3AX rom_addr__i6 (.D(n4928), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i6.GSR = "ENABLED";
    FD1P3AX rom_addr__i5 (.D(n4930), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i5.GSR = "ENABLED";
    FD1P3AX rom_addr__i4 (.D(n843[1]), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i4.GSR = "ENABLED";
    FD1P3AX rom_addr__i3 (.D(n843[0]), .SP(sys_clk_50MHz_enable_22), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i3.GSR = "ENABLED";
    FD1P3AX rom_addr__i2 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_22), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr__i2.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n10959), .Z(n380)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i9528_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n9916)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9528_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i718_2_lut_3_lut_4_lut (.A(cnt_length_num_c[3]), .B(n10991), .C(\cnt_length_num[5] ), 
         .D(\cnt_length_num[4] ), .Z(n367[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i718_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5810_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5810_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_24), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_24), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    LUT4 i655_2_lut_3_lut_4_lut (.A(\cnt_length_num[5] ), .B(n11008), .C(\ascii_num[5] ), 
         .D(\cnt_length_num[6] ), .Z(n1120)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i655_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i653_2_lut_3_lut_4_lut (.A(\cnt_length_num[5] ), .B(n11008), .C(\ascii_num[5] ), 
         .D(\cnt_length_num[6] ), .Z(n850[3])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i653_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i768_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n11024), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n436[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i768_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\cnt_length_num[4] ), .B(n11078), .C(\cnt_length_num[6] ), 
         .D(\cnt_length_num[5] ), .Z(n4926)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    PFUMX i10556 (.BLUT(n11105), .ALUT(n11106), .C0(rom_addr[4]), .Z(n11107));
    LUT4 i740_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n436[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i740_2_lut.init = 16'h6666;
    LUT4 i761_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n11091), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n436[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i761_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), .C(rom_addr[10]), 
         .D(n2046), .Z(temp_7__N_345[7])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX cnt_length_num__i6 (.D(n367[6]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(\cnt_length_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i5 (.D(n367[5]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(\cnt_length_num[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i4 (.D(n367[4]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(\cnt_length_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i3 (.D(n367[3]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n367[2]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n367[1]), .SP(sys_clk_50MHz_enable_54), 
            .CD(n10943), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(229[10] 236[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i8.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_116_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n10957)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_2_lut_rep_116_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_rep_99_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), .C(n272), 
         .D(state[3]), .Z(sys_clk_50MHz_enable_12)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_99_4_lut.init = 16'hfff2;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[2]), .Z(n11106)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut_then_4_lut.init = 16'h4004;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n11046), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 show_char_data_8__I_0_i8_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n11056), 
         .C(state[1]), .D(show_char_data_8__N_453[7]), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam show_char_data_8__I_0_i8_3_lut_4_lut.init = 16'hf101;
    LUT4 i834_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), .Z(n843[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i834_2_lut.init = 16'h6666;
    LUT4 i832_1_lut (.A(cnt_length_num_c[2]), .Z(n843[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i832_1_lut.init = 16'h5555;
    LUT4 i725_3_lut_4_lut (.A(\cnt_length_num[4] ), .B(n10949), .C(\cnt_length_num[5] ), 
         .D(\cnt_length_num[6] ), .Z(n367[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i725_3_lut_4_lut.init = 16'h7f80;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[2]), .Z(n11105)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut_else_4_lut.init = 16'h4050;
    LUT4 i8796_2_lut_rep_202 (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[5]), 
         .Z(n11043)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8796_2_lut_rep_202.init = 16'heeee;
    LUT4 i3_2_lut_3_lut (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[5]), 
         .C(n9087), .Z(n8_adj_713)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_2_lut_3_lut.init = 16'hfefe;
    LUT4 i647_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[28:50])
    defparam i647_3_lut.init = 16'h6a6a;
    LUT4 i640_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[28:50])
    defparam i640_2_lut.init = 16'h6666;
    LUT4 i1850_2_lut_4_lut (.A(state[3]), .B(n272), .C(n10981), .D(cnt_wr_color_data[0]), 
         .Z(n1[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(246[13:52])
    defparam i1850_2_lut_4_lut.init = 16'h10ef;
    LUT4 n1898_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(n11073), 
         .D(n9247), .Z(n10530)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam n1898_bdd_4_lut_4_lut.init = 16'h0400;
    LUT4 i4_4_lut (.A(the1_wr_done), .B(n11043), .C(n9087), .D(n6), 
         .Z(length_num_flag_N_466)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i1_2_lut (.A(cnt_wr_color_data[0]), .B(state[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i711_2_lut_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n11060), .C(\cnt_length_num[4] ), 
         .D(cnt_length_num_c[3]), .Z(n367[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i711_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i690_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n367[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i690_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_16 (.A(state[2]), .B(state[1]), .Z(sys_clk_50MHz_enable_63)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'heeee;
    LUT4 i118_4_lut_rep_102 (.A(\cnt_length_num[4] ), .B(length_num_flag), 
         .C(n8_adj_714), .D(cnt_length_num_c[2]), .Z(n10943)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[13:77])
    defparam i118_4_lut_rep_102.init = 16'h0400;
    LUT4 i5958_4_lut (.A(n3949), .B(state[1]), .C(n10944), .D(n764), 
         .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[10] 285[22])
    defparam i5958_4_lut.init = 16'h3fbb;
    LUT4 i2_3_lut (.A(n203[3]), .B(n203[1]), .C(n203[2]), .Z(n8234)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n10966), 
         .C(rom_addr[4]), .D(n11095), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i26_1_lut_4_lut (.A(\cnt_length_num[4] ), .B(length_num_flag), 
         .C(n8_adj_714), .D(cnt_length_num_c[2]), .Z(state_3__N_378[2])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[13:77])
    defparam i26_1_lut_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut (.A(n11057), .B(n9114), .C(n203[9]), .D(n9169), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc0c8;
    LUT4 i5745_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n11109)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5745_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i375_2_lut_rep_103 (.A(n33[10]), .B(n469), .Z(n10944)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i375_2_lut_rep_103.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_17 (.A(n33[10]), .B(n469), .C(n203[9]), .D(n203[8]), 
         .Z(n764)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_17.init = 16'hfffe;
    LUT4 i5745_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n11108)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5745_4_lut_4_lut_else_4_lut.init = 16'h0004;
    LUT4 i5961_4_lut_4_lut (.A(n33[10]), .B(n469), .C(state[1]), .D(n4528), 
         .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;
    defparam i5961_4_lut_4_lut.init = 16'h3020;
    LUT4 i3_4_lut (.A(\end_y_8__N_313[4] ), .B(n203[5]), .C(n11055), .D(n9223), 
         .Z(show_char_data_8__N_453[7])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    LUT4 i8814_4_lut (.A(n203[3]), .B(n764), .C(n203[4]), .D(n203[2]), 
         .Z(n9223)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i8814_4_lut.init = 16'hcecf;
    LUT4 i158_2_lut (.A(state[2]), .B(temp[0]), .Z(sys_clk_50MHz_enable_58)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[13:55])
    defparam i158_2_lut.init = 16'h8888;
    LUT4 i887_1_lut (.A(cnt_wr_color_data[0]), .Z(n557)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(216[13:50])
    defparam i887_1_lut.init = 16'h5555;
    LUT4 i21_4_lut (.A(n10986), .B(n469), .C(state[1]), .D(n9), .Z(show_char_data_8__N_275[5])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[10] 285[22])
    defparam i21_4_lut.init = 16'h3505;
    LUT4 i1_3_lut (.A(n203[9]), .B(n33[10]), .C(n9161), .Z(n9)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[10] 285[22])
    defparam i1_3_lut.init = 16'hdcdc;
    LUT4 i1_4_lut_adj_18 (.A(n203[4]), .B(n9169), .C(n203[5]), .D(n8234), 
         .Z(n9161)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(260[9] 273[16])
    defparam i1_4_lut_adj_18.init = 16'h3031;
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3IX data_i6 (.D(n557), .SP(sys_clk_50MHz_enable_58), .CD(n4183), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_63), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n10986), .B(n10944), .C(state[1]), 
         .D(n4), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[10] 285[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h3505;
    LUT4 i1_4_lut_adj_19 (.A(\end_y_8__N_313[4] ), .B(n203[7]), .C(n203[9]), 
         .D(n203[8]), .Z(n4)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(260[9] 273[16])
    defparam i1_4_lut_adj_19.init = 16'ha0a8;
    LUT4 i22_4_lut (.A(n10986), .B(n9309), .C(state[1]), .D(n469), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[10] 285[22])
    defparam i22_4_lut.init = 16'h05c5;
    LUT4 i4_4_lut_adj_20 (.A(n203[15]), .B(n203[11]), .C(n203[13]), .D(n6_adj_715), 
         .Z(n469)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(260[9] 273[16])
    defparam i4_4_lut_adj_20.init = 16'hfffe;
    LUT4 i8896_3_lut (.A(n203[9]), .B(n9161), .C(n33[10]), .Z(n9309)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8896_3_lut.init = 16'hfefe;
    LUT4 i3961_4_lut (.A(n9169), .B(n203[9]), .C(n203[5]), .D(n203[4]), 
         .Z(n4528)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(260[9] 273[16])
    defparam i3961_4_lut.init = 16'hcdcc;
    FD1S3JX state_FSM_i3 (.D(n2412), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_21 (.A(n6854), .B(n9114), .C(n203[9]), .D(n9169), 
         .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_21.init = 16'hc0c4;
    FD1S3AX state_FSM_i2 (.D(n2421), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1857_2_lut (.A(state_c[0]), .B(\state_3__N_370[1] ), .Z(n2412)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam i1857_2_lut.init = 16'h2222;
    LUT4 i1866_4_lut (.A(state[1]), .B(\state_3__N_370[1] ), .C(state_3__N_374[2]), 
         .D(state_c[0]), .Z(n2421)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam i1866_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut_rep_205 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n11046)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_205.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_140_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n10981)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_140_3_lut.init = 16'hbfbf;
    LUT4 i9994_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_22)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i9994_2_lut_3_lut.init = 16'h0404;
    LUT4 temp_7__N_426_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(state[3]), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_443)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_426_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_2_lut_3_lut (.A(n33[10]), .B(n469), .C(state[1]), .Z(n9114)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1901_4_lut (.A(state[2]), .B(state_3__N_374[2]), .C(n10943), 
         .D(state[1]), .Z(n2457)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam i1901_4_lut.init = 16'hce0a;
    LUT4 temp_7__I_0_i7_4_lut (.A(n10272), .B(temp[7]), .C(n10981), .D(rom_addr[10]), 
         .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i7_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_22 (.A(n203[12]), .B(n203[14]), .Z(n6_adj_715)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(260[9] 273[16])
    defparam i1_2_lut_adj_22.init = 16'heeee;
    LUT4 i3_4_lut_adj_23 (.A(cnt_length_num_c[1]), .B(n11051), .C(cnt_length_num[0]), 
         .D(cnt_length_num_c[3]), .Z(n8_adj_714)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_23.init = 16'hdfff;
    LUT4 i2226_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .D(rom_addr[3]), .Z(n11112)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i2226_3_lut_4_lut_4_lut_then_4_lut.init = 16'hffef;
    LUT4 i2226_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .Z(n11111)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i2226_3_lut_4_lut_4_lut_else_4_lut.init = 16'hfdfd;
    LUT4 i6206_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n11074), 
         .D(rom_addr[3]), .Z(n1596)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i6206_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i9045_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n9468)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9045_4_lut_4_lut.init = 16'h7340;
    LUT4 i371_2_lut_rep_214 (.A(n203[6]), .B(n203[7]), .Z(n11055)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i371_2_lut_rep_214.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(n203[6]), .B(n203[7]), .C(n203[8]), 
         .Z(n9169)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'hfefe;
    LUT4 i9354_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n11899), 
         .D(n301), .Z(n9777)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9354_4_lut_4_lut.init = 16'h7340;
    LUT4 i5893_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n11030), .C(rom_addr[3]), 
         .D(n11034), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5893_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i153_2_lut_rep_215 (.A(state[2]), .B(temp[0]), .Z(n11056)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[13:55])
    defparam i153_2_lut_rep_215.init = 16'h2222;
    LUT4 i3624_2_lut_3_lut (.A(state[2]), .B(temp[0]), .C(state[1]), .Z(n4183)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[13:55])
    defparam i3624_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i6025_2_lut_rep_145_3_lut (.A(state[2]), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n10986)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(274[13:55])
    defparam i6025_2_lut_rep_145_3_lut.init = 16'hf2f2;
    LUT4 i8983_1_lut_2_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n9414)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i8983_1_lut_2_lut_2_lut.init = 16'hbbbb;
    LUT4 i369_2_lut_rep_216 (.A(n203[4]), .B(n203[5]), .Z(n11057)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i369_2_lut_rep_216.init = 16'heeee;
    LUT4 i6093_4_lut_4_lut (.A(n203[4]), .B(n203[5]), .C(n11055), .D(n8234), 
         .Z(n3949)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i6093_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i6255_2_lut_3_lut (.A(n203[4]), .B(n203[5]), .C(n8234), .Z(n6854)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i6255_2_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), 
         .C(rom_addr[4]), .D(n10959), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i692_2_lut_rep_219 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n11060)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i692_2_lut_rep_219.init = 16'h8888;
    LUT4 i9960_2_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[7]), .C(rom_addr[5]), 
         .Z(n9431)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9960_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i699_2_lut_rep_150_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n10991)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i699_2_lut_rep_150_3_lut.init = 16'h8080;
    LUT4 i697_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n367[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i697_2_lut_3_lut.init = 16'h7878;
    LUT4 i706_2_lut_rep_108_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n10949)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i706_2_lut_rep_108_3_lut_4_lut.init = 16'h8000;
    LUT4 i704_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n367[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(236[27:48])
    defparam i704_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i4105_4_lut_4_lut (.A(rom_addr[3]), .B(n11049), .C(rom_addr[5]), 
         .D(n10957), .Z(n4688)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i4105_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i6223_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n11098), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n1436)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i6223_2_lut_3_lut_4_lut_4_lut.init = 16'h0222;
    LUT4 i8839_2_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n9249)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i8839_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_25 (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n1181)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_25.init = 16'h4000;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n10980), .C(rom_addr[4]), .D(n11095), .Z(n1723)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut_4_lut.init = 16'h3530;
    FD1S3AX state_FSM_i1 (.D(n2457), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i5950_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n11118)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5950_4_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i5950_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n11117)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5950_4_lut_4_lut_else_4_lut.init = 16'h0405;
    LUT4 i1849_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_24), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(149[10] 152[51])
    defparam i1849_2_lut.init = 16'h6666;
    LUT4 i4638_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n5226)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i4638_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n11095), .Z(n94)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n5246_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n332), 
         .D(n5246), .Z(n10748)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam n5246_bdd_4_lut_4_lut.init = 16'h7340;
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_90), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n203[14]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n203[13]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n203[12]), .SP(cnt_set_windows_3__N_386), 
            .CK(sys_clk_50MHz), .Q(n203[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    LUT4 i742_2_lut_rep_250 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n11091)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i742_2_lut_rep_250.init = 16'h8888;
    LUT4 i749_2_lut_rep_183_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n11024)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i749_2_lut_rep_183_3_lut.init = 16'h8080;
    LUT4 i747_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n436[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i747_2_lut_3_lut.init = 16'h7878;
    LUT4 i836_2_lut_rep_237 (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n11078)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i836_2_lut_rep_237.init = 16'h8888;
    LUT4 i754_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n436[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(251[30:54])
    defparam i754_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .C(\cnt_length_num[4] ), .Z(n4930)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i1_2_lut_3_lut_adj_26.init = 16'h8787;
    LUT4 i1_2_lut_rep_151_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n10992)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_151_3_lut_3_lut.init = 16'h4040;
    LUT4 i846_2_lut_rep_167_3_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .C(\cnt_length_num[4] ), .Z(n11008)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i846_2_lut_rep_167_3_lut.init = 16'hf8f8;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n10954), 
         .C(n11020), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .C(\cnt_length_num[5] ), .D(\cnt_length_num[4] ), .Z(n4928)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[21:85])
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'hf087;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n9127), 
         .C(n3295), .D(n891_adj_716), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i6047_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n6637)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6047_2_lut.init = 16'heeee;
    LUT4 i6042_3_lut_3_lut (.A(rom_addr[6]), .B(n8373), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i6042_3_lut_3_lut.init = 16'h0202;
    LUT4 i76_2_lut (.A(state[2]), .B(the1_wr_done), .Z(n272)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(180[13:55])
    defparam i76_2_lut.init = 16'h8888;
    LUT4 i9557_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_717), .C(rom_addr[4]), 
         .D(n11030), .Z(n9596)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9557_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i6083_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n11090), 
         .D(rom_addr[2]), .Z(n349)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i6083_3_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 i5910_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n11089), 
         .D(n10987), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5910_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n11074), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n10950), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5876_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n11900), 
         .D(n11023), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5876_4_lut_4_lut.init = 16'h5140;
    LUT4 i5949_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n332), .C(rom_addr[3]), 
         .D(n10980), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5949_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 n460_bdd_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n460), .C(n452), 
         .D(rom_addr[3]), .Z(n10483)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam n460_bdd_4_lut_4_lut_4_lut.init = 16'hccd8;
    LUT4 n9663_bdd_3_lut_10393_3_lut_3_lut (.A(rom_addr[4]), .B(n3699), 
         .C(rom_addr[3]), .Z(n10709)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam n9663_bdd_3_lut_10393_3_lut_3_lut.init = 16'h0404;
    LUT4 i9263_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278), .Z(n9686)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9263_4_lut_4_lut.init = 16'h7340;
    LUT4 i9831_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n10531), .Z(n5259)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9831_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2419_2_lut_2_lut (.A(rom_addr[7]), .B(n2974), .Z(n2975)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i2419_2_lut_2_lut.init = 16'hdddd;
    LUT4 i9834_3_lut_3_lut (.A(rom_addr[7]), .B(n21), .C(n16), .Z(n23)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9834_3_lut_3_lut.init = 16'he4e4;
    LUT4 i9086_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n8427), 
         .D(n127), .Z(n9509)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9086_4_lut_4_lut.init = 16'hd1c0;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_463)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(140[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 state_3__N_367_I_0_196_2_lut (.A(state[1]), .B(the1_wr_done), .Z(cnt_set_windows_3__N_386)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(133[13:44])
    defparam state_3__N_367_I_0_196_2_lut.init = 16'h8888;
    LUT4 i9978_4_lut (.A(cnt_wr_color_data[0]), .B(n10981), .C(n8_adj_713), 
         .D(n272), .Z(sys_clk_50MHz_enable_90)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i9978_4_lut.init = 16'h3b33;
    LUT4 n4801_bdd_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(n11098), .D(rom_addr[1]), .Z(n10607)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam n4801_bdd_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i5952_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n723), .C(rom_addr[3]), 
         .D(n10980), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i5952_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n10970), .D(n11094), .Z(n94_adj_718)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i9165_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n11095), .Z(n9588)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(158[10] 161[86])
    defparam i9165_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i2_3_lut_adj_28 (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), 
         .C(cnt_wr_color_data[3]), .Z(n9087)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_28.init = 16'h8080;
    FD1S3IX state_FSM_i0 (.D(state[2]), .CK(sys_clk_50MHz), .CD(state_3__N_378[2]), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    char_ram char_ram_inst (.\rom_addr[3] (rom_addr[3]), .\rom_addr[0] (rom_addr[0]), 
            .\rom_addr[5] (rom_addr[5]), .\rom_addr[8] (rom_addr[8]), .\rom_addr[4] (rom_addr[4]), 
            .\rom_addr[2] (rom_addr[2]), .n11089(n11089), .\rom_addr[7] (rom_addr[7]), 
            .\rom_addr[1] (rom_addr[1]), .\rom_addr[6] (rom_addr[6]), .n11899(n11899), 
            .n10987(n10987), .n158(n158), .n301(n301), .n11030(n11030), 
            .n1851(n1851), .n10748(n10748), .n9414(n9414), .n1565(n1565), 
            .n1596(n1596), .n1181(n1181), .n308(n308), .n723(n723), 
            .n11900(n11900), .\rom_addr[10] (rom_addr[10]), .\rom_q[4] (rom_q[4]), 
            .\rom_q[2] (rom_q[2]), .\rom_q[5] (rom_q[5]), .n286(n286), 
            .n317(n317), .\rom_addr[9] (rom_addr[9]), .n11074(n11074), 
            .n9509(n9509), .n11049(n11049), .n9588(n9588), .n9686(n9686), 
            .n9596(n9596), .n10709(n10709), .n1534(n1534), .n2046(n2046), 
            .n10980(n10980), .n9127(n9127), .n11090(n11090), .n10959(n10959), 
            .n23(n23), .n8427(n8427), .n11094(n11094), .n5259(n5259), 
            .n9431(n9431), .n5246(n5246), .n1278(n1278), .n1529(n1529), 
            .n1676(n1676), .n8373(n8373), .n9916(n9916), .n11095(n11095), 
            .n1101(n1101), .n380(n380), .n349(n349), .n9247(n9247), 
            .n1405(n1405), .n10970(n10970), .n891(n891_adj_716), .n11073(n11073), 
            .n1149(n1149), .n9243(n9243), .n11098(n11098), .n332(n332), 
            .n11034(n11034), .n3295(n3295), .n5226(n5226), .n10957(n10957), 
            .n2974(n2974), .n9401(n9401), .n3699(n3699), .n11113(n11113), 
            .n94(n94_adj_718), .n126(n126), .n127(n127), .n10992(n10992), 
            .n2025(n2025), .n1436(n1436), .n16(n16), .n21(n21), .n11107(n11107), 
            .n1661(n1661), .n5039(n5039), .n4688(n4688), .n892(n892), 
            .n11020(n11020), .\rom_q[3] (rom_q[3]), .n1723(n1723), .n1755(n1755), 
            .n125(n125), .n2975(n2975), .n270(n270_adj_717), .\rom_q[1] (rom_q[1]), 
            .n94_adj_1(n94), .n10607(n10607), .n10950(n10950), .n9777(n9777), 
            .n270_adj_2(n270), .n10954(n10954), .n1069(n1069), .n891_adj_3(n891), 
            .n1172(n1172), .n10272(n10272), .n460(n460), .n1275(n1275), 
            .n10530(n10530), .n10531(n10531), .n452(n452), .n9249(n9249), 
            .n1084(n1084), .n11119(n11119), .n10483(n10483), .n11023(n11023), 
            .n364(n364), .n9468(n9468), .n10966(n10966), .\rom_q[0] (rom_q[0]), 
            .n1148(n1148)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(305[10] 309[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (\rom_addr[3] , \rom_addr[0] , \rom_addr[5] , \rom_addr[8] , 
            \rom_addr[4] , \rom_addr[2] , n11089, \rom_addr[7] , \rom_addr[1] , 
            \rom_addr[6] , n11899, n10987, n158, n301, n11030, n1851, 
            n10748, n9414, n1565, n1596, n1181, n308, n723, n11900, 
            \rom_addr[10] , \rom_q[4] , \rom_q[2] , \rom_q[5] , n286, 
            n317, \rom_addr[9] , n11074, n9509, n11049, n9588, n9686, 
            n9596, n10709, n1534, n2046, n10980, n9127, n11090, 
            n10959, n23, n8427, n11094, n5259, n9431, n5246, n1278, 
            n1529, n1676, n8373, n9916, n11095, n1101, n380, n349, 
            n9247, n1405, n10970, n891, n11073, n1149, n9243, 
            n11098, n332, n11034, n3295, n5226, n10957, n2974, 
            n9401, n3699, n11113, n94, n126, n127, n10992, n2025, 
            n1436, n16, n21, n11107, n1661, n5039, n4688, n892, 
            n11020, \rom_q[3] , n1723, n1755, n125, n2975, n270, 
            \rom_q[1] , n94_adj_1, n10607, n10950, n9777, n270_adj_2, 
            n10954, n1069, n891_adj_3, n1172, n10272, n460, n1275, 
            n10530, n10531, n452, n9249, n1084, n11119, n10483, 
            n11023, n364, n9468, n10966, \rom_q[0] , n1148) /* synthesis syn_module_defined=1 */ ;
    input \rom_addr[3] ;
    input \rom_addr[0] ;
    input \rom_addr[5] ;
    input \rom_addr[8] ;
    input \rom_addr[4] ;
    input \rom_addr[2] ;
    output n11089;
    input \rom_addr[7] ;
    input \rom_addr[1] ;
    input \rom_addr[6] ;
    output n11899;
    output n10987;
    input n158;
    output n301;
    output n11030;
    input n1851;
    input n10748;
    input n9414;
    input n1565;
    input n1596;
    input n1181;
    output n308;
    output n723;
    output n11900;
    input \rom_addr[10] ;
    output \rom_q[4] ;
    output \rom_q[2] ;
    output \rom_q[5] ;
    input n286;
    input n317;
    input \rom_addr[9] ;
    output n11074;
    input n9509;
    output n11049;
    input n9588;
    input n9686;
    input n9596;
    input n10709;
    input n1534;
    output n2046;
    output n10980;
    output n9127;
    output n11090;
    output n10959;
    input n23;
    output n8427;
    output n11094;
    input n5259;
    input n9431;
    output n5246;
    output n1278;
    output n1529;
    output n1676;
    output n8373;
    input n9916;
    output n11095;
    output n1101;
    input n380;
    input n349;
    output n9247;
    output n1405;
    output n10970;
    output n891;
    output n11073;
    input n1149;
    input n9243;
    output n11098;
    output n332;
    output n11034;
    output n3295;
    input n5226;
    input n10957;
    output n2974;
    input n9401;
    output n3699;
    input n11113;
    input n94;
    input n126;
    output n127;
    input n10992;
    output n2025;
    input n1436;
    output n16;
    output n21;
    input n11107;
    output n1661;
    input n5039;
    input n4688;
    input n892;
    input n11020;
    output \rom_q[3] ;
    input n1723;
    input n1755;
    input n125;
    input n2975;
    output n270;
    output \rom_q[1] ;
    input n94_adj_1;
    input n10607;
    output n10950;
    input n9777;
    output n270_adj_2;
    output n10954;
    output n1069;
    input n891_adj_3;
    output n1172;
    output n10272;
    output n460;
    input n1275;
    input n10530;
    output n10531;
    output n452;
    input n9249;
    input n1084;
    input n11119;
    input n10483;
    output n11023;
    output n364;
    input n9468;
    output n10966;
    output \rom_q[0] ;
    input n1148;
    
    
    wire n11067, n11025, n10229, n9899, n9900, n9903, n9860, n9861, 
        n9868, n506, n475, n9605, n11065, n30, n9810, n10691, 
        n9826, n205, n9793, n9794, n9802, n9901, n9902, n9904, 
        n10794, n10791, n10795, n10793, n10792, n428, n684, n9600, 
        n9791, n9792, n9801, n1017, n9599, n10476, n9790, n9800, 
        n9787, n9788, n9799, n4171, n10790, n9785, n9786, n9798, 
        n9783, n9784, n9797, n9781, n9782, n9796, n9484, n9485, 
        n9486, n844, n557, n10230, n10227, n10231, n9674, n891_c, 
        n9488, n10772, n10769, n10773, n9779, n9780, n9795, n9136, 
        n11004, n11041, n9493, n9494, n9495, n1789, n2044, n9687, 
        n9496, n9497, n9500, n9498, n9499, n9501, n9503, n9504, 
        n9505, n9506, n9507, n9508, n1549, n1564, n1565_c, n189, 
        n190, n9760, n9761, n766, n10228, n10751, n10749, n10752, 
        n9516, n9517, n9518, n11022, n61, n348, n1820, n1852, 
        n10962, n10750, n10838, n11017, n10747, n1643, n1549_adj_545, 
        n9587, n1514, n1530, n1531, n9519, n9520, n9521, n1117, 
        n9143, n9523, n9562, n11084, n1278_c, n1533, n9511, n924, 
        n956, n827, n828, n9410, n829, n9525, n9526, n9527, 
        n1038, n11904, n11905, n11906, n9528, n9529, n9530, n2025_c, 
        n2040, n9583, n766_adj_547, n1021, n9510, n11048, n10982, 
        n364_c, n380_c, n381, n10735, n10733, n10736, n9537, n9538, 
        n9539, n10734, n9543, n9544, n9545, n10946, n4511, n61_adj_548, 
        n62, n63, n10976, n11114, n11115, n11116, n9546, n9547, 
        n9548, n9549, n9550, n9553, n9551, n9552, n9554, n10350, 
        n10349, n10351, n1739, n1786, n1787, n1514_adj_549, n1530_adj_550, 
        n1531_adj_551, n1628, n1659, n9563, n797, n828_adj_552, 
        n9487, n10958, n1181_adj_553, n1212, n1213, n9866, n9867, 
        n9871, n859, n860, n11077, n892_c, n10942, n9864, n9865, 
        n9870, n812, n828_adj_554, n829_adj_555, n716, n732, n11075, 
        n764, n11901, n11902, n11903, n1451, n11007, n4046, n699, 
        n5223, n11015, n11021, n1450, n9565, n9566, n9567, n3824, 
        n9807, n9808, n3767, n364_adj_556, n380_adj_557, n381_adj_558, 
        n9872, n9873, n9568, n9569, n9570, n9513, n9514, n9443, 
        n9684, n9685, n9688, n620, n9574, n9575, n9576, n10732, 
        n1275_c, n9803, n9804, n9805, n9806, n9577, n9578, n9579, 
        n10207, n10206, n10208, n205_adj_559, n220, n11088, n9580, 
        n9581, n9584, n9885, n9886, n9888, n9582, n9585, n5228, 
        n11086, n9512, n9589, n10713, n10711, n10714, n9590, n9591, 
        n9592, n11124, n1021_adj_560, n9689, n9597, n9598, n10226, 
        n10225, n9601, n10712, n9606, n9607, n9832, n9833, n9837, 
        n9869, n11083, n10710, n9879, n9880, n9883, n9884, n9887, 
        n9608, n9609, n9610, n2045, n9745, n9746, n2044_adj_561, 
        n684_adj_562, n6852, n1403, n5230, n9818, n9819, n9830, 
        n9824, n9825, n9618, n9619, n9620, n255, n510, n9621, 
        n9622, n9623, n11166, n11167, n11168, n3720, n1786_adj_563, 
        n1787_adj_564, n890, n9627, n9628, n9629, n9633, n9634, 
        n9635, n9854, n9855, n1786_adj_565, n1787_adj_566, n731, 
        n9636, n9637, n9638, n10527, n11001, n542, n574, n11050, 
        n4657, n428_adj_567, n908, n3249, n1978, n986, n10941, 
        n10221, n2580, n1435, n3759, n971, n11018, n124, n10967, 
        n1786_adj_568, n10935, n635, n428_adj_569, n443, n9649, 
        n9881, n9882, n1387, n1403_adj_570, n1946, n1947, n1707, 
        n1723_c, n526, n526_adj_571, n1882, n1883, n860_adj_572, 
        n893, n9377, n731_adj_573, n5224, n11093, n1658, n26, 
        n9433, n5241, n251, n221, n1228, n1707_adj_574, n557_adj_575, 
        n9721, n10925, n1691, n603, n699_adj_576, n1867, n491, 
        n9743, n9744, n9654, n9655, n9656, n5204, n46, n747, 
        n9766, n9767, n6692, n9154, n9915, n9773, n9774, n5235, 
        n364_adj_578, n635_adj_579, n63_adj_580, n236, n379, n506_adj_581, 
        n956_adj_582, n1019, n11027, n4744, n4299, n1785, n1913, 
        n5238, n124_adj_583, n251_adj_584, n1676_c, n9673, n9651, 
        n1691_adj_585, n9663, n1468, n1724, n1466, n6838, n9460, 
        n1149_c, n1915, n9814, n9815, n9828, n9822, n9823, n1341, 
        n1404, n10623, n1979, n9859, n9669, n9670, n9671, n9844, 
        n9845, n9846, n9847, n1243, n3181, n9856, n9857, n9467, 
        n9480, n9877, n9489, n9502, n9878, n9522, n9524, n10474, 
        n668, n1483, n1387_adj_587, n8371, n8372, n1514_adj_588, 
        n1196, n1770, n2040_adj_589, n1243_adj_590, n10939, n604, 
        n11035, n11037, n10591, n604_adj_591, n1435_adj_592, n1244, 
        n1275_adj_593, n1276, n9841, n10897, n10270, n653, n1228_adj_594, 
        n9471, n6453, n11356, n1467, n3750, n9697, n9698, n9701, 
        n1451_adj_595, n1723_adj_596, n476, n507, n11355, n11044, 
        n9469, n11359, n5254, n11360, n1466_adj_598, n10471, n2009, 
        n1692, n9691, n9699, n9700, n9702, n9719, n9704, n9705, 
        n9708, n10932, n10473, n1676_adj_599, n1692_adj_600, n1914, 
        n9770, n1851_adj_601, n9741, n1692_adj_602, n11163, n11164, 
        n11165, n9706, n9707, n9709, n11127, n1676_adj_603, n9245, 
        n9482, n9652, n10485, n9711, n9712, n9715, n9713, n9714, 
        n9716, n10995, n10896, n1883_adj_604, n11133, n9751, n10979, 
        n2009_adj_605, n1341_adj_606, n10267, n1435_adj_607, n1436_c, 
        n9464, n2009_adj_608, n2010, n9463, n11003, n1565_adj_609, 
        n1597, n397, n9648, n10933, n9729, n9730, n9732, n124_adj_610, 
        n10690, n10688, n1467_adj_611, n11126, n9736, n9737, n9739, 
        n10266, n1274, n9682, n10269, n11028, n2025_adj_612, n1054, 
        n9742, n1978_adj_613, n78, n10689, n2009_adj_614, n9724, 
        n443_adj_615, n9461, n9831, n11226, n11104, n9755, n188, 
        n11227, n9769, n11033, n11898, n1002, n285, n9771, n9772, 
        n890_adj_616, n9456, n11099, n1084_c, n11103, n11076, n9148, 
        n9753, n190_adj_617, n253, n11040, n11032, n1596_adj_618, 
        n796, n10973, n9641, n9677, n604_adj_620, n1038_adj_621, 
        n1053, n9458, n9680, n9462, n9630, n9631, n9632, n9683, 
        n859_adj_623, n9455, n1597_adj_624, n1660, n11129, n9449, 
        n11092, n61_adj_625, n9447, n9693, n1915_adj_626, n11131, 
        n10687, n10686, n1243_adj_627, n1676_adj_628, n5207, n10969, 
        n9725, n9720, n9726, n11130, n1883_adj_629, n589, n9440, 
        n10955, n9829, n11228, n526_adj_630, n9438, n9778, n9812, 
        n637, n10842, n11136, n285_adj_631, n270_c, n9439, n9442, 
        n9448, n9451, n9457, n9816, n9470, n9473, n9483, n1404_adj_632, 
        n9820, n9481, n11135, n1467_adj_633, n9821, n1946_adj_634, 
        n9718, n1597_adj_635, n9492, n10487, n11229, n1117_adj_636, 
        n1724_adj_637, n9764, n1612, n10605, n954, n270_adj_638, 
        n9776, n10604, n1755_c, n3937, n1913_adj_639, n1914_adj_640, 
        n11139, n11138, n9111, n5220, n10608, n10618, n10619, 
        n109, n2010_adj_641, n11159, n11230, n11231, n11142, n4216, 
        n10620, n9848, n11141, n1786_adj_642, n10622, n1692_adj_643, 
        n9851, n1149_adj_644, n9852, n11145, n1530_adj_645, n1211, 
        n1499, n11144, n557_adj_646, n1660_adj_647, n1466_adj_648, 
        n11148, n11006, n11147, n1724_adj_649, n10997, n1085, n1852_adj_650, 
        n1915_adj_651, n9858, n1054_adj_652, n1627, n4835, n11157, 
        n11158, n1931, n1947_adj_653, n333, n11151, n1243_adj_654, 
        n9893, n9894, n9895, n11150, n10972, n3418, n1308, n11097, 
        n10936, n1596_adj_655, n10956, n10209, n301_adj_656, n9476, 
        n10222, n1628_adj_657, n1309, n10951, n46_adj_658, n62_adj_659, 
        n1914_adj_660, n11071, n9465, n9466, n9905, n1228_adj_661, 
        n9681, n9478, n9479, n11047, n572, n10610, n1789_adj_662, 
        n1867_adj_663, n1883_adj_664, n653_adj_665, n9675, n1101_adj_666, 
        n1117_adj_667, n1403_adj_668, n9658, n986_adj_669, n11062, 
        n541, n9657, n9531, n9532, n9533, n11143, n9650, n508, 
        n11137, n9659, n10844, n924_adj_670, n987, n9555, n1085_adj_671, 
        n1883_adj_672, n3229, n9817, n380_adj_673, n9754, n10968, 
        n316, n10224, n9849, n10624, n9850, n2791, n955, n1212_adj_674, 
        n9564, n428_adj_675, n444, n11072, n459, n9586, n11066, 
        n604_adj_676, n445, n9121, n10211, n1212_adj_677, n4, n9639, 
        n9640, n220_adj_678, n10593, n11140, n1084_adj_679, n10223, 
        n10220, n5255, n9676, n11149, n10529, n11000, n10993, 
        n10960, n668_adj_681, n10895, n475_adj_682, n9441, n9491, 
        n9475, n2009_adj_683, n1820_adj_685, n1529_adj_686, n1530_adj_687, 
        n1499_adj_688, n10961, n1692_adj_689, n10996, n9752, n1483_adj_690, 
        n6, n9123, n1851_adj_691, n9985, n9474, n1914_adj_692, n1020, 
        n379_adj_694, n11011, n9450, n653_adj_695, n9446, n11152, 
        n1086, n126_adj_696, n9748, n11132, n9664, n10595, n9875, 
        n9863, n9862, n10937, n9477, n1612_adj_697, n9490, n10621, 
        n11361, n11012, n444_adj_701, n10617, n11357, n11358, n10965, 
        n8152, n1898, n10609, n10606, n3612, n10594, n10592, n9459, 
        n9437, n5236, n684_adj_705, n10528, n908_adj_706, n526_adj_707, 
        n10271, n10268, n9672, n1244_adj_708, n220_adj_710, n1292, 
        n9472, n1076, n10841, n10839, n10486, n10484, n10210, 
        n10475, n10472, n10843, n10840;
    
    LUT4 n1443_bdd_4_lut_10249_4_lut (.A(n11067), .B(\rom_addr[3] ), .C(\rom_addr[0] ), 
         .D(n11025), .Z(n10229)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1443_bdd_4_lut_10249_4_lut.init = 16'hdc10;
    PFUMX i9480 (.BLUT(n9899), .ALUT(n9900), .C0(\rom_addr[5] ), .Z(n9903));
    LUT4 i9445_3_lut (.A(n9860), .B(n9861), .C(\rom_addr[8] ), .Z(n9868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9445_3_lut.init = 16'hcaca;
    LUT4 i9182_3_lut (.A(n506), .B(n475), .C(\rom_addr[4] ), .Z(n9605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9182_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(n11089), .D(n11065), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i9403_3_lut (.A(n9810), .B(n10691), .C(\rom_addr[7] ), .Z(n9826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9403_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n205)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut_4_lut_4_lut.init = 16'hc204;
    LUT4 i9379_3_lut (.A(n9793), .B(n9794), .C(\rom_addr[7] ), .Z(n9802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9379_3_lut.init = 16'hcaca;
    PFUMX i9481 (.BLUT(n9901), .ALUT(n9902), .C0(\rom_addr[5] ), .Z(n9904));
    L6MUX21 i10458 (.D0(n10794), .D1(n10791), .SD(\rom_addr[5] ), .Z(n10795));
    PFUMX i10456 (.BLUT(n10793), .ALUT(n10792), .C0(\rom_addr[6] ), .Z(n10794));
    LUT4 i9177_3_lut (.A(n428), .B(n684), .C(\rom_addr[4] ), .Z(n9600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9177_3_lut.init = 16'hcaca;
    LUT4 i9378_3_lut (.A(n9791), .B(n9792), .C(\rom_addr[7] ), .Z(n9801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9378_3_lut.init = 16'hcaca;
    LUT4 i9176_3_lut (.A(n1017), .B(n506), .C(\rom_addr[4] ), .Z(n9599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9176_3_lut.init = 16'hcaca;
    LUT4 i9377_3_lut (.A(n10476), .B(n9790), .C(\rom_addr[7] ), .Z(n9800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9377_3_lut.init = 16'hcaca;
    LUT4 i9376_3_lut (.A(n9787), .B(n9788), .C(\rom_addr[7] ), .Z(n9799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9376_3_lut.init = 16'hcaca;
    PFUMX i10454 (.BLUT(n4171), .ALUT(n10790), .C0(\rom_addr[6] ), .Z(n10791));
    LUT4 i9375_3_lut (.A(n9785), .B(n9786), .C(\rom_addr[7] ), .Z(n9798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9375_3_lut.init = 16'hcaca;
    LUT4 i9374_3_lut (.A(n9783), .B(n9784), .C(\rom_addr[7] ), .Z(n9797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9374_3_lut.init = 16'hcaca;
    LUT4 i9373_3_lut (.A(n9781), .B(n9782), .C(\rom_addr[7] ), .Z(n9796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9373_3_lut.init = 16'hcaca;
    PFUMX i9063 (.BLUT(n9484), .ALUT(n9485), .C0(\rom_addr[5] ), .Z(n9486));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n11067), .B(n11899), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .Z(n557)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    L6MUX21 i10047 (.D0(n10230), .D1(n10227), .SD(\rom_addr[5] ), .Z(n10231));
    PFUMX i9065 (.BLUT(n9674), .ALUT(n891_c), .C0(\rom_addr[5] ), .Z(n9488));
    PFUMX i10442 (.BLUT(n10772), .ALUT(n10769), .C0(\rom_addr[6] ), .Z(n10773));
    LUT4 i9372_3_lut (.A(n9779), .B(n9780), .C(\rom_addr[7] ), .Z(n9795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9372_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(n11065), 
         .D(\rom_addr[4] ), .Z(n9136)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 i5702_2_lut_rep_163_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n11004)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5702_2_lut_rep_163_3_lut.init = 16'h9090;
    LUT4 i5867_2_lut_rep_146_2_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n10987)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5867_2_lut_rep_146_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i1_2_lut_rep_200_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(\rom_addr[1] ), 
         .Z(n11041)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_200_3_lut.init = 16'h6060;
    PFUMX i9072 (.BLUT(n9493), .ALUT(n9494), .C0(\rom_addr[5] ), .Z(n9495));
    LUT4 i9264_3_lut (.A(n1789), .B(n2044), .C(\rom_addr[8] ), .Z(n9687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9264_3_lut.init = 16'hcaca;
    PFUMX i9077 (.BLUT(n9496), .ALUT(n9497), .C0(\rom_addr[5] ), .Z(n9500));
    PFUMX i9078 (.BLUT(n9498), .ALUT(n9499), .C0(\rom_addr[5] ), .Z(n9501));
    PFUMX i9082 (.BLUT(n9503), .ALUT(n9504), .C0(\rom_addr[5] ), .Z(n9505));
    PFUMX i9085 (.BLUT(n9506), .ALUT(n9507), .C0(\rom_addr[5] ), .Z(n9508));
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549), .ALUT(n1564), .C0(\rom_addr[4] ), 
          .Z(n1565_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(\rom_addr[5] ), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i9339_3_lut (.A(n9760), .B(n9761), .C(\rom_addr[7] ), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9339_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i301_3_lut_4_lut_4_lut_3_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i301_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    PFUMX i10045 (.BLUT(n10229), .ALUT(n10228), .C0(\rom_addr[4] ), .Z(n10230));
    L6MUX21 i10426 (.D0(n10751), .D1(n10749), .SD(\rom_addr[6] ), .Z(n10752));
    PFUMX i9095 (.BLUT(n9516), .ALUT(n9517), .C0(\rom_addr[5] ), .Z(n9518));
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n11022), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(n11030), .Z(n61)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 i5659_2_lut_2_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .Z(n348)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5659_2_lut_2_lut_3_lut.init = 16'h0202;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(\rom_addr[5] ), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i10424 (.BLUT(n10962), .ALUT(n10750), .C0(\rom_addr[5] ), .Z(n10751));
    LUT4 n70_bdd_2_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(\rom_addr[1] ), 
         .Z(n10838)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n70_bdd_2_lut_3_lut.init = 16'h9090;
    LUT4 i1_2_lut_rep_176_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n11017)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_176_3_lut_4_lut.init = 16'h0d00;
    PFUMX i10422 (.BLUT(n10748), .ALUT(n10747), .C0(\rom_addr[5] ), .Z(n10749));
    LUT4 i9164_3_lut (.A(n1643), .B(n1549_adj_545), .C(\rom_addr[4] ), 
         .Z(n9587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9164_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n9414), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i9098 (.BLUT(n9519), .ALUT(n9520), .C0(\rom_addr[5] ), .Z(n9521));
    PFUMX i9100 (.BLUT(n1117), .ALUT(n9143), .C0(\rom_addr[5] ), .Z(n9523));
    PFUMX i9139 (.BLUT(n1565), .ALUT(n1596), .C0(\rom_addr[5] ), .Z(n9562));
    LUT4 i8802_2_lut_rep_243 (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .Z(n11084)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8802_2_lut_rep_243.init = 16'h2222;
    LUT4 i9873_3_lut (.A(n1278_c), .B(n1533), .C(\rom_addr[8] ), .Z(n9511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9873_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924), .ALUT(n9136), .C0(\rom_addr[5] ), 
          .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n9410), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i9104 (.BLUT(n9525), .ALUT(n9526), .C0(\rom_addr[5] ), .Z(n9527));
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    PFUMX i11084 (.BLUT(n11904), .ALUT(n11905), .C0(\rom_addr[0] ), .Z(n11906));
    L6MUX21 i9107 (.D0(n9528), .D1(n9529), .SD(\rom_addr[5] ), .Z(n9530));
    LUT4 i9160_3_lut (.A(n2025_c), .B(n2040), .C(\rom_addr[4] ), .Z(n9583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9160_3_lut.init = 16'hcaca;
    LUT4 i9087_3_lut (.A(n766_adj_547), .B(n1021), .C(\rom_addr[8] ), 
         .Z(n9510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9087_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_207 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .Z(n11048)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_207.init = 16'h2222;
    LUT4 i1_2_lut_rep_141_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[2] ), 
         .Z(n10982)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_141_3_lut.init = 16'h2020;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380_c), .C0(n9414), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i10416 (.D0(n10735), .D1(n10733), .SD(\rom_addr[6] ), .Z(n10736));
    PFUMX i9116 (.BLUT(n9537), .ALUT(n9538), .C0(\rom_addr[5] ), .Z(n9539));
    PFUMX i10414 (.BLUT(n1181), .ALUT(n10734), .C0(\rom_addr[5] ), .Z(n10735));
    PFUMX i9122 (.BLUT(n9543), .ALUT(n9544), .C0(\rom_addr[5] ), .Z(n9545));
    LUT4 i5641_2_lut_rep_105_3_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n10946)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5641_2_lut_rep_105_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i3945_2_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(\rom_addr[1] ), 
         .Z(n4511)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3945_2_lut_3_lut.init = 16'hf6f6;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61_adj_548), .ALUT(n62), .C0(n9410), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i3008_3_lut_rep_135_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n10976)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3008_3_lut_rep_135_4_lut_3_lut.init = 16'hd6d6;
    PFUMX i10562 (.BLUT(n11114), .ALUT(n11115), .C0(\rom_addr[1] ), .Z(n11116));
    L6MUX21 i9125 (.D0(n9546), .D1(n9547), .SD(\rom_addr[5] ), .Z(n9548));
    PFUMX i9130 (.BLUT(n9549), .ALUT(n9550), .C0(\rom_addr[5] ), .Z(n9553));
    PFUMX i9131 (.BLUT(n9551), .ALUT(n9552), .C0(\rom_addr[5] ), .Z(n9554));
    PFUMX i10119 (.BLUT(n10350), .ALUT(n10349), .C0(\rom_addr[6] ), .Z(n10351));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786), .C0(\rom_addr[5] ), 
          .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_549), .ALUT(n1530_adj_550), 
          .C0(n9414), .Z(n1531_adj_551)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i9140 (.BLUT(n1628), .ALUT(n1659), .C0(\rom_addr[5] ), .Z(n9563));
    PFUMX i9064 (.BLUT(n797), .ALUT(n828_adj_552), .C0(\rom_addr[5] ), 
          .Z(n9487));
    LUT4 address_11__I_0_Mux_1_i308_3_lut_4_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .Z(n308)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i1_2_lut_rep_117_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(\rom_addr[2] ), .Z(n10958)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_117_3_lut_4_lut.init = 16'h2000;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181_adj_553), .ALUT(n1212), 
          .C0(\rom_addr[5] ), .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i9448_3_lut (.A(n9866), .B(n9867), .C(\rom_addr[8] ), .Z(n9871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9448_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860), .C0(n11077), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i5664_2_lut_rep_101_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[2] ), .Z(n10942)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5664_2_lut_rep_101_3_lut_4_lut.init = 16'h2000;
    LUT4 i9447_3_lut (.A(n9864), .B(n9865), .C(\rom_addr[8] ), .Z(n9870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9447_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_554), 
          .C0(n9414), .Z(n829_adj_555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n11075), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i11082 (.BLUT(n11901), .ALUT(n11902), .C0(\rom_addr[0] ), .Z(n11903));
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1451)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 i5758_2_lut_rep_166_2_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n11007)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5758_2_lut_rep_166_2_lut_3_lut.init = 16'h0606;
    LUT4 i5944_2_lut_3_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[0] ), .Z(n723)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5944_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 address_11__I_0_Mux_3_i699_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(n11900), .D(n4046), .Z(n699)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i4635_3_lut_4_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .Z(n5223)) /* synthesis lut_function=(A (B)+!A !(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4635_3_lut_4_lut_4_lut_3_lut.init = 16'h9d9d;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 address_11__I_0_Mux_4_i1738_3_lut_rep_174_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .Z(n11015)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1738_3_lut_rep_174_4_lut_3_lut.init = 16'h7676;
    LUT4 i4629_2_lut_rep_180_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n11021)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4629_2_lut_rep_180_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_6_i1450_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .Z(n1450)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1450_3_lut_4_lut_3_lut.init = 16'hd9d9;
    PFUMX i9144 (.BLUT(n9565), .ALUT(n9566), .C0(\rom_addr[5] ), .Z(n9567));
    LUT4 i3265_3_lut_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n3824)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3265_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    L6MUX21 i9386 (.D0(n9807), .D1(n9808), .SD(\rom_addr[10] ), .Z(\rom_q[4] ));
    LUT4 i3208_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .Z(n3767)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3208_3_lut_4_lut_3_lut.init = 16'hd9d9;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_556), .ALUT(n380_adj_557), 
          .C0(n9414), .Z(n381_adj_558)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i9451 (.D0(n9872), .D1(n9873), .SD(\rom_addr[10] ), .Z(\rom_q[2] ));
    PFUMX i9147 (.BLUT(n9568), .ALUT(n9569), .C0(\rom_addr[5] ), .Z(n9570));
    L6MUX21 i9092 (.D0(n9513), .D1(n9514), .SD(\rom_addr[10] ), .Z(\rom_q[5] ));
    PFUMX i9020 (.BLUT(n286), .ALUT(n317), .C0(\rom_addr[5] ), .Z(n9443));
    L6MUX21 i9265 (.D0(n9684), .D1(n9685), .SD(\rom_addr[9] ), .Z(n9688));
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n620)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h5019;
    PFUMX i9153 (.BLUT(n9574), .ALUT(n9575), .C0(\rom_addr[5] ), .Z(n9576));
    PFUMX i10412 (.BLUT(n10732), .ALUT(n1275_c), .C0(\rom_addr[5] ), .Z(n10733));
    L6MUX21 i9384 (.D0(n9803), .D1(n9804), .SD(\rom_addr[9] ), .Z(n9807));
    L6MUX21 i9385 (.D0(n9805), .D1(n9806), .SD(\rom_addr[9] ), .Z(n9808));
    LUT4 i3183_2_lut_rep_233 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .Z(n11074)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3183_2_lut_rep_233.init = 16'hbbbb;
    PFUMX i9156 (.BLUT(n9577), .ALUT(n9578), .C0(\rom_addr[5] ), .Z(n9579));
    PFUMX i10024 (.BLUT(n10207), .ALUT(n10206), .C0(\rom_addr[3] ), .Z(n10208));
    LUT4 i9478_3_lut (.A(n205_adj_559), .B(n220), .C(\rom_addr[4] ), .Z(n9901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9478_3_lut.init = 16'hcaca;
    LUT4 i5817_2_lut_3_lut_3_lut_4_lut (.A(\rom_addr[3] ), .B(\rom_addr[0] ), 
         .C(\rom_addr[4] ), .D(n11088), .Z(n1181_adj_553)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5817_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    PFUMX i9450 (.BLUT(n9870), .ALUT(n9871), .C0(\rom_addr[9] ), .Z(n9873));
    PFUMX i9161 (.BLUT(n9580), .ALUT(n9581), .C0(\rom_addr[5] ), .Z(n9584));
    L6MUX21 i9465 (.D0(n9885), .D1(n9886), .SD(\rom_addr[9] ), .Z(n9888));
    PFUMX i9162 (.BLUT(n9582), .ALUT(n9583), .C0(\rom_addr[5] ), .Z(n9585));
    LUT4 i4640_4_lut_4_lut_4_lut (.A(\rom_addr[3] ), .B(\rom_addr[0] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[1] ), .Z(n5228)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;
    defparam i4640_4_lut_4_lut_4_lut.init = 16'h07c0;
    PFUMX i9090 (.BLUT(n9509), .ALUT(n9510), .C0(\rom_addr[9] ), .Z(n9513));
    LUT4 i3_1_lut_rep_245 (.A(\rom_addr[5] ), .Z(n11086)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3_1_lut_rep_245.init = 16'h5555;
    LUT4 i1_2_lut_rep_208 (.A(\rom_addr[4] ), .B(\rom_addr[1] ), .Z(n11049)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_208.init = 16'heeee;
    PFUMX i9091 (.BLUT(n9511), .ALUT(n9512), .C0(\rom_addr[9] ), .Z(n9514));
    PFUMX i9166 (.BLUT(n9587), .ALUT(n9588), .C0(\rom_addr[5] ), .Z(n9589));
    L6MUX21 i10398 (.D0(n10713), .D1(n10711), .SD(\rom_addr[6] ), .Z(n10714));
    PFUMX i9169 (.BLUT(n9590), .ALUT(n9591), .C0(\rom_addr[5] ), .Z(n9592));
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n11124)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_4_lut.init = 16'he7e6;
    PFUMX i9262 (.BLUT(n766), .ALUT(n1021_adj_560), .C0(\rom_addr[8] ), 
          .Z(n9685));
    PFUMX i9266 (.BLUT(n9686), .ALUT(n9687), .C0(\rom_addr[9] ), .Z(n9689));
    PFUMX i9175 (.BLUT(n9596), .ALUT(n9597), .C0(\rom_addr[5] ), .Z(n9598));
    PFUMX i10043 (.BLUT(n10226), .ALUT(n10225), .C0(\rom_addr[4] ), .Z(n10227));
    PFUMX i9380 (.BLUT(n9795), .ALUT(n9796), .C0(\rom_addr[8] ), .Z(n9803));
    PFUMX i9381 (.BLUT(n9797), .ALUT(n9798), .C0(\rom_addr[8] ), .Z(n9804));
    PFUMX i9382 (.BLUT(n9799), .ALUT(n9800), .C0(\rom_addr[8] ), .Z(n9805));
    PFUMX i9178 (.BLUT(n9599), .ALUT(n9600), .C0(\rom_addr[5] ), .Z(n9601));
    PFUMX i9383 (.BLUT(n9801), .ALUT(n9802), .C0(\rom_addr[8] ), .Z(n9806));
    PFUMX i10396 (.BLUT(n1181), .ALUT(n10712), .C0(\rom_addr[5] ), .Z(n10713));
    PFUMX i9184 (.BLUT(n9605), .ALUT(n9606), .C0(\rom_addr[5] ), .Z(n9607));
    L6MUX21 i9414 (.D0(n9832), .D1(n9833), .SD(\rom_addr[8] ), .Z(n9837));
    PFUMX i9449 (.BLUT(n9868), .ALUT(n9869), .C0(\rom_addr[9] ), .Z(n9872));
    LUT4 i9984_2_lut_rep_242 (.A(\rom_addr[0] ), .B(\rom_addr[4] ), .Z(n11083)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9984_2_lut_rep_242.init = 16'h1111;
    PFUMX i10394 (.BLUT(n10710), .ALUT(n10709), .C0(\rom_addr[5] ), .Z(n10711));
    PFUMX i9462 (.BLUT(n9879), .ALUT(n9880), .C0(\rom_addr[8] ), .Z(n9885));
    PFUMX i9464 (.BLUT(n9883), .ALUT(n9884), .C0(\rom_addr[9] ), .Z(n9887));
    PFUMX i9187 (.BLUT(n9608), .ALUT(n9609), .C0(\rom_addr[5] ), .Z(n9610));
    PFUMX address_11__I_0_Mux_7_i2046 (.BLUT(n1534), .ALUT(n2045), .C0(\rom_addr[9] ), 
          .Z(n2046)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i9324 (.D0(n9745), .D1(n9746), .SD(\rom_addr[7] ), .Z(n2044_adj_561));
    LUT4 n1241_bdd_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n684_adj_562)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1241_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(\rom_addr[5] ), 
         .B(n6852), .C(\rom_addr[4] ), .D(n10980), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i4642_2_lut_2_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .Z(n5230)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4642_2_lut_2_lut.init = 16'hdddd;
    L6MUX21 i9407 (.D0(n9818), .D1(n9819), .SD(\rom_addr[7] ), .Z(n9830));
    L6MUX21 i9410 (.D0(n9824), .D1(n9825), .SD(\rom_addr[7] ), .Z(n9833));
    PFUMX i9197 (.BLUT(n9618), .ALUT(n9619), .C0(\rom_addr[5] ), .Z(n9620));
    PFUMX i9261 (.BLUT(n255), .ALUT(n510), .C0(\rom_addr[8] ), .Z(n9684));
    PFUMX i9200 (.BLUT(n9621), .ALUT(n9622), .C0(\rom_addr[5] ), .Z(n9623));
    PFUMX i10597 (.BLUT(n11166), .ALUT(n11167), .C0(\rom_addr[1] ), .Z(n11168));
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(\rom_addr[5] ), .B(n9127), 
         .C(n3720), .D(n11017), .Z(n828)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10976), 
         .C(\rom_addr[5] ), .D(n1786_adj_563), .Z(n1787_adj_564)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11015), .Z(n890)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    PFUMX i9206 (.BLUT(n9627), .ALUT(n9628), .C0(\rom_addr[5] ), .Z(n9629));
    PFUMX i9212 (.BLUT(n9633), .ALUT(n9634), .C0(\rom_addr[5] ), .Z(n9635));
    L6MUX21 i9442 (.D0(n9854), .D1(n9855), .SD(\rom_addr[7] ), .Z(n9865));
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10976), 
         .C(\rom_addr[5] ), .D(n1786_adj_565), .Z(n1787_adj_566)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n731)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'h200e;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(\rom_addr[5] ), 
         .B(n1643), .C(n10976), .D(\rom_addr[0] ), .Z(n1530_adj_550)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n483_bdd_3_lut_10030_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n10207)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n483_bdd_3_lut_10030_4_lut_4_lut.init = 16'h3f20;
    LUT4 i9071_3_lut_4_lut (.A(n11004), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n1643), .Z(n9494)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9071_3_lut_4_lut.init = 16'hefe0;
    PFUMX i9215 (.BLUT(n9636), .ALUT(n9637), .C0(\rom_addr[4] ), .Z(n9638));
    LUT4 n3435_bdd_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n10527)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n3435_bdd_3_lut_4_lut_4_lut.init = 16'h2006;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut (.A(n11001), .B(n11083), 
         .C(\rom_addr[5] ), .D(n542), .Z(n574)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut.init = 16'h8f80;
    LUT4 i4077_4_lut_4_lut (.A(n11021), .B(\rom_addr[1] ), .C(\rom_addr[4] ), 
         .D(n11050), .Z(n4657)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4077_4_lut_4_lut.init = 16'h505c;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n428_adj_567)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n908)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut.init = 16'h2048;
    LUT4 i5765_4_lut_4_lut (.A(n11021), .B(\rom_addr[4] ), .C(n3249), 
         .D(\rom_addr[0] ), .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5765_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n986)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 i1_2_lut_rep_100_3_lut_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n10941)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_100_3_lut_4_lut.init = 16'hefff;
    LUT4 rom_addr_1__bdd_3_lut_10467_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n10221)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_1__bdd_3_lut_10467_4_lut_4_lut_4_lut.init = 16'h207f;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[0] ), .C(\rom_addr[1] ), .D(\rom_addr[3] ), .Z(n364_c)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 i2024_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[4] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n2580)) /* synthesis lut_function=(A (B ((D)+!C))+!A ((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2024_3_lut_4_lut_4_lut_4_lut.init = 16'hdd59;
    LUT4 i9061_3_lut_4_lut (.A(n11004), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n1435), .Z(n9484)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9061_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i9146_4_lut (.A(\rom_addr[0] ), .B(n1017), .C(\rom_addr[4] ), 
         .D(n3759), .Z(n9569)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i9146_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[0] ), .D(\rom_addr[1] ), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 n5246_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11018), .C(\rom_addr[4] ), 
         .D(n124), .Z(n10747)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n5246_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11018), 
         .C(\rom_addr[4] ), .D(n10967), .Z(n1786_adj_568)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_94_3_lut_4_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), 
         .C(n11090), .D(\rom_addr[2] ), .Z(n10935)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_94_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 n635_bdd_3_lut_10131_3_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), 
         .C(n635), .Z(n10349)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n635_bdd_3_lut_10131_3_lut.init = 16'h2020;
    PFUMX i9226 (.BLUT(n428_adj_569), .ALUT(n443), .C0(\rom_addr[4] ), 
          .Z(n9649));
    PFUMX i9463 (.BLUT(n9881), .ALUT(n9882), .C0(\rom_addr[8] ), .Z(n9886));
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1387), .Z(n1403_adj_570)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1707), .Z(n1723_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n526_adj_571)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A !(D))) */ ;
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h778a;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1514_adj_549)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n11004), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1882), .Z(n1883)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_572), .ALUT(n893), 
          .C0(n9377), .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n731_adj_573)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 i4636_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n5224)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C (D))+!B (C))) */ ;
    defparam i4636_3_lut_4_lut_4_lut.init = 16'hd838;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n11093), .B(n10959), .C(\rom_addr[3] ), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    PFUMX i42 (.BLUT(n26), .ALUT(n23), .C0(n9433), .Z(n8427));
    LUT4 i4653_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(\rom_addr[2] ), .Z(n5241)) /* synthesis lut_function=(!(A ((C)+!B)+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4653_3_lut_4_lut_4_lut_4_lut.init = 16'h0848;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n251)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h4088;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n11094), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8803_3_lut_4_lut_3_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1228)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!((D)+!C)))) */ ;
    defparam i8803_3_lut_4_lut_3_lut_4_lut.init = 16'h1181;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707_adj_574), .ALUT(n5259), 
          .C0(n9431), .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n557_adj_575)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+(D))) */ ;
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h8a11;
    L6MUX21 i9300 (.D0(n9721), .D1(n10925), .SD(\rom_addr[7] ), .Z(n766_adj_547));
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1691)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hc181;
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n11015), .B(n603), .C(\rom_addr[3] ), 
         .Z(n699_adj_576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n1867)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h6544;
    LUT4 address_11__I_0_Mux_1_i491_3_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n491)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_1_i491_3_lut_4_lut_4_lut.init = 16'h1e9e;
    PFUMX i9323 (.BLUT(n9743), .ALUT(n9744), .C0(\rom_addr[6] ), .Z(n9746));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n475)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 i4658_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[0] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n5246)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4658_4_lut_4_lut_4_lut_4_lut.init = 16'h5854;
    PFUMX i9233 (.BLUT(n9654), .ALUT(n9655), .C0(\rom_addr[4] ), .Z(n9656));
    LUT4 i4616_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n5204)) /* synthesis lut_function=(A (B (C))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4616_4_lut_4_lut_4_lut.init = 16'hc585;
    LUT4 i5851_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n46)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5851_4_lut_4_lut_4_lut.init = 16'h6070;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n205_adj_559)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    PFUMX i9345 (.BLUT(n9766), .ALUT(n9767), .C0(\rom_addr[7] ), .Z(n1278));
    LUT4 i2_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[0] ), .C(n6692), 
         .D(n11048), .Z(n9154)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i9527_1_lut_3_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[4] ), .Z(n9915)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9527_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    L6MUX21 i9352 (.D0(n9773), .D1(n9774), .SD(\rom_addr[7] ), .Z(n2044));
    LUT4 i4647_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n5235)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4647_3_lut_4_lut_4_lut_4_lut.init = 16'hfc40;
    LUT4 n483_bdd_3_lut_10023_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n10206)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n483_bdd_3_lut_10023_4_lut_4_lut_4_lut.init = 16'h04c0;
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[1] ), .D(\rom_addr[3] ), .Z(n364_adj_578)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut_4_lut.init = 16'h1021;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n635_adj_579)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h400c;
    L6MUX21 i9356 (.D0(n63_adj_580), .D1(n9635), .SD(\rom_addr[6] ), .Z(n9779));
    LUT4 i8823_3_lut_4_lut_4_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n236)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8823_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0d20;
    LUT4 address_11__I_0_Mux_2_i379_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n379)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i379_3_lut_4_lut_4_lut.init = 16'h2c41;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n506_adj_581)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n124)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut_4_lut.init = 16'h6040;
    PFUMX i9363 (.BLUT(n956_adj_582), .ALUT(n1019), .C0(\rom_addr[6] ), 
          .Z(n9786));
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 i3740_3_lut_4_lut (.A(\rom_addr[4] ), .B(n11027), .C(\rom_addr[5] ), 
         .D(n4744), .Z(n4299)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3740_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_4_i1785_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1785)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 i4690_2_lut (.A(\rom_addr[0] ), .B(\rom_addr[3] ), .Z(n5238)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4690_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n124_adj_583)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 i5759_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5759_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_1_i251_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n251_adj_584)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i251_4_lut_4_lut.init = 16'h40b0;
    LUT4 i5826_2_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1549)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5826_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1676_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 i9250_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9673)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9250_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 i9228_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9651)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9228_3_lut_4_lut_4_lut.init = 16'h0294;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1691_adj_585)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut.init = 16'h1702;
    LUT4 i9240_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9663)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9240_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    L6MUX21 i9367 (.D0(n1468), .D1(n1531_adj_551), .SD(\rom_addr[6] ), 
            .Z(n9790));
    L6MUX21 i9369 (.D0(n1724), .D1(n1787), .SD(\rom_addr[6] ), .Z(n9792));
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 i4618_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n6838)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4618_3_lut_4_lut_4_lut.init = 16'hfec0;
    L6MUX21 i9395 (.D0(n9460), .D1(n1149_c), .SD(\rom_addr[6] ), .Z(n9818));
    L6MUX21 i9401 (.D0(n1852), .D1(n1915), .SD(\rom_addr[6] ), .Z(n9824));
    L6MUX21 i9405 (.D0(n9814), .D1(n9815), .SD(\rom_addr[7] ), .Z(n9828));
    L6MUX21 i9409 (.D0(n9822), .D1(n9823), .SD(\rom_addr[7] ), .Z(n9832));
    L6MUX21 i9431 (.D0(n1341), .D1(n1404), .SD(\rom_addr[6] ), .Z(n9854));
    LUT4 n3720_bdd_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[4] ), .Z(n10623)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n3720_bdd_3_lut_4_lut_4_lut.init = 16'h2701;
    L6MUX21 i9436 (.D0(n1979), .D1(n9592), .SD(\rom_addr[6] ), .Z(n9859));
    PFUMX i9248 (.BLUT(n9669), .ALUT(n9670), .C0(\rom_addr[4] ), .Z(n9671));
    L6MUX21 i9437 (.D0(n9844), .D1(n9845), .SD(\rom_addr[7] ), .Z(n9860));
    PFUMX i9438 (.BLUT(n9846), .ALUT(n9847), .C0(\rom_addr[7] ), .Z(n9861));
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 i2625_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[4] ), .Z(n3181)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2625_3_lut_4_lut_4_lut.init = 16'hd6fe;
    L6MUX21 i9443 (.D0(n9856), .D1(n9857), .SD(\rom_addr[7] ), .Z(n9866));
    L6MUX21 i9454 (.D0(n9467), .D1(n9480), .SD(\rom_addr[7] ), .Z(n9877));
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n6852)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    L6MUX21 i9455 (.D0(n9489), .D1(n9502), .SD(\rom_addr[7] ), .Z(n9878));
    L6MUX21 i9101 (.D0(n9522), .D1(n9523), .SD(\rom_addr[6] ), .Z(n9524));
    LUT4 n347_bdd_3_lut_10347_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n10474)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n347_bdd_3_lut_10347_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 i9231_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9654)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9231_3_lut_3_lut_4_lut_4_lut.init = 16'h0803;
    LUT4 address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_6_i1387_3_lut_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1387)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1387_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i1_4_lut_4_lut_4_lut_adj_10 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11083), .Z(n9143)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_adj_10.init = 16'h1800;
    LUT4 i9128_3_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n1483), .Z(n9551)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i9128_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_2_i1387_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1387_adj_587)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1387_3_lut_4_lut_4_lut_4_lut.init = 16'h8101;
    PFUMX i7965 (.BLUT(n8371), .ALUT(n8372), .C0(\rom_addr[8] ), .Z(n8373));
    LUT4 address_11__I_0_Mux_1_i1514_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1514_adj_588)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1514_3_lut_4_lut_4_lut_4_lut.init = 16'h1810;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n2040_adj_589)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1243_adj_590)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut_4_lut.init = 16'h4880;
    LUT4 i5824_2_lut_rep_98_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n10939)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5824_2_lut_rep_98_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n604)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut_4_lut.init = 16'h6470;
    LUT4 n1372_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11035), .C(\rom_addr[4] ), 
         .D(n11037), .Z(n10591)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1372_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n604_adj_591)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 i9126_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11035), .C(\rom_addr[4] ), 
         .D(n1435_adj_592), .Z(n9549)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9126_3_lut_4_lut.init = 16'hf101;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_adj_593), 
          .C0(\rom_addr[5] ), .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n9701_bdd_2_lut_10537_4_lut (.A(n9841), .B(n10897), .C(\rom_addr[6] ), 
         .D(\rom_addr[7] ), .Z(n10270)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n9701_bdd_2_lut_10537_4_lut.init = 16'hca00;
    LUT4 i5898_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5898_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[0] ), .C(\rom_addr[1] ), .D(\rom_addr[3] ), .Z(n716)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 i9626_3_lut (.A(n1228_adj_594), .B(n1243_adj_590), .C(\rom_addr[4] ), 
         .Z(n9471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9626_3_lut.init = 16'hcaca;
    PFUMX i7723 (.BLUT(n9915), .ALUT(n9916), .C0(\rom_addr[5] ), .Z(n6453));
    LUT4 n635_bdd_3_lut_10910 (.A(n635), .B(n11124), .C(\rom_addr[4] ), 
         .Z(n11356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n635_bdd_3_lut_10910.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n11095), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1451), .Z(n1467)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 i9145_4_lut (.A(\rom_addr[0] ), .B(n1101), .C(\rom_addr[4] ), 
         .D(n3750), .Z(n9568)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i9145_4_lut.init = 16'hc0ca;
    PFUMX i9278 (.BLUT(n9697), .ALUT(n9698), .C0(\rom_addr[6] ), .Z(n9701));
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n11095), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1451_adj_595), .Z(n1723_adj_596)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 n476_bdd_3_lut_11036 (.A(n476), .B(n507), .C(\rom_addr[5] ), 
         .Z(n11355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n476_bdd_3_lut_11036.init = 16'hcaca;
    LUT4 i9046_4_lut (.A(n11044), .B(n11067), .C(\rom_addr[4] ), .D(\rom_addr[3] ), 
         .Z(n9469)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i9046_4_lut.init = 16'hfaca;
    LUT4 n9443_bdd_3_lut_10723 (.A(n380), .B(n349), .C(\rom_addr[5] ), 
         .Z(n11359)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n9443_bdd_3_lut_10723.init = 16'hacac;
    LUT4 i8838_3_lut_4_lut (.A(n11093), .B(\rom_addr[3] ), .C(n9247), 
         .D(n1676), .Z(n5254)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8838_3_lut_4_lut.init = 16'hefe0;
    LUT4 n9443_bdd_3_lut_11075 (.A(n9443), .B(n11359), .C(\rom_addr[6] ), 
         .Z(n11360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9443_bdd_3_lut_11075.init = 16'hcaca;
    LUT4 i9155_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[4] ), 
         .D(n1466_adj_598), .Z(n9578)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9155_3_lut_4_lut.init = 16'hf202;
    LUT4 n1372_bdd_4_lut_10250 (.A(n10942), .B(\rom_addr[4] ), .C(\rom_addr[3] ), 
         .D(n11094), .Z(n10471)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1372_bdd_4_lut_10250.init = 16'hb888;
    LUT4 i9167_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[4] ), 
         .D(n2009), .Z(n9590)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9167_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11021), .C(\rom_addr[5] ), .D(n10976), .Z(n1692)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 i9268_3_lut_4_lut (.A(n11004), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n10942), .Z(n9691)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9268_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i9279 (.D0(n9699), .D1(n9700), .SD(\rom_addr[6] ), .Z(n9702));
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), 
         .C(\rom_addr[4] ), .D(n1913), .Z(n1786_adj_563)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i9296_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[4] ), 
         .D(n1643), .Z(n9719)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9296_3_lut_4_lut.init = 16'h2f20;
    PFUMX i9285 (.BLUT(n9704), .ALUT(n9705), .C0(\rom_addr[6] ), .Z(n9708));
    LUT4 n347_bdd_4_lut (.A(n10932), .B(\rom_addr[5] ), .C(\rom_addr[3] ), 
         .D(n11094), .Z(n10473)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n347_bdd_4_lut.init = 16'hb888;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), 
         .C(\rom_addr[5] ), .D(n1676_adj_599), .Z(n1692_adj_600)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9347_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[5] ), 
         .D(n1914), .Z(n9770)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9347_3_lut_4_lut.init = 16'hf202;
    LUT4 i9318_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[5] ), 
         .D(n1851_adj_601), .Z(n9741)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9318_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11041), .C(\rom_addr[5] ), .D(n11021), .Z(n1692_adj_602)) /* synthesis lut_function=(!((B (C (D))+!B ((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h08a8;
    PFUMX i10595 (.BLUT(n11163), .ALUT(n11164), .C0(\rom_addr[0] ), .Z(n11165));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), 
         .C(n11027), .D(\rom_addr[7] ), .Z(n8371)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    L6MUX21 i9286 (.D0(n9706), .D1(n9707), .SD(\rom_addr[6] ), .Z(n9709));
    LUT4 n1181_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11041), .C(\rom_addr[4] ), 
         .D(n1196), .Z(n10712)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1181_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[4] ), .D(\rom_addr[3] ), .Z(n11127)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut.init = 16'h1500;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n11022), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(n11004), .Z(n1676_adj_603)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9158_3_lut_4_lut (.A(n11093), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n9245), .Z(n9581)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9158_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9059_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(\rom_addr[3] ), .Z(n9482)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9059_3_lut_4_lut.init = 16'h1f10;
    LUT4 n444_bdd_3_lut_11059 (.A(n9651), .B(n9652), .C(\rom_addr[4] ), 
         .Z(n10485)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n444_bdd_3_lut_11059.init = 16'hcaca;
    L6MUX21 i9292 (.D0(n9711), .D1(n9712), .SD(\rom_addr[6] ), .Z(n9715));
    L6MUX21 i9293 (.D0(n9713), .D1(n9714), .SD(\rom_addr[6] ), .Z(n9716));
    LUT4 n4842_bdd_4_lut (.A(n10995), .B(n4511), .C(\rom_addr[0] ), .D(\rom_addr[4] ), 
         .Z(n10896)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;
    defparam n4842_bdd_4_lut.init = 16'h03aa;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(n11093), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n11004), .Z(n1883_adj_604)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hf2c2;
    LUT4 i9328_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n11133), .Z(n9751)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9328_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9159_3_lut_4_lut (.A(n10979), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n2009_adj_605), .Z(n9582)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9159_3_lut_4_lut.init = 16'hfe0e;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341_adj_606), .ALUT(n9154), 
          .C0(\rom_addr[6] ), .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n9716_bdd_3_lut_10532 (.A(n9708), .B(n9709), .C(\rom_addr[7] ), 
         .Z(n10267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9716_bdd_3_lut_10532.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), 
         .C(\rom_addr[4] ), .D(n1435_adj_607), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 i9041_3_lut (.A(n620), .B(n205), .C(\rom_addr[4] ), .Z(n9464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9041_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n10979), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n2009_adj_608), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(n10979), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n11093), .Z(n1820)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h3e0e;
    LUT4 i9040_3_lut (.A(n491), .B(n604_adj_591), .C(\rom_addr[4] ), .Z(n9463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9040_3_lut.init = 16'hcaca;
    LUT4 i9734_3_lut_4_lut (.A(n11003), .B(n9127), .C(\rom_addr[5] ), 
         .D(n1565_adj_609), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i9734_3_lut_4_lut.init = 16'h8f80;
    PFUMX i9225 (.BLUT(n397), .ALUT(n5224), .C0(\rom_addr[4] ), .Z(n9648));
    L6MUX21 i9421 (.D0(n9508), .D1(n9518), .SD(\rom_addr[6] ), .Z(n9844));
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_92_4_lut (.A(\rom_addr[2] ), 
         .B(n11044), .C(\rom_addr[4] ), .D(n10970), .Z(n10933)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_92_4_lut.init = 16'h8f80;
    L6MUX21 i9309 (.D0(n9729), .D1(n9730), .SD(\rom_addr[6] ), .Z(n9732));
    LUT4 i9094_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11044), .C(\rom_addr[4] ), 
         .D(n124_adj_610), .Z(n9517)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9094_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i10377 (.D0(n10690), .D1(n10688), .SD(\rom_addr[6] ), .Z(n10691));
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11044), 
         .C(\rom_addr[4] ), .D(n5204), .Z(n1467_adj_611)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[4] ), .D(\rom_addr[3] ), .Z(n11126)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut.init = 16'h0400;
    L6MUX21 i9316 (.D0(n9736), .D1(n9737), .SD(\rom_addr[6] ), .Z(n9739));
    LUT4 n9716_bdd_3_lut_10067 (.A(n9716), .B(n9715), .C(\rom_addr[7] ), 
         .Z(n10266)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n9716_bdd_3_lut_10067.init = 16'hacac;
    LUT4 i9259_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n1274), .Z(n9682)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9259_3_lut_4_lut.init = 16'hf101;
    LUT4 n9701_bdd_3_lut_10536 (.A(n9701), .B(n9702), .C(\rom_addr[7] ), 
         .Z(n10269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9701_bdd_3_lut_10536.init = 16'hcaca;
    LUT4 i9081_3_lut_4_lut (.A(n11028), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n2025_adj_612), .Z(n9504)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9081_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n11028), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1038), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    PFUMX i9322 (.BLUT(n9741), .ALUT(n9742), .C0(\rom_addr[6] ), .Z(n9745));
    LUT4 address_11__I_0_Mux_0_i1978_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), 
         .C(\rom_addr[4] ), .D(n1387), .Z(n1978_adj_613)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1978_3_lut_4_lut.init = 16'hf202;
    LUT4 i9205_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n890), .Z(n9628)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9205_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9210_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n78), .Z(n9633)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9210_3_lut_4_lut.init = 16'h2f20;
    LUT4 n668_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n668), .Z(n10689)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n668_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i9301_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n2009_adj_614), .Z(n9724)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9301_3_lut_4_lut.init = 16'hf202;
    LUT4 i9038_3_lut (.A(n526_adj_571), .B(n443_adj_615), .C(\rom_addr[4] ), 
         .Z(n9461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9038_3_lut.init = 16'hcaca;
    LUT4 n9837_bdd_3_lut_11018 (.A(n9830), .B(n9831), .C(\rom_addr[8] ), 
         .Z(n11226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9837_bdd_3_lut_11018.init = 16'hcaca;
    LUT4 i9093_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n11104), .Z(n9516)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9093_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), 
         .C(\rom_addr[4] ), .D(n11037), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i9332 (.D0(n9601), .D1(n9607), .SD(\rom_addr[6] ), .Z(n9755));
    LUT4 i9477_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(\rom_addr[4] ), 
         .D(n188), .Z(n9900)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9477_3_lut_4_lut.init = 16'hf202;
    LUT4 n11226_bdd_3_lut (.A(n11226), .B(n9837), .C(\rom_addr[9] ), .Z(n11227)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n11226_bdd_3_lut.init = 16'hcaca;
    PFUMX i9350 (.BLUT(n9769), .ALUT(n9770), .C0(\rom_addr[6] ), .Z(n9773));
    LUT4 i9183_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11033), .C(\rom_addr[4] ), 
         .D(n684), .Z(n9606)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9183_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9896_2_lut_rep_263 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .Z(n11898)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9896_2_lut_rep_263.init = 16'h9999;
    LUT4 i9076_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11033), .C(\rom_addr[4] ), 
         .D(n1002), .Z(n9499)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9076_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i285_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n285)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i285_3_lut_3_lut_4_lut_4_lut.init = 16'h01c2;
    PFUMX i9351 (.BLUT(n9771), .ALUT(n9772), .C0(\rom_addr[6] ), .Z(n9774));
    LUT4 i9033_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11033), .C(\rom_addr[4] ), 
         .D(n890_adj_616), .Z(n9456)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9033_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n11099), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11094), .Z(n1084_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 i9476_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11035), .C(\rom_addr[4] ), 
         .D(n11037), .Z(n9899)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9476_3_lut_4_lut.init = 16'hf202;
    LUT4 i2_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11103), .C(\rom_addr[5] ), 
         .D(n11076), .Z(n9148)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    L6MUX21 i9387 (.D0(n63), .D1(n9753), .SD(\rom_addr[6] ), .Z(n9810));
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(\rom_addr[0] ), .B(n11035), 
         .C(n4744), .D(\rom_addr[5] ), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    PFUMX i9357 (.BLUT(n190_adj_617), .ALUT(n253), .C0(\rom_addr[6] ), 
          .Z(n9780));
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11040), 
         .C(\rom_addr[4] ), .D(n11032), .Z(n1596_adj_618)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    PFUMX i10375 (.BLUT(n891), .ALUT(n10689), .C0(\rom_addr[5] ), .Z(n10690));
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), 
         .C(n796), .D(n10973), .Z(n828_adj_554)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    L6MUX21 i9358 (.D0(n9641), .D1(n381_adj_558), .SD(\rom_addr[6] ), 
            .Z(n9781));
    L6MUX21 i9361 (.D0(n9677), .D1(n764), .SD(\rom_addr[6] ), .Z(n9784));
    LUT4 i9121_3_lut_4_lut (.A(n11088), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n236), .Z(n9544)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9121_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), 
         .C(\rom_addr[3] ), .D(n11899), .Z(n604_adj_620)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    LUT4 i9636_3_lut (.A(n1038_adj_621), .B(n1053), .C(\rom_addr[4] ), 
         .Z(n9458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9636_3_lut.init = 16'hcaca;
    L6MUX21 i9337 (.D0(n9610), .D1(n9620), .SD(\rom_addr[6] ), .Z(n9760));
    L6MUX21 i9362 (.D0(n829_adj_555), .D1(n892_c), .SD(\rom_addr[6] ), 
            .Z(n9785));
    PFUMX i9364 (.BLUT(n9680), .ALUT(n1149), .C0(\rom_addr[6] ), .Z(n9787));
    LUT4 i9039_3_lut_4_lut (.A(n11088), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n428_adj_567), .Z(n9462)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9039_3_lut_4_lut.init = 16'hf909;
    LUT4 i9669_3_lut (.A(n9630), .B(n9631), .C(\rom_addr[4] ), .Z(n9632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9669_3_lut.init = 16'hcaca;
    L6MUX21 i9365 (.D0(n1213), .D1(n9683), .SD(\rom_addr[6] ), .Z(n9788));
    LUT4 i9638_3_lut (.A(n844), .B(n859_adj_623), .C(\rom_addr[4] ), .Z(n9455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9638_3_lut.init = 16'hcaca;
    PFUMX i9368 (.BLUT(n1597_adj_624), .ALUT(n1660), .C0(\rom_addr[6] ), 
          .Z(n9791));
    LUT4 rom_addr_1__bdd_4_lut_10575 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n11129)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_10575.init = 16'h6144;
    LUT4 i9026_3_lut (.A(n1101), .B(n731_adj_573), .C(\rom_addr[4] ), 
         .Z(n9449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9026_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n10980), .Z(n61_adj_625)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11004), .Z(n2009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 i9024_3_lut (.A(n684_adj_562), .B(n699), .C(\rom_addr[4] ), .Z(n9447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9024_3_lut.init = 16'hcaca;
    PFUMX i9370 (.BLUT(n9693), .ALUT(n1915_adj_626), .C0(\rom_addr[6] ), 
          .Z(n9793));
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[2] ), .Z(n11131)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    LUT4 i9609_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11050), .C(\rom_addr[4] ), 
         .D(n30), .Z(n9506)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9609_3_lut_4_lut.init = 16'hf808;
    PFUMX i10373 (.BLUT(n10687), .ALUT(n10686), .C0(\rom_addr[5] ), .Z(n10688));
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut (.A(n11092), .B(n11089), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n1243_adj_627)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut (.A(n11092), 
         .B(n10980), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n1676_adj_628)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'h5303;
    LUT4 i4619_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), .C(\rom_addr[3] ), 
         .D(n6838), .Z(n5207)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i4619_3_lut_4_lut.init = 16'h08f8;
    LUT4 i9302_3_lut_4_lut_4_lut (.A(n11092), .B(n10969), .C(\rom_addr[4] ), 
         .D(n11050), .Z(n9725)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i9302_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), 
         .C(\rom_addr[3] ), .D(n11093), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i9371 (.D0(n9720), .D1(n9726), .SD(\rom_addr[6] ), .Z(n9794));
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[2] ), .Z(n11130)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut_4_lut (.A(n11092), .B(n1867), 
         .C(\rom_addr[4] ), .D(n11050), .Z(n1883_adj_629)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i9168_3_lut_4_lut_4_lut (.A(n11092), .B(n2040_adj_589), .C(\rom_addr[4] ), 
         .D(n11050), .Z(n9591)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i9168_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i9643_3_lut (.A(n589), .B(n604), .C(\rom_addr[4] ), .Z(n9440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9643_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i70_3_lut_rep_264 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11899)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i70_3_lut_rep_264.init = 16'h2424;
    LUT4 i9247_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), .C(\rom_addr[3] ), 
         .D(n10955), .Z(n9670)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9247_3_lut_4_lut.init = 16'hf808;
    LUT4 i9229_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9652)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9229_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 i9143_3_lut_4_lut (.A(n11084), .B(n11065), .C(\rom_addr[4] ), 
         .D(n890), .Z(n9566)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i9143_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_265 (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n11900)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_265.init = 16'h1c1c;
    LUT4 n9826_bdd_3_lut_10631 (.A(n9828), .B(n9829), .C(\rom_addr[8] ), 
         .Z(n11228)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9826_bdd_3_lut_10631.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_10590 (.A(\rom_addr[0] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[2] ), .Z(n11133)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_10590.init = 16'h0da3;
    LUT4 i9015_3_lut (.A(n557_adj_575), .B(n526_adj_630), .C(\rom_addr[4] ), 
         .Z(n9438)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9015_3_lut.init = 16'hcaca;
    L6MUX21 i9389 (.D0(n9778), .D1(n381), .SD(\rom_addr[6] ), .Z(n9812));
    LUT4 i1_2_lut (.A(\rom_addr[4] ), .B(\rom_addr[0] ), .Z(n9127)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i9945_2_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .Z(n9410)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9945_2_lut.init = 16'h7777;
    PFUMX i9298 (.BLUT(n574), .ALUT(n637), .C0(\rom_addr[6] ), .Z(n9721));
    LUT4 n1923_bdd_3_lut_10522_4_lut (.A(\rom_addr[0] ), .B(n11067), .C(\rom_addr[3] ), 
         .D(n11094), .Z(n10842)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n1923_bdd_3_lut_10522_4_lut.init = 16'h8f80;
    LUT4 i9221_then_3_lut (.A(\rom_addr[4] ), .B(\rom_addr[2] ), .C(\rom_addr[3] ), 
         .Z(n11136)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i9221_then_3_lut.init = 16'h3838;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n10959), .B(n11015), .C(\rom_addr[3] ), 
         .Z(n285_adj_631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n270_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    L6MUX21 i9391 (.D0(n9439), .D1(n9442), .SD(\rom_addr[6] ), .Z(n9814));
    L6MUX21 i9392 (.D0(n9448), .D1(n9451), .SD(\rom_addr[6] ), .Z(n9815));
    L6MUX21 i9393 (.D0(n829), .D1(n9457), .SD(\rom_addr[6] ), .Z(n9816));
    L6MUX21 i9396 (.D0(n9470), .D1(n9473), .SD(\rom_addr[6] ), .Z(n9819));
    PFUMX i9397 (.BLUT(n9483), .ALUT(n1404_adj_632), .C0(\rom_addr[6] ), 
          .Z(n9820));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), 
         .C(\rom_addr[3] ), .D(n11093), .Z(n1707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i9547_3_lut (.A(n11129), .B(n635_adj_579), .C(\rom_addr[4] ), 
         .Z(n9619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9547_3_lut.init = 16'hcaca;
    LUT4 i9058_4_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n1274), .Z(n9481)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i9058_4_lut_4_lut.init = 16'hdfd0;
    LUT4 i9221_else_3_lut (.A(\rom_addr[4] ), .B(\rom_addr[2] ), .C(\rom_addr[3] ), 
         .D(\rom_addr[0] ), .Z(n11135)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i9221_else_3_lut.init = 16'h0484;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(\rom_addr[5] ), 
         .B(n3181), .C(n10976), .D(\rom_addr[0] ), .Z(n1467_adj_633)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_4_i1274_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), 
         .C(\rom_addr[3] ), .D(n11095), .Z(n1274)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_4_i1274_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i9398 (.D0(n9486), .D1(n1531), .SD(\rom_addr[6] ), .Z(n9821));
    LUT4 i9295_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), .C(\rom_addr[4] ), 
         .D(n1946_adj_634), .Z(n9718)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9295_3_lut_4_lut.init = 16'hf808;
    LUT4 i3191_3_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .C(\rom_addr[3] ), 
         .Z(n3750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3191_3_lut_3_lut.init = 16'hcbcb;
    PFUMX i9399 (.BLUT(n1597_adj_635), .ALUT(n9492), .C0(\rom_addr[6] ), 
          .Z(n9822));
    LUT4 n9826_bdd_3_lut_11019 (.A(n10487), .B(n9812), .C(\rom_addr[7] ), 
         .Z(n11229)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n9826_bdd_3_lut_11019.init = 16'hacac;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n11088), .B(\rom_addr[4] ), 
         .C(n10995), .D(n9243), .Z(n1117_adj_636)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i9157_3_lut_4_lut_4_lut (.A(n11088), .B(\rom_addr[3] ), .C(n11095), 
         .D(\rom_addr[4] ), .Z(n9580)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9157_3_lut_4_lut_4_lut.init = 16'hfcd1;
    PFUMX i9400 (.BLUT(n1724_adj_637), .ALUT(n1787_adj_566), .C0(\rom_addr[6] ), 
          .Z(n9823));
    LUT4 i9341_4_lut (.A(n9629), .B(\rom_addr[0] ), .C(\rom_addr[6] ), 
         .D(n11168), .Z(n9764)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9341_4_lut.init = 16'hca0a;
    LUT4 n3820_bdd_3_lut (.A(n1612), .B(n1643), .C(\rom_addr[5] ), .Z(n10605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3820_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 i9649_3_lut (.A(n270_adj_638), .B(n285), .C(\rom_addr[4] ), .Z(n9776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9649_3_lut.init = 16'hcaca;
    LUT4 n3820_bdd_4_lut (.A(n11073), .B(\rom_addr[5] ), .C(\rom_addr[3] ), 
         .D(\rom_addr[0] ), .Z(n10604)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam n3820_bdd_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n10980), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n11095), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 i9214_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11067), .C(\rom_addr[3] ), 
         .D(n10959), .Z(n9637)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9214_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_2__bdd_4_lut_10612 (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n11104)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_10612.init = 16'h98d1;
    LUT4 i3378_3_lut_4_lut (.A(n11073), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n10976), .Z(n3937)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3378_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(n1913_adj_639), .D(\rom_addr[4] ), .Z(n1914_adj_640)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_4_i205_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(n11025), .D(\rom_addr[3] ), .Z(n1017)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i205_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i9224_then_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n11139)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i9224_then_4_lut.init = 16'h3ac2;
    LUT4 i9224_else_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n11138)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam i9224_else_4_lut.init = 16'h6802;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(\rom_addr[5] ), .B(n9111), 
         .C(n5220), .D(n1387), .Z(n380_adj_557)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 n4801_bdd_4_lut (.A(n11027), .B(n1549_adj_545), .C(\rom_addr[4] ), 
         .D(\rom_addr[0] ), .Z(n10608)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam n4801_bdd_4_lut.init = 16'h0c5c;
    L6MUX21 i9402 (.D0(n9495), .D1(n9505), .SD(\rom_addr[6] ), .Z(n9825));
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(n11028), .D(\rom_addr[3] ), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11089), .Z(n1435_adj_592)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut.init = 16'h1f10;
    LUT4 n221_bdd_3_lut_10333 (.A(n221), .B(n10618), .C(\rom_addr[5] ), 
         .Z(n10619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_10333.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11089), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11095), .Z(n109)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11030), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    L6MUX21 i9422 (.D0(n190), .D1(n9521), .SD(\rom_addr[6] ), .Z(n9845));
    LUT4 i9828_3_lut (.A(n2010_adj_641), .B(n11159), .C(\rom_addr[5] ), 
         .Z(n9744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9828_3_lut.init = 16'hcaca;
    LUT4 n11230_bdd_3_lut (.A(n11230), .B(n11228), .C(\rom_addr[9] ), 
         .Z(n11231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n11230_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_4_lut (.A(n11092), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11095), .Z(n2009_adj_605)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2009_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_6_i1309_4_lut_4_lut_then_4_lut (.A(\rom_addr[3] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[4] ), .D(\rom_addr[1] ), .Z(n11142)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1309_4_lut_4_lut_then_4_lut.init = 16'h0080;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(n11093), .D(\rom_addr[3] ), .Z(n2040)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 n221_bdd_4_lut_10520 (.A(n10933), .B(n4216), .C(\rom_addr[0] ), 
         .D(\rom_addr[5] ), .Z(n10620)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut_10520.init = 16'haa30;
    L6MUX21 i9425 (.D0(n9539), .D1(n9545), .SD(\rom_addr[6] ), .Z(n9848));
    LUT4 i9780_3_lut (.A(n1883), .B(n1914_adj_640), .C(\rom_addr[5] ), 
         .Z(n9742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9780_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1309_4_lut_4_lut_else_4_lut (.A(\rom_addr[3] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[4] ), .D(\rom_addr[1] ), .Z(n11141)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1309_4_lut_4_lut_else_4_lut.init = 16'h2100;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1913_adj_639), 
         .C(\rom_addr[4] ), .Z(n1786_adj_642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 n3720_bdd_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[4] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n10622)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam n3720_bdd_4_lut.init = 16'h1541;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_628), .B(n1691_adj_585), 
         .C(\rom_addr[4] ), .Z(n1692_adj_643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    L6MUX21 i9428 (.D0(n9567), .D1(n9570), .SD(\rom_addr[6] ), .Z(n9851));
    L6MUX21 i9429 (.D0(n9576), .D1(n1149_adj_644), .SD(\rom_addr[6] ), 
            .Z(n9852));
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut_then_4_lut (.A(\rom_addr[4] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[2] ), .D(\rom_addr[1] ), .Z(n11145)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut_then_4_lut.init = 16'h6445;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_608), .B(n1529), 
         .C(\rom_addr[4] ), .Z(n1530_adj_645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 i9208_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), .C(n11095), 
         .D(\rom_addr[3] ), .Z(n9631)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9208_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(\rom_addr[4] ), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut_else_4_lut (.A(\rom_addr[4] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[2] ), .D(\rom_addr[1] ), .Z(n11144)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut_else_4_lut.init = 16'h4440;
    LUT4 i9154_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), .C(\rom_addr[4] ), 
         .D(n3824), .Z(n9577)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9154_4_lut_4_lut_4_lut.init = 16'h01a1;
    L6MUX21 i9432 (.D0(n9579), .D1(n9589), .SD(\rom_addr[6] ), .Z(n9855));
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_646), .B(n1211), 
         .C(\rom_addr[4] ), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(\rom_addr[4] ), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    PFUMX i9433 (.BLUT(n1597), .ALUT(n1660_adj_647), .C0(\rom_addr[6] ), 
          .Z(n9856));
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n10959), .Z(n1466_adj_648)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 i9255_3_lut_4_lut_then_4_lut (.A(\rom_addr[4] ), .B(n11015), .C(\rom_addr[3] ), 
         .D(\rom_addr[2] ), .Z(n11148)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9255_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n11006), .B(n4046), .C(\rom_addr[3] ), 
         .D(\rom_addr[1] ), .Z(n220)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i9900_2_lut (.A(\rom_addr[0] ), .B(\rom_addr[2] ), .Z(n4046)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9900_2_lut.init = 16'h9999;
    LUT4 i9255_3_lut_4_lut_else_4_lut (.A(\rom_addr[4] ), .B(n11015), .C(\rom_addr[3] ), 
         .Z(n11147)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9255_3_lut_4_lut_else_4_lut.init = 16'h0404;
    PFUMX i9434 (.BLUT(n1724_adj_649), .ALUT(n1787_adj_564), .C0(\rom_addr[6] ), 
          .Z(n9857));
    LUT4 i6001_4_lut (.A(\rom_addr[0] ), .B(n10997), .C(n11021), .D(\rom_addr[4] ), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6001_4_lut.init = 16'h0a22;
    PFUMX i9435 (.BLUT(n1852_adj_650), .ALUT(n1915_adj_651), .C0(\rom_addr[6] ), 
          .Z(n9858));
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(\rom_addr[0] ), .B(n11037), 
         .C(\rom_addr[4] ), .D(n4511), .Z(n1054_adj_652)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i188_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n11028), .Z(n188)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i188_3_lut_4_lut.init = 16'hf202;
    LUT4 i6210_2_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n1627)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6210_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i2_3_lut_4_lut_4_lut_adj_11 (.A(\rom_addr[5] ), .B(n11098), .C(\rom_addr[1] ), 
         .D(\rom_addr[4] ), .Z(n4835)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut_adj_11.init = 16'hfffd;
    PFUMX i10591 (.BLUT(n11157), .ALUT(n11158), .C0(\rom_addr[0] ), .Z(n11159));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_653), 
          .C0(n11075), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(\rom_addr[4] ), .D(n11041), .Z(n1676_adj_599)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n332), .Z(n333)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n11034), .Z(n2009_adj_614)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(\rom_addr[4] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n11151)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11088), .C(\rom_addr[3] ), .D(n11034), .Z(n1243_adj_654)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h02f2;
    PFUMX i9472 (.BLUT(n9893), .ALUT(n9894), .C0(\rom_addr[7] ), .Z(n9895));
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(\rom_addr[4] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n11150)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n11899), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_2_i1404 (.BLUT(n1387_adj_587), .ALUT(n1403), 
          .C0(n9414), .Z(n1404)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[4] ), 
         .C(n10972), .D(n3418), .Z(n924)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_2_i1308_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n11094), .Z(n1308)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1308_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11088), 
         .C(\rom_addr[3] ), .D(n10955), .Z(n1707_adj_574)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11097), 
         .C(\rom_addr[4] ), .D(n1274), .Z(n1851_adj_601)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9928_2_lut_rep_95_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11048), 
         .C(\rom_addr[5] ), .D(\rom_addr[4] ), .Z(n10936)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9928_2_lut_rep_95_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i5962_2_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11048), .C(\rom_addr[0] ), 
         .D(\rom_addr[4] ), .Z(n1596_adj_655)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5962_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 n6692_bdd_4_lut (.A(n6692), .B(n10956), .C(n9148), .D(\rom_addr[6] ), 
         .Z(n10925)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6692_bdd_4_lut.init = 16'hf088;
    LUT4 n270_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), .C(n10959), 
         .D(\rom_addr[3] ), .Z(n10209)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i9174_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11097), .C(\rom_addr[4] ), 
         .D(n301_adj_656), .Z(n9597)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9174_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9408_3_lut (.A(n9820), .B(n9821), .C(\rom_addr[7] ), .Z(n9831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9408_3_lut.init = 16'hcaca;
    LUT4 i9053_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11097), .C(\rom_addr[4] ), 
         .D(n731), .Z(n9476)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9053_3_lut_4_lut.init = 16'hf101;
    LUT4 rom_addr_1__bdd_4_lut_10572 (.A(\rom_addr[1] ), .B(\rom_addr[0] ), 
         .C(\rom_addr[4] ), .D(\rom_addr[2] ), .Z(n10222)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_10572.init = 16'h5e04;
    LUT4 i9282_4_lut (.A(n1628_adj_657), .B(n2580), .C(\rom_addr[5] ), 
         .D(\rom_addr[3] ), .Z(n9705)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9282_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11097), 
         .C(\rom_addr[4] ), .D(n1549_adj_545), .Z(n1565_adj_609)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_2_i1341 (.BLUT(n1308), .ALUT(n1309), .C0(n11077), 
          .Z(n1341)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(\rom_addr[5] ), .B(n10951), 
         .C(\rom_addr[0] ), .D(n46_adj_658), .Z(n62_adj_659)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_629), .B(n1914_adj_660), 
         .C(\rom_addr[5] ), .Z(n1915_adj_626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n11089), .B(n11071), .C(\rom_addr[3] ), 
         .D(\rom_addr[1] ), .Z(n1466_adj_598)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'h3a0a;
    L6MUX21 i9044 (.D0(n9465), .D1(n9466), .SD(\rom_addr[6] ), .Z(n9467));
    LUT4 i9441_3_lut (.A(n9852), .B(n10714), .C(\rom_addr[7] ), .Z(n9864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9441_3_lut.init = 16'hcaca;
    LUT4 i2184_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11090), .C(\rom_addr[5] ), 
         .D(n11035), .Z(n3295)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2184_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i9444_3_lut (.A(n9858), .B(n9859), .C(\rom_addr[7] ), .Z(n9867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9444_3_lut.init = 16'hcaca;
    L6MUX21 i9482 (.D0(n9903), .D1(n9904), .SD(\rom_addr[6] ), .Z(n9905));
    LUT4 i9682_3_lut (.A(n1228_adj_661), .B(n1243), .C(\rom_addr[4] ), 
         .Z(n9681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9682_3_lut.init = 16'hcaca;
    L6MUX21 i9057 (.D0(n9478), .D1(n9479), .SD(\rom_addr[6] ), .Z(n9480));
    L6MUX21 i9066 (.D0(n9487), .D1(n9488), .SD(\rom_addr[6] ), .Z(n9489));
    L6MUX21 i9079 (.D0(n9500), .D1(n9501), .SD(\rom_addr[6] ), .Z(n9502));
    LUT4 address_11__I_0_Mux_2_i1309_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10941), 
         .C(\rom_addr[5] ), .D(n10946), .Z(n1309)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1309_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n11047), .B(\rom_addr[2] ), 
         .C(n11093), .D(\rom_addr[3] ), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i9991_2_lut_rep_91_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11049), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n10932)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9991_2_lut_rep_91_3_lut_4_lut.init = 16'h0200;
    LUT4 i9317_3_lut (.A(n10610), .B(n9739), .C(\rom_addr[7] ), .Z(n1789_adj_662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9317_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n11047), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11899), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_663), .ALUT(n1883_adj_664), 
          .C0(n11075), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n11047), .B(\rom_addr[2] ), 
         .C(n10955), .D(\rom_addr[3] ), .Z(n653_adj_665)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i9252_3_lut (.A(n5226), .B(n668), .C(\rom_addr[4] ), .Z(n9675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9252_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_666), .ALUT(n1117_adj_667), 
          .C0(n11075), .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10941), 
         .C(\rom_addr[5] ), .D(n1403_adj_668), .Z(n1404_adj_632)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    LUT4 n10771_bdd_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10941), .C(\rom_addr[5] ), 
         .D(n11116), .Z(n10772)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n10771_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9235_3_lut (.A(n557_adj_646), .B(n572), .C(\rom_addr[4] ), .Z(n9658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9235_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n11047), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(n11900), .Z(n986_adj_669)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 i9234_4_lut (.A(n11062), .B(n541), .C(\rom_addr[4] ), .D(\rom_addr[2] ), 
         .Z(n9657)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9234_4_lut.init = 16'hcac0;
    LUT4 i9275_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10941), .C(\rom_addr[5] ), 
         .D(n1403_adj_570), .Z(n9698)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9275_3_lut_4_lut.init = 16'hf101;
    LUT4 i5831_2_lut_3_lut_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[0] ), .D(n11098), .Z(n891)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5831_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i9338_4_lut (.A(n9623), .B(\rom_addr[0] ), .C(\rom_addr[6] ), 
         .D(n4299), .Z(n9761)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i9338_4_lut.init = 16'h0aca;
    PFUMX i9110 (.BLUT(n9531), .ALUT(n9532), .C0(\rom_addr[6] ), .Z(n9533));
    LUT4 i9274_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10941), .C(\rom_addr[5] ), 
         .D(n11143), .Z(n9697)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9274_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9359_3_lut (.A(n9650), .B(n508), .C(\rom_addr[6] ), .Z(n9782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9359_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n11137), .B(n507), .C(\rom_addr[5] ), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 i9360_3_lut (.A(n9659), .B(n10844), .C(\rom_addr[6] ), .Z(n9783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9360_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668), .B(n924_adj_670), .C(\rom_addr[5] ), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 i2418_4_lut (.A(\rom_addr[5] ), .B(n10958), .C(\rom_addr[6] ), 
         .D(n10957), .Z(n2974)) /* synthesis lut_function=(!(A (B (C))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2418_4_lut.init = 16'h7f7a;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11098), 
         .C(\rom_addr[4] ), .D(n526_adj_630), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i9132 (.D0(n9553), .D1(n9554), .SD(\rom_addr[6] ), .Z(n9555));
    PFUMX i9099 (.BLUT(n1054), .ALUT(n1085_adj_671), .C0(\rom_addr[5] ), 
          .Z(n9522));
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(\rom_addr[1] ), .B(n11098), 
         .C(\rom_addr[4] ), .D(n1867), .Z(n1883_adj_672)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n3229), .ALUT(n1692_adj_600), 
          .C0(n9401), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i6192_2_lut_rep_209 (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .Z(n11050)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6192_2_lut_rep_209.init = 16'h8888;
    LUT4 i9394_4_lut (.A(n956), .B(\rom_addr[0] ), .C(\rom_addr[6] ), 
         .D(n6453), .Z(n9817)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9394_4_lut.init = 16'hca0a;
    LUT4 rom_addr_0__bdd_4_lut_10729 (.A(\rom_addr[0] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[2] ), .Z(n301_adj_656)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_10729.init = 16'hb124;
    LUT4 address_11__I_0_Mux_4_i1211_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11093), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1211_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9331_4_lut (.A(n9598), .B(n380_adj_673), .C(\rom_addr[6] ), 
         .D(\rom_addr[5] ), .Z(n9754)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9331_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n11898), .B(n1387), .C(\rom_addr[4] ), 
         .D(n11097), .Z(n380_adj_673)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i5747_2_lut_4_lut (.A(n10970), .B(n10968), .C(\rom_addr[4] ), 
         .D(\rom_addr[5] ), .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5747_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[4] ), .C(\rom_addr[2] ), .Z(n11158)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'ha4a4;
    LUT4 address_11__I_0_Mux_5_i1913_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11095), .Z(n1913_adj_639)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1913_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467_adj_633), 
          .C0(n9410), .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11899), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11030), .Z(n428_adj_569)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[4] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n11157)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'ha084;
    LUT4 i4627_3_lut (.A(\rom_addr[0] ), .B(\rom_addr[2] ), .C(\rom_addr[1] ), 
         .Z(n3699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4627_3_lut.init = 16'hcaca;
    LUT4 i9426_3_lut (.A(n9548), .B(n10224), .C(\rom_addr[6] ), .Z(n9849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9426_3_lut.init = 16'hcaca;
    LUT4 i9427_4_lut (.A(\rom_addr[0] ), .B(n10231), .C(\rom_addr[6] ), 
         .D(n10624), .Z(n9850)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9427_4_lut.init = 16'hcac0;
    LUT4 i2235_3_lut (.A(n11113), .B(n4835), .C(\rom_addr[6] ), .Z(n2791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2235_3_lut.init = 16'hcaca;
    LUT4 i9981_2_lut (.A(\rom_addr[7] ), .B(\rom_addr[6] ), .Z(n9433)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9981_2_lut.init = 16'h7777;
    LUT4 n220_bdd_3_lut_10372 (.A(n491), .B(n236), .C(\rom_addr[4] ), 
         .Z(n10686)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_10372.init = 16'hacac;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(\rom_addr[4] ), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    LUT4 i9108_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10951), .C(\rom_addr[5] ), 
         .D(n1212_adj_674), .Z(n9531)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9108_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i9141 (.D0(n9562), .D1(n9563), .SD(\rom_addr[6] ), .Z(n9564));
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_675), .B(n684), .C(\rom_addr[4] ), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11006), .C(\rom_addr[3] ), .D(n11072), .Z(n506)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i9471_4_lut (.A(n10935), .B(n5230), .C(\rom_addr[6] ), .D(n10982), 
         .Z(n9894)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i9471_4_lut.init = 16'h3afa;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11093), .C(\rom_addr[3] ), .D(n11067), .Z(n1435)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61), .ALUT(n62_adj_659), .C0(n9410), 
          .Z(n63_adj_580)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_672), .B(n1786_adj_563), 
         .C(\rom_addr[5] ), .Z(n1915_adj_651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i5919_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(n4657), .D(\rom_addr[5] ), 
         .Z(n1852_adj_650)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5919_4_lut.init = 16'ha022;
    LUT4 i4646_3_lut_3_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .Z(n459)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4646_3_lut_3_lut.init = 16'h7474;
    L6MUX21 i9163 (.D0(n9584), .D1(n9585), .SD(\rom_addr[6] ), .Z(n9586));
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n11066), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11034), .C(\rom_addr[3] ), .D(n11072), .Z(n604_adj_676)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut_4_lut.init = 16'h5303;
    PFUMX i9106 (.BLUT(n364_adj_578), .ALUT(n379), .C0(\rom_addr[4] ), 
          .Z(n9529));
    LUT4 i8837_2_lut (.A(\rom_addr[4] ), .B(\rom_addr[6] ), .Z(n9247)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8837_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n11906), .B(n444), .C(\rom_addr[5] ), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_12 (.A(\rom_addr[3] ), .B(\rom_addr[4] ), .Z(n9121)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_adj_12.init = 16'h8888;
    LUT4 i9806_3_lut (.A(n445), .B(n10211), .C(\rom_addr[6] ), .Z(n9847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9806_3_lut.init = 16'hcaca;
    LUT4 i9418_4_lut (.A(n11099), .B(n1212_adj_677), .C(\rom_addr[5] ), 
         .D(n10992), .Z(n9841)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9418_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_13 (.A(\rom_addr[0] ), .B(\rom_addr[6] ), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i9198_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(n668), .C(\rom_addr[4] ), 
         .D(n11001), .Z(n9621)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9198_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11006), .C(\rom_addr[3] ), .D(n11067), .Z(n526_adj_630)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i10005_2_lut (.A(\rom_addr[4] ), .B(\rom_addr[5] ), .Z(n6692)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i10005_2_lut.init = 16'h1111;
    PFUMX i9218 (.BLUT(n9639), .ALUT(n9640), .C0(\rom_addr[5] ), .Z(n9641));
    LUT4 n220_bdd_3_lut (.A(n220_adj_678), .B(n635), .C(\rom_addr[4] ), 
         .Z(n10687)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n10959), .C(\rom_addr[3] ), .D(n11072), .Z(n684)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n1308_bdd_3_lut_4_lut (.A(n11899), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n10970), .Z(n10593)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1308_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(\rom_addr[0] ), .B(n10976), 
         .C(n3937), .D(\rom_addr[5] ), .Z(n1947_adj_653)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    L6MUX21 i9227 (.D0(n9648), .D1(n9649), .SD(\rom_addr[5] ), .Z(n9650));
    LUT4 address_11__I_0_Mux_3_i1597_3_lut (.A(n1565_c), .B(n9656), .C(\rom_addr[5] ), 
         .Z(n1597_adj_635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1597_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11140), .C(\rom_addr[5] ), .D(n11103), .Z(n1660)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), 
         .C(\rom_addr[4] ), .D(n1785), .Z(n1786_adj_565)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 i9752_3_lut (.A(n9481), .B(n9482), .C(\rom_addr[5] ), .Z(n9483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9752_3_lut.init = 16'hcaca;
    PFUMX i9236 (.BLUT(n9657), .ALUT(n9658), .C0(\rom_addr[5] ), .Z(n9659));
    LUT4 i9152_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), .C(\rom_addr[4] ), 
         .D(n1084_adj_679), .Z(n9575)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9152_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i10040 (.D0(n10223), .D1(n10220), .SD(\rom_addr[5] ), .Z(n10224));
    LUT4 i9763_3_lut (.A(n9691), .B(n11165), .C(\rom_addr[5] ), .Z(n9693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9763_3_lut.init = 16'hcaca;
    PFUMX i4667 (.BLUT(n5254), .ALUT(n1723_adj_596), .C0(\rom_addr[5] ), 
          .Z(n5255));
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(\rom_addr[5] ), 
         .B(n1211), .C(n10976), .D(\rom_addr[0] ), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    PFUMX i9254 (.BLUT(n9675), .ALUT(n9676), .C0(\rom_addr[5] ), .Z(n9677));
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_c), .B(n1596_adj_618), 
         .C(\rom_addr[5] ), .Z(n1597_adj_624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i9253_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(n684), .C(\rom_addr[4] ), 
         .D(n11001), .Z(n9676)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9253_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i9767_3_lut (.A(n11149), .B(n10529), .C(\rom_addr[5] ), .Z(n9680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9767_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n9638), .C(\rom_addr[5] ), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i5790_4_lut (.A(\rom_addr[0] ), .B(n11000), .C(n10993), .D(\rom_addr[5] ), 
         .Z(n190_adj_617)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5790_4_lut.init = 16'h0a22;
    LUT4 i9246_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(n11095), .C(\rom_addr[3] ), 
         .D(n11072), .Z(n9669)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9246_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i9470_4_lut_4_lut (.A(\rom_addr[5] ), .B(n10958), .C(n10960), 
         .D(\rom_addr[6] ), .Z(n9893)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9470_4_lut_4_lut.init = 16'hbbfa;
    LUT4 address_11__I_0_Mux_3_i635_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11089), .C(\rom_addr[3] ), .D(n11072), .Z(n635)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i635_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i9349_4_lut (.A(n10942), .B(n2025), .C(\rom_addr[5] ), .D(\rom_addr[4] ), 
         .Z(n9772)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i9349_4_lut.init = 16'haaca;
    LUT4 i9348_3_lut (.A(n1914), .B(n1978_adj_613), .C(\rom_addr[5] ), 
         .Z(n9771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9348_3_lut.init = 16'hcaca;
    PFUMX i10038 (.BLUT(n10222), .ALUT(n10221), .C0(\rom_addr[3] ), .Z(n10223));
    PFUMX i9123 (.BLUT(n653), .ALUT(n668_adj_681), .C0(\rom_addr[4] ), 
          .Z(n9546));
    LUT4 n4842_bdd_2_lut_4_lut (.A(\rom_addr[2] ), .B(n11090), .C(\rom_addr[4] ), 
         .D(\rom_addr[0] ), .Z(n10895)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n4842_bdd_2_lut_4_lut.init = 16'h2100;
    PFUMX i9260 (.BLUT(n9681), .ALUT(n9682), .C0(\rom_addr[5] ), .Z(n9683));
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), 
         .C(\rom_addr[4] ), .D(n1913), .Z(n1914_adj_660)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 i9018_3_lut (.A(n475_adj_682), .B(n635), .C(\rom_addr[4] ), .Z(n9441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9018_3_lut.init = 16'hcaca;
    LUT4 i9068_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), .C(\rom_addr[4] ), 
         .D(n1658), .Z(n9491)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9068_3_lut_4_lut.init = 16'hf808;
    LUT4 i9052_4_lut_4_lut (.A(n11062), .B(\rom_addr[4] ), .C(n4046), 
         .D(n684_adj_562), .Z(n9475)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9052_4_lut_4_lut.init = 16'h7340;
    LUT4 i9217_4_lut (.A(n301_adj_656), .B(n11034), .C(\rom_addr[4] ), 
         .D(\rom_addr[3] ), .Z(n9640)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i9217_4_lut.init = 16'h0a3a;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), 
         .C(\rom_addr[4] ), .D(n2009_adj_683), .Z(n2010_adj_641)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    PFUMX i9276 (.BLUT(n1436), .ALUT(n1467_adj_611), .C0(\rom_addr[5] ), 
          .Z(n9699));
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n890_adj_616)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i9269_3_lut_4_lut_then_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[1] ), .Z(n11164)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9269_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11899), .C(\rom_addr[3] ), .D(n11067), .Z(n589)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), 
         .C(\rom_addr[4] ), .D(n11032), .Z(n1820_adj_685)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10982), 
         .C(\rom_addr[4] ), .D(n1529_adj_686), .Z(n1530_adj_687)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    PFUMX i9277 (.BLUT(n1499_adj_688), .ALUT(n1530_adj_687), .C0(\rom_addr[5] ), 
          .Z(n9700));
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n11899), .B(n10932), .C(\rom_addr[5] ), 
         .D(n9121), .Z(n1341_adj_606)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 i9269_3_lut_4_lut_else_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[1] ), .Z(n11163)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9269_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 i9792_3_lut_4_lut (.A(n10961), .B(\rom_addr[4] ), .C(\rom_addr[5] ), 
         .D(n1596_adj_655), .Z(n9704)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i9792_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n3699), .C(\rom_addr[3] ), .D(n11073), .Z(n1101_adj_666)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    PFUMX i9283 (.BLUT(n1692_adj_689), .ALUT(n1723_c), .C0(\rom_addr[5] ), 
          .Z(n9706));
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut (.A(n11047), .B(n11050), 
         .C(\rom_addr[4] ), .D(n10996), .Z(n1244)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11899), .C(\rom_addr[3] ), .D(n11067), .Z(n475_adj_682)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i3_4_lut_4_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[0] ), .C(\rom_addr[4] ), 
         .D(n11033), .Z(n16)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i9654_3_lut (.A(n109), .B(n124_adj_583), .C(\rom_addr[4] ), .Z(n9752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9654_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n11047), .B(n11050), 
         .C(\rom_addr[4] ), .D(n1483_adj_690), .Z(n1499_adj_688)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(\rom_addr[0] ), .B(n5241), 
         .C(\rom_addr[5] ), .D(n9671), .Z(n1660_adj_647)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i2_4_lut (.A(n6), .B(n4), .C(n10941), .D(\rom_addr[5] ), .Z(n21)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_4_lut.init = 16'h0c88;
    LUT4 i9776_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10960), .C(\rom_addr[5] ), 
         .D(n11107), .Z(n9769)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9776_3_lut_4_lut.init = 16'hf202;
    PFUMX i9284 (.BLUT(n1755_c), .ALUT(n1786_adj_568), .C0(\rom_addr[5] ), 
          .Z(n9707));
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n10970), .C(\rom_addr[4] ), .D(n10982), .Z(n1275_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i6003_4_lut (.A(n1212_adj_677), .B(\rom_addr[6] ), .C(n9123), 
         .D(\rom_addr[5] ), .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6003_4_lut.init = 16'hc088;
    PFUMX i9288 (.BLUT(n1820_adj_685), .ALUT(n1851_adj_691), .C0(\rom_addr[5] ), 
          .Z(n9711));
    LUT4 i9892_2_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .Z(n9985)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9892_2_lut.init = 16'h9999;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11025), .C(\rom_addr[3] ), .D(n11072), .Z(n1946)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 i9051_3_lut_4_lut (.A(n11015), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n653_adj_665), .Z(n9474)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9051_3_lut_4_lut.init = 16'h8f80;
    LUT4 i10508_then_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(\rom_addr[5] ), 
         .D(\rom_addr[4] ), .Z(n11167)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i10508_then_4_lut.init = 16'h0004;
    LUT4 i1_4_lut (.A(n10941), .B(\rom_addr[7] ), .C(n5039), .D(\rom_addr[5] ), 
         .Z(n8372)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    PFUMX i9289 (.BLUT(n1883_adj_604), .ALUT(n1914_adj_692), .C0(\rom_addr[5] ), 
          .Z(n9712));
    LUT4 i5752_4_lut (.A(\rom_addr[0] ), .B(n4688), .C(n10936), .D(\rom_addr[6] ), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5752_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i891_4_lut (.A(n10973), .B(\rom_addr[0] ), 
         .C(\rom_addr[4] ), .D(n11090), .Z(n891_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i891_4_lut.init = 16'h0aca;
    LUT4 i9836_3_lut (.A(n892), .B(n1020), .C(\rom_addr[7] ), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9836_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11089), .C(\rom_addr[3] ), .D(n11067), .Z(n379_adj_694)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i9423_3_lut (.A(n9527), .B(n9530), .C(\rom_addr[6] ), .Z(n9846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9423_3_lut.init = 16'hcaca;
    LUT4 i9027_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11011), .C(\rom_addr[4] ), 
         .D(n747), .Z(n9450)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9027_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(\rom_addr[2] ), .B(n11011), 
         .C(\rom_addr[4] ), .D(n1691), .Z(n1692_adj_689)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 i9023_3_lut_4_lut (.A(n11015), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(n653_adj_695), .Z(n9446)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9023_3_lut_4_lut.init = 16'h8f80;
    PFUMX i10586 (.BLUT(n11150), .ALUT(n11151), .C0(\rom_addr[1] ), .Z(n11152));
    LUT4 i10508_else_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .C(\rom_addr[5] ), 
         .D(\rom_addr[4] ), .Z(n11166)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i10508_else_4_lut.init = 16'h0812;
    PFUMX i9290 (.BLUT(n1947), .ALUT(n9632), .C0(\rom_addr[5] ), .Z(n9713));
    LUT4 i2_2_lut_rep_177_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .C(\rom_addr[3] ), 
         .Z(n11018)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_2_lut_rep_177_3_lut.init = 16'hbfbf;
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924_adj_670), .B(n955), .C(\rom_addr[5] ), 
         .Z(n956_adj_582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    PFUMX i9291 (.BLUT(n2010), .ALUT(n5207), .C0(\rom_addr[5] ), .Z(n9714));
    LUT4 i9344_4_lut (.A(n11020), .B(n1276), .C(\rom_addr[6] ), .D(n11044), 
         .Z(n9767)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9344_4_lut.init = 16'hcac0;
    PFUMX i9105 (.BLUT(n333), .ALUT(n348), .C0(\rom_addr[4] ), .Z(n9528));
    LUT4 i9343_4_lut (.A(n1086), .B(\rom_addr[0] ), .C(\rom_addr[6] ), 
         .D(n4835), .Z(n9766)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i9343_4_lut.init = 16'h0aca;
    LUT4 i9325_4_lut (.A(n11903), .B(n126_adj_696), .C(\rom_addr[6] ), 
         .D(\rom_addr[5] ), .Z(n9748)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9325_4_lut.init = 16'hcac0;
    LUT4 i9333_3_lut (.A(n9754), .B(n9755), .C(\rom_addr[7] ), .Z(n510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9333_3_lut.init = 16'hcaca;
    PFUMX i9297 (.BLUT(n9718), .ALUT(n9719), .C0(\rom_addr[5] ), .Z(n9720));
    LUT4 i9320_3_lut (.A(n11132), .B(n1978), .C(\rom_addr[5] ), .Z(n9743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9320_3_lut.init = 16'hcaca;
    LUT4 i43_4_lut (.A(\rom_addr[5] ), .B(n10956), .C(\rom_addr[4] ), 
         .D(n635), .Z(n26)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i43_4_lut.init = 16'hcac0;
    PFUMX i10584 (.BLUT(n11147), .ALUT(n11148), .C0(n11099), .Z(n11149));
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(\rom_addr[5] ), .B(n9127), 
         .C(n11048), .D(n379_adj_694), .Z(n380_c)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11004), .C(\rom_addr[3] ), .D(n11067), .Z(n1931)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n10956), .B(n10959), .C(\rom_addr[4] ), 
         .D(\rom_addr[3] ), .Z(n860_adj_572)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 n635_bdd_4_lut_4_lut_4_lut (.A(\rom_addr[5] ), .B(n11001), .C(\rom_addr[4] ), 
         .D(\rom_addr[0] ), .Z(n10350)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n635_bdd_4_lut_4_lut_4_lut.init = 16'h0040;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054_adj_652), .ALUT(n1085), 
          .C0(\rom_addr[5] ), .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n9663_bdd_3_lut (.A(n9663), .B(n9664), .C(\rom_addr[4] ), .Z(n10710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9663_bdd_3_lut.init = 16'hcaca;
    LUT4 i9310_3_lut (.A(n10595), .B(n9732), .C(\rom_addr[7] ), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9310_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(\rom_addr[0] ), .B(n10736), 
         .C(\rom_addr[7] ), .D(n2791), .Z(n1278_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    PFUMX i9303 (.BLUT(n9724), .ALUT(n9725), .C0(\rom_addr[5] ), .Z(n9726));
    LUT4 i9089_3_lut (.A(n1789_adj_662), .B(n2044_adj_561), .C(\rom_addr[8] ), 
         .Z(n9512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9089_3_lut.init = 16'hcaca;
    LUT4 i9459_3_lut (.A(n10795), .B(n9586), .C(\rom_addr[7] ), .Z(n9882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9459_3_lut.init = 16'hcaca;
    LUT4 i9458_3_lut (.A(n9564), .B(n5255), .C(\rom_addr[7] ), .Z(n9881)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9458_3_lut.init = 16'hcaca;
    LUT4 i9452_3_lut (.A(n10752), .B(n9905), .C(\rom_addr[7] ), .Z(n9875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9452_3_lut.init = 16'hcaca;
    PFUMX i9306 (.BLUT(n1436_c), .ALUT(n1467), .C0(\rom_addr[5] ), .Z(n9729));
    PFUMX i10582 (.BLUT(n11144), .ALUT(n11145), .C0(\rom_addr[0] ), .Z(n1914));
    LUT4 i9461_3_lut (.A(n9877), .B(n9878), .C(\rom_addr[8] ), .Z(n9884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9461_3_lut.init = 16'hcaca;
    LUT4 i9440_3_lut (.A(n9850), .B(n9851), .C(\rom_addr[7] ), .Z(n9863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9440_3_lut.init = 16'hcaca;
    LUT4 i9439_3_lut (.A(n9848), .B(n9849), .C(\rom_addr[7] ), .Z(n9862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9439_3_lut.init = 16'hcaca;
    LUT4 i9858_3_lut (.A(n9862), .B(n9863), .C(\rom_addr[8] ), .Z(n9869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9858_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_2_lut (.A(\rom_addr[0] ), .B(\rom_addr[4] ), .Z(n9111)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i10566_else_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n11901)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+(C+!(D))))) */ ;
    defparam i10566_else_4_lut.init = 16'h0320;
    PFUMX i10634 (.BLUT(n11231), .ALUT(n11227), .C0(\rom_addr[10] ), .Z(\rom_q[3] ));
    LUT4 i9211_4_lut (.A(n635), .B(n11898), .C(\rom_addr[4] ), .D(n11050), 
         .Z(n9634)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9211_4_lut.init = 16'hca0a;
    PFUMX i9307 (.BLUT(n1499), .ALUT(n1530_adj_645), .C0(\rom_addr[5] ), 
          .Z(n9730));
    LUT4 i9054_4_lut_4_lut (.A(\rom_addr[0] ), .B(n11041), .C(\rom_addr[4] ), 
         .D(n10937), .Z(n9477)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9054_4_lut_4_lut.init = 16'hf404;
    LUT4 i9204_3_lut (.A(n908), .B(n635), .C(\rom_addr[4] ), .Z(n9627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9204_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_6_i1628 (.BLUT(n1612_adj_697), .ALUT(n1627), 
          .C0(\rom_addr[4] ), .Z(n1628_adj_657)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11103), .C(\rom_addr[4] ), .D(n10982), .Z(n1628)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 i9067_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(n11103), .C(\rom_addr[4] ), 
         .D(n11040), .Z(n9490)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9067_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 i9843_3_lut (.A(n9748), .B(n10621), .C(\rom_addr[7] ), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9843_3_lut.init = 16'hcaca;
    LUT4 i9195_3_lut (.A(n205_adj_559), .B(n604_adj_676), .C(\rom_addr[4] ), 
         .Z(n9618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9195_3_lut.init = 16'hcaca;
    LUT4 i9406_3_lut (.A(n9816), .B(n9817), .C(\rom_addr[7] ), .Z(n9829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9406_3_lut.init = 16'hcaca;
    LUT4 n442_bdd_3_lut_10042_4_lut (.A(\rom_addr[0] ), .B(n11074), .C(n11015), 
         .D(\rom_addr[3] ), .Z(n10225)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n442_bdd_3_lut_10042_4_lut.init = 16'h22f0;
    LUT4 i6009_2_lut_rep_206 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .Z(n11047)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6009_2_lut_rep_206.init = 16'heeee;
    PFUMX i10316 (.BLUT(n10623), .ALUT(n10622), .C0(\rom_addr[5] ), .Z(n10624));
    LUT4 i9062_3_lut_4_lut (.A(\rom_addr[0] ), .B(n10976), .C(\rom_addr[4] ), 
         .D(n1466_adj_648), .Z(n9485)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9062_3_lut_4_lut.init = 16'hf202;
    PFUMX i10580 (.BLUT(n11141), .ALUT(n11142), .C0(\rom_addr[0] ), .Z(n11143));
    PFUMX i9313 (.BLUT(n1692_adj_643), .ALUT(n1723), .C0(\rom_addr[5] ), 
          .Z(n9736));
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_189_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n11030)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_189_3_lut.init = 16'hc1c1;
    LUT4 i9186_3_lut (.A(n506_adj_581), .B(n428), .C(\rom_addr[4] ), .Z(n9609)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9186_3_lut.init = 16'hcaca;
    LUT4 i9869_3_lut (.A(n10351), .B(n9764), .C(\rom_addr[7] ), .Z(n1021_adj_560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9869_3_lut.init = 16'hcaca;
    PFUMX i9314 (.BLUT(n1755), .ALUT(n1786_adj_642), .C0(\rom_addr[5] ), 
          .Z(n9737));
    LUT4 i5706_2_lut_rep_193_3_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11034)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5706_2_lut_rep_193_3_lut.init = 16'he0e0;
    PFUMX i10314 (.BLUT(n10620), .ALUT(n10619), .C0(\rom_addr[6] ), .Z(n10621));
    LUT4 i5654_2_lut_rep_154_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n10995)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i5654_2_lut_rep_154_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(n125), .D(\rom_addr[5] ), .Z(n1117_adj_667)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i9185_3_lut (.A(n526), .B(n205), .C(\rom_addr[4] ), .Z(n9608)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9185_3_lut.init = 16'hcaca;
    LUT4 i5782_4_lut (.A(\rom_addr[0] ), .B(n2975), .C(n9895), .D(\rom_addr[8] ), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5782_4_lut.init = 16'h0a22;
    LUT4 i9855_3_lut (.A(n9875), .B(n11361), .C(\rom_addr[8] ), .Z(n9883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9855_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(\rom_addr[5] ), .B(n46), 
         .C(n11012), .D(\rom_addr[1] ), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i5709_4_lut_4_lut (.A(n11027), .B(\rom_addr[4] ), .C(n10982), 
         .D(\rom_addr[0] ), .Z(n1851_adj_691)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5709_4_lut_4_lut.init = 16'h7400;
    LUT4 i9142_4_lut (.A(\rom_addr[0] ), .B(n10973), .C(\rom_addr[4] ), 
         .D(n11003), .Z(n9565)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9142_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_0_i270_4_lut (.A(n11071), .B(n11025), .C(\rom_addr[3] ), 
         .D(\rom_addr[1] ), .Z(n270)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i270_4_lut.init = 16'hc0c5;
    LUT4 i9457_3_lut (.A(n10773), .B(n9555), .C(\rom_addr[7] ), .Z(n9880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9457_3_lut.init = 16'hcaca;
    PFUMX i10578 (.BLUT(n11138), .ALUT(n11139), .C0(\rom_addr[0] ), .Z(n11140));
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_567), .B(n443_adj_615), 
         .C(\rom_addr[4] ), .Z(n444_adj_701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 i9466_3_lut (.A(n9887), .B(n9888), .C(\rom_addr[10] ), .Z(\rom_q[1] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9466_3_lut.init = 16'hcaca;
    LUT4 i9456_3_lut (.A(n9524), .B(n9533), .C(\rom_addr[7] ), .Z(n9879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9456_3_lut.init = 16'hcaca;
    PFUMX i10632 (.BLUT(n9826), .ALUT(n11229), .C0(\rom_addr[8] ), .Z(n11230));
    PFUMX i9330 (.BLUT(n9751), .ALUT(n9752), .C0(\rom_addr[5] ), .Z(n9753));
    LUT4 i5640_2_lut_rep_165_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n11006)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5640_2_lut_rep_165_3_lut.init = 16'h4040;
    LUT4 i8864_2_lut_rep_247 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .Z(n11088)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8864_2_lut_rep_247.init = 16'heeee;
    PFUMX i10312 (.BLUT(n1211), .ALUT(n10617), .C0(\rom_addr[4] ), .Z(n10618));
    LUT4 n11357_bdd_3_lut (.A(n11357), .B(n11355), .C(\rom_addr[6] ), 
         .Z(n11358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n11357_bdd_3_lut.init = 16'hcaca;
    LUT4 i9952_2_lut_rep_124_2_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n10965)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i9952_2_lut_rep_124_2_lut_3_lut_4_lut.init = 16'h0111;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_adj_1), .ALUT(n8152), .C0(\rom_addr[5] ), 
          .Z(n126_adj_696)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i2693_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n3249)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2693_3_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 n442_bdd_3_lut_10329_4_lut (.A(\rom_addr[0] ), .B(n11074), .C(\rom_addr[3] ), 
         .D(n10959), .Z(n10226)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n442_bdd_3_lut_10329_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n1898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    L6MUX21 i10304 (.D0(n10609), .D1(n10606), .SD(\rom_addr[6] ), .Z(n10610));
    LUT4 i5926_2_lut_rep_139_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n10980)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5926_2_lut_rep_139_3_lut.init = 16'hfefe;
    LUT4 i2673_3_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[1] ), .C(\rom_addr[0] ), 
         .Z(n3229)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2673_3_lut_3_lut.init = 16'h7474;
    PFUMX i10302 (.BLUT(n10608), .ALUT(n10607), .C0(\rom_addr[5] ), .Z(n10609));
    LUT4 i3054_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n3612)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i3054_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .Z(n443_adj_615)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i4632_3_lut_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n5220)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i4632_3_lut_3_lut_4_lut_3_lut.init = 16'h1212;
    LUT4 i9199_4_lut_4_lut (.A(n11098), .B(\rom_addr[4] ), .C(\rom_addr[1] ), 
         .D(n684), .Z(n9622)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9199_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[3] ), .C(\rom_addr[1] ), .Z(n1228_adj_594)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i1_2_lut_rep_109_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(n11103), 
         .C(\rom_addr[4] ), .D(\rom_addr[0] ), .Z(n10950)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_109_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i5712_2_lut_rep_155_2_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .Z(n10996)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5712_2_lut_rep_155_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[5] ), 
         .C(n1914_adj_660), .D(n9985), .Z(n1883_adj_664)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i10576 (.BLUT(n11135), .ALUT(n11136), .C0(\rom_addr[1] ), .Z(n11137));
    LUT4 i2_2_lut_2_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .C(\rom_addr[4] ), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i4050_2_lut_rep_132_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n10973)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i4050_2_lut_rep_132_3_lut.init = 16'h1e1e;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11899), .Z(n220_adj_678)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 i9239_then_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), .C(\rom_addr[1] ), 
         .D(\rom_addr[2] ), .Z(n11905)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i9239_then_4_lut.init = 16'h5924;
    LUT4 i3161_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n3720)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3161_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n364_adj_556)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1549_adj_545)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 i3200_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n3759)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i3200_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i1_2_lut_rep_120_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n10961)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_120_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i3047_2_lut_rep_256 (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .Z(n11097)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3047_2_lut_rep_256.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n11099), .B(n10942), .C(\rom_addr[4] ), 
         .D(n11050), .Z(n1403_adj_668)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_2_i428_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n10959), .Z(n428_adj_675)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i428_3_lut_4_lut.init = 16'h2f20;
    PFUMX i9355 (.BLUT(n9776), .ALUT(n9777), .C0(\rom_addr[5] ), .Z(n9778));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1867_adj_663)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i9971_2_lut_rep_191_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .Z(n11032)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9971_2_lut_rep_191_3_lut.init = 16'h0101;
    LUT4 i8832_2_lut_rep_257 (.A(\rom_addr[2] ), .B(\rom_addr[3] ), .Z(n11098)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8832_2_lut_rep_257.init = 16'hbbbb;
    LUT4 n1443_bdd_3_lut_10274_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n10228)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n1443_bdd_3_lut_10274_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(\rom_addr[4] ), 
         .Z(n828_adj_552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i6046_2_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[4] ), .D(\rom_addr[0] ), .Z(n1275_adj_593)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6046_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5946_4_lut (.A(n11007), .B(\rom_addr[4] ), .C(n11088), .D(\rom_addr[3] ), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5946_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(n1898), .C(\rom_addr[4] ), .D(\rom_addr[3] ), .Z(n1914_adj_692)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i6059_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n1612)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+(D))))) */ ;
    defparam i6059_4_lut_4_lut_4_lut.init = 16'h0a01;
    LUT4 i8833_3_lut_4_lut_4_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n270_adj_2)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8833_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11025), .Z(n124_adj_610)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .Z(n557_adj_646)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_592), .B(n11093), 
         .C(\rom_addr[4] ), .D(\rom_addr[3] ), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 i6055_2_lut_rep_113_2_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n10954)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6055_2_lut_rep_113_2_lut_3_lut_4_lut.init = 16'h4004;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1228_adj_661)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 i5743_3_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n859_adj_623)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i5743_3_lut_3_lut_4_lut.init = 16'hf010;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .Z(n668_adj_681)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i1_2_lut_rep_159_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[4] ), .Z(n11000)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_159_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_171_2_lut_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .Z(n11012)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_171_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i5642_2_lut_rep_248 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .C(\rom_addr[0] ), 
         .Z(n11089)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5642_2_lut_rep_248.init = 16'h1010;
    LUT4 i6194_2_lut_rep_194_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .Z(n11035)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6194_2_lut_rep_194_3_lut.init = 16'hfbfb;
    PFUMX i10300 (.BLUT(n10605), .ALUT(n10604), .C0(\rom_addr[4] ), .Z(n10606));
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n61_adj_548)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1450), .C(\rom_addr[4] ), .D(\rom_addr[3] ), 
         .Z(n10734)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_110_3_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[4] ), .Z(n10951)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_110_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n1612_adj_697)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h0a10;
    LUT4 i5964_2_lut_rep_121_3_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[4] ), .Z(n10962)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5964_2_lut_rep_121_3_lut_3_lut_4_lut.init = 16'h4000;
    L6MUX21 i10290 (.D0(n10594), .D1(n10592), .SD(\rom_addr[6] ), .Z(n10595));
    LUT4 i4084_2_lut_rep_249 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .Z(n11090)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4084_2_lut_rep_249.init = 16'heeee;
    LUT4 i5724_2_lut_rep_131_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[1] ), .Z(n10972)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5724_2_lut_rep_131_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_3_lut_rep_152_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(\rom_addr[2] ), .Z(n10993)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_rep_152_4_lut.init = 16'heffe;
    LUT4 i9036_3_lut (.A(n1069), .B(n1084_c), .C(\rom_addr[4] ), .Z(n9459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9036_3_lut.init = 16'hcaca;
    LUT4 i8825_3_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .D(\rom_addr[0] ), .Z(n270_adj_638)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i8825_3_lut_3_lut_4_lut.init = 16'h4b40;
    LUT4 i1329_2_lut_rep_258 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .Z(n11099)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1329_2_lut_rep_258.init = 16'h6666;
    LUT4 address_11__I_0_Mux_2_i332_3_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n332)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i332_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 i10440_then_3_lut (.A(\rom_addr[4] ), .B(\rom_addr[0] ), .C(\rom_addr[2] ), 
         .Z(n11115)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i10440_then_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_119_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(\rom_addr[2] ), .Z(n10960)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_119_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5739_2_lut_rep_129_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[2] ), .Z(n10970)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5739_2_lut_rep_129_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(\rom_addr[0] ), .B(n1785), 
         .C(\rom_addr[4] ), .D(n3249), .Z(n1786)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), 
         .C(\rom_addr[3] ), .D(n11034), .Z(n653_adj_695)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_186_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[2] ), 
         .Z(n11027)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_186_3_lut.init = 16'hfefe;
    PFUMX i9016 (.BLUT(n9437), .ALUT(n9438), .C0(\rom_addr[5] ), .Z(n9439));
    LUT4 i9129_3_lut (.A(n1514_adj_588), .B(n1529_adj_686), .C(\rom_addr[4] ), 
         .Z(n9552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9129_3_lut.init = 16'hcaca;
    LUT4 i5668_2_lut_rep_196_3_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n11037)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5668_2_lut_rep_196_3_lut_4_lut.init = 16'h0060;
    LUT4 i9574_3_lut (.A(n5228), .B(n891_adj_3), .C(\rom_addr[5] ), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9574_3_lut.init = 16'hcaca;
    LUT4 i4692_2_lut_rep_221 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .Z(n11062)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4692_2_lut_rep_221.init = 16'h6666;
    LUT4 i4648_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), .C(\rom_addr[3] ), 
         .D(n5235), .Z(n5236)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4648_3_lut_4_lut.init = 16'hf202;
    LUT4 i9239_else_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), .C(\rom_addr[1] ), 
         .D(\rom_addr[2] ), .Z(n11904)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i9239_else_4_lut.init = 16'h5092;
    LUT4 i9912_2_lut_rep_234 (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .Z(n11075)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9912_2_lut_rep_234.init = 16'heeee;
    LUT4 i5622_2_lut_3_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n684_adj_705)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5622_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i9127_3_lut (.A(n1451_adj_595), .B(n1676_adj_628), .C(\rom_addr[4] ), 
         .Z(n9550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9127_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 i10440_else_3_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), .C(\rom_addr[0] ), 
         .D(\rom_addr[2] ), .Z(n11114)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i10440_else_3_lut.init = 16'h9000;
    LUT4 i9747_3_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .C(n1692_adj_602), 
         .D(n1676_adj_603), .Z(n1724_adj_637)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9747_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_627), .B(n1228), .C(\rom_addr[4] ), 
         .Z(n10732)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut.init = 16'h6363;
    LUT4 i9732_3_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .C(n1692), 
         .D(n1676_c), .Z(n1724_adj_649)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9732_3_lut_4_lut.init = 16'hf1e0;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    PFUMX i10573 (.BLUT(n11130), .ALUT(n11131), .C0(\rom_addr[0] ), .Z(n11132));
    PFUMX i9019 (.BLUT(n9440), .ALUT(n9441), .C0(\rom_addr[5] ), .Z(n9442));
    PFUMX i10288 (.BLUT(n10593), .ALUT(n10932), .C0(\rom_addr[5] ), .Z(n10594));
    LUT4 i1_2_lut_rep_235 (.A(\rom_addr[4] ), .B(\rom_addr[2] ), .Z(n11076)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_235.init = 16'h8888;
    PFUMX i10036 (.BLUT(n379_adj_694), .ALUT(n10937), .C0(\rom_addr[4] ), 
          .Z(n10220));
    LUT4 i2_3_lut_4_lut_adj_14 (.A(\rom_addr[4] ), .B(\rom_addr[2] ), .C(\rom_addr[3] ), 
         .D(n11898), .Z(n8152)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_14.init = 16'h8000;
    LUT4 i9232_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9655)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9232_3_lut_4_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 i1_2_lut_rep_192_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[2] ), 
         .Z(n11033)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_192_3_lut.init = 16'hefef;
    LUT4 i3657_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), .B(n11035), .C(\rom_addr[4] ), 
         .D(n11103), .Z(n4216)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3657_3_lut_4_lut_4_lut.init = 16'hacfc;
    PFUMX i10286 (.BLUT(n10932), .ALUT(n10591), .C0(\rom_addr[5] ), .Z(n10592));
    LUT4 i9120_3_lut (.A(n301), .B(n604_adj_620), .C(\rom_addr[4] ), .Z(n9543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9120_3_lut.init = 16'hcaca;
    LUT4 n3435_bdd_2_lut_3_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[1] ), .Z(n10528)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n3435_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 i4042_2_lut_rep_156_3_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[1] ), .Z(n10997)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4042_2_lut_rep_156_3_lut.init = 16'hf9f9;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(\rom_addr[0] ), .C(\rom_addr[3] ), .D(\rom_addr[1] ), .Z(n908_adj_706)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C+(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut.init = 16'h5ef0;
    PFUMX i9025 (.BLUT(n9446), .ALUT(n9447), .C0(\rom_addr[5] ), .Z(n9448));
    LUT4 i9115_3_lut (.A(n557), .B(n428_adj_675), .C(\rom_addr[4] ), .Z(n9538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9115_3_lut.init = 16'hcaca;
    LUT4 i9114_3_lut (.A(n526_adj_707), .B(n635), .C(\rom_addr[4] ), .Z(n9537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9114_3_lut.init = 16'hcaca;
    LUT4 i3297_2_lut_rep_262 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .Z(n11103)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3297_2_lut_rep_262.init = 16'h8888;
    LUT4 i5835_2_lut_rep_115_3_lut_3_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[2] ), .Z(n10956)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5835_2_lut_rep_115_3_lut_3_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i9691_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11021), .C(\rom_addr[4] ), 
         .D(n270_c), .Z(n9639)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9691_3_lut_4_lut.init = 16'h1f10;
    LUT4 i9965_2_lut_rep_236 (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .Z(n11077)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9965_2_lut_rep_236.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[4] ), 
         .D(\rom_addr[0] ), .Z(n1212_adj_677)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i4665_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[2] ), .Z(n1451_adj_595)) /* synthesis lut_function=(A (B (C (D)))+!A !(D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4665_3_lut_4_lut_4_lut_4_lut.init = 16'h8055;
    LUT4 i1_2_lut_rep_170_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), .C(\rom_addr[0] ), 
         .Z(n11011)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_170_3_lut.init = 16'h8080;
    LUT4 i5842_2_lut_rep_224 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .Z(n11065)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5842_2_lut_rep_224.init = 16'h2222;
    LUT4 i9821_3_lut_4_lut (.A(\rom_addr[5] ), .B(\rom_addr[4] ), .C(n987), 
         .D(n986), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9821_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5837_2_lut_rep_203_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[0] ), .Z(n11044)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5837_2_lut_rep_203_3_lut.init = 16'h0808;
    L6MUX21 i10072 (.D0(n10271), .D1(n10268), .SD(\rom_addr[9] ), .Z(n10272));
    LUT4 i5800_2_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5800_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i9151_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[4] ), .C(n3767), 
         .D(n11006), .Z(n9574)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9151_4_lut_4_lut.init = 16'h7340;
    LUT4 i6188_2_lut_rep_251 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .Z(n11092)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6188_2_lut_rep_251.init = 16'h8888;
    PFUMX i9028 (.BLUT(n9449), .ALUT(n9450), .C0(\rom_addr[5] ), .Z(n9451));
    LUT4 i6240_2_lut_rep_184_3_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11025)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i6240_2_lut_rep_184_3_lut.init = 16'hf8f8;
    LUT4 i10566_then_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n11902)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i10566_then_4_lut.init = 16'h8608;
    LUT4 address_11__I_0_Mux_3_i460_3_lut (.A(n459), .B(n475_adj_682), .C(\rom_addr[4] ), 
         .Z(n460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_96_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n10937)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_96_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n2025_adj_612)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut.init = 16'h08f3;
    PFUMX i9034 (.BLUT(n9455), .ALUT(n9456), .C0(\rom_addr[5] ), .Z(n9457));
    LUT4 i1_2_lut_rep_160_2_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .Z(n11001)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_160_2_lut_3_lut.init = 16'h0808;
    LUT4 i9249_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11074), .C(\rom_addr[3] ), 
         .D(n11900), .Z(n9672)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9249_3_lut_4_lut.init = 16'h2f20;
    LUT4 i9479_3_lut (.A(n428_adj_675), .B(n251_adj_584), .C(\rom_addr[4] ), 
         .Z(n9902)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9479_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[3] ), 
         .C(n11898), .D(n10979), .Z(n1483)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1913_adj_639), .B(n1243_adj_654), 
         .C(\rom_addr[4] ), .Z(n1244_adj_708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i5829_2_lut_rep_128_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n10969)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam i5829_2_lut_rep_128_4_lut_4_lut.init = 16'h3080;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(n9121), .Z(n9123)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h7c00;
    LUT4 i1_2_lut_rep_127_3_lut_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[0] ), .Z(n10968)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_127_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .Z(n526_adj_707)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(\rom_addr[1] ), .B(\rom_addr[3] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[4] ), .Z(n4744)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h8000;
    PFUMX i10070 (.BLUT(n10270), .ALUT(n10269), .C0(\rom_addr[8] ), .Z(n10271));
    LUT4 i9711_3_lut (.A(n1244_adj_708), .B(n1275), .C(\rom_addr[5] ), 
         .Z(n9532)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9711_3_lut.init = 16'hcaca;
    PFUMX i9037 (.BLUT(n9458), .ALUT(n9459), .C0(\rom_addr[5] ), .Z(n9460));
    LUT4 i9103_3_lut (.A(n301), .B(n316), .C(\rom_addr[4] ), .Z(n9526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9103_3_lut.init = 16'hcaca;
    LUT4 i9102_3_lut (.A(n270_adj_2), .B(n285_adj_631), .C(\rom_addr[4] ), 
         .Z(n9525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9102_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i228_3_lut_rep_118_4_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n10959)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i228_3_lut_rep_118_4_lut_4_lut_3_lut.init = 16'h4242;
    PFUMX i10245 (.BLUT(n10942), .ALUT(n10530), .C0(n11086), .Z(n10531));
    LUT4 i5703_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n1529_adj_686)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i5703_4_lut_4_lut_4_lut.init = 16'hc070;
    LUT4 i2860_3_lut_4_lut_3_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .Z(n3418)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i2860_3_lut_4_lut_3_lut.init = 16'he7e7;
    PFUMX i10570 (.BLUT(n11126), .ALUT(n11127), .C0(\rom_addr[0] ), .Z(n924_adj_670));
    LUT4 address_11__I_0_Mux_4_i404_3_lut_rep_187_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n11028)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_4_i404_3_lut_rep_187_3_lut.init = 16'h3838;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_114_3_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n10955)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_114_3_lut_3_lut.init = 16'h7c7c;
    LUT4 address_11__I_0_Mux_3_i452_3_lut_3_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n452)) /* synthesis lut_function=(!(A (B)+!A (C))) */ ;
    defparam address_11__I_0_Mux_3_i452_3_lut_3_lut_4_lut_3_lut.init = 16'h2727;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n9245)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h8073;
    LUT4 i9997_2_lut_rep_225 (.A(\rom_addr[6] ), .B(\rom_addr[5] ), .Z(n11066)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9997_2_lut_rep_225.init = 16'hdddd;
    LUT4 i9988_2_lut_3_lut (.A(\rom_addr[6] ), .B(\rom_addr[5] ), .C(\rom_addr[7] ), 
         .Z(n9377)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9988_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i10243 (.BLUT(n10528), .ALUT(n10527), .C0(\rom_addr[4] ), .Z(n10529));
    LUT4 i9014_4_lut_4_lut (.A(\rom_addr[2] ), .B(\rom_addr[4] ), .C(n541), 
         .D(n5223), .Z(n9437)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9014_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5948_4_lut (.A(\rom_addr[0] ), .B(n11027), .C(n11018), .D(\rom_addr[4] ), 
         .Z(n1117)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5948_4_lut.init = 16'h0a22;
    LUT4 i9097_3_lut (.A(n236), .B(n251), .C(\rom_addr[4] ), .Z(n9520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9097_3_lut.init = 16'hcaca;
    LUT4 i9096_3_lut (.A(n205), .B(n220_adj_710), .C(\rom_addr[4] ), .Z(n9519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9096_3_lut.init = 16'hcaca;
    LUT4 rom_addr_6__bdd_2_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n10792)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam rom_addr_6__bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i6064_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[3] ), .D(n9249), .Z(n4171)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i6064_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i9049_4_lut (.A(n10970), .B(n1292), .C(\rom_addr[4] ), .D(\rom_addr[3] ), 
         .Z(n9472)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9049_4_lut.init = 16'hca0a;
    LUT4 i6200_2_lut_rep_226 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .Z(n11067)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6200_2_lut_rep_226.init = 16'h8888;
    LUT4 n31_bdd_3_lut (.A(n46), .B(n301), .C(\rom_addr[4] ), .Z(n10750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 n1211_bdd_3_lut_10318_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n10617)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam n1211_bdd_3_lut_10318_3_lut_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n1101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0580;
    LUT4 i6151_2_lut_rep_138_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n10979)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6151_2_lut_rep_138_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1946_adj_634)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut_4_lut.init = 16'h3883;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n11088), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n9245), .Z(n1212_adj_674)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 address_11__I_0_Mux_5_i1874_3_lut_rep_252 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11093)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_5_i1874_3_lut_rep_252.init = 16'h8383;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n2025)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 address_11__I_0_Mux_4_i219_3_lut_rep_253 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11094)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_4_i219_3_lut_rep_253.init = 16'h1818;
    LUT4 i5866_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n1038_adj_621)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i5866_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i6183_2_lut_rep_181_2_lut (.A(\rom_addr[2] ), .B(\rom_addr[0] ), 
         .Z(n11022)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6183_2_lut_rep_181_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n220_adj_710)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 address_11__I_0_Mux_5_i1777_3_lut_rep_254 (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .Z(n11095)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_5_i1777_3_lut_rep_254.init = 16'h8181;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), 
         .C(\rom_addr[3] ), .D(n11094), .Z(n1435_adj_607)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), 
         .C(\rom_addr[3] ), .D(n11034), .Z(n1483_adj_690)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    LUT4 i9213_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), .C(\rom_addr[3] ), 
         .D(n3699), .Z(n9636)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9213_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(\rom_addr[0] ), 
         .B(n11073), .C(\rom_addr[3] ), .D(n11034), .Z(n428)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i8805_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .C(\rom_addr[0] ), 
         .D(\rom_addr[3] ), .Z(n2025_c)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i8805_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n2009_adj_608)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 i9080_4_lut (.A(n11032), .B(\rom_addr[0] ), .C(\rom_addr[4] ), 
         .D(n3612), .Z(n9503)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i9080_4_lut.init = 16'h0aca;
    LUT4 i9612_3_lut (.A(n971), .B(n986_adj_669), .C(\rom_addr[4] ), .Z(n9498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9612_3_lut.init = 16'hcaca;
    PFUMX i9042 (.BLUT(n9461), .ALUT(n9462), .C0(\rom_addr[5] ), .Z(n9465));
    LUT4 i9074_3_lut (.A(n2009_adj_614), .B(n954), .C(\rom_addr[4] ), 
         .Z(n9497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9074_3_lut.init = 16'hcaca;
    LUT4 i9073_3_lut (.A(n908_adj_706), .B(n635), .C(\rom_addr[4] ), .Z(n9496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9073_3_lut.init = 16'hcaca;
    LUT4 i5708_2_lut_rep_126_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .D(\rom_addr[0] ), .Z(n10967)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i5708_2_lut_rep_126_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i9241_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9664)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam i9241_3_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n1084_adj_679)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i9070_4_lut (.A(n5238), .B(n10939), .C(\rom_addr[4] ), .D(n11067), 
         .Z(n9493)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i9070_4_lut.init = 16'hcac0;
    LUT4 n1923_bdd_4_lut_10552_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n10841)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;
    defparam n1923_bdd_4_lut_10552_4_lut.init = 16'h985f;
    LUT4 n70_bdd_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), .C(\rom_addr[2] ), 
         .D(\rom_addr[3] ), .Z(n10839)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam n70_bdd_4_lut_4_lut.init = 16'h18c3;
    LUT4 i9207_3_lut_4_lut_4_lut (.A(\rom_addr[0] ), .B(\rom_addr[1] ), 
         .C(\rom_addr[2] ), .D(\rom_addr[3] ), .Z(n9630)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i9207_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i9704_3_lut_4_lut (.A(\rom_addr[4] ), .B(\rom_addr[3] ), .C(n1084), 
         .D(n1076), .Z(n1085_adj_671)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i9704_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i10068 (.BLUT(n10267), .ALUT(n10266), .C0(\rom_addr[8] ), .Z(n10268));
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), 
         .C(\rom_addr[3] ), .D(n11900), .Z(n2009_adj_683)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    PFUMX i9043 (.BLUT(n9463), .ALUT(n9464), .C0(\rom_addr[5] ), .Z(n9466));
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(\rom_addr[0] ), 
         .B(\rom_addr[1] ), .C(\rom_addr[3] ), .D(\rom_addr[2] ), .Z(n46_adj_658)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h0cb0;
    L6MUX21 i10218 (.D0(n10486), .D1(n10484), .SD(\rom_addr[6] ), .Z(n10487));
    PFUMX i10216 (.BLUT(n10485), .ALUT(n444), .C0(\rom_addr[5] ), .Z(n10486));
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(\rom_addr[0] ), .B(n11073), 
         .C(\rom_addr[3] ), .D(n11015), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 i6202_2_lut_rep_230 (.A(\rom_addr[2] ), .B(\rom_addr[0] ), .Z(n11071)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6202_2_lut_rep_230.init = 16'h8888;
    PFUMX i10530 (.BLUT(n10896), .ALUT(n10895), .C0(\rom_addr[5] ), .Z(n10897));
    LUT4 i3102_2_lut_rep_231 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .Z(n11072)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3102_2_lut_rep_231.init = 16'h2222;
    LUT4 i9749_3_lut (.A(n9490), .B(n9491), .C(\rom_addr[5] ), .Z(n9492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9749_3_lut.init = 16'hcaca;
    L6MUX21 i10028 (.D0(n10210), .D1(n10208), .SD(\rom_addr[5] ), .Z(n10211));
    LUT4 n1403_bdd_3_lut (.A(n11152), .B(n11119), .C(\rom_addr[5] ), .Z(n10769)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1403_bdd_3_lut.init = 16'hacac;
    PFUMX i10214 (.BLUT(n10483), .ALUT(n5236), .C0(\rom_addr[5] ), .Z(n10484));
    LUT4 i5670_2_lut_rep_182_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .Z(n11023)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5670_2_lut_rep_182_3_lut.init = 16'h2020;
    L6MUX21 i10208 (.D0(n10475), .D1(n10472), .SD(\rom_addr[6] ), .Z(n10476));
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut (.A(\rom_addr[2] ), 
         .B(n11089), .C(\rom_addr[3] ), .D(n11898), .Z(n364)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n11088), .B(\rom_addr[3] ), 
         .C(\rom_addr[4] ), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    PFUMX i10206 (.BLUT(n10474), .ALUT(n10473), .C0(n11075), .Z(n10475));
    LUT4 i4691_2_lut_rep_232 (.A(\rom_addr[1] ), .B(\rom_addr[2] ), .Z(n11073)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4691_2_lut_rep_232.init = 16'h6666;
    LUT4 i4684_2_lut_rep_199_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n11040)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4684_2_lut_rep_199_3_lut.init = 16'h6f6f;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(\rom_addr[1] ), 
         .B(\rom_addr[2] ), .C(\rom_addr[3] ), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    PFUMX i9047 (.BLUT(n9468), .ALUT(n9469), .C0(\rom_addr[5] ), .Z(n9470));
    PFUMX i10724 (.BLUT(n11360), .ALUT(n11358), .C0(\rom_addr[7] ), .Z(n11361));
    LUT4 i5764_2_lut_rep_125_3_lut_4_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[0] ), .D(\rom_addr[3] ), .Z(n10966)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5764_2_lut_rep_125_3_lut_4_lut.init = 16'h0090;
    PFUMX i10204 (.BLUT(n10932), .ALUT(n10471), .C0(\rom_addr[5] ), .Z(n10472));
    LUT4 i9617_3_lut (.A(n9672), .B(n9673), .C(\rom_addr[4] ), .Z(n9674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9617_3_lut.init = 16'hcaca;
    LUT4 i3181_3_lut_rep_162_4_lut_3_lut (.A(\rom_addr[1] ), .B(\rom_addr[2] ), 
         .C(\rom_addr[3] ), .Z(n11003)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3181_3_lut_rep_162_4_lut_3_lut.init = 16'h6262;
    LUT4 i9267_3_lut (.A(n9688), .B(n9689), .C(\rom_addr[10] ), .Z(\rom_q[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9267_3_lut.init = 16'hcaca;
    PFUMX i10721 (.BLUT(n11356), .ALUT(n444_adj_701), .C0(\rom_addr[5] ), 
          .Z(n11357));
    PFUMX i10026 (.BLUT(n270_adj_2), .ALUT(n10209), .C0(\rom_addr[4] ), 
          .Z(n10210));
    PFUMX i9050 (.BLUT(n9471), .ALUT(n9472), .C0(\rom_addr[5] ), .Z(n9473));
    LUT4 i9084_3_lut (.A(n46_adj_658), .B(n61_adj_625), .C(\rom_addr[4] ), 
         .Z(n9507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9084_3_lut.init = 16'hcaca;
    LUT4 n1738_bdd_4_lut (.A(n11095), .B(n10965), .C(\rom_addr[4] ), .D(\rom_addr[3] ), 
         .Z(n10790)) /* synthesis lut_function=(A (B+(C))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n1738_bdd_4_lut.init = 16'hfcac;
    LUT4 rom_addr_6__bdd_4_lut_10464 (.A(n10970), .B(\rom_addr[4] ), .C(n11093), 
         .D(\rom_addr[3] ), .Z(n10793)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam rom_addr_6__bdd_4_lut_10464.init = 16'h88b8;
    PFUMX i9124 (.BLUT(n684_adj_705), .ALUT(n699_adj_576), .C0(\rom_addr[4] ), 
          .Z(n9547));
    L6MUX21 i10503 (.D0(n10843), .D1(n10840), .SD(\rom_addr[5] ), .Z(n10844));
    PFUMX i10501 (.BLUT(n10842), .ALUT(n10841), .C0(\rom_addr[4] ), .Z(n10843));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117_adj_636), .ALUT(n1148), 
          .C0(\rom_addr[5] ), .Z(n1149_adj_644)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i10499 (.BLUT(n10839), .ALUT(n10838), .C0(\rom_addr[4] ), .Z(n10840));
    PFUMX i9055 (.BLUT(n9474), .ALUT(n9475), .C0(\rom_addr[5] ), .Z(n9478));
    PFUMX i9056 (.BLUT(n9476), .ALUT(n9477), .C0(\rom_addr[5] ), .Z(n9479));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (\ascii_num[5] , sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_370[1] , n5, \end_y_8__N_313[4] , n5363, 
            \state[3] , sys_clk_50MHz_enable_55) /* synthesis syn_module_defined=1 */ ;
    output \ascii_num[5] ;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_370[1] ;
    input n5;
    output \end_y_8__N_313[4] ;
    input n5363;
    input \state[3] ;
    input sys_clk_50MHz_enable_55;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]start_y_8__N_535;
    wire [4:0]cnt_ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(70[17:30])
    
    wire n10975;
    wire [4:0]n18;
    
    wire show_char_flag_N_544, n9082, sys_clk_50MHz_enable_84;
    wire [1:0]n7;
    
    wire n11053;
    wire [4:0]n28;
    
    FD1P3AX ascii_num__i1 (.D(start_y_8__N_535[4]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_ascii_num__i0 (.D(n18[0]), .CK(sys_clk_50MHz), .CD(n10975), 
            .Q(cnt_ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[10] 105[40])
    defparam cnt_ascii_num__i0.GSR = "ENABLED";
    LUT4 i9919_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_544)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[13:24])
    defparam i9919_2_lut.init = 16'h4444;
    FD1S3AX show_char_flag_46 (.D(show_char_flag_N_544), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_370[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[10] 95[32])
    defparam show_char_flag_46.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_370[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_535[4]), .CK(sys_clk_50MHz), .CD(n5363), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(228[10] 253[24])
    defparam start_y__i1.GSR = "ENABLED";
    LUT4 i9917_2_lut_rep_134 (.A(cnt_ascii_num[0]), .B(n9082), .Z(n10975)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[13:38])
    defparam i9917_2_lut_rep_134.init = 16'h2222;
    LUT4 i473_3_lut_rep_97_4_lut (.A(cnt_ascii_num[0]), .B(n9082), .C(\state[3] ), 
         .D(\state[5] ), .Z(sys_clk_50MHz_enable_84)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[13:38])
    defparam i473_3_lut_rep_97_4_lut.init = 16'hf222;
    LUT4 i1851_2_lut_4_lut_4_lut (.A(cnt_ascii_num[0]), .B(n9082), .C(\state[3] ), 
         .D(\state[5] ), .Z(n18[0])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[13:38])
    defparam i1851_2_lut_4_lut_4_lut.init = 16'h5888;
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_50MHz_enable_55), .CD(\state_3__N_370[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i1.GSR = "ENABLED";
    LUT4 i819_3_lut_4_lut (.A(cnt_ascii_num[2]), .B(n11053), .C(cnt_ascii_num[3]), 
         .D(cnt_ascii_num[4]), .Z(n28[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i819_3_lut_4_lut.init = 16'h7f80;
    LUT4 i783_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(85[17:28])
    defparam i783_2_lut.init = 16'h6666;
    FD1P3IX cnt_ascii_num__i4 (.D(n28[4]), .SP(sys_clk_50MHz_enable_84), 
            .CD(n10975), .CK(sys_clk_50MHz), .Q(cnt_ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[10] 105[40])
    defparam cnt_ascii_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num__i3 (.D(n28[3]), .SP(sys_clk_50MHz_enable_84), 
            .CD(n10975), .CK(sys_clk_50MHz), .Q(cnt_ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[10] 105[40])
    defparam cnt_ascii_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num__i2 (.D(n28[2]), .SP(sys_clk_50MHz_enable_84), 
            .CD(n10975), .CK(sys_clk_50MHz), .Q(cnt_ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[10] 105[40])
    defparam cnt_ascii_num__i2.GSR = "ENABLED";
    LUT4 i798_2_lut (.A(cnt_ascii_num[1]), .B(cnt_ascii_num[0]), .Z(n28[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i798_2_lut.init = 16'h6666;
    LUT4 i800_2_lut_rep_212 (.A(cnt_ascii_num[1]), .B(cnt_ascii_num[0]), 
         .Z(n11053)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i800_2_lut_rep_212.init = 16'h8888;
    LUT4 i812_2_lut_3_lut_4_lut (.A(cnt_ascii_num[1]), .B(cnt_ascii_num[0]), 
         .C(cnt_ascii_num[3]), .D(cnt_ascii_num[2]), .Z(n28[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i812_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i805_2_lut_3_lut (.A(cnt_ascii_num[1]), .B(cnt_ascii_num[0]), .C(cnt_ascii_num[2]), 
         .Z(n28[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i805_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_ascii_num__i1 (.D(n28[1]), .SP(sys_clk_50MHz_enable_84), 
            .CD(n10975), .CK(sys_clk_50MHz), .Q(cnt_ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(100[10] 105[40])
    defparam cnt_ascii_num__i1.GSR = "ENABLED";
    LUT4 i9915_2_lut (.A(cnt_ascii_num[0]), .B(n9082), .Z(start_y_8__N_535[4])) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(112[13:14])
    defparam i9915_2_lut.init = 16'h1111;
    LUT4 i3_4_lut (.A(cnt_ascii_num[2]), .B(cnt_ascii_num[1]), .C(cnt_ascii_num[3]), 
         .D(cnt_ascii_num[4]), .Z(n9082)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(112[13:14])
    defparam i3_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_25[1] , \state[2] , 
            \state[4] , \state[1] , cnt_rom_prepare, init_data, show_char_data, 
            \state[5] , lcd_dc_c_8, \data[7] , \data[6] , \data[5] , 
            \data[4] , \data[3] , \data[2] , \data[1] ) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_25[1] ;
    input \state[2] ;
    input \state[4] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input [8:0]init_data;
    input [8:0]show_char_data;
    input \state[5] ;
    output lcd_dc_c_8;
    output \data[7] ;
    output \data[6] ;
    output \data[5] ;
    output \data[4] ;
    output \data[3] ;
    output \data[2] ;
    output \data[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95, n10905, n10904;
    
    FD1S3AX data_i0 (.D(data_8__N_73[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_95), .CK(sys_clk_50MHz), .Q(\state_3__N_25[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n10905)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n10904)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(\state[5] ), 
         .Z(data_8__N_73[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    FD1S3AX data_i8 (.D(data_8__N_73[8]), .CK(sys_clk_50MHz), .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX data_i7 (.D(data_8__N_73[7]), .CK(sys_clk_50MHz), .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX data_i6 (.D(data_8__N_73[6]), .CK(sys_clk_50MHz), .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3AX data_i5 (.D(data_8__N_73[5]), .CK(sys_clk_50MHz), .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(data_8__N_73[4]), .CK(sys_clk_50MHz), .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(data_8__N_73[3]), .CK(sys_clk_50MHz), .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i2 (.D(data_8__N_73[2]), .CK(sys_clk_50MHz), .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(data_8__N_73[1]), .CK(sys_clk_50MHz), .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 mux_7_i9_3_lut (.A(init_data[8]), .B(show_char_data[8]), .C(\state[5] ), 
         .Z(data_8__N_73[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i9_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(init_data[7]), .B(show_char_data[7]), .C(\state[5] ), 
         .Z(data_8__N_73[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_7_i7_3_lut (.A(init_data[6]), .B(show_char_data[6]), .C(\state[5] ), 
         .Z(data_8__N_73[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(init_data[5]), .B(show_char_data[5]), .C(\state[5] ), 
         .Z(data_8__N_73[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(init_data[4]), .B(show_char_data[4]), .C(\state[5] ), 
         .Z(data_8__N_73[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(init_data[3]), .B(show_char_data[3]), .C(\state[5] ), 
         .Z(data_8__N_73[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i3_3_lut (.A(init_data[2]), .B(show_char_data[2]), .C(\state[5] ), 
         .Z(data_8__N_73[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i2_3_lut (.A(init_data[1]), .B(show_char_data[1]), .C(\state[5] ), 
         .Z(data_8__N_73[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    PFUMX i10540 (.BLUT(n10905), .ALUT(n10904), .C0(\state[5] ), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

