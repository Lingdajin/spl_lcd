// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 18:07:00 2025
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
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, lcd_mosi_c, 
        lcd_cs_c, GND_net;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(37[17:26])
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(43[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(47[17:31])
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    
    wire debug_led1_c_5;
    wire [5:0]state_adj_813;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_240;
    
    wire sys_clk_c_enable_47, debug_led2_c_3;
    wire [3:0]state_adj_819;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire sys_clk_50MHz_enable_45;
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [8:0]end_x_8__N_286;
    wire [8:0]end_y_8__N_304;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_829;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_28, n1439, n20, n5, n8823, n14451, 
        n15931, sys_clk_50MHz_enable_6, n6921, sys_clk_c_enable_31, 
        n14545, VCC_net;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .lcd_cs_c(lcd_cs_c), .cnt_sclk({cnt_sclk}), .n14451(n14451), 
            .lcd_sclk_c(lcd_sclk_c), .lcd_mosi_c(lcd_mosi_c), .\state[2] (state[2]), 
            .n14545(n14545), .\data[1] (data[1]), .\data[0] (data[0]), 
            .\data[7] (data[7]), .\data[2] (data[2]), .\data[3] (data[3]), 
            .\data[5] (data[5]), .\data[6] (data[6]), .\data[4] (data[4]), 
            .\state_3__N_25[1] (state_3__N_25[1]), .n1439(n1439), .sys_clk_50MHz_enable_28(sys_clk_50MHz_enable_28)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(63[12] 75[2])
    LUT4 i1994_2_lut_3_lut (.A(wr_done), .B(state_adj_813[2]), .C(cnt_s2_num[0]), 
         .Z(n20)) /* synthesis lut_function=(!(A (C)+!A !(B (C)+!B !(C)))) */ ;
    defparam i1994_2_lut_3_lut.init = 16'h4b4b;
    ROM128X1A mux_290_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_290_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_290_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_290_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_290_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_290_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_290_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_290_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i11452_2_lut_rep_294 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11452_2_lut_rep_294.init = 16'heeee;
    LUT4 i12767_3_lut_rep_200_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n14451)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12767_3_lut_rep_200_4_lut.init = 16'h0100;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i716_2_lut (.A(wr_done), .B(state_adj_813[4]), .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i716_2_lut.init = 16'hbbbb;
    LUT4 i719_4_lut (.A(state_adj_819[2]), .B(length_num_flag), .C(n8823), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i719_4_lut.init = 16'hceee;
    LUT4 m1_lut (.Z(n15931)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i722_4_lut_rep_309 (.A(debug_led1_c_5), .B(state_3__N_368[1]), 
         .C(cnt1_adj_829[0]), .D(cnt1_adj_829[1]), .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i722_4_lut_rep_309.init = 16'hceee;
    LUT4 i1992_2_lut_4_lut (.A(debug_led1_c_5), .B(state_3__N_368[1]), .C(cnt1_adj_829[0]), 
         .D(cnt1_adj_829[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i1992_2_lut_4_lut.init = 16'h3e1e;
    lcd_init lcd_init_inst (.cnt_s2_num({cnt_s2_num}), .sys_clk_50MHz(sys_clk_50MHz), 
            .sys_clk_50MHz_enable_6(sys_clk_50MHz_enable_6), .init_data({init_data}), 
            .n20(n20), .GND_net(GND_net), .sys_clk_50MHz_enable_45(sys_clk_50MHz_enable_45), 
            .n1439(n1439), .debug_led1_c_5(debug_led1_c_5), .n15931(n15931), 
            .lcd_rst_c(lcd_rst_c), .\state[2] (state_adj_813[2]), .\state[4] (state_adj_813[4]), 
            .\init_data_8__N_240[5] (init_data_8__N_240[5]), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .\init_data_8__N_240[2] (init_data_8__N_240[2]), 
            .n6921(n6921)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(91[11] 101[2])
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14545), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_28)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i713_2_lut_rep_355 (.A(wr_done), .B(state_adj_813[2]), .Z(sys_clk_50MHz_enable_6)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i713_2_lut_rep_355.init = 16'hbbbb;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .init_data({init_data}), .show_char_data({show_char_data}), 
            .debug_led1_c_5(debug_led1_c_5), .\state[1] (state_adj_819[1]), 
            .cnt_rom_prepare({cnt_rom_prepare}), .\state[2] (state_adj_813[2]), 
            .\state[4] (state_adj_813[4])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(77[10] 89[2])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(57[5] 61[2])
    lcd_show_char lcd_show_char_inst (.sys_clk_c(sys_clk_c), .wr_done(wr_done), 
            .cnt_rom_prepare({cnt_rom_prepare}), .length_num_flag(length_num_flag), 
            .show_char_data({show_char_data}), .\state[1] (state_adj_819[1]), 
            .\ascii_num[0] (ascii_num[0]), .\ascii_num[1] (ascii_num[1]), 
            .\state[2] (state_adj_819[2]), .\state_3__N_368[1] (state_3__N_368[1]), 
            .\end_x_8__N_286[5] (end_x_8__N_286[5]), .debug_led2_c_3(debug_led2_c_3), 
            .sys_clk_c_enable_47(sys_clk_c_enable_47), .n8823(n8823), .\ascii_num[6] (ascii_num[6]), 
            .GND_net(GND_net), .\ascii_num[4] (ascii_num[4]), .\ascii_num[2] (ascii_num[2]), 
            .\ascii_num[3] (ascii_num[3]), .\end_x_8__N_286[4] (end_x_8__N_286[4]), 
            .\end_y_8__N_304[4] (end_y_8__N_304[4]), .\end_x_8__N_286[3] (end_x_8__N_286[3]), 
            .\end_y_8__N_304[5] (end_y_8__N_304[5]), .\end_x_8__N_286[6] (end_x_8__N_286[6]), 
            .\end_x_8__N_286[7] (end_x_8__N_286[7])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(103[16] 117[2])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    OB debug_led1_pad (.I(debug_led1_c_5), .O(debug_led1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(29[21:31])
    OB debug_led2_pad (.I(debug_led2_c_3), .O(debug_led2));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[21:31])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    show_string_number_ctrl show_string_number_ctrl_inst (.cnt1({cnt1_adj_829}), 
            .sys_clk_c(sys_clk_c), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\ascii_num[0] (ascii_num[0]), .debug_led1_c_5(debug_led1_c_5), 
            .\end_y_8__N_304[4] (end_y_8__N_304[4]), .n6921(n6921), .debug_led2_c_3(debug_led2_c_3), 
            .sys_clk_c_enable_31(sys_clk_c_enable_31), .\end_x_8__N_286[3] (end_x_8__N_286[3]), 
            .\end_y_8__N_304[5] (end_y_8__N_304[5]), .\end_x_8__N_286[7] (end_x_8__N_286[7]), 
            .\end_x_8__N_286[6] (end_x_8__N_286[6]), .\end_x_8__N_286[5] (end_x_8__N_286[5]), 
            .\end_x_8__N_286[4] (end_x_8__N_286[4]), .\ascii_num[6] (ascii_num[6]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[1] (ascii_num[1])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(119[26] 131[2])
    VHI i14482 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, lcd_cs_c, cnt_sclk, n14451, 
            lcd_sclk_c, lcd_mosi_c, \state[2] , n14545, \data[1] , 
            \data[0] , \data[7] , \data[2] , \data[3] , \data[5] , 
            \data[6] , \data[4] , \state_3__N_25[1] , n1439, sys_clk_50MHz_enable_28) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output [3:0]cnt_sclk;
    input n14451;
    output lcd_sclk_c;
    output lcd_mosi_c;
    output \state[2] ;
    input n14545;
    input \data[1] ;
    input \data[0] ;
    input \data[7] ;
    input \data[2] ;
    input \data[3] ;
    input \data[5] ;
    input \data[6] ;
    input \data[4] ;
    input \state_3__N_25[1] ;
    output n1439;
    input sys_clk_50MHz_enable_28;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]state_3__N_33;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6926;
    wire [4:0]n25;
    wire [3:0]n15;
    
    wire sclk_N_53, sys_clk_50MHz_enable_9, n1569, n6924, n8892, mosi_N_56, 
        n12215, mosi_N_55, n2;
    wire [3:0]state_3__N_29;
    
    wire n13, n14, mosi_N_64, mosi_N_58, mosi_N_61, mosi_N_59, mosi_N_65, 
        mosi_N_62, mosi_N_60, mosi_N_63, n4, sys_clk_50MHz_enable_25, 
        n14547, sys_clk_50MHz_enable_10;
    wire [15:0]n121;
    
    wire n14412, n12212, n6723, n2880, n8757, n2892, n8891, n12204;
    wire [3:0]n100;
    
    wire n2903, n2900, n12118;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_683__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6926), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_683__i4.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14451), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n1569), .SP(sys_clk_50MHz_enable_9), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i10049_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10049_2_lut.init = 16'h6666;
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n6924), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    PFUMX mosi_I_1 (.BLUT(n8892), .ALUT(mosi_N_56), .C0(n12215), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;
    LUT4 i13_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(52[17:26])
    defparam i13_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(state[0]), .B(state[1]), .C(n2), .D(state_3__N_29[1]), 
         .Z(sys_clk_50MHz_enable_9)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(22[29:33])
    defparam i1_4_lut.init = 16'hfafe;
    LUT4 i2_4_lut (.A(\state[2] ), .B(sclk_flag), .C(n13), .D(n14), 
         .Z(n2)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(22[29:33])
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i5_4_lut (.A(mosi_N_64), .B(mosi_N_58), .C(mosi_N_61), .D(mosi_N_59), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(22[29:33])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_65), .B(mosi_N_62), .C(mosi_N_60), .D(mosi_N_63), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(22[29:33])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7360_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1569)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7360_2_lut.init = 16'h2222;
    LUT4 i11473_4_lut (.A(cnt_delay[2]), .B(cnt_delay[1]), .C(n4), .D(cnt_delay[3]), 
         .Z(state_3__N_29[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i11473_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut (.A(cnt_delay[4]), .B(cnt_delay[0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12761_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12761_4_lut.init = 16'h0200;
    LUT4 i32_2_lut_rep_156_4_lut (.A(n14545), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_25)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_156_4_lut.init = 16'h0400;
    LUT4 i10070_3_lut_4_lut (.A(cnt_delay[2]), .B(n14547), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10070_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14451), .C(state[1]), .Z(sys_clk_50MHz_enable_10)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_10), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i12616_4_lut_4_lut (.A(n14412), .B(n12212), .C(n6723), .D(n2880), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12616_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i2022_4_lut (.A(mosi_N_64), .B(\data[1] ), .C(mosi_N_63), .D(\data[0] ), 
         .Z(n2880)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2022_4_lut.init = 16'hcac0;
    LUT4 i6021_1_lut (.A(mosi_N_65), .Z(n6924)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam i6021_1_lut.init = 16'h5555;
    LUT4 state_3__N_21_I_0_2_lut_rep_161 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n14412)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_161.init = 16'h2222;
    LUT4 i5835_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n8757), .Z(n6723)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5835_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2034_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2892)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2034_3_lut_4_lut.init = 16'h2f22;
    LUT4 i7997_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n8891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i7997_3_lut.init = 16'hcaca;
    LUT4 i11546_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n12212)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11546_2_lut.init = 16'h1111;
    LUT4 i12871_4_lut (.A(n14412), .B(mosi_N_58), .C(mosi_N_59), .D(n12204), 
         .Z(n12215)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12871_4_lut.init = 16'hfffe;
    LUT4 i11538_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n12204)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11538_3_lut.init = 16'h0101;
    LUT4 i10047_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10047_1_lut.init = 16'h5555;
    LUT4 i7866_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n8757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i7866_3_lut.init = 16'hcaca;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i7998_3_lut (.A(n8891), .B(\data[4] ), .C(mosi_N_60), .Z(n8892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i7998_3_lut.init = 16'hcaca;
    LUT4 i822_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i822_2_lut.init = 16'h6666;
    LUT4 i10052_2_lut_rep_296 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14547)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10052_2_lut_rep_296.init = 16'h8888;
    LUT4 i10063_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10063_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i10056_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10056_2_lut_3_lut.init = 16'h7878;
    LUT4 i2045_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2903)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2045_2_lut.init = 16'h2222;
    LUT4 i2042_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2900)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2042_4_lut.init = 16'heca0;
    LUT4 i736_1_lut (.A(wr_done), .Z(n1439)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i736_1_lut.init = 16'h5555;
    LUT4 i836_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i836_3_lut_4_lut.init = 16'h7f80;
    LUT4 i829_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i829_2_lut_3_lut.init = 16'h7878;
    LUT4 i12803_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n12118), .D(cnt_delay[2]), 
         .Z(n6926)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12803_4_lut.init = 16'hfffb;
    LUT4 i11454_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n12118)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11454_2_lut.init = 16'heeee;
    LUT4 i1993_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_28), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i1993_2_lut.init = 16'h6666;
    FD1S3IX cnt_delay_683__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6926), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_683__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_683__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6926), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_683__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_683__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6926), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_683__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n121[14]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n121[12]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n121[10]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n121[8]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n121[6]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n121[4]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n121[2]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n121[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n121[0]), .SP(sys_clk_50MHz_enable_25), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_683__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6926), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_683__i0.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_28), .CD(n14451), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_28), .CD(n14451), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_28), .CD(n14451), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=63, LSE_RLINE=75 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2903), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2900), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2892), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (cnt_s2_num, sys_clk_50MHz, sys_clk_50MHz_enable_6, init_data, 
            n20, GND_net, sys_clk_50MHz_enable_45, n1439, debug_led1_c_5, 
            n15931, lcd_rst_c, \state[2] , \state[4] , \init_data_8__N_240[5] , 
            \init_data_8__N_240[0] , \init_data_8__N_240[4] , \init_data_8__N_240[2] , 
            n6921) /* synthesis syn_module_defined=1 */ ;
    output [6:0]cnt_s2_num;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_6;
    output [8:0]init_data;
    input n20;
    input GND_net;
    input sys_clk_50MHz_enable_45;
    input n1439;
    output debug_led1_c_5;
    input n15931;
    output lcd_rst_c;
    output \state[2] ;
    output \state[4] ;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[0] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    output n6921;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    
    wire n1444;
    wire [6:0]n159;
    
    wire n45;
    wire [8:0]init_data_8__N_97;
    
    wire n14588, n10732;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n10733;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n14580;
    wire [17:0]n357;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272, sys_clk_50MHz_enable_8, n10731, n10730, 
        lcd_rst_high_flag;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274, cnt_150ms_22__N_221, n10729, n10728, 
        n10710, n10711, n14445, n14608, n33, n10727, n6925, lcd_rst_high_flag_N_270;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [5:0]state_5__N_168;
    
    wire n2913, n12060, n12061;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n30, n31, n12220, n63, n10;
    wire [5:0]state_5__N_174;
    
    wire n2916, n46, n10781, n12544, n14769, n12548, n12546, n12547, 
        n12550, n12549, n30_adj_800, n12551, n14850, n14852, n15, 
        n12560, n11907, n12004, n12561, n11971, n10_adj_801, n11940, 
        n6678, n12162, n14460, n14727, n14726, n11982, n8751, 
        n8, n14605, n14749, n14748, n12168, n2918, n14768, n14767, 
        n14687, n10782, n14476, n14235, n10726;
    wire [5:0]state_5__N_186;
    
    wire n2920, n12047, n8_adj_802, n14848, n6628, n12058, n12, 
        n11949, n12545, n43, n6, n14540, n14844, n14685, n14686, 
        n2922, n10713, n10714, n86, n88, n18, n14628, n14447, 
        n11905, n14849, n11037, n12156, n12188, n12164, n12194, 
        n14728, n14673, n14672, n12063, n6_adj_803, n12184, n12180, 
        n12543, n12552, n10725, n10712, n14674, n11985, n14609, 
        n14846, n12989, n14750, n14456, n10707, n10708, n30_adj_804, 
        n10715, n10709, n10735, n10734;
    
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n45), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14588), .SP(sys_clk_50MHz_enable_6), .CD(n1444), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n20), .CK(sys_clk_50MHz), .CD(n1444), .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    CCU2D cnt_150ms_685_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10732), .COUT(n10733), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_17.INJECT1_1 = "NO";
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1439), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3AX state_FSM_i1 (.D(n15931), .SP(sys_clk_50MHz_enable_8), .CK(sys_clk_50MHz), 
            .Q(debug_led1_c_5));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    CCU2D cnt_150ms_685_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10731), .COUT(n10732), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_15.INJECT1_1 = "NO";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    CCU2D cnt_150ms_685_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10730), .COUT(n10731), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_13.INJECT1_1 = "NO";
    FD1P3AX lcd_rst_172 (.D(n15931), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1439), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i22.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    CCU2D cnt_150ms_685_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10729), .COUT(n10730), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_685_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10728), .COUT(n10729), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_9.INJECT1_1 = "NO";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10710), .COUT(n10711), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i49_4_lut_4_lut (.A(n14445), .B(cnt_s4_num[3]), .C(n14608), .D(cnt_s4_num[0]), 
         .Z(n33)) /* synthesis lut_function=(A (B)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i49_4_lut_4_lut.init = 16'hd9c8;
    CCU2D cnt_150ms_685_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10727), .COUT(n10728), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_7.INJECT1_1 = "NO";
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6925), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i2055_2_lut (.A(state[0]), .B(state_5__N_168[0]), .Z(n2913)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2055_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n12060), .B(n12061), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut.init = 16'hfeff;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(\state[2] ), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;
    PFUMX mux_290_Mux_7_i63 (.BLUT(n30), .ALUT(n31), .C0(n12220), .Z(n63));
    LUT4 i260_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_8)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[3]), 
         .D(cnt_150ms[2]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i2058_4_lut (.A(state[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state[0]), .Z(n2916)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2058_4_lut.init = 16'hb3a0;
    PFUMX i11878 (.BLUT(n46), .ALUT(n10781), .C0(cnt_s2_num[4]), .Z(n12544));
    LUT4 init_data_8__I_0_i6_4_lut (.A(n14769), .B(\init_data_8__N_240[5] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 mux_290_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_290_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 i11882_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12548)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i11882_3_lut_4_lut_4_lut.init = 16'h6c20;
    PFUMX i11884 (.BLUT(n12546), .ALUT(n12547), .C0(cnt_s2_num[4]), .Z(n12550));
    LUT4 i11883_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n12549)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam i11883_4_lut_4_lut.init = 16'h0204;
    LUT4 mux_290_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30_adj_800)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_290_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    PFUMX i11885 (.BLUT(n12548), .ALUT(n12549), .C0(cnt_s2_num[4]), .Z(n12551));
    LUT4 init_data_8__I_0_i8_4_lut (.A(init_data_8__N_231[7]), .B(n63), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_97[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i7361_4_lut (.A(n33), .B(\state[4] ), .C(n14445), .D(n14608), 
         .Z(init_data_8__N_231[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7361_4_lut.init = 16'hc8c0;
    LUT4 n165_bdd_2_lut_13833_3_lut (.A(n14850), .B(n14445), .C(\state[4] ), 
         .Z(n14852)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n165_bdd_2_lut_13833_3_lut.init = 16'he0e0;
    PFUMX i11894 (.BLUT(n15), .ALUT(n30_adj_800), .C0(cnt_s2_num[4]), 
          .Z(n12560));
    PFUMX i11895 (.BLUT(n11907), .ALUT(n12004), .C0(cnt_s2_num[4]), .Z(n12561));
    LUT4 i1_4_lut_adj_34 (.A(cnt_150ms[6]), .B(n11971), .C(n10_adj_801), 
         .D(n11940), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_4_lut_adj_34.init = 16'hfffd;
    LUT4 i2_4_lut (.A(cnt_150ms[13]), .B(n6678), .C(n12162), .D(n14460), 
         .Z(n11971)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i4_4_lut_adj_35 (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .D(cnt_150ms[5]), .Z(n10_adj_801)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i4_4_lut_adj_35.init = 16'hfeff;
    LUT4 i1_3_lut_then_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(n14445), 
         .Z(n14727)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_then_3_lut.init = 16'hf8f8;
    LUT4 i1_3_lut_else_3_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .D(n14445), .Z(n14726)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_else_3_lut.init = 16'hff42;
    LUT4 i3_4_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[17]), .C(cnt_s4_num[12]), 
         .D(n11982), .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i11497_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n12162)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11497_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_36 (.A(cnt_s4_num[0]), .B(n8751), .C(n8), .D(n14605), 
         .Z(n11982)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_36.init = 16'h0008;
    LUT4 n2949_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n14749)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2949_bdd_3_lut_4_lut_then_4_lut.init = 16'hf3fb;
    LUT4 n2949_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n14748)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2949_bdd_3_lut_4_lut_else_4_lut.init = 16'hb7f2;
    LUT4 i2_4_lut_adj_37 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n12168), 
         .D(cnt_150ms[18]), .Z(n11940)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i2_4_lut_adj_37.init = 16'hffdf;
    LUT4 i7860_2_lut (.A(cnt_s4_num[11]), .B(cnt_s4_num[3]), .Z(n8751)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7860_2_lut.init = 16'h8888;
    LUT4 i11503_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n12168)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11503_2_lut.init = 16'h8888;
    LUT4 i2060_4_lut (.A(\state[2] ), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state[1]), .Z(n2918)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2060_4_lut.init = 16'h3b0a;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(n14445), .Z(n14768)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_then_4_lut.init = 16'hffac;
    LUT4 i1_4_lut_else_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(n14445), .Z(n14767)) /* synthesis lut_function=(A (C+(D))+!A (((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_else_4_lut.init = 16'hffb5;
    LUT4 i29_4_lut (.A(\state[4] ), .B(\init_data_8__N_240[0] ), .C(\state[2] ), 
         .D(n14687), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i29_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_adj_38 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n10782)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_38.init = 16'h8000;
    LUT4 n2949_bdd_4_lut (.A(n14476), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n14235)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n2949_bdd_4_lut.init = 16'h31cf;
    CCU2D cnt_150ms_685_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10726), .COUT(n10727), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_5.INJECT1_1 = "NO";
    LUT4 i2062_4_lut (.A(state[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(\state[2] ), .Z(n2920)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2062_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_39 (.A(cnt_150ms[10]), .B(n12047), .C(n8_adj_802), 
         .D(cnt_150ms[5]), .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_4_lut_adj_39.init = 16'hfffd;
    PFUMX i13815 (.BLUT(n14852), .ALUT(n14848), .C0(\state[2] ), .Z(init_data_8__N_97[1]));
    LUT4 i1_2_lut_3_lut (.A(n6628), .B(n14460), .C(n12058), .Z(n12060)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i6_4_lut (.A(cnt_s4_num[5]), .B(n12), .C(cnt_s4_num[6]), .D(cnt_s4_num[4]), 
         .Z(n11949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i12887_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12887_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut (.A(n6628), .B(n14460), .C(cnt_150ms[16]), .D(cnt_150ms[15]), 
         .Z(n12047)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hefff;
    LUT4 init_data_8__I_0_i7_4_lut (.A(init_data_8__N_231[7]), .B(n12545), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_97[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i5_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[10]), .C(cnt_s4_num[9]), 
         .D(cnt_s4_num[8]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_rep_194 (.A(cnt_s4_num[14]), .B(n11949), .C(n43), .D(n6), 
         .Z(n14445)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i4_4_lut_rep_194.init = 16'hfffe;
    LUT4 i879_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14540), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i879_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n14445_bdd_4_lut_13901 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[0]), .Z(n14844)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n14445_bdd_4_lut_13901.init = 16'hdaee;
    LUT4 i712_1_lut (.A(\state[2] ), .Z(n1444)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i712_1_lut.init = 16'h5555;
    PFUMX i13723 (.BLUT(n14685), .ALUT(n14686), .C0(cnt_s4_num[3]), .Z(n14687));
    LUT4 i3_3_lut (.A(n11940), .B(cnt_150ms[14]), .C(cnt_150ms[6]), .Z(n8_adj_802)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i2064_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state[3]), .Z(n2922)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2064_4_lut.init = 16'h3b0a;
    LUT4 i5_3_lut_rep_209 (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[1]), 
         .Z(n14460)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i5_3_lut_rep_209.init = 16'hfefe;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10713), .COUT(n10714), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[1]), .Z(n86)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0d01;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[1]), .Z(n88)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h00b1;
    LUT4 i6_2_lut_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[17]), 
         .D(cnt_s4_num[16]), .Z(n18)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i6_2_lut_3_lut_4_lut.init = 16'h000d;
    LUT4 i3_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(n11949), 
         .D(cnt_s4_num[16]), .Z(n8)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i3_3_lut_4_lut.init = 16'hfffd;
    LUT4 i853_2_lut_rep_377 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14628)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i853_2_lut_rep_377.init = 16'h8888;
    LUT4 i860_2_lut_rep_289_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14540)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i860_2_lut_rep_289_3_lut.init = 16'h8080;
    LUT4 i5069_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n45)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i5069_2_lut_3_lut.init = 16'h7878;
    LUT4 i867_2_lut_rep_196_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n14447)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i867_2_lut_rep_196_3_lut_4_lut.init = 16'h8000;
    LUT4 i865_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i865_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n11985_bdd_4_lut_13841 (.A(n12561), .B(n12560), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n14848)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n11985_bdd_4_lut_13841.init = 16'h0a0c;
    LUT4 i1_4_lut_adj_40 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[1]), .Z(n11905)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'ha088;
    LUT4 n11985_bdd_3_lut_14100 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(cnt_s4_num[2]), 
         .Z(n14849)) /* synthesis lut_function=(A (C)+!A !(B)) */ ;
    defparam n11985_bdd_3_lut_14100.init = 16'hb1b1;
    LUT4 i12290_3_lut (.A(n11905), .B(n11037), .C(cnt_s2_num[5]), .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12290_3_lut.init = 16'hcaca;
    LUT4 i11491_2_lut (.A(cnt_s4_num[4]), .B(cnt_s4_num[8]), .Z(n12156)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11491_2_lut.init = 16'heeee;
    LUT4 i11529_4_lut (.A(cnt_s4_num[7]), .B(n12188), .C(n12164), .D(cnt_s4_num[6]), 
         .Z(n12194)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11529_4_lut.init = 16'hfffe;
    LUT4 i11523_4_lut (.A(cnt_s4_num[11]), .B(n43), .C(cnt_s4_num[9]), 
         .D(cnt_s4_num[5]), .Z(n12188)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11523_4_lut.init = 16'hfffe;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n14728), .B(\init_data_8__N_240[4] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i11499_2_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), .Z(n12164)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11499_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_then_4_lut (.A(n14445), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n14673)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_2_lut_then_4_lut.init = 16'hfeaa;
    LUT4 i1_2_lut_else_4_lut (.A(n14445), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n14672)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_2_lut_else_4_lut.init = 16'hfaae;
    LUT4 i6022_1_lut (.A(state[0]), .Z(n6925)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6022_1_lut.init = 16'h5555;
    LUT4 i12764_4_lut (.A(cnt_150ms[22]), .B(n12063), .C(n6_adj_803), 
         .D(n6628), .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12764_4_lut.init = 16'h0002;
    LUT4 i2_3_lut (.A(n12061), .B(cnt_150ms[5]), .C(cnt_150ms[6]), .Z(n12063)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut.init = 16'hfbfb;
    LUT4 i2_4_lut_adj_41 (.A(cnt_150ms[3]), .B(n12058), .C(n12184), .D(cnt_150ms[0]), 
         .Z(n6_adj_803)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_41.init = 16'hdfff;
    LUT4 i11519_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n12184)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11519_3_lut.init = 16'h8080;
    LUT4 i1_3_lut (.A(n6678), .B(cnt_150ms[18]), .C(cnt_150ms[9]), .Z(n12058)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut.init = 16'hbfbf;
    LUT4 i3_4_lut_adj_42 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n6678)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_42.init = 16'hfffb;
    LUT4 i3_4_lut_adj_43 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .C(cnt_150ms[12]), 
         .D(n12180), .Z(n6628)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_43.init = 16'hfeff;
    LUT4 i11515_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n12180)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11515_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_adj_44 (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .C(cnt_150ms[7]), 
         .Z(n12061)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_3_lut_adj_44.init = 16'hfefe;
    L6MUX21 i11879 (.D0(n12543), .D1(n12544), .SD(cnt_s2_num[5]), .Z(n12545));
    L6MUX21 i11886 (.D0(n12550), .D1(n12551), .SD(cnt_s2_num[5]), .Z(n12552));
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n14445), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n14686)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'hfeaf;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(n14445), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n14685)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'heaab;
    CCU2D cnt_150ms_685_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10725), .COUT(n10726), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_3.INJECT1_1 = "NO";
    LUT4 i12868_2_lut (.A(cnt_s2_num[5]), .B(cnt_s2_num[4]), .Z(n12220)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i12868_2_lut.init = 16'hbbbb;
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10711), .COUT(n10712), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_685_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10725), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_685_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_685_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_1.INJECT1_1 = "NO";
    PFUMX i13715 (.BLUT(n14672), .ALUT(n14673), .C0(cnt_s4_num[1]), .Z(n14674));
    PFUMX i13812 (.BLUT(n11985), .ALUT(n14849), .C0(cnt_s4_num[3]), .Z(n14850));
    LUT4 i872_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14628), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i872_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7372_4_lut (.A(n86), .B(\state[4] ), .C(n14609), .D(n88), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7372_4_lut.init = 16'hccc8;
    LUT4 init_data_8__I_0_i3_4_lut (.A(\state[4] ), .B(\init_data_8__N_240[2] ), 
         .C(\state[2] ), .D(n14674), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10712), .COUT(n10713), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 i715_1_lut_rep_329 (.A(\state[4] ), .Z(n14580)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i715_1_lut_rep_329.init = 16'h5555;
    PFUMX i13810 (.BLUT(n14846), .ALUT(n12989), .C0(\state[2] ), .Z(init_data_8__N_97[8]));
    LUT4 i1_2_lut_3_lut_adj_45 (.A(cnt_s4_num[16]), .B(cnt_s4_num[17]), 
         .C(cnt_s4_num[11]), .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_3_lut_adj_45.init = 16'hfefe;
    LUT4 i1_4_lut_adj_46 (.A(cnt_s4_num[0]), .B(n12156), .C(n12194), .D(n18), 
         .Z(n11985)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_46.init = 16'h0200;
    LUT4 i7411_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12552), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7411_2_lut_2_lut.init = 16'h4444;
    LUT4 i12741_1_lut_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), 
         .C(n14235), .D(n14750), .Z(n12989)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12741_1_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i851_2_lut_rep_337 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14588)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i851_2_lut_rep_337.init = 16'h6666;
    LUT4 i1_2_lut_rep_357 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n14608)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_2_lut_rep_357.init = 16'h8888;
    LUT4 i12778_4_lut (.A(cnt_s2_num[5]), .B(n14456), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12778_4_lut.init = 16'h1000;
    LUT4 i886_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n14447), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i886_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_rep_358 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n14445), .Z(n14609)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_3_lut_rep_358.init = 16'hff80;
    LUT4 i2_2_lut_rep_205_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14456)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i2_2_lut_rep_205_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11907)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 i6018_1_lut (.A(debug_led1_c_5), .Z(n6921)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6018_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n10781)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i11881_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n12547)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i11881_4_lut_4_lut_4_lut.init = 16'hd0c0;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10707), .COUT(n10708), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10707), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    LUT4 n165_bdd_2_lut_13814_3_lut (.A(n14844), .B(n14445), .C(\state[4] ), 
         .Z(n14846)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n165_bdd_2_lut_13814_3_lut.init = 16'he0e0;
    LUT4 i2_3_lut_4_lut_4_lut (.A(cnt_s2_num[4]), .B(n14588), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11037)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n12004)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_47.init = 16'h1010;
    LUT4 mux_290_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_290_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i11880_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n12546)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B+!(C)))) */ ;
    defparam i11880_3_lut_4_lut_4_lut.init = 16'h3830;
    LUT4 mux_290_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_290_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 i7394_2_lut_rep_225_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n14476)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7394_2_lut_rep_225_2_lut.init = 16'h4444;
    LUT4 mux_290_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_804)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_290_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i11877 (.BLUT(n10782), .ALUT(n30_adj_804), .C0(cnt_s2_num[4]), 
          .Z(n12543));
    PFUMX i13779 (.BLUT(n14767), .ALUT(n14768), .C0(cnt_s4_num[1]), .Z(n14769));
    PFUMX i13766 (.BLUT(n14748), .ALUT(n14749), .C0(cnt_s2_num[2]), .Z(n14750));
    PFUMX i13751 (.BLUT(n14726), .ALUT(n14727), .C0(cnt_s4_num[1]), .Z(n14728));
    FD1S3IX cnt_150ms_685__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_685__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i1.GSR = "ENABLED";
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10715), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10714), .COUT(n10715), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    FD1S3AY state_FSM_i6 (.D(n2913), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n2916), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2918), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2920), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2922), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_354 (.A(cnt_s4_num[13]), .B(cnt_s4_num[15]), .Z(n14605)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_354.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(cnt_s4_num[13]), .B(cnt_s4_num[15]), 
         .C(cnt_s4_num[12]), .Z(n43)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_48.init = 16'hfefe;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10709), .COUT(n10710), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    FD1S3IX cnt_150ms_685__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685__i0.GSR = "ENABLED";
    CCU2D cnt_150ms_685_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10735), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_685_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10734), .COUT(n10735), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_150ms_685_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10733), .COUT(n10734), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_685_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_685_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_685_add_4_19.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10708), .COUT(n10709), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14580), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_45), .CD(n14580), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=101 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_25[1] , lcd_dc_c_8, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , init_data, show_char_data, debug_led1_c_5, 
            \state[1] , cnt_rom_prepare, \state[2] , \state[4] ) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_25[1] ;
    output lcd_dc_c_8;
    output \data[7] ;
    output \data[6] ;
    output \data[5] ;
    output \data[4] ;
    output \data[3] ;
    output \data[2] ;
    output \data[1] ;
    input [8:0]init_data;
    input [8:0]show_char_data;
    input debug_led1_c_5;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input \state[2] ;
    input \state[4] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(32[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95, n14281, n14282;
    
    FD1S3AX data_i0 (.D(data_8__N_73[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_95), .CK(sys_clk_50MHz), .Q(\state_3__N_25[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    FD1S3AX data_i8 (.D(data_8__N_73[8]), .CK(sys_clk_50MHz), .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX data_i7 (.D(data_8__N_73[7]), .CK(sys_clk_50MHz), .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX data_i6 (.D(data_8__N_73[6]), .CK(sys_clk_50MHz), .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3AX data_i5 (.D(data_8__N_73[5]), .CK(sys_clk_50MHz), .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(data_8__N_73[4]), .CK(sys_clk_50MHz), .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(data_8__N_73[3]), .CK(sys_clk_50MHz), .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i2 (.D(data_8__N_73[2]), .CK(sys_clk_50MHz), .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(data_8__N_73[1]), .CK(sys_clk_50MHz), .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=89 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n14281)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n14282)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 mux_7_i9_3_lut (.A(init_data[8]), .B(show_char_data[8]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i9_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(init_data[7]), .B(show_char_data[7]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_7_i7_3_lut (.A(init_data[6]), .B(show_char_data[6]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(init_data[5]), .B(show_char_data[5]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(init_data[4]), .B(show_char_data[4]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(init_data[3]), .B(show_char_data[3]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i3_3_lut (.A(init_data[2]), .B(show_char_data[2]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i2_3_lut (.A(init_data[1]), .B(show_char_data[1]), .C(debug_led1_c_5), 
         .Z(data_8__N_73[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    PFUMX i13614 (.BLUT(n14282), .ALUT(n14281), .C0(debug_led1_c_5), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module pll
//

module pll (sys_clk_c, sys_clk_50MHz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input sys_clk_c;
    output sys_clk_50MHz;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
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
// Verilog Description of module lcd_show_char
//

module lcd_show_char (sys_clk_c, wr_done, cnt_rom_prepare, length_num_flag, 
            show_char_data, \state[1] , \ascii_num[0] , \ascii_num[1] , 
            \state[2] , \state_3__N_368[1] , \end_x_8__N_286[5] , debug_led2_c_3, 
            sys_clk_c_enable_47, n8823, \ascii_num[6] , GND_net, \ascii_num[4] , 
            \ascii_num[2] , \ascii_num[3] , \end_x_8__N_286[4] , \end_y_8__N_304[4] , 
            \end_x_8__N_286[3] , \end_y_8__N_304[5] , \end_x_8__N_286[6] , 
            \end_x_8__N_286[7] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input wr_done;
    output [2:0]cnt_rom_prepare;
    output length_num_flag;
    output [8:0]show_char_data;
    output \state[1] ;
    input \ascii_num[0] ;
    input \ascii_num[1] ;
    output \state[2] ;
    input \state_3__N_368[1] ;
    input \end_x_8__N_286[5] ;
    output debug_led2_c_3;
    input sys_clk_c_enable_47;
    output n8823;
    input \ascii_num[6] ;
    input GND_net;
    input \ascii_num[4] ;
    input \ascii_num[2] ;
    input \ascii_num[3] ;
    input \end_x_8__N_286[4] ;
    input \end_y_8__N_304[4] ;
    input \end_x_8__N_286[3] ;
    input \end_y_8__N_304[5] ;
    input \end_x_8__N_286[6] ;
    input \end_x_8__N_286[7] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_c_enable_30;
    wire [11:0]rom_addr_11__N_387;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_372;
    
    wire state1_finish_flag_N_458;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_c_enable_53;
    wire [7:0]temp_7__N_345;
    wire [2:0]n12;
    
    wire length_num_flag_N_460;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_438;
    wire [5:0]n21;
    
    wire sys_clk_c_enable_40;
    wire [8:0]show_char_data_8__N_275;
    
    wire sys_clk_c_enable_19;
    wire [15:0]n2;
    
    wire sys_clk_c_enable_32;
    wire [7:0]n2_adj_799;
    
    wire state1_finish_flag_N_459, n15921, n15922, n15923, n6929;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n8701, n11997;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n355;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2923, n2926, cnt_length_num_4__N_429, n2928, n5931;
    wire [8:0]show_char_data_8__N_448;
    
    wire n12306, n14555, n5945, n14404, n14458, n12900, n14438, 
        n14429, n14506, n12631, n6792, n14489, n5977, n14570, 
        n5989, n14457;
    wire [5:0]n427;
    
    wire n891, n14616, n14491, n1319, n14405;
    wire [4:0]n25;
    
    wire n704, n11995, n7422, n6923, n14390, n14648, n14633, n14632, 
        n259, n14554, n14553, n5986, n14670, n14669, n14676, n14675, 
        n125, n11966, n14558, n14400, n1183, n14497, n10724, n1, 
        n14671, n7, n10723, n10, n12150, n10722, n14459, n119, 
        n11960, n6_adj_773, n14488, n5933, n4_adj_774, n14569, n8_adj_775, 
        n12140, n1069, n14602, n1084;
    wire [2:0]n137;
    
    wire n12266, n270, n14534, n12563, n14430, n14520, n3804, 
        n14453, n14494, n1565, n1596, n349, n14455, n14467, n1148, 
        n14597, n14524, n1851, n14513, n158, n14411, n14443, n2555, 
        n14393, n1101, n1149, n1661, n1723, n6746, n1405, n12662, 
        n12766, n6165, n3682, n13589, n127, n12757, n10720, n3070, 
        n12406, n3070_adj_777, n12763, n14385, n12486, n4094, n12011, 
        n12489, n4094_adj_778, n3069, n12492, n4094_adj_779, n3070_adj_780, 
        n12437, n3070_adj_781, n12468, n1676, n15915, n94, n10719, 
        n14482, n15916, n12606, n14409, n12104, n12824, n14413, 
        n15917, n1436, n308, n61, n317, n15924, n15925, n15926, 
        n14611, n14101, n14649, n4_adj_782, n14618, n6162, n1723_adj_783, 
        n364, n14532, n380, n14427, n10718, n14592, n14503, n12039, 
        n14416, n14598, n94_adj_784, n10717, n14431, n14634, n14492, 
        n14566, n14398, n14437, n14471, n1851_adj_785, n796, n14529, 
        n828, n46, n62, n14414, n14485, n14585, n12012, n4_adj_786, 
        n14426, n380_adj_787, n1211, n14507, n1530, n397, n13635, 
        n2300, n13900, n13901, n14383, n13515, n14418, n2332, 
        n2364, n1565_adj_788, n2490, n1596_adj_789, n14452, n14397, 
        n8875, n1403, n14509, n379, n380_adj_790, n1962, n1530_adj_791, 
        n12005, n5404, n14499, n828_adj_792, n4618, n1467, n14568, 
        n11049, n14650, n14387, n4_adj_793, n14435, n14486, n14401, 
        n14422, n46_adj_794, n62_adj_795, n6776, n14760, n12810, 
        n2685, n1172, n2025, n12866, n14428, n13588, n14395, n2621, 
        sys_clk_c_enable_45, n14442, n1820, n14521, n14542, n3237, 
        n14539, n5815, n14504, n14432, n1596_adj_796, n859, n2172, 
        n14446, n14626, n2141, n14434, n158_adj_797, n14518, n13820, 
        n270_adj_798, n286, n1529, n12720, n12821, n14436, n1883, 
        n13873, n14423, n2428, n14484, n126, n892, n11051, n1534;
    
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_11__N_387[0]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_179 (.D(wr_done), .CK(sys_clk_c), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_179.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_181 (.D(state1_finish_flag_N_458), .CK(sys_clk_c), 
            .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_181.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_c), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_185 (.D(length_num_flag_N_460), .CK(sys_clk_c), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_185.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_c), .CD(cnt_wr_color_data_5__N_438), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    LUT4 i28_2_lut_rep_356 (.A(\state[1] ), .B(the1_wr_done), .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i28_2_lut_rep_356.init = 16'h8888;
    FD1P3IX cnt_set_windows_FSM_i15 (.D(n2[14]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(\state[1] ), .B(the1_wr_done), .C(state_3__N_372[2]), 
         .Z(sys_clk_c_enable_32)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1P3IX cnt_set_windows_FSM_i14 (.D(n2[13]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i13 (.D(n2[12]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i12 (.D(n2[11]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i12.GSR = "ENABLED";
    LUT4 i10077_2_lut (.A(\ascii_num[0] ), .B(\ascii_num[1] ), .Z(n2_adj_799[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10077_2_lut.init = 16'h6666;
    FD1P3IX cnt_set_windows_FSM_i11 (.D(state1_finish_flag_N_459), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i10 (.D(n2[9]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(state1_finish_flag_N_459));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i9 (.D(n2[8]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i8 (.D(n2[7]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i7 (.D(n2[6]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i6 (.D(n2[5]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i6.GSR = "ENABLED";
    PFUMX i14471 (.BLUT(n15921), .ALUT(n15922), .C0(rom_addr[4]), .Z(n15923));
    FD1P3IX cnt_set_windows_FSM_i5 (.D(n2[4]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i5.GSR = "ENABLED";
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_c_enable_53), .CD(n6929), 
            .CK(sys_clk_c), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i4 (.D(n2[3]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i3 (.D(n2[2]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i2 (.D(n2[1]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i1 (.D(n2[0]), .SP(sys_clk_c_enable_19), 
            .CD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\state[2] ), .B(\state[1] ), .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n8701), .B(n11997), .C(cnt_length_num[3]), .D(cnt_length_num[2]), 
         .Z(n355)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0c4c;
    LUT4 i7810_2_lut (.A(rom_addr_11__N_387[0]), .B(rom_addr_11__N_387[1]), 
         .Z(n8701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7810_2_lut.init = 16'h8888;
    LUT4 i2065_2_lut (.A(state[0]), .B(\state_3__N_368[1] ), .Z(n2923)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2065_2_lut.init = 16'h2222;
    FD1P3AX rom_addr_i0_i11 (.D(rom_addr_11__N_387[11]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    LUT4 i2068_4_lut (.A(\state[1] ), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state[0]), .Z(n2926)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2068_4_lut.init = 16'hce0a;
    LUT4 i2070_4_lut (.A(\state[2] ), .B(state_3__N_372[2]), .C(cnt_length_num_4__N_429), 
         .D(\state[1] ), .Z(n2928)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2070_4_lut.init = 16'hce0a;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n5931), .ALUT(show_char_data_8__N_448[5]), 
          .C0(n12306), .Z(show_char_data_8__N_275[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n14555), .B(n5945), .C(\state[1] ), 
         .D(n14404), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    FD1P3AX rom_addr_i0_i10 (.D(rom_addr_11__N_387[10]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_22 (.A(n2[5]), .B(n2[9]), .C(n14458), .D(n2[4]), 
         .Z(n5945)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hcfce;
    FD1P3AX rom_addr_i0_i9 (.D(rom_addr_11__N_387[9]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(rom_addr_11__N_387[8]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(rom_addr_11__N_387[7]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 i12287_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n12900)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12287_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i7473_2_lut_rep_187_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14438)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7473_2_lut_rep_187_4_lut_4_lut_4_lut.init = 16'h4001;
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_11__N_387[6]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i11965_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14429), 
         .D(n14506), .Z(n12631)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11965_4_lut_4_lut.init = 16'hd1c0;
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_11__N_387[5]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_11__N_387[4]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    LUT4 i5904_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n6792)) /* synthesis lut_function=(!((B (C)+!B ((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5904_3_lut_4_lut_4_lut_4_lut.init = 16'h0828;
    LUT4 i5098_3_lut_4_lut (.A(n2[5]), .B(n14489), .C(n14458), .D(n2[9]), 
         .Z(n5977)) /* synthesis lut_function=(A ((D)+!C)+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i5098_3_lut_4_lut.init = 16'hff0b;
    LUT4 i1_3_lut_4_lut (.A(n2[5]), .B(n14489), .C(n14570), .D(\end_x_8__N_286[5] ), 
         .Z(n5989)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut.init = 16'hfbbb;
    LUT4 i951_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14457), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n427[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i951_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7570_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7570_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_11__N_387[3]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_11__N_387[2]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_11__N_387[1]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_365 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14616)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_365.init = 16'hbbbb;
    LUT4 i12874_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12874_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_240_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14491)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_240_3_lut.init = 16'hbfbf;
    LUT4 i12895_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1319), .D(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_53)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12895_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 temp_7__N_423_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(debug_led2_c_3), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_438)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_423_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i6026_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1319), .D(cnt_rom_prepare[1]), .Z(n6929)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6026_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 i10027_2_lut_3_lut_4_lut (.A(rom_addr_11__N_387[1]), .B(n14405), 
         .C(cnt_length_num[3]), .D(cnt_length_num[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10027_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i566_2_lut_rep_153 (.A(state1_finish_flag_N_459), .B(n704), .Z(n14404)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i566_2_lut_rep_153.init = 16'hbbbb;
    LUT4 i6520_4_lut_4_lut (.A(state1_finish_flag_N_459), .B(n704), .C(n2[9]), 
         .D(n11995), .Z(n7422)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i6520_4_lut_4_lut.init = 16'hccc8;
    FD1S3IX state_FSM_i1 (.D(cnt_length_num_4__N_429), .CK(sys_clk_c), .CD(n6923), 
            .Q(debug_led2_c_3));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i12821_2_lut_3_lut (.A(state1_finish_flag_N_459), .B(n704), .C(\state[1] ), 
         .Z(n12306)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12821_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i10007_2_lut_rep_154 (.A(n355), .B(rom_addr_11__N_387[0]), .Z(n14405)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10007_2_lut_rep_154.init = 16'h8888;
    LUT4 i10016_2_lut_rep_139_3_lut (.A(n355), .B(rom_addr_11__N_387[0]), 
         .C(rom_addr_11__N_387[1]), .Z(n14390)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10016_2_lut_rep_139_3_lut.init = 16'h8080;
    LUT4 n85_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14648)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n85_bdd_4_lut_4_lut_else_4_lut.init = 16'h20dc;
    LUT4 i10013_2_lut_3_lut (.A(n355), .B(rom_addr_11__N_387[0]), .C(rom_addr_11__N_387[1]), 
         .Z(n25[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10013_2_lut_3_lut.init = 16'h7878;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n14633)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14632)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i10020_2_lut_3_lut_4_lut (.A(n355), .B(rom_addr_11__N_387[0]), 
         .C(cnt_length_num[2]), .D(rom_addr_11__N_387[1]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10020_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i10034_3_lut_4_lut (.A(cnt_length_num[2]), .B(n14390), .C(cnt_length_num[3]), 
         .D(cnt_length_num[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10034_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1986_2_lut_4_lut (.A(debug_led2_c_3), .B(n259), .C(n14491), 
         .D(cnt_wr_color_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i1986_2_lut_4_lut.init = 16'h10ef;
    LUT4 i944_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14554), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n427[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i944_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_3_lut_4_lut_adj_23 (.A(n14553), .B(n2[7]), .C(n2[5]), .D(n5986), 
         .Z(n11995)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_23.init = 16'h2220;
    LUT4 i10005_2_lut (.A(n355), .B(rom_addr_11__N_387[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10005_2_lut.init = 16'h6666;
    LUT4 state1_finish_flag_I_0_2_lut (.A(state1_finish_flag_N_459), .B(the1_wr_done), 
         .Z(state1_finish_flag_N_458)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 i7447_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14670)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7447_4_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i7447_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14669)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7447_4_lut_4_lut_else_4_lut.init = 16'h0405;
    LUT4 i7534_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14676)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7534_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i7534_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14675)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7534_4_lut_4_lut_else_4_lut.init = 16'h0004;
    PFUMX i13717 (.BLUT(n14675), .ALUT(n14676), .C0(rom_addr[3]), .Z(n125));
    LUT4 i3_4_lut (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[0]), .C(cnt_wr_color_data[4]), 
         .D(n11966), .Z(n1319)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i1_4_lut_adj_24 (.A(n259), .B(cnt_wr_color_data[3]), .C(cnt_wr_color_data[2]), 
         .D(cnt_wr_color_data[1]), .Z(n11966)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_24.init = 16'hddd5;
    LUT4 i67_2_lut (.A(\state[2] ), .B(the1_wr_done), .Z(n259)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[13:56])
    defparam i67_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_149_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14558), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n14400)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_149_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15922)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 i1_2_lut_adj_25 (.A(n2[9]), .B(n2[7]), .Z(n1183)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i1990_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_c_enable_47), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i1990_2_lut.init = 16'h6666;
    LUT4 i7931_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8823)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7931_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_246_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14497)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_246_2_lut.init = 16'hdddd;
    CCU2D add_1978_8 (.A0(\ascii_num[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10724), .S0(n2_adj_799[7]), .S1(n1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_1978_8.INIT0 = 16'h5aaa;
    defparam add_1978_8.INIT1 = 16'h0000;
    defparam add_1978_8.INJECT1_0 = "NO";
    defparam add_1978_8.INJECT1_1 = "NO";
    LUT4 i10076_2_lut (.A(\ascii_num[0] ), .B(cnt_length_num[2]), .Z(rom_addr_11__N_387[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10076_2_lut.init = 16'h6666;
    PFUMX i13713 (.BLUT(n14669), .ALUT(n14670), .C0(rom_addr[3]), .Z(n14671));
    LUT4 i6020_1_lut (.A(\state[2] ), .Z(n6923)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6020_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(n7), .B(n11997), .C(rom_addr_11__N_387[1]), .D(cnt_length_num[2]), 
         .Z(cnt_length_num_4__N_429)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_2_lut (.A(cnt_length_num[3]), .B(rom_addr_11__N_387[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_26 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(n11997)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_26.init = 16'h2222;
    CCU2D add_1978_6 (.A0(\ascii_num[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10723), .COUT(n10724), .S0(n2_adj_799[5]), 
          .S1(n2_adj_799[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_1978_6.INIT0 = 16'h5aaa;
    defparam add_1978_6.INIT1 = 16'hfaaa;
    defparam add_1978_6.INJECT1_0 = "NO";
    defparam add_1978_6.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(cnt_wr_color_data[3]), .B(n10), .C(cnt_wr_color_data[5]), 
         .D(n12150), .Z(length_num_flag_N_460)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0008;
    CCU2D add_1978_4 (.A0(\ascii_num[2] ), .B0(\ascii_num[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[3] ), .B1(\ascii_num[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n10722), .COUT(n10723), .S0(n2_adj_799[3]), 
          .S1(n2_adj_799[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_1978_4.INIT0 = 16'h5666;
    defparam add_1978_4.INIT1 = 16'h5666;
    defparam add_1978_4.INJECT1_0 = "NO";
    defparam add_1978_4.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_27 (.A(\state[2] ), .B(cnt_wr_color_data[0]), .C(cnt_wr_color_data[1]), 
         .D(the1_wr_done), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_27.init = 16'h8000;
    LUT4 i11485_2_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[4]), 
         .Z(n12150)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11485_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_28 (.A(\state[1] ), .B(n14404), .C(n14459), .D(n119), 
         .Z(n11960)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_28.init = 16'h0020;
    LUT4 i12827_4_lut (.A(n2[15]), .B(n2[11]), .C(n2[13]), .D(n6_adj_773), 
         .Z(n704)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12827_4_lut.init = 16'h0001;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14488), .B(n5933), .C(\state[1] ), 
         .D(n14404), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i5056_4_lut (.A(\end_x_8__N_286[4] ), .B(\end_y_8__N_304[4] ), 
         .C(n1183), .D(n4_adj_774), .Z(n5933)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5056_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_29 (.A(n2[12]), .B(n2[14]), .Z(n6_adj_773)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_29.init = 16'heeee;
    LUT4 i5107_3_lut (.A(n14569), .B(\end_x_8__N_286[3] ), .C(n14570), 
         .Z(n5986)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5107_3_lut.init = 16'hc5c5;
    LUT4 show_char_data_8__I_0_i3_4_lut (.A(n14555), .B(n704), .C(\state[1] ), 
         .D(n8_adj_775), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i3_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_30 (.A(n12140), .B(state1_finish_flag_N_459), .C(n2[4]), 
         .D(n14458), .Z(n8_adj_775)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_4_lut_adj_30.init = 16'hccdc;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14602), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i11475_2_lut (.A(n2[9]), .B(n2[5]), .Z(n12140)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11475_2_lut.init = 16'heeee;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14555), .B(n5977), .C(\state[1] ), 
         .D(n14404), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 i5054_4_lut (.A(n5989), .B(\end_y_8__N_304[5] ), .C(n1183), .D(n14553), 
         .Z(n5931)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5054_4_lut.init = 16'hcac0;
    LUT4 i923_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n427[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i923_2_lut.init = 16'h6666;
    LUT4 i908_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n137[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i908_3_lut.init = 16'h6a6a;
    LUT4 i901_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n137[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i901_2_lut.init = 16'h6666;
    LUT4 i12835_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n12266)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12835_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i12457_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14534), .Z(n12563)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12457_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2D add_1978_2 (.A0(\ascii_num[0] ), .B0(\ascii_num[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[1] ), .B1(\ascii_num[2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n10722), .S1(n2_adj_799[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_1978_2.INIT0 = 16'h7000;
    defparam add_1978_2.INIT1 = 16'h5666;
    defparam add_1978_2.INJECT1_0 = "NO";
    defparam add_1978_2.INJECT1_1 = "NO";
    LUT4 i2946_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n14430), 
         .D(n14520), .Z(n3804)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2946_4_lut_4_lut.init = 16'hc0e2;
    LUT4 i7452_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14453), .C(rom_addr[3]), 
         .D(n14494), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7452_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i8000_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14602), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1596)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i8000_2_lut_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i7880_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(n14602), .Z(n349)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7880_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i7716_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14455), 
         .D(n14467), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7716_4_lut_4_lut.init = 16'h5140;
    LUT4 i7611_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14597), 
         .D(n14524), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7611_4_lut_4_lut.init = 16'h5140;
    LUT4 i7657_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14534), .C(rom_addr[3]), 
         .D(n14513), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7657_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut_4_lut (.A(rom_addr[4]), .B(n14411), 
         .C(rom_addr[5]), .D(n14443), .Z(n2555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i2555_4_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n14393), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12626_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n6746)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12626_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12100_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n12662), .Z(n12766)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12100_4_lut_4_lut.init = 16'h7340;
    LUT4 i2824_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6165), 
         .D(n14400), .Z(n3682)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2824_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i12091_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13589), 
         .D(n127), .Z(n12757)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12091_4_lut_4_lut.init = 16'hd1c0;
    CCU2D mult_25_add_1_add_2_10 (.A0(n1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10720), .S0(rom_addr_11__N_387[10]), .S1(rom_addr_11__N_387[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_25_add_1_add_2_10.INIT0 = 16'h5aaa;
    defparam mult_25_add_1_add_2_10.INIT1 = 16'h0000;
    defparam mult_25_add_1_add_2_10.INJECT1_0 = "NO";
    defparam mult_25_add_1_add_2_10.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_4_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070), .D(n12406), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_777), .D(n12763), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 i7471_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14385), 
         .D(n12486), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7471_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7502_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n12011), 
         .D(n12489), .Z(n4094_adj_778)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7502_4_lut_4_lut.init = 16'h5140;
    LUT4 i7512_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12492), .Z(n4094_adj_779)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7512_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_780), .D(n12437), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_781), .D(n12468), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n15915), .Z(n94)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15921)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut.init = 16'h0400;
    CCU2D mult_25_add_1_add_2_8 (.A0(n2_adj_799[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_799[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10719), .COUT(n10720), .S0(rom_addr_11__N_387[8]), 
          .S1(rom_addr_11__N_387[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_25_add_1_add_2_8.INIT0 = 16'h5aaa;
    defparam mult_25_add_1_add_2_8.INIT1 = 16'h5aaa;
    defparam mult_25_add_1_add_2_8.INJECT1_0 = "NO";
    defparam mult_25_add_1_add_2_8.INJECT1_1 = "NO";
    LUT4 i11940_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14482), .C(rom_addr[4]), 
         .D(n15916), .Z(n12606)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11940_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_158_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14409)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_158_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i12158_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n12104), .C(rom_addr[4]), 
         .D(n15916), .Z(n12824)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12158_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_162_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14413)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_162_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i8018_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n15917), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i8018_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n61), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    PFUMX i14473 (.BLUT(n15924), .ALUT(n15925), .C0(rom_addr[1]), .Z(n15926));
    LUT4 n12569_bdd_3_lut_13483_3_lut_3_lut (.A(rom_addr[3]), .B(n14611), 
         .C(rom_addr[4]), .Z(n14101)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12569_bdd_3_lut_13483_3_lut_3_lut.init = 16'h0404;
    LUT4 n85_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14649)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n85_bdd_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(n2[4]), .B(n14569), .C(n2[5]), .D(n14553), 
         .Z(n4_adj_782)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut_adj_31.init = 16'h0eff;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14618), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n6162)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i12855_2_lut_rep_302 (.A(n2[6]), .B(n2[8]), .Z(n14553)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12855_2_lut_rep_302.init = 16'h1111;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n14494), .C(rom_addr[4]), .D(n15915), .Z(n1723_adj_783)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n14532), .Z(n380)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_176_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14427)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_176_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2[6]), .B(n2[8]), .C(n14570), .D(n2[5]), 
         .Z(n4_adj_774)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    CCU2D mult_25_add_1_add_2_6 (.A0(n2_adj_799[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_799[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10718), .COUT(n10719), .S0(rom_addr_11__N_387[6]), 
          .S1(rom_addr_11__N_387[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_25_add_1_add_2_6.INIT0 = 16'h5aaa;
    defparam mult_25_add_1_add_2_6.INIT1 = 16'h5aaa;
    defparam mult_25_add_1_add_2_6.INJECT1_0 = "NO";
    defparam mult_25_add_1_add_2_6.INJECT1_1 = "NO";
    LUT4 i11481_2_lut_rep_207_3_lut (.A(n2[6]), .B(n2[8]), .C(n2[7]), 
         .Z(n14458)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11481_2_lut_rep_207_3_lut.init = 16'hfefe;
    LUT4 i132_2_lut_3_lut_4_lut (.A(n2[6]), .B(n2[8]), .C(n2[9]), .D(n2[7]), 
         .Z(n119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i132_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i925_2_lut_rep_303 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14554)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i925_2_lut_rep_303.init = 16'h8888;
    LUT4 i2468_1_lut_rep_341 (.A(rom_addr[5]), .Z(n14592)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2468_1_lut_rep_341.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14503), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n12039)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i932_2_lut_rep_206_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14457)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i932_2_lut_rep_206_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14416), .D(n14598), .Z(n94_adj_784)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i930_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n427[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i930_2_lut_3_lut.init = 16'h7878;
    CCU2D mult_25_add_1_add_2_4 (.A0(n2_adj_799[2]), .B0(cnt_length_num[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_799[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n10717), .COUT(n10718), .S0(rom_addr_11__N_387[4]), 
          .S1(rom_addr_11__N_387[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_25_add_1_add_2_4.INIT0 = 16'h5666;
    defparam mult_25_add_1_add_2_4.INIT1 = 16'h5aaa;
    defparam mult_25_add_1_add_2_4.INJECT1_0 = "NO";
    defparam mult_25_add_1_add_2_4.INJECT1_1 = "NO";
    CCU2D mult_25_add_1_add_2_2 (.A0(\ascii_num[0] ), .B0(cnt_length_num[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_799[1]), .B1(cnt_length_num[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n10717), .S1(rom_addr_11__N_387[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_25_add_1_add_2_2.INIT0 = 16'h7000;
    defparam mult_25_add_1_add_2_2.INIT1 = 16'h5666;
    defparam mult_25_add_1_add_2_2.INJECT1_0 = "NO";
    defparam mult_25_add_1_add_2_2.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_180_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .Z(n14431)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_180_3_lut_3_lut_3_lut.init = 16'h0404;
    PFUMX i13689 (.BLUT(n14632), .ALUT(n14633), .C0(rom_addr[3]), .Z(n14634));
    LUT4 i1_2_lut_rep_241_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14492)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_241_2_lut.init = 16'h4444;
    LUT4 i937_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n427[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i937_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i12858_2_lut_rep_147_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14566), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14398)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12858_2_lut_rep_147_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14437), .D(n14471), .Z(n1851_adj_785)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14529), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46), 
         .C(n14427), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i1_2_lut_rep_163_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14414)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_163_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_234_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14485)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_234_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut_adj_32 (.A(rom_addr[5]), .B(n14503), 
         .C(n14585), .D(rom_addr[4]), .Z(n12012)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut_adj_32.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_786), 
         .C(rom_addr[4]), .D(n14426), .Z(n380_adj_787)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n14507), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n397_bdd_3_lut_13353_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n397), 
         .Z(n13635)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n397_bdd_3_lut_13353_3_lut.init = 16'h2020;
    LUT4 i154_2_lut_rep_304 (.A(\state[2] ), .B(temp[0]), .Z(n14555)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i154_2_lut_rep_304.init = 16'h2222;
    LUT4 i7510_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n14426), 
         .D(n14416), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7510_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 n13901_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[3]), .C(n13900), 
         .D(n13901), .Z(n14383)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13901_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n1650_bdd_4_lut_13608_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13515)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1650_bdd_4_lut_13608_4_lut.init = 16'h4033;
    LUT4 i1_2_lut_rep_167_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14418)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_167_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n14416), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_788), 
         .C(n2490), .Z(n1596_adj_789)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2_3_lut_rep_146_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[0]), 
         .C(n14452), .D(rom_addr[3]), .Z(n14397)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_rep_146_4_lut_4_lut.init = 16'h0004;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8875), 
         .C(rom_addr[4]), .D(n14494), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14509), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_790)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1962), 
         .C(n14507), .D(rom_addr[0]), .Z(n1530_adj_791)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n12005), 
         .C(n5404), .D(n14499), .Z(n828_adj_792)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4618), 
         .C(n14507), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 i1_2_lut_rep_237_3_lut (.A(\state[2] ), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n14488)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i1_2_lut_rep_237_3_lut.init = 16'h2f2f;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14568), 
         .C(n14558), .D(rom_addr[7]), .Z(n11049)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfff;
    PFUMX i13699 (.BLUT(n14648), .ALUT(n14649), .C0(rom_addr[3]), .Z(n14650));
    LUT4 i12863_2_lut_rep_136_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(n14503), .Z(n14387)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12863_2_lut_rep_136_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_793), 
         .C(n14492), .D(n14435), .Z(n1723)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 i7563_2_lut_rep_235_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n14486)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7563_2_lut_rep_235_2_lut.init = 16'hdddd;
    LUT4 i2_2_lut_rep_178_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14429)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_2_lut_rep_178_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_150_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[5]), .Z(n14401)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_150_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_171_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n14568), .D(rom_addr[5]), .Z(n14422)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_171_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n14409), 
         .C(rom_addr[0]), .D(n46_adj_794), .Z(n62_adj_795)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 i5888_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n6776)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5888_3_lut_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n14760), .D(n12810), .Z(n2685)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2685_4_lut_4_lut.init = 16'h7340;
    LUT4 i12200_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12866)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12200_4_lut_4_lut.init = 16'h7340;
    LUT4 n507_bdd_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[7]), .C(rom_addr[0]), 
         .D(n14428), .Z(n13588)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n507_bdd_2_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n15923), .D(n14395), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_3_lut_rep_155_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), .C(n259), 
         .D(debug_led2_c_3), .Z(sys_clk_c_enable_45)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_155_4_lut.init = 16'hfff2;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14442), 
         .C(rom_addr[4]), .D(n15916), .Z(n1820)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2379_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14521), .C(rom_addr[4]), 
         .D(n14542), .Z(n3237)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2379_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i3289_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14539), .C(rom_addr[5]), 
         .D(n14542), .Z(n5815)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i3289_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_253_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14504)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_253_3_lut_3_lut.init = 16'hfdfd;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7638_2_lut_rep_181_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14432)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7638_2_lut_rep_181_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(n14618), .Z(n6165)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i7809_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n14618), .Z(n1596_adj_796)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7809_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i7719_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n859)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7719_3_lut_4_lut_4_lut.init = 16'h888c;
    LUT4 i7695_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14618), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n2172)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7695_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 address_11__I_0_Mux_3_i2141_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14446), 
         .C(rom_addr[4]), .D(n14626), .Z(n2141)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7456_2_lut_rep_183_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14434)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7456_2_lut_rep_183_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5924_2_lut_rep_252_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n14503)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5924_2_lut_rep_252_2_lut.init = 16'h4444;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14616), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7727_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14568), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n158_adj_797)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7727_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 n2636_bdd_4_lut_13462_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14518), .D(n14446), .Z(n13820)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2636_bdd_4_lut_13462_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_798), 
         .C(rom_addr[4]), .D(n14532), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12054_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n15915), .Z(n12720)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12054_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12155_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n61), .C(rom_addr[4]), 
         .D(n14626), .Z(n12821)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12155_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7446_4_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15925)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7446_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i7446_4_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15924)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7446_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0414;
    FD1P3JX cnt_set_windows_FSM_i0 (.D(n2[15]), .SP(sys_clk_c_enable_32), 
            .PD(state_3__N_372[2]), .CK(sys_clk_c), .Q(n2[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14436), 
         .C(rom_addr[4]), .D(n15916), .Z(n1883)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\state[1] ), .B(\end_x_8__N_286[6] ), 
         .C(n11960), .D(n14488), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd5c0;
    LUT4 i1_3_lut_4_lut_4_lut_adj_33 (.A(\state[1] ), .B(\end_x_8__N_286[7] ), 
         .C(n11960), .D(n14488), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_4_lut_adj_33.init = 16'hd5c0;
    LUT4 i1_4_lut_4_lut (.A(\state[1] ), .B(n4_adj_782), .C(n1183), .D(n14404), 
         .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_4_lut_4_lut.init = 16'h55fd;
    LUT4 i5055_3_lut_4_lut_4_lut (.A(\state[1] ), .B(n704), .C(n14555), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_448[5])) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i5055_3_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i1_3_lut_4_lut_3_lut (.A(\state[1] ), .B(n7422), .C(n14488), 
         .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_3_lut.init = 16'hd8d8;
    LUT4 i2_3_lut_rep_318 (.A(n2[2]), .B(n2[1]), .C(n2[3]), .Z(n14569)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_318.init = 16'hfefe;
    LUT4 i1_2_lut_rep_238_4_lut (.A(n2[2]), .B(n2[1]), .C(n2[3]), .D(n2[4]), 
         .Z(n14489)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_238_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_319 (.A(n2[2]), .B(n2[4]), .C(n2[3]), .Z(n14570)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_rep_319.init = 16'hcece;
    LUT4 i1_2_lut_rep_208_4_lut (.A(n2[2]), .B(n2[4]), .C(n2[3]), .D(n2[5]), 
         .Z(n14459)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_rep_208_4_lut.init = 16'h00ce;
    LUT4 n2857_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15916), .C(rom_addr[4]), 
         .D(n14416), .Z(n13873)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2857_bdd_4_lut_4_lut.init = 16'hf404;
    FD1S3IX cnt_length_num_686__i5 (.D(n25[4]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_429), 
            .Q(cnt_length_num[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_686__i5.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n14423), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    FD1S3IX cnt_length_num_686__i4 (.D(n25[3]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_429), 
            .Q(cnt_length_num[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_686__i4.GSR = "ENABLED";
    FD1S3IX cnt_length_num_686__i3 (.D(n25[2]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_429), 
            .Q(cnt_length_num[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_686__i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_686__i2 (.D(n25[1]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_429), 
            .Q(rom_addr_11__N_387[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_686__i2.GSR = "ENABLED";
    FD1S3JX state_FSM_i4 (.D(n2923), .CK(sys_clk_c), .PD(debug_led2_c_3), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n14484), 
         .C(n14485), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n12005), 
         .C(n5815), .D(n158_adj_797), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7774_3_lut_3_lut (.A(rom_addr[6]), .B(n11051), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7774_3_lut_3_lut.init = 16'h0202;
    FD1S3AX state_FSM_i3 (.D(n2926), .CK(sys_clk_c), .Q(\state[1] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2928), .CK(sys_clk_c), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX cnt_length_num_686__i1 (.D(n25[0]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_429), 
            .Q(rom_addr_11__N_387[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_686__i1.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n427[5]), .SP(sys_clk_c_enable_45), 
            .CD(cnt_wr_color_data_5__N_438), .CK(sys_clk_c), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n427[4]), .SP(sys_clk_c_enable_45), 
            .CD(cnt_wr_color_data_5__N_438), .CK(sys_clk_c), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n427[3]), .SP(sys_clk_c_enable_45), 
            .CD(cnt_wr_color_data_5__N_438), .CK(sys_clk_c), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n427[2]), .SP(sys_clk_c_enable_45), 
            .CD(cnt_wr_color_data_5__N_438), .CK(sys_clk_c), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n427[1]), .SP(sys_clk_c_enable_45), 
            .CD(cnt_wr_color_data_5__N_438), .CK(sys_clk_c), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n137[2]), .SP(sys_clk_c_enable_47), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n137[1]), .SP(sys_clk_c_enable_47), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=117 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n14101(n14101), .n14507(n14507), 
            .n1565(n1565), .n1596(n1596), .n14455(n14455), .n158(n158), 
            .n14518(n14518), .n14422(n14422), .n12866(n12866), .n14558(n14558), 
            .n14529(n14529), .n61(n61), .n158_adj_1(n158_adj_797), .n14432(n14432), 
            .n14494(n14494), .n13515(n13515), .n14482(n14482), .n14503(n14503), 
            .n14446(n14446), .n2141(n2141), .n2172(n2172), .n1723(n1723_adj_783), 
            .n1820(n1820), .n1851(n1851), .n1596_adj_2(n1596_adj_796), 
            .n4094(n4094), .\rom_q[1] (rom_q[1]), .n12763(n12763), .n1530(n1530), 
            .n12406(n12406), .n12437(n12437), .n4094_adj_3(n4094_adj_779), 
            .\rom_q[7] (rom_q[7]), .n286(n286), .n317(n317), .n4094_adj_4(n4094_adj_778), 
            .\rom_q[0] (rom_q[0]), .n12468(n12468), .n349(n349), .n380(n380), 
            .n12757(n12757), .n828(n828_adj_792), .n15916(n15916), .n14532(n14532), 
            .n380_adj_5(n380_adj_790), .n14435(n14435), .n62(n62), .n3070(n3070_adj_781), 
            .n12766(n12766), .n3070_adj_6(n3070_adj_780), .n1530_adj_7(n1530_adj_791), 
            .n828_adj_8(n828), .n12489(n12489), .n12492(n12492), .n94(n94), 
            .n12900(n12900), .n12662(n12662), .n1101(n1101), .n14426(n14426), 
            .n379(n379), .n4(n4_adj_786), .n14486(n14486), .n14485(n14485), 
            .n1676(n1676), .n13901(n13901), .n14436(n14436), .\rom_q[6] (rom_q[6]), 
            .n14504(n14504), .n6746(n6746), .n1962(n1962), .n397(n397), 
            .n2490(n2490), .n270(n270_adj_798), .n14513(n14513), .n4618(n4618), 
            .n14492(n14492), .n14634(n14634), .n14443(n14443), .n1529(n1529), 
            .n125(n125), .n1211(n1211), .n13820(n13820), .n15915(n15915), 
            .n14520(n14520), .n14618(n14618), .n11049(n11049), .n11051(n11051), 
            .n14509(n14509), .n14598(n14598), .n12005(n12005), .n14398(n14398), 
            .n14414(n14414), .n14442(n14442), .n14438(n14438), .n1069(n1069), 
            .n1172(n1172), .n14521(n14521), .n14539(n14539), .n15917(n15917), 
            .n14611(n14611), .n14409(n14409), .n14542(n14542), .n14626(n14626), 
            .n1596_adj_9(n1596_adj_789), .n6776(n6776), .n364(n364), .n14497(n14497), 
            .n308(n308), .n2364(n2364), .n12266(n12266), .n1467(n1467), 
            .n14671(n14671), .n1149(n1149), .n15926(n15926), .n14416(n14416), 
            .n14423(n14423), .n380_adj_10(n380_adj_787), .n14597(n14597), 
            .n3237(n3237), .n62_adj_11(n62_adj_795), .n14585(n14585), 
            .n270_adj_12(n270), .n3069(n3069), .n14430(n14430), .n1565_adj_13(n1565_adj_788), 
            .n94_adj_14(n94_adj_784), .n126(n126), .n127(n127), .n12011(n12011), 
            .n14534(n14534), .n2428(n2428), .n14602(n14602), .n2300(n2300), 
            .n2555(n2555), .n14429(n14429), .n12012(n12012), .n1405(n1405), 
            .n6162(n6162), .n1851_adj_15(n1851_adj_785), .n14471(n14471), 
            .n14434(n14434), .n1661(n1661), .n2332(n2332), .n891(n891), 
            .n1534(n1534), .n14418(n14418), .n12606(n12606), .n12563(n12563), 
            .n12039(n12039), .n3804(n3804), .n14413(n14413), .n14401(n14401), 
            .n796(n796), .n8875(n8875), .n2025(n2025), .n14592(n14592), 
            .n13873(n13873), .n14427(n14427), .n6165(n6165), .n14397(n14397), 
            .n14431(n14431), .n46(n46), .n892(n892), .n12631(n12631), 
            .n14387(n14387), .n14467(n14467), .n14437(n14437), .n3070_adj_16(n3070_adj_777), 
            .n12486(n12486), .n2685(n2685), .n3070_adj_17(n3070), .n3682(n3682), 
            .n12104(n12104), .n14568(n14568), .n14411(n14411), .n14524(n14524), 
            .n14385(n14385), .n4_adj_18(n4_adj_793), .n1436(n1436), .n14484(n14484), 
            .n12720(n12720), .n14650(n14650), .n14499(n14499), .n14506(n14506), 
            .n1148(n1148), .n859(n859), .n14393(n14393), .n6792(n6792), 
            .n14395(n14395), .n1403(n1403), .n14453(n14453), .n13900(n13900), 
            .n1883(n1883), .n46_adj_19(n46_adj_794), .n14428(n14428), 
            .n14452(n14452), .n5404(n5404), .n14566(n14566), .n14760(n14760), 
            .n13635(n13635), .n1084(n1084), .n2621(n2621), .n12810(n12810), 
            .n12821(n12821), .n13588(n13588), .n13589(n13589), .n12824(n12824), 
            .n14383(n14383)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n14101, n14507, n1565, n1596, n14455, 
            n158, n14518, n14422, n12866, n14558, n14529, n61, 
            n158_adj_1, n14432, n14494, n13515, n14482, n14503, 
            n14446, n2141, n2172, n1723, n1820, n1851, n1596_adj_2, 
            n4094, \rom_q[1] , n12763, n1530, n12406, n12437, n4094_adj_3, 
            \rom_q[7] , n286, n317, n4094_adj_4, \rom_q[0] , n12468, 
            n349, n380, n12757, n828, n15916, n14532, n380_adj_5, 
            n14435, n62, n3070, n12766, n3070_adj_6, n1530_adj_7, 
            n828_adj_8, n12489, n12492, n94, n12900, n12662, n1101, 
            n14426, n379, n4, n14486, n14485, n1676, n13901, n14436, 
            \rom_q[6] , n14504, n6746, n1962, n397, n2490, n270, 
            n14513, n4618, n14492, n14634, n14443, n1529, n125, 
            n1211, n13820, n15915, n14520, n14618, n11049, n11051, 
            n14509, n14598, n12005, n14398, n14414, n14442, n14438, 
            n1069, n1172, n14521, n14539, n15917, n14611, n14409, 
            n14542, n14626, n1596_adj_9, n6776, n364, n14497, n308, 
            n2364, n12266, n1467, n14671, n1149, n15926, n14416, 
            n14423, n380_adj_10, n14597, n3237, n62_adj_11, n14585, 
            n270_adj_12, n3069, n14430, n1565_adj_13, n94_adj_14, 
            n126, n127, n12011, n14534, n2428, n14602, n2300, 
            n2555, n14429, n12012, n1405, n6162, n1851_adj_15, n14471, 
            n14434, n1661, n2332, n891, n1534, n14418, n12606, 
            n12563, n12039, n3804, n14413, n14401, n796, n8875, 
            n2025, n14592, n13873, n14427, n6165, n14397, n14431, 
            n46, n892, n12631, n14387, n14467, n14437, n3070_adj_16, 
            n12486, n2685, n3070_adj_17, n3682, n12104, n14568, 
            n14411, n14524, n14385, n4_adj_18, n1436, n14484, n12720, 
            n14650, n14499, n14506, n1148, n859, n14393, n6792, 
            n14395, n1403, n14453, n13900, n1883, n46_adj_19, n14428, 
            n14452, n5404, n14566, n14760, n13635, n1084, n2621, 
            n12810, n12821, n13588, n13589, n12824, n14383) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    input n14101;
    output n14507;
    input n1565;
    input n1596;
    output n14455;
    input n158;
    output n14518;
    input n14422;
    input n12866;
    output n14558;
    output n14529;
    output n61;
    input n158_adj_1;
    input n14432;
    output n14494;
    input n13515;
    output n14482;
    input n14503;
    output n14446;
    input n2141;
    input n2172;
    input n1723;
    input n1820;
    input n1851;
    input n1596_adj_2;
    input n4094;
    output \rom_q[1] ;
    output n12763;
    input n1530;
    output n12406;
    output n12437;
    input n4094_adj_3;
    output \rom_q[7] ;
    input n286;
    input n317;
    input n4094_adj_4;
    output \rom_q[0] ;
    output n12468;
    input n349;
    input n380;
    input n12757;
    input n828;
    output n15916;
    output n14532;
    input n380_adj_5;
    output n14435;
    input n62;
    output n3070;
    input n12766;
    output n3070_adj_6;
    input n1530_adj_7;
    input n828_adj_8;
    output n12489;
    output n12492;
    input n94;
    input n12900;
    output n12662;
    output n1101;
    output n14426;
    output n379;
    output n4;
    input n14486;
    input n14485;
    output n1676;
    output n13901;
    output n14436;
    output \rom_q[6] ;
    input n14504;
    input n6746;
    output n1962;
    output n397;
    output n2490;
    output n270;
    output n14513;
    output n4618;
    input n14492;
    input n14634;
    output n14443;
    output n1529;
    input n125;
    output n1211;
    input n13820;
    output n15915;
    output n14520;
    output n14618;
    input n11049;
    output n11051;
    output n14509;
    output n14598;
    output n12005;
    input n14398;
    input n14414;
    output n14442;
    input n14438;
    output n1069;
    output n1172;
    output n14521;
    output n14539;
    output n15917;
    output n14611;
    input n14409;
    output n14542;
    output n14626;
    input n1596_adj_9;
    input n6776;
    output n364;
    input n14497;
    output n308;
    input n2364;
    input n12266;
    input n1467;
    input n14671;
    input n1149;
    input n15926;
    output n14416;
    output n14423;
    input n380_adj_10;
    output n14597;
    input n3237;
    input n62_adj_11;
    output n14585;
    output n270_adj_12;
    output n3069;
    output n14430;
    output n1565_adj_13;
    input n94_adj_14;
    input n126;
    output n127;
    output n12011;
    output n14534;
    input n2428;
    output n14602;
    input n2300;
    input n2555;
    input n14429;
    input n12012;
    output n1405;
    input n6162;
    input n1851_adj_15;
    output n14471;
    input n14434;
    output n1661;
    output n2332;
    input n891;
    input n1534;
    input n14418;
    input n12606;
    input n12563;
    input n12039;
    input n3804;
    input n14413;
    input n14401;
    output n796;
    output n8875;
    output n2025;
    input n14592;
    input n13873;
    input n14427;
    input n6165;
    input n14397;
    input n14431;
    output n46;
    input n892;
    input n12631;
    input n14387;
    output n14467;
    output n14437;
    output n3070_adj_16;
    output n12486;
    input n2685;
    output n3070_adj_17;
    input n3682;
    output n12104;
    output n14568;
    output n14411;
    output n14524;
    output n14385;
    output n4_adj_18;
    input n1436;
    output n14484;
    input n12720;
    input n14650;
    output n14499;
    output n14506;
    input n1148;
    input n859;
    output n14393;
    input n6792;
    output n14395;
    input n1403;
    output n14453;
    output n13900;
    input n1883;
    output n46_adj_19;
    output n14428;
    output n14452;
    output n5404;
    output n14566;
    output n14760;
    input n13635;
    input n1084;
    input n2621;
    output n12810;
    input n12821;
    input n13588;
    output n13589;
    input n12824;
    input n14383;
    
    
    wire n4666, n14102, n14103, n12842, n12843, n12844, n12845, 
        n12846, n12847, n14420, n13569, n1212, n13570, n14195, 
        n1898, n14719, n14720, n14721, n12793, n14468, n14470, 
        n1275, n14444, n2396, n2428_c, n12851, n12852, n12853, 
        n13567, n13566, n13568, n14716, n14717, n14718, n78, n12697, 
        n14713, n14714, n14715, n14056, n14054, n14057, n1676_c, 
        n14055, n14576, n12854, n12855, n12856, n924, n955, n956, 
        n14559, n1466, n12857, n12858, n12859, n14710, n14711, 
        n14712, n14433, n14053, n14357, n12042, n10763, n12327, 
        n189, n190, n14680, n1978, n12348, n939, n12796, n12320, 
        n12321, n12322, n12323, n12324, n12325, n14502, n1276, 
        n4_c, n12661, n14644, n14645, n14646, n1086, n12660, n12867, 
        n12868, n12872, n12873, n2110, n14707, n14708, n13637, 
        n13380, n12659, n1275_adj_540, n12599, n3319, n12640, n891_c, 
        n14573, n1181, n14027, n14025, n14028, n604, n126_c, n12615, 
        n12636, n12637, n12638, n6553, n14026, n14704, n14705, 
        n14621, n14706, n1436_c, n1467_c, n12334, n13796, n2173, 
        n12510, n4985, n924_adj_542, n12512, n12513, n12515, n12881, 
        n12882, n12883, n14024, n14023, n12884, n12885, n12886, 
        n1898_adj_543, n1499, n1530_c, n12335, n13516, n2141_c, 
        n2173_adj_545, n14465, n12444, n12445, n12457, n1692, n12341, 
        n1755, n1786, n12342, n14531, n14641, n14642, n14643, 
        n12442, n13963, n12456, n12463, n1852, n12413, n12414, 
        n12426, n13315, n12409, n12410, n12424, n12356, n12357, 
        n12360, n2025_c, n1565_adj_546, n12731, n12656, n12761, 
        n12762, n1514, n14593, n1531, n12404, n12405, n12435, 
        n12436, n2047, n12358, n12359, n12361, n684, n699, n14638, 
        n14639, n14640, n12363, n12770, n12466, n12467, n12531, 
        n12652, n12653, n12655, n12364, n1228, n12758, n12015, 
        n956_adj_551, n12759, n12760, n12400, n12401, n827, n12283, 
        n829, n1658, n12369, n12370, n12373, n12402, n12403, n12433, 
        n12434, n1867, n12407, n12423, n12371, n12372, n12374, 
        n14543, n12464, n12465, n12425, n12432, n364_c, n381, 
        n12514, n12516, n61_adj_553, n63, n14701, n14702, n14703, 
        n12530, n3069_c, n12646, n12647, n14698, n12650, n12651, 
        n12654, n860, n2268, n2299, n2300_c, n14599, n285, n12764, 
        n12765, n12768, n12767, n12769, n14544, n14450, n428, 
        n5224, n444, n12523, n3069_adj_554, n1739, n1786_adj_556, 
        n1787, n12392, n12393, n12394, n12395, n1514_adj_557, n1531_adj_559, 
        n12396, n12397, n1212_adj_560, n1213, n12398, n12399, n859_c, 
        n860_adj_561, n14575, n892_c, n12502, n3069_adj_562, n3070_adj_563, 
        n812, n829_adj_565, n12431, n716, n732, n764, n797, n828_adj_566, 
        n12566, n14699, n14700, n12462, n12469, n12470, n12471, 
        n476, n507, n12367, n12487, n12488, n12710, n12711, n12712, 
        n12490, n12491, n12507, n12508, n12509, n6735, n1723_adj_567, 
        n6736, n12648, n12649, n1054, n1085, n14589, n1483, n12617, 
        n12024, n12641, n12350, n12351, n12352, n12415, n12416, 
        n12427, n12737, n12777, n893, n12242, n1021, n12421, n12422, 
        n12430, n2205, n2236, n12474, n12899, n8491, n12482, n12483, 
        n12485, n12498, n12499, n12501, n2365, n2428_adj_568, n557, 
        n236, n12493, n12494, n12495, n12519, n12520, n12522, 
        n12524, n12525, n12528, n12591, n12592, n12593, n12375, 
        n12559, n12644, n12568, n12584, n12645, n12532, n12533, 
        n12685, n12686, n12687, n12735, n12736, n12775, n12776, 
        n12326, n12328, n475, n12349, n14549, n2025_adj_569, n12569, 
        n12570, n14440, n14463, n12797, n63_adj_570, n12699, n12376, 
        n12537, n12538, n12539, n12702, n381_adj_571, n12378, n14483, 
        n2252, n12808, n747, n1019, n12383, n1243, n6778, n14723, 
        n1691, n1692_adj_572, n668, n12604, n14512, n14487, n1038, 
        n1054_adj_573, n13666, n14662, n4198, n14567, n1468, n12387, 
        n14508, n270_c, n12700, n1724, n12389, n8921, n589, n604_adj_576, 
        n12836, n2522, n13571, n13572, n61_adj_577, n635, n1149_c, 
        n1549, n1228_adj_578, n1597, n12807, n12419, n12863, n12864, 
        n1978_adj_579, n1595, n1915, n12411, n12412, n557_adj_580, 
        n526, n12834, n236_adj_581, n14510, n1228_adj_582, n14533, 
        n13895, n1435, n12744, n1707, n12228, n1789, n124, n2040, 
        n604_adj_583, n1770, n1196, n2204, n1913, n2298, n1979, 
        n12730, n12453, n12438, n12439, n12454, n14155, n12440, 
        n12441, n12455, n12450, n12451, n12460, n14615, n2298_adj_584, 
        n14129, n12472, n12473, n12480, n6785, n14574, n12830, 
        n2040_adj_585, n12826, n2220, n2348, n13791, n557_adj_586, 
        n4012, n270_adj_587, n12475, n12481, n1931, n205, n2298_adj_588, 
        n12476, n12477, n12478, n12479, n526_adj_589, n460, n316, 
        n12312, n14362, n12311, n2237, n2300_adj_591, n12497, n506, 
        n285_adj_592, n12820, n986, n2365_adj_593, n2428_adj_594, 
        n13962, n13958, n301, n12701, n14493, n14693, n2173_adj_595, 
        n251, n12309, n13703, n2492, n6758, n2141_adj_596, n2173_adj_597, 
        n1514_adj_598, n2110_adj_599, n12503, n1466_adj_600, n14354, 
        n1549_adj_601, n635_adj_602, n220, n12308, n14766, n14133, 
        n1612, n2237_adj_603, n2300_adj_604, n12504, n1835, n12781, 
        n13794, n2365_adj_605, n2428_adj_606, n12505, n14617, n1676_adj_607, 
        n1117, n14481, n1564, n12800, n2475, n2396_adj_608, n2109, 
        n13701, n2492_adj_609, n2555_c, n12506, n14730, n14729, 
        n2475_adj_610, n12803, n14733, n14732, n12609, n12594, n12595, 
        n12596, n2268_adj_611, n14736, n12802, n2300_adj_612, n14735, 
        n2492_adj_613, n2555_adj_614, n14739, n14738, n13822, n15913, 
        n14745, n14744, n1755_adj_615, n14656, n14763, n14148, n14157, 
        n14156, n14158, n12517, n2365_adj_616, n1659, n1403_c, n12809, 
        n14472, n12676, n14579, n14751, n2492_adj_617, n2555_adj_618, 
        n14753, n2283, n12791, n12688, n14517, n14752, n2396_adj_619, 
        n14756, n14755, n908, n13378, n14694, n14695, n14696, 
        n2110_adj_620, n2173_adj_621, n14759, n14758, n14762, n14761, 
        n2237_adj_622, n14765, n14764, n14586, n2141_adj_623, n2444, 
        n2426, n12790, n397_adj_624, n6774, n12713, n3359, n3354, 
        n13377, n13314, n13316, n2492_adj_625, n2555_adj_626, n12527, 
        n14535, n428_adj_627, n443, n12714, n11050, n3725, n12746, 
        n620, n635_adj_628, n12723, n14505, n14104, n12666, n1466_adj_629, 
        n12785, n12664, n1786_adj_630, n1787_adj_631, n13663, n5687, 
        n1947, n14691, n14692, n14461, n1565_adj_632, n1597_adj_633, 
        n14619, n13665, n1914, n12557, n12558, n12567, n12582, 
        n12583, n1914_adj_634, n13379, n12806, n1786_adj_635, n14536, 
        n1628, n1243_adj_636, n12778, n1914_adj_637, n12574, n12577, 
        n2009, n2010, n1084_c, n12670, n1820_adj_638, n12681, n12682, 
        n12754, n1529_adj_639, n1530_adj_640, n12683, n12684, n14620, 
        n12694, n12695, n12696, n12610, n14519, n1882, n1883_c, 
        n12703, n12704, n12705, n1435_adj_641, n12784, n12831, n1692_adj_642, 
        n12788, n2078, n2009_adj_643, n12728, n12679, n1676_adj_644, 
        n1692_adj_645, n1851_adj_646, n12346, n12706, n12707, n14511, 
        n12663, n14688, n14689, n14690, n1851_adj_647, n12708, n12709, 
        n124_adj_648, n14394, n12732, n6753, n1467_adj_649, n12733, 
        n12734, n12748, n12749, n12750, n1451, n12771, n12772, 
        n12773, n12774, n1451_adj_650, n1565_adj_651, n14630, n12794, 
        n12795, n14684, n12811, n1435_adj_652, n12827, n12828, n12829, 
        n12782, n12752, n2009_adj_653, n12825, n2009_adj_654, n2010_adj_655, 
        n2522_adj_656, n12689, n2298_adj_657, n12619, n14629, n6757, 
        n14546, n12848, n12849, n12850, n14635, n14636, n14637, 
        n2554, n2573, n12630, n12621, n2444_adj_658, n2460, n12860, 
        n12861, n12862, n653, n12553, n1883_adj_659, n1915_adj_660, 
        n653_adj_661, n12751, n12747, n1466_adj_662, n12745, n890, 
        n1308, n1309, n1002, n12581, n443_adj_663, n12576, n2108, 
        n1212_adj_664, n12564, n731, n12555, n12337, n13740, n14577, 
        n30, n14594, n14516, n12339, n12340, n12343, n12639, n12344, 
        n15918, n12347, n1243_adj_665, n1883_adj_666, n14652, n12353, 
        n12354, n12355, n14523, n14528, n1243_adj_668, n14651, n12362, 
        n14596, n1691_adj_669, n14655, n1101_adj_670, n14473, n14654, 
        n12365, n12725, n12366, n12368, n188, n14525, n190_adj_672, 
        n253, n12377, n2380, n939_adj_673, n12625, n14658, n14657, 
        n3134, n12719, n2396_adj_674, n14661, n14660, n526_adj_675, 
        n460_adj_676, n572, n12717, n14557, n541, n12716, n589_adj_677, 
        n604_adj_678, n12722, n15928, n15927, n12727, n12381, n12587, 
        n12590, n3912, n12382, n14757, n14591, n620_adj_680, n1596_adj_681, 
        n491, n12743, n12384, n3969, n12554, n1085_adj_683, n1228_adj_684, 
        n1244, n14439, n637, n14681, n14682, n14683, n4686, n14614, 
        n10777, n2492_adj_685, n12598, n12753, n12385, n1597_adj_686, 
        n1660, n12388, n542, n13828, n1867_adj_687, n1883_adj_688, 
        n12756, n12390, n12729, n12789, n12798, n12391, n1244_adj_689, 
        n364_adj_690, n221, n13825, n13826, n13827, n61_adj_692, 
        n14664, n5702, n12675, n14663, n14678, n14679, n1483_adj_694, 
        n1499_adj_695, n12667, n12822, n445, n508, n1117_adj_697, 
        n14667, n2110_adj_698, n12496, n14666, n6740, n12835, n12838, 
        n397_adj_699, n5451, n12634, n12823, n14500, n5441, n12633, 
        n2621_c, n14587, n2684, n12780, n13312, n12783, n1404, 
        n12417, n12786, n12418, n428_adj_701, n986_adj_702, n220_adj_703, 
        n12624, n2411, n2426_adj_704, n12622, n12832, n12813, n14737, 
        n13440, n13442, n14565, n12, n6832, n12310, n2429, n14469, 
        n14193, n2237_adj_709, n2301, n14192, n2556, n14604, n14610, 
        n2205_adj_712, n12607, n12345, n1946, n1947_adj_713, n1707_adj_714, 
        n1723_adj_715, n12799, n844, n2110_adj_716, n14572, n2174, 
        n1117_adj_717, n12428, n12429, n604_adj_718, n12588, n12586, 
        n12585, n2523, n14364, n14196, n1341, n971, n12580, n12626, 
        n12635, n13897, n812_adj_719, n12579, n12671, n1149_adj_720, 
        n12446, n908_adj_721, n12578, n14126, n14127, n220_adj_722, 
        n12575, n12573, n12680, n12721, n12449, n574, n14159, 
        n12529, n12572, n12801, n1309_adj_723, n2573_adj_724, n2685_c, 
        n1660_adj_726, n14722, n2299_adj_727, n15919, n1724_adj_728, 
        n2491, n13899, n12338, n2427, n2364_adj_729, n14134, n12521, 
        n6908, n2237_adj_730, n1852_adj_731, n1915_adj_732, n12452, 
        n12026, n12715, n508_adj_733, n12379, n109, n12812, n13898, 
        n13896, n2333, n2523_adj_735, n12718, n12724, n12380, n12025, 
        n15929, n444_adj_736, n445_adj_737, n12319, n2045, n12500, 
        n12484, n1403_adj_738, n12556, n14561, n13705, n1914_adj_739, 
        n14498, n14668, n13439, n987, n12565, n2267, n14734, n14355, 
        n380_adj_740, n1278, n2522_adj_741, n3805, n6316, n14198, 
        n14399, n14358, n2554_adj_742, n12698, n3747, n12589, n12017, 
        n12597, n1628_adj_743, n12805, n15920, n13874, n13871, n13875, 
        n1946_adj_744, n12787, n2491_adj_745, n14386, n13313, n13872, 
        n62_adj_747, n6755, n3545, n12618, n13443, n14659, n1084_adj_748, 
        n14631, n13585, n13587, n13870, n12992, n12511, n14665, 
        n14754, n14647, n14740, n14731, n12313, n14360, n14612, 
        n12643, n12642, n1020, n12632, n14571, n1292, n12779, 
        n5179, n731_adj_750, n12461, n13707, n12459, n14106, n12458, 
        n12669, n13668, n12678, n13824, n13584, n12601, n2554_adj_754, 
        n2523_adj_755, n475_adj_756, n476_adj_757, n14725, n526_adj_758, 
        n2685_adj_759, n14128, n13795, n13793, n14527, n2970, n1038_adj_762, 
        n1053, n2538, n14746, n5541, n14653, n13792, n12726, n14601, 
        n12833, n14365, n14363, n14125, n14724, n14359, n14356, 
        n1659_adj_764, n13636, n13706, n13704, n13702, n5468, n1076, 
        n12837, n1244_adj_766, n14421, n13667, n13664, n14197, n14194, 
        n14408, n507_adj_771, n14105;
    
    LUT4 i3808_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n4666)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3808_3_lut_3_lut.init = 16'h7474;
    PFUMX i13484 (.BLUT(n14102), .ALUT(n14101), .C0(rom_addr[5]), .Z(n14103));
    PFUMX i12178 (.BLUT(n12842), .ALUT(n12843), .C0(rom_addr[5]), .Z(n12844));
    PFUMX i12181 (.BLUT(n12845), .ALUT(n12846), .C0(rom_addr[5]), .Z(n12847));
    LUT4 i7762_2_lut_rep_169_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14420)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7762_2_lut_rep_169_3_lut_3_lut_4_lut.init = 16'h0008;
    PFUMX i13037 (.BLUT(n13569), .ALUT(n1212), .C0(rom_addr[5]), .Z(n13570));
    LUT4 i4814_3_lut_rep_256_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14507)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4814_3_lut_rep_256_4_lut_3_lut.init = 16'hd6d6;
    LUT4 n1923_bdd_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14195)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n1923_bdd_3_lut_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    PFUMX i13746 (.BLUT(n14719), .ALUT(n14720), .C0(rom_addr[0]), .Z(n14721));
    PFUMX i12127 (.BLUT(n1565), .ALUT(n1596), .C0(rom_addr[5]), .Z(n12793));
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14468), 
         .C(rom_addr[4]), .D(n14470), .Z(n1275)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5202;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n14444), 
         .C(rom_addr[5]), .D(n2396), .Z(n2428_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12187 (.BLUT(n12851), .ALUT(n12852), .C0(rom_addr[5]), .Z(n12853));
    PFUMX i13035 (.BLUT(n13567), .ALUT(n13566), .C0(rom_addr[5]), .Z(n13568));
    PFUMX i13744 (.BLUT(n14716), .ALUT(n14717), .C0(rom_addr[2]), .Z(n14718));
    LUT4 i12031_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n78), .Z(n12697)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12031_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13742 (.BLUT(n14713), .ALUT(n14714), .C0(rom_addr[3]), .Z(n14715));
    L6MUX21 i13447 (.D0(n14056), .D1(n14054), .SD(rom_addr[6]), .Z(n14057));
    PFUMX i13445 (.BLUT(n1676_c), .ALUT(n14055), .C0(n14576), .Z(n14056));
    PFUMX i12190 (.BLUT(n12854), .ALUT(n12855), .C0(rom_addr[5]), .Z(n12856));
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924), .B(n955), .C(rom_addr[5]), 
         .Z(n956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n14455), .B(n14559), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    PFUMX i12193 (.BLUT(n12857), .ALUT(n12858), .C0(rom_addr[5]), .Z(n12859));
    PFUMX i13740 (.BLUT(n14710), .ALUT(n14711), .C0(rom_addr[1]), .Z(n14712));
    PFUMX i13443 (.BLUT(n14433), .ALUT(n14053), .C0(rom_addr[5]), .Z(n14054));
    LUT4 n2275_bdd_2_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n14357)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2275_bdd_2_lut_3_lut_3_lut.init = 16'h1010;
    PFUMX i11661 (.BLUT(n12042), .ALUT(n10763), .C0(rom_addr[6]), .Z(n12327));
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11682_3_lut (.A(n14680), .B(n1978), .C(rom_addr[5]), .Z(n12348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11682_3_lut.init = 16'hcaca;
    LUT4 i12130_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n939), .Z(n12796)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12130_3_lut_4_lut.init = 16'hf202;
    PFUMX i11656 (.BLUT(n12320), .ALUT(n12321), .C0(rom_addr[5]), .Z(n12322));
    PFUMX i11659 (.BLUT(n12323), .ALUT(n12324), .C0(rom_addr[5]), .Z(n12325));
    LUT4 i7545_2_lut_rep_267_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14518)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7545_2_lut_rep_267_3_lut.init = 16'h0606;
    LUT4 i11995_4_lut (.A(n14502), .B(n1276), .C(rom_addr[6]), .D(n4_c), 
         .Z(n12661)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11995_4_lut.init = 16'hcac0;
    PFUMX i13697 (.BLUT(n14644), .ALUT(n14645), .C0(rom_addr[0]), .Z(n14646));
    LUT4 i11994_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14422), 
         .Z(n12660)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11994_4_lut.init = 16'h0aca;
    PFUMX i12202 (.BLUT(n12866), .ALUT(n12867), .C0(rom_addr[5]), .Z(n12868));
    PFUMX i12208 (.BLUT(n12872), .ALUT(n12873), .C0(rom_addr[5]), .Z(n2110));
    PFUMX i13738 (.BLUT(n14707), .ALUT(n14708), .C0(rom_addr[4]), .Z(n924));
    LUT4 i12679_3_lut (.A(n13637), .B(n13380), .C(rom_addr[7]), .Z(n12659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12679_3_lut.init = 16'hcaca;
    LUT4 i7816_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_540)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7816_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i11974_4_lut (.A(n12599), .B(rom_addr[0]), .C(rom_addr[6]), .D(n3319), 
         .Z(n12640)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11974_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n14558), 
         .C(rom_addr[4]), .D(n14529), .Z(n891_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7575_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n14573), .D(rom_addr[4]), .Z(n1181)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7575_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    L6MUX21 i13420 (.D0(n14027), .D1(n14025), .SD(rom_addr[6]), .Z(n14028));
    LUT4 i11657_3_lut (.A(n61), .B(n604), .C(rom_addr[4]), .Z(n12323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11657_3_lut.init = 16'hcaca;
    LUT4 i11949_4_lut (.A(n14718), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12615)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11949_4_lut.init = 16'hcac0;
    LUT4 i11972_3_lut (.A(n12636), .B(n12637), .C(rom_addr[7]), .Z(n12638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11972_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n6553)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0008;
    PFUMX i13418 (.BLUT(n158_adj_1), .ALUT(n14026), .C0(rom_addr[5]), 
          .Z(n14027));
    PFUMX i13736 (.BLUT(n14704), .ALUT(n14705), .C0(n14621), .Z(n14706));
    PFUMX i11668 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12334));
    LUT4 i12662_3_lut (.A(n13796), .B(n2173), .C(rom_addr[6]), .Z(n12510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12662_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n14432), .D(n4985), .Z(n924_adj_542)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11849_3_lut (.A(n12512), .B(n12513), .C(rom_addr[7]), .Z(n12515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11849_3_lut.init = 16'hcaca;
    PFUMX i12217 (.BLUT(n12881), .ALUT(n12882), .C0(rom_addr[5]), .Z(n12883));
    LUT4 i1_2_lut_rep_243_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14494)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_243_3_lut.init = 16'hfefe;
    PFUMX i13416 (.BLUT(n14024), .ALUT(n14023), .C0(rom_addr[5]), .Z(n14025));
    LUT4 i1_2_lut_rep_278_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14529)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_278_3_lut.init = 16'h1e1e;
    PFUMX i12220 (.BLUT(n12884), .ALUT(n12885), .C0(rom_addr[5]), .Z(n12886));
    LUT4 i5860_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1898_adj_543)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5860_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i11669 (.BLUT(n1499), .ALUT(n1530_c), .C0(rom_addr[5]), .Z(n12335));
    PFUMX i13007 (.BLUT(n13515), .ALUT(n14482), .C0(rom_addr[4]), .Z(n13516));
    LUT4 address_11__I_0_Mux_2_i2141_4_lut_4_lut (.A(rom_addr[0]), .B(n14503), 
         .C(rom_addr[4]), .D(n14446), .Z(n2141_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut_4_lut.init = 16'h4f40;
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173_adj_545)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7519_2_lut_rep_214_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14465)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7519_2_lut_rep_214_3_lut.init = 16'hf6f6;
    LUT4 i7643_2_lut_rep_204_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14455)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7643_2_lut_rep_204_3_lut.init = 16'h1010;
    LUT4 i11791_3_lut (.A(n12444), .B(n12445), .C(rom_addr[7]), .Z(n12457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11791_3_lut.init = 16'hcaca;
    PFUMX i11675 (.BLUT(n1692), .ALUT(n1723), .C0(rom_addr[5]), .Z(n12341));
    PFUMX i11676 (.BLUT(n1755), .ALUT(n1786), .C0(rom_addr[5]), .Z(n12342));
    LUT4 i7429_2_lut_rep_280_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14531)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7429_2_lut_rep_280_3_lut.init = 16'h6060;
    PFUMX i13695 (.BLUT(n14641), .ALUT(n14642), .C0(rom_addr[0]), .Z(n14643));
    LUT4 i11790_3_lut (.A(n12442), .B(n13963), .C(rom_addr[7]), .Z(n12456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11790_3_lut.init = 16'hcaca;
    LUT4 i12693_3_lut (.A(n12456), .B(n12457), .C(rom_addr[8]), .Z(n12463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12693_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11760_3_lut (.A(n12413), .B(n12414), .C(rom_addr[7]), .Z(n12426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11760_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_13135_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13315)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_13135_4_lut.init = 16'h00a1;
    LUT4 i11758_3_lut (.A(n12409), .B(n12410), .C(rom_addr[7]), .Z(n12424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11758_3_lut.init = 16'hcaca;
    PFUMX i11694 (.BLUT(n12356), .ALUT(n12357), .C0(rom_addr[5]), .Z(n12360));
    LUT4 i11447_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11447_3_lut_4_lut.init = 16'h8880;
    PFUMX i12065 (.BLUT(n1565_adj_546), .ALUT(n1596_adj_2), .C0(rom_addr[5]), 
          .Z(n12731));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12656), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(\rom_q[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i12097 (.D0(n12761), .D1(n12762), .SD(rom_addr[10]), .Z(n12763));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14593), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11740 (.D0(n12404), .D1(n12405), .SD(rom_addr[10]), .Z(n12406));
    L6MUX21 i11771 (.D0(n12435), .D1(n12436), .SD(rom_addr[10]), .Z(n12437));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_3), 
          .C0(rom_addr[11]), .Z(\rom_q[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11695 (.BLUT(n12358), .ALUT(n12359), .C0(rom_addr[5]), .Z(n12361));
    LUT4 i12177_3_lut (.A(n684), .B(n699), .C(rom_addr[4]), .Z(n12843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12177_3_lut.init = 16'hcaca;
    PFUMX i13693 (.BLUT(n14638), .ALUT(n14639), .C0(rom_addr[0]), .Z(n14640));
    PFUMX i11697 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12363));
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12770), .ALUT(n4094_adj_4), 
          .C0(rom_addr[11]), .Z(\rom_q[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11802 (.D0(n12466), .D1(n12467), .SD(rom_addr[10]), .Z(n12468));
    LUT4 i11865_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n12531)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11865_3_lut_4_lut_3_lut.init = 16'h2424;
    L6MUX21 i11989 (.D0(n12652), .D1(n12653), .SD(rom_addr[9]), .Z(n12655));
    PFUMX i11698 (.BLUT(n349), .ALUT(n380), .C0(rom_addr[5]), .Z(n12364));
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_3_lut_3_lut.init = 16'h4343;
    PFUMX i12095 (.BLUT(n12757), .ALUT(n12758), .C0(rom_addr[9]), .Z(n12761));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_542), .ALUT(n12015), 
          .C0(rom_addr[5]), .Z(n956_adj_551)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12096 (.BLUT(n12759), .ALUT(n12760), .C0(rom_addr[9]), .Z(n12762));
    L6MUX21 i11738 (.D0(n12400), .D1(n12401), .SD(rom_addr[9]), .Z(n12404));
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n12283), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15916), .B(n14532), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    PFUMX i11707 (.BLUT(n12369), .ALUT(n12370), .C0(rom_addr[5]), .Z(n12373));
    L6MUX21 i11739 (.D0(n12402), .D1(n12403), .SD(rom_addr[9]), .Z(n12405));
    PFUMX i11770 (.BLUT(n12433), .ALUT(n12434), .C0(rom_addr[9]), .Z(n12436));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i11757_3_lut (.A(n12407), .B(n14028), .C(rom_addr[7]), .Z(n12423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11757_3_lut.init = 16'hcaca;
    PFUMX i11708 (.BLUT(n12371), .ALUT(n12372), .C0(rom_addr[5]), .Z(n12374));
    LUT4 i2295_2_lut_rep_292 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14543)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2295_2_lut_rep_292.init = 16'h2222;
    PFUMX i11801 (.BLUT(n12464), .ALUT(n12465), .C0(rom_addr[9]), .Z(n12467));
    LUT4 i11766_3_lut (.A(n12425), .B(n12426), .C(rom_addr[8]), .Z(n12432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11766_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380_adj_5), 
          .C0(n14593), .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11850 (.BLUT(n12514), .ALUT(n12515), .C0(rom_addr[8]), .Z(n12516));
    LUT4 i7496_2_lut_rep_184_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14435)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7496_2_lut_rep_184_3_lut_4_lut.init = 16'h0080;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61_adj_553), .ALUT(n62), .C0(n12283), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13734 (.BLUT(n14701), .ALUT(n14702), .C0(rom_addr[0]), .Z(n14703));
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12530), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11986 (.BLUT(n12646), .ALUT(n12647), .C0(rom_addr[8]), .Z(n12652));
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14698)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_else_4_lut.init = 16'h80f0;
    PFUMX i11988 (.BLUT(n12650), .ALUT(n12651), .C0(rom_addr[9]), .Z(n12654));
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n14420), .B(n14532), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14532), .B(n14599), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    L6MUX21 i12102 (.D0(n12764), .D1(n12765), .SD(rom_addr[9]), .Z(n12768));
    PFUMX i12103 (.BLUT(n12766), .ALUT(n12767), .C0(rom_addr[9]), .Z(n12769));
    LUT4 i7592_2_lut_rep_293 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14544)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7592_2_lut_rep_293.init = 16'heeee;
    LUT4 i12866_2_lut_rep_199_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14450)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12866_2_lut_rep_199_3_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n5224), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12523), .ALUT(n3069_adj_554), 
          .C0(rom_addr[9]), .Z(n3070_adj_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786_adj_556), 
          .C0(rom_addr[5]), .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11734 (.BLUT(n12392), .ALUT(n12393), .C0(rom_addr[8]), .Z(n12400));
    PFUMX i11735 (.BLUT(n12394), .ALUT(n12395), .C0(rom_addr[8]), .Z(n12401));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_557), .ALUT(n1530_adj_7), 
          .C0(n14593), .Z(n1531_adj_559)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11736 (.BLUT(n12396), .ALUT(n12397), .C0(rom_addr[8]), .Z(n12402));
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212_adj_560), 
          .C0(rom_addr[5]), .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11737 (.BLUT(n12398), .ALUT(n12399), .C0(rom_addr[8]), .Z(n12403));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859_c), .ALUT(n860_adj_561), 
          .C0(n14575), .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12502), .ALUT(n3069_adj_562), 
          .C0(rom_addr[9]), .Z(n3070_adj_563)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_8), .C0(n14593), 
          .Z(n829_adj_565)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11769 (.BLUT(n12431), .ALUT(n12432), .C0(rom_addr[9]), .Z(n12435));
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n14576), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11900 (.BLUT(n797), .ALUT(n828_adj_566), .C0(rom_addr[5]), 
          .Z(n12566));
    PFUMX i13732 (.BLUT(n14698), .ALUT(n14699), .C0(rom_addr[1]), .Z(n14700));
    PFUMX i11800 (.BLUT(n12462), .ALUT(n12463), .C0(rom_addr[9]), .Z(n12466));
    PFUMX i11805 (.BLUT(n12469), .ALUT(n12470), .C0(rom_addr[9]), .Z(n12471));
    LUT4 i11701_3_lut (.A(n476), .B(n507), .C(rom_addr[5]), .Z(n12367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11701_3_lut.init = 16'hcaca;
    PFUMX i11823 (.BLUT(n12487), .ALUT(n12488), .C0(rom_addr[8]), .Z(n12489));
    LUT4 i12046_3_lut (.A(n12710), .B(n12711), .C(rom_addr[7]), .Z(n12712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12046_3_lut.init = 16'hcaca;
    PFUMX i11826 (.BLUT(n12490), .ALUT(n12491), .C0(rom_addr[8]), .Z(n12492));
    PFUMX i11843 (.BLUT(n12507), .ALUT(n12508), .C0(rom_addr[8]), .Z(n12509));
    PFUMX i5848 (.BLUT(n6735), .ALUT(n1723_adj_567), .C0(rom_addr[5]), 
          .Z(n6736));
    PFUMX i11987 (.BLUT(n12648), .ALUT(n12649), .C0(rom_addr[8]), .Z(n12653));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14589), .D(n14482), .Z(n1483)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    PFUMX i12098 (.BLUT(n12617), .ALUT(n12638), .C0(rom_addr[8]), .Z(n12764));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94), .ALUT(n12024), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12099 (.BLUT(n12641), .ALUT(n12659), .C0(rom_addr[8]), .Z(n12765));
    L6MUX21 i11686 (.D0(n12350), .D1(n12351), .SD(rom_addr[7]), .Z(n12352));
    L6MUX21 i11761 (.D0(n12415), .D1(n12416), .SD(rom_addr[7]), .Z(n12427));
    LUT4 i11804_3_lut (.A(n12737), .B(n12777), .C(rom_addr[8]), .Z(n12470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11804_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860), .ALUT(n893), .C0(n12242), 
          .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11764 (.D0(n12421), .D1(n12422), .SD(rom_addr[7]), .Z(n12430));
    PFUMX i11808 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12474));
    PFUMX i10082 (.BLUT(n12899), .ALUT(n12900), .C0(rom_addr[5]), .Z(n8491));
    L6MUX21 i11819 (.D0(n12482), .D1(n12483), .SD(rom_addr[7]), .Z(n12485));
    L6MUX21 i11835 (.D0(n12498), .D1(n12499), .SD(rom_addr[7]), .Z(n12501));
    L6MUX21 i11846 (.D0(n2365), .D1(n2428_adj_568), .SD(rom_addr[6]), 
            .Z(n12512));
    LUT4 i11655_3_lut (.A(n557), .B(n236), .C(rom_addr[4]), .Z(n12321)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11655_3_lut.init = 16'hcaca;
    PFUMX i11829 (.BLUT(n12493), .ALUT(n12494), .C0(rom_addr[4]), .Z(n12495));
    L6MUX21 i11856 (.D0(n12519), .D1(n12520), .SD(rom_addr[7]), .Z(n12522));
    L6MUX21 i11862 (.D0(n12524), .D1(n12525), .SD(rom_addr[7]), .Z(n12528));
    L6MUX21 i11927 (.D0(n12591), .D1(n12592), .SD(rom_addr[6]), .Z(n12593));
    L6MUX21 i11978 (.D0(n12375), .D1(n12559), .SD(rom_addr[7]), .Z(n12644));
    L6MUX21 i11979 (.D0(n12568), .D1(n12584), .SD(rom_addr[7]), .Z(n12645));
    PFUMX i11867 (.BLUT(n12531), .ALUT(n12532), .C0(rom_addr[4]), .Z(n12533));
    PFUMX i11996 (.BLUT(n12660), .ALUT(n12661), .C0(rom_addr[7]), .Z(n12662));
    L6MUX21 i12021 (.D0(n12685), .D1(n12686), .SD(rom_addr[7]), .Z(n12687));
    L6MUX21 i12071 (.D0(n12735), .D1(n12736), .SD(rom_addr[7]), .Z(n12737));
    L6MUX21 i12111 (.D0(n12775), .D1(n12776), .SD(rom_addr[7]), .Z(n12777));
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    L6MUX21 i11662 (.D0(n12326), .D1(n12327), .SD(rom_addr[7]), .Z(n12328));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n475)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    PFUMX i11685 (.BLUT(n12348), .ALUT(n12349), .C0(rom_addr[6]), .Z(n12351));
    LUT4 i12186_3_lut_4_lut (.A(n14549), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_adj_569), .Z(n12852)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12186_3_lut_4_lut.init = 16'h8f80;
    LUT4 n12569_bdd_3_lut_13678 (.A(n12569), .B(n12570), .C(rom_addr[4]), 
         .Z(n14102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12569_bdd_3_lut_13678.init = 16'hcaca;
    LUT4 i7455_2_lut_rep_189_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14440)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7455_2_lut_rep_189_4_lut_4_lut.init = 16'hff81;
    LUT4 i12131_3_lut_4_lut (.A(n14549), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14463), .Z(n12797)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12131_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11710 (.D0(n63_adj_570), .D1(n12699), .SD(rom_addr[6]), .Z(n12376));
    PFUMX i11873 (.BLUT(n12537), .ALUT(n12538), .C0(rom_addr[4]), .Z(n12539));
    L6MUX21 i11712 (.D0(n12702), .D1(n381_adj_571), .SD(rom_addr[6]), 
            .Z(n12378));
    LUT4 i12142_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), .C(rom_addr[4]), 
         .D(n2252), .Z(n12808)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12142_3_lut_4_lut.init = 16'hf808;
    LUT4 i12180_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), .C(rom_addr[4]), 
         .D(n747), .Z(n12846)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12180_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11717 (.BLUT(n956), .ALUT(n1019), .C0(rom_addr[6]), .Z(n12383));
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 i5890_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6778)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5890_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 i5895_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14723)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5895_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_572)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_175_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14426)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_175_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i11938_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), .C(rom_addr[4]), 
         .D(n379), .Z(n12604)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11938_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 rom_addr_2__bdd_4_lut_13168 (.A(n14512), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14487), .Z(n13567)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam rom_addr_2__bdd_4_lut_13168.init = 16'h3a0a;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n14549), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054_adj_573)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2227_bdd_3_lut_13197_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13666)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam n2227_bdd_3_lut_13197_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    LUT4 i3340_3_lut_4_lut (.A(n14486), .B(n14485), .C(rom_addr[6]), .D(n14662), 
         .Z(n4198)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3340_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11464_3_lut_4_lut (.A(n15916), .B(rom_addr[3]), .C(n14567), 
         .D(n1676), .Z(n6735)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11464_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 rom_addr_2__bdd_4_lut_13034 (.A(rom_addr[2]), .B(n14558), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13566)) /* synthesis lut_function=(A (B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam rom_addr_2__bdd_4_lut_13034.init = 16'h8040;
    L6MUX21 i11721 (.D0(n1468), .D1(n1531_adj_559), .SD(rom_addr[6]), 
            .Z(n12387));
    LUT4 i12415_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[4]), 
         .D(n270_c), .Z(n12700)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12415_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11723 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n12389));
    LUT4 i5866_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8921)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i5866_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 i12362_3_lut (.A(n589), .B(n604_adj_576), .C(rom_addr[4]), .Z(n12836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12362_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 n165_bdd_2_lut_13048 (.A(n13571), .B(rom_addr[7]), .Z(n13572)) /* synthesis lut_function=(A (B)) */ ;
    defparam n165_bdd_2_lut_13048.init = 16'h8888;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61_adj_577)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut.init = 16'h87fe;
    LUT4 n2379_bdd_3_lut_13309_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n13901)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2379_bdd_3_lut_13309_4_lut_4_lut_4_lut.init = 16'h1858;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h4023;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut.init = 16'h400c;
    L6MUX21 i11749 (.D0(n12859), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12415));
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1549)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h1012;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1228_adj_578)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'he0e2;
    L6MUX21 i11753 (.D0(n1597), .D1(n12807), .SD(rom_addr[6]), .Z(n12419));
    LUT4 i12389_3_lut (.A(n12863), .B(n12864), .C(rom_addr[4]), .Z(n1978_adj_579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12389_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    L6MUX21 i11755 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n12421));
    L6MUX21 i11759 (.D0(n12411), .D1(n12412), .SD(rom_addr[7]), .Z(n12425));
    LUT4 i7523_2_lut_rep_185_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14436)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7523_2_lut_rep_185_3_lut_4_lut.init = 16'hf9f0;
    LUT4 i12168_3_lut (.A(n557_adj_580), .B(n526), .C(rom_addr[4]), .Z(n12834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12168_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut_4_lut (.A(n12471), .B(rom_addr[10]), 
         .C(n3070_adj_563), .D(rom_addr[11]), .Z(\rom_q[6] )) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut_4_lut.init = 16'h3088;
    LUT4 i11470_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n236_adj_581)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11470_3_lut_4_lut_4_lut.init = 16'h02d0;
    LUT4 i5931_2_lut_rep_259_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14510)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5931_2_lut_rep_259_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i11468_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n1228_adj_582)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11468_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 n1372_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14504), .C(rom_addr[4]), 
         .D(n14533), .Z(n13895)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1372_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12078_3_lut_4_lut (.A(rom_addr[0]), .B(n14504), .C(rom_addr[4]), 
         .D(n1435), .Z(n12744)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12078_3_lut_4_lut.init = 16'hf101;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n6746), .C0(n12228), 
          .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_583)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_5_i2252_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2252)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2252_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_5_i2426_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2204)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_5_i2426_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1962)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 i5880_2_lut_rep_257_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14508)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5880_2_lut_rep_257_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_3_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_c)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut.init = 16'h8809;
    LUT4 address_11__I_0_Mux_1_i397_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n397)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i397_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2298)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut.init = 16'h1009;
    L6MUX21 i11787 (.D0(n1979), .D1(n12730), .SD(rom_addr[6]), .Z(n12453));
    L6MUX21 i11788 (.D0(n12438), .D1(n12439), .SD(rom_addr[7]), .Z(n12454));
    LUT4 n1994_bdd_3_lut_13611_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14155)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1994_bdd_3_lut_13611_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 address_11__I_0_Mux_1_i2490_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2490)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2490_3_lut_4_lut_4_lut.init = 16'h0803;
    PFUMX i11789 (.BLUT(n12440), .ALUT(n12441), .C0(rom_addr[7]), .Z(n12455));
    L6MUX21 i11794 (.D0(n12450), .D1(n12451), .SD(rom_addr[7]), .Z(n12460));
    LUT4 i2008_2_lut_rep_364 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14615)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2008_2_lut_rep_364.init = 16'hbbbb;
    LUT4 n4271_bdd_4_lut_13509 (.A(n2298_adj_584), .B(n14455), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14129)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam n4271_bdd_4_lut_13509.init = 16'haafc;
    PFUMX i11814 (.BLUT(n12472), .ALUT(n12473), .C0(rom_addr[6]), .Z(n12480));
    LUT4 i12164_4_lut (.A(n6785), .B(n14433), .C(rom_addr[4]), .D(n14574), 
         .Z(n12830)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12164_4_lut.init = 16'hcac0;
    LUT4 i12160_3_lut (.A(n2025_c), .B(n2040_adj_585), .C(rom_addr[4]), 
         .Z(n12826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12160_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2220)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 n435_bdd_3_lut_13586_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13791)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n435_bdd_3_lut_13586_4_lut_4_lut.init = 16'h6004;
    LUT4 address_11__I_0_Mux_0_i557_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n557_adj_586)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i557_3_lut_3_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 i3154_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n4012)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3154_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i11472_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n270_adj_587)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11472_3_lut_3_lut_4_lut.init = 16'h4b40;
    L6MUX21 i11815 (.D0(n12474), .D1(n12475), .SD(rom_addr[6]), .Z(n12481));
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_557)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i7460_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_588)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7460_4_lut_4_lut.init = 16'hf8f6;
    L6MUX21 i11816 (.D0(n12476), .D1(n12477), .SD(rom_addr[6]), .Z(n12482));
    L6MUX21 i11817 (.D0(n12478), .D1(n12479), .SD(rom_addr[6]), .Z(n12483));
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_589)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 i11646_3_lut (.A(n61), .B(n316), .C(rom_addr[4]), .Z(n12312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11646_3_lut.init = 16'hcaca;
    LUT4 n557_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14362)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n557_bdd_3_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i11645_3_lut (.A(n270), .B(n285), .C(rom_addr[4]), .Z(n12311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11645_3_lut.init = 16'hcaca;
    L6MUX21 i11831 (.D0(n2237), .D1(n2300_adj_591), .SD(rom_addr[6]), 
            .Z(n12497));
    LUT4 address_11__I_0_Mux_0_i460_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i460_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 i12371_3_lut (.A(n270_adj_587), .B(n285_adj_592), .C(rom_addr[4]), 
         .Z(n12820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12371_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    PFUMX i11832 (.BLUT(n2365_adj_593), .ALUT(n2428_adj_594), .C0(rom_addr[6]), 
          .Z(n12498));
    PFUMX i13361 (.BLUT(n13962), .ALUT(n13958), .C0(rom_addr[5]), .Z(n13963));
    LUT4 i12035_3_lut_4_lut (.A(n14513), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301), .Z(n12701)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12035_3_lut_4_lut.init = 16'h1f10;
    LUT4 i3760_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4618)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3760_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n14493), .B(n14492), 
         .C(rom_addr[5]), .D(n14693), .Z(n2173_adj_595)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11643_3_lut (.A(n236_adj_581), .B(n251), .C(rom_addr[4]), .Z(n12309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11643_3_lut.init = 16'hcaca;
    LUT4 i12823_2_lut_rep_325 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14576)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12823_2_lut_rep_325.init = 16'heeee;
    LUT4 n1403_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13703)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C))) */ ;
    defparam n1403_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h8101;
    PFUMX i11833 (.BLUT(n2492), .ALUT(n6758), .C0(rom_addr[6]), .Z(n12499));
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(n14493), .B(n14492), 
         .C(rom_addr[5]), .D(n14634), .Z(n2173)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n14493), .B(n14492), 
         .C(rom_addr[5]), .D(n2141_adj_596), .Z(n2173_adj_597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1514_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514_adj_598)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_1_i1514_3_lut_4_lut_4_lut_4_lut.init = 16'h1810;
    PFUMX i11837 (.BLUT(n2110_adj_599), .ALUT(n2173_adj_597), .C0(rom_addr[6]), 
          .Z(n12503));
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466_adj_600)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 n1657_bdd_3_lut_13664_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14354)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_13664_4_lut_4_lut.init = 16'h2c41;
    LUT4 i7579_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549_adj_601)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7579_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 i7501_2_lut_rep_192_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14443)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7501_2_lut_rep_192_3_lut_4_lut.init = 16'h0080;
    LUT4 i11642_3_lut (.A(n635_adj_602), .B(n220), .C(rom_addr[4]), .Z(n12308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11642_3_lut.init = 16'hcaca;
    LUT4 i7551_2_lut_rep_182_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14433)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7551_2_lut_rep_182_4_lut_4_lut.init = 16'h2900;
    LUT4 n14132_bdd_3_lut (.A(n14766), .B(n14129), .C(rom_addr[4]), .Z(n14133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14132_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1612)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h4042;
    LUT4 i7546_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7546_4_lut_4_lut.init = 16'h2880;
    L6MUX21 i11838 (.D0(n2237_adj_603), .D1(n2300_adj_604), .SD(rom_addr[6]), 
            .Z(n12504));
    LUT4 i12115_4_lut_4_lut (.A(n14494), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n12781)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i12115_4_lut_4_lut.init = 16'hdfd0;
    LUT4 n4271_bdd_4_lut_13508_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13794)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n4271_bdd_4_lut_13508_4_lut.init = 16'h9080;
    PFUMX i11839 (.BLUT(n2365_adj_605), .ALUT(n2428_adj_606), .C0(rom_addr[6]), 
          .Z(n12505));
    LUT4 i7697_2_lut_rep_366 (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n14617)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7697_2_lut_rep_366.init = 16'h8888;
    LUT4 i12286_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n12899)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12286_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    LUT4 i11871_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12537)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11871_3_lut_4_lut_4_lut.init = 16'h0294;
    LUT4 i11903_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12569)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11903_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_607)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n61_adj_553)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    LUT4 i7689_2_lut_rep_261_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14512)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i7689_2_lut_rep_261_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i7766_2_lut_rep_230_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14481)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i7766_2_lut_rep_230_3_lut_4_lut.init = 16'h8008;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    LUT4 i12134_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12800)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12134_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 address_11__I_0_Mux_1_i61_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i61_3_lut_4_lut_3_lut_4_lut.init = 16'h4224;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 i11440_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11440_3_lut_4_lut_3_lut_4_lut.init = 16'h2422;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396_adj_608)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 rom_addr_0__bdd_4_lut_13355_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13701)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_13355_4_lut.init = 16'h0802;
    L6MUX21 i11840 (.D0(n2492_adj_609), .D1(n2555_c), .SD(rom_addr[6]), 
            .Z(n12506));
    LUT4 i12206_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(n1211), .Z(n12872)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12206_3_lut_4_lut.init = 16'hf808;
    LUT4 i11962_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14730)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11962_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i11962_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14729)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11962_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i12137_3_lut (.A(n2475_adj_610), .B(n2298), .C(rom_addr[4]), 
         .Z(n12803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12137_3_lut.init = 16'hcaca;
    LUT4 i12910_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14733)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam i12910_then_4_lut.init = 16'h0090;
    LUT4 i12910_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14732)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i12910_else_4_lut.init = 16'h0260;
    LUT4 i11943_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12609)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11943_3_lut_4_lut.init = 16'hf808;
    PFUMX i11930 (.BLUT(n12594), .ALUT(n12595), .C0(rom_addr[4]), .Z(n12596));
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(n2220), .Z(n2268_adj_611)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 n2573_bdd_4_lut_13563_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14736)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam n2573_bdd_4_lut_13563_then_4_lut.init = 16'h04c1;
    LUT4 i12586_3_lut (.A(n12802), .B(n12803), .C(rom_addr[5]), .Z(n2300_adj_612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12586_3_lut.init = 16'hcaca;
    LUT4 n2573_bdd_4_lut_13563_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14735)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n2573_bdd_4_lut_13563_else_4_lut.init = 16'h4801;
    PFUMX i11847 (.BLUT(n2492_adj_613), .ALUT(n2555_adj_614), .C0(rom_addr[6]), 
          .Z(n12513));
    LUT4 i5876_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n14739)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i5876_4_lut_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i5876_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14738)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i5876_4_lut_4_lut_else_3_lut.init = 16'h4454;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13820), .C(n13822), 
         .D(rom_addr[6]), .Z(n15913)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 address_11__I_0_Mux_1_i125_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14745)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i125_4_lut_then_4_lut.init = 16'h0c80;
    LUT4 address_11__I_0_Mux_1_i125_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14744)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i125_4_lut_else_4_lut.init = 16'h0080;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14494), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n15915), .Z(n1755_adj_615)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 n14147_bdd_3_lut (.A(n14656), .B(n14763), .C(rom_addr[6]), .Z(n14148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14147_bdd_3_lut.init = 16'hcaca;
    LUT4 i7660_2_lut_rep_212_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14463)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i7660_2_lut_rep_212_3_lut_4_lut.init = 16'h0888;
    LUT4 n14157_bdd_3_lut_13538 (.A(n14157), .B(n14156), .C(rom_addr[5]), 
         .Z(n14158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14157_bdd_3_lut_13538.init = 16'hcaca;
    L6MUX21 i11851 (.D0(n2110), .D1(n2173_adj_545), .SD(rom_addr[6]), 
            .Z(n12517));
    PFUMX i11853 (.BLUT(n2365_adj_616), .ALUT(n2428_c), .C0(rom_addr[6]), 
          .Z(n12519));
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435), .B(n15916), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14494), .B(rom_addr[3]), 
         .C(n14482), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 i12143_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(rom_addr[4]), 
         .D(n14544), .Z(n12809)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12143_3_lut_4_lut.init = 16'hf202;
    LUT4 i12010_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(rom_addr[4]), 
         .D(n14472), .Z(n12676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12010_3_lut_4_lut.init = 16'h2f20;
    LUT4 i6014_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(n14579), .D(n2204), 
         .Z(n2428_adj_606)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6014_3_lut_4_lut.init = 16'hf202;
    LUT4 rom_addr_0__bdd_4_lut_13936 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14751)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B !(C))) */ ;
    defparam rom_addr_0__bdd_4_lut_13936.init = 16'hc781;
    PFUMX i11854 (.BLUT(n2492_adj_617), .ALUT(n2555_adj_618), .C0(rom_addr[6]), 
          .Z(n12520));
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), 
         .C(n14593), .D(n2475_adj_610), .Z(n2492_adj_613)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12007_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14753)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i12007_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 i12125_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(rom_addr[4]), 
         .D(n2283), .Z(n12791)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12125_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12022_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(rom_addr[4]), 
         .D(n2522), .Z(n12688)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12022_3_lut_4_lut.init = 16'hf202;
    LUT4 i7684_2_lut_rep_266_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14517)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7684_2_lut_rep_266_3_lut.init = 16'h8080;
    LUT4 i12007_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n14752)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12007_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i12136_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), .C(rom_addr[4]), 
         .D(n2252), .Z(n12802)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12136_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14520), 
         .C(rom_addr[4]), .D(n2204), .Z(n2396_adj_619)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14756)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14755)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 n12601_bdd_3_lut_13628 (.A(n908), .B(n397), .C(rom_addr[4]), 
         .Z(n13378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12601_bdd_3_lut_13628.init = 16'hcaca;
    PFUMX i13729 (.BLUT(n14694), .ALUT(n14695), .C0(rom_addr[1]), .Z(n14696));
    PFUMX i11858 (.BLUT(n2110_adj_620), .ALUT(n2173_adj_621), .C0(rom_addr[6]), 
          .Z(n12524));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14759)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 i1_2_lut_rep_367 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14618)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_367.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14758)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i13522_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14762)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+(D))))) */ ;
    defparam i13522_then_4_lut.init = 16'h4041;
    LUT4 i13522_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14761)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i13522_else_4_lut.init = 16'h0140;
    PFUMX i11859 (.BLUT(n2237_adj_622), .ALUT(n2300_adj_612), .C0(rom_addr[6]), 
          .Z(n12525));
    LUT4 i13510_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n14765)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(D))+!A)) */ ;
    defparam i13510_then_4_lut.init = 16'h2280;
    LUT4 i13510_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n14764)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C+(D))))) */ ;
    defparam i13510_else_4_lut.init = 16'h1910;
    LUT4 address_11__I_0_Mux_1_i2141_3_lut_4_lut (.A(n14503), .B(n14586), 
         .C(rom_addr[4]), .D(n14446), .Z(n2141_adj_623)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12124_3_lut (.A(n2444), .B(n2426), .C(rom_addr[4]), .Z(n12790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12124_3_lut.init = 16'hcaca;
    PFUMX i12047 (.BLUT(n397_adj_624), .ALUT(n6774), .C0(rom_addr[4]), 
          .Z(n12713));
    LUT4 n3359_bdd_4_lut (.A(n3359), .B(rom_addr[0]), .C(n3354), .D(n14576), 
         .Z(n13377)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B ((D)+!C)))) */ ;
    defparam n3359_bdd_4_lut.init = 16'h440c;
    LUT4 address_11__I_0_Mux_1_i1777_3_lut_rep_379 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15915)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1777_3_lut_rep_379.init = 16'h8181;
    PFUMX i12914 (.BLUT(n13315), .ALUT(n13314), .C0(rom_addr[0]), .Z(n13316));
    LUT4 i11904_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12570)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11904_3_lut_4_lut_4_lut.init = 16'h3081;
    L6MUX21 i11861 (.D0(n2492_adj_625), .D1(n2555_adj_626), .SD(rom_addr[6]), 
            .Z(n12527));
    LUT4 i2_2_lut_rep_284_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14535)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_284_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_242_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14493)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_242_2_lut_3_lut.init = 16'h0808;
    PFUMX i12048 (.BLUT(n428_adj_627), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n12714));
    PFUMX i10390 (.BLUT(n11049), .ALUT(n11050), .C0(rom_addr[8]), .Z(n11051));
    LUT4 i1_2_lut_rep_258_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n14509)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_258_2_lut_3_lut.init = 16'h0808;
    LUT4 i2867_3_lut_4_lut (.A(rom_addr[2]), .B(n14509), .C(rom_addr[5]), 
         .D(n14470), .Z(n3725)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2867_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12080_3_lut_4_lut (.A(n14494), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n12746)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i12080_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n14504), 
         .C(n14535), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    LUT4 i11690_3_lut_4_lut (.A(rom_addr[0]), .B(n14504), .C(rom_addr[4]), 
         .D(n14533), .Z(n12356)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11690_3_lut_4_lut.init = 16'hf202;
    PFUMX i12057 (.BLUT(n620), .ALUT(n635_adj_628), .C0(rom_addr[4]), 
          .Z(n12723));
    LUT4 n1181_bdd_3_lut_13682_4_lut (.A(rom_addr[0]), .B(n14505), .C(rom_addr[4]), 
         .D(n1196), .Z(n14104)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1181_bdd_3_lut_13682_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i467_3_lut_rep_380 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15916)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i467_3_lut_rep_380.init = 16'h8383;
    LUT4 i12000_3_lut_4_lut (.A(rom_addr[0]), .B(n14507), .C(rom_addr[4]), 
         .D(n2252), .Z(n12666)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12000_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12119_3_lut_4_lut (.A(rom_addr[0]), .B(n14507), .C(rom_addr[4]), 
         .D(n1466_adj_629), .Z(n12785)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12119_3_lut_4_lut.init = 16'hf202;
    LUT4 i11998_3_lut_4_lut (.A(rom_addr[0]), .B(n14507), .C(rom_addr[4]), 
         .D(n2220), .Z(n12664)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11998_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14507), 
         .C(rom_addr[5]), .D(n1786_adj_630), .Z(n1787_adj_631)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 n1372_bdd_4_lut_13253 (.A(n14435), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(n14598), .Z(n13663)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1372_bdd_4_lut_13253.init = 16'hb888;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14507), 
         .C(n5687), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    PFUMX i13727 (.BLUT(n14691), .ALUT(n14692), .C0(rom_addr[0]), .Z(n14693));
    LUT4 i12478_3_lut_4_lut (.A(n14461), .B(n12005), .C(rom_addr[5]), 
         .D(n1565_adj_632), .Z(n1597_adj_633)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12478_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7491_2_lut_rep_368 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14619)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7491_2_lut_rep_368.init = 16'h4444;
    LUT4 n2227_bdd_4_lut (.A(n14398), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n14598), .Z(n13665)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n2227_bdd_4_lut.init = 16'hb888;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11893 (.D0(n12557), .D1(n12558), .SD(rom_addr[6]), .Z(n12559));
    L6MUX21 i11902 (.D0(n12566), .D1(n12567), .SD(rom_addr[6]), .Z(n12568));
    L6MUX21 i11918 (.D0(n12582), .D1(n12583), .SD(rom_addr[6]), .Z(n12584));
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), 
         .C(rom_addr[4]), .D(n1898_adj_543), .Z(n1914_adj_634)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2235_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), .C(rom_addr[4]), 
         .D(n2204), .Z(n14053)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2235_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 n13379_bdd_3_lut (.A(n13379), .B(n13377), .C(rom_addr[6]), .Z(n13380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13379_bdd_3_lut.init = 16'hcaca;
    LUT4 i12140_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), .C(rom_addr[4]), 
         .D(n1658), .Z(n12806)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12140_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14414), 
         .C(rom_addr[4]), .D(n14442), .Z(n1786_adj_635)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i2_2_lut_rep_285_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n14536)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_285_3_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14414), 
         .C(rom_addr[4]), .D(n1612), .Z(n1628)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12386_3_lut (.A(n1228), .B(n1243_adj_636), .C(rom_addr[4]), 
         .Z(n12778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12386_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1898), .Z(n1914_adj_637)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i11971 (.D0(n12574), .D1(n12577), .SD(rom_addr[6]), .Z(n12637));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n14576), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), 
         .C(rom_addr[4]), .D(n2009), .Z(n2010)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 i12004_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), .C(rom_addr[4]), 
         .D(n1084_c), .Z(n12670)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12004_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), 
         .C(rom_addr[4]), .D(n14450), .Z(n1820_adj_638)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12019 (.BLUT(n12681), .ALUT(n12682), .C0(rom_addr[6]), .Z(n12685));
    LUT4 i12088_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), .C(rom_addr[4]), 
         .D(n14436), .Z(n12754)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12088_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14470), 
         .C(rom_addr[4]), .D(n1529_adj_639), .Z(n1530_adj_640)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    PFUMX i12020 (.BLUT(n12683), .ALUT(n12684), .C0(rom_addr[6]), .Z(n12686));
    LUT4 i11448_2_lut_rep_369 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n14620)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11448_2_lut_rep_369.init = 16'heeee;
    PFUMX i12030 (.BLUT(n12694), .ALUT(n12695), .C0(rom_addr[6]), .Z(n12696));
    LUT4 i11944_3_lut_4_lut (.A(rom_addr[0]), .B(n14414), .C(rom_addr[4]), 
         .D(n14440), .Z(n12610)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11944_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14519), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i12039 (.BLUT(n12703), .ALUT(n12704), .C0(rom_addr[6]), .Z(n12705));
    LUT4 i12118_3_lut_4_lut (.A(n14519), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435_adj_641), .Z(n12784)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12118_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12165_3_lut_4_lut (.A(n14519), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1962), .Z(n12831)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12165_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[5]), .D(n14507), .Z(n1692_adj_642)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 i12122_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[4]), 
         .D(n1962), .Z(n12788)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12122_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1946_2_lut_rep_370 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14621)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1946_2_lut_rep_370.init = 16'h6666;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[4]), .D(n14438), .Z(n1755)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_630)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 n1676_bdd_3_lut_13539_4_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[5]), .D(n14505), .Z(n14055)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1676_bdd_3_lut_13539_4_lut_4_lut.init = 16'h2a20;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[4]), .D(n14504), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i12062_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[4]), 
         .D(n2009_adj_643), .Z(n12728)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12062_3_lut_4_lut.init = 16'hf202;
    LUT4 i12013_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[4]), 
         .D(n1466), .Z(n12679)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12013_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), 
         .C(rom_addr[5]), .D(n1676_adj_644), .Z(n1692_adj_645)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11680_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[5]), 
         .D(n1851_adj_646), .Z(n12346)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11680_3_lut_4_lut.init = 16'hf202;
    LUT4 i12016_3_lut_4_lut (.A(rom_addr[0]), .B(n14508), .C(rom_addr[5]), 
         .D(n1914_adj_634), .Z(n12682)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12016_3_lut_4_lut.init = 16'hf202;
    PFUMX i12044 (.BLUT(n12706), .ALUT(n12707), .C0(rom_addr[6]), .Z(n12710));
    LUT4 i11997_3_lut_4_lut (.A(rom_addr[0]), .B(n14511), .C(rom_addr[4]), 
         .D(n2204), .Z(n12663)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11997_3_lut_4_lut.init = 16'hf808;
    PFUMX i13725 (.BLUT(n14688), .ALUT(n14689), .C0(rom_addr[0]), .Z(n14690));
    LUT4 i7522_2_lut_4_lut_4_lut (.A(n14468), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14470), .Z(n1851_adj_647)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7522_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 address_11__I_0_Mux_1_i1069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    L6MUX21 i12045 (.D0(n12708), .D1(n12709), .SD(rom_addr[6]), .Z(n12711));
    LUT4 i12219_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), .C(rom_addr[4]), 
         .D(n124_adj_648), .Z(n12885)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12219_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_0_i189_3_lut_rep_143_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n14483), .C(rom_addr[4]), .D(n14468), .Z(n14394)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i189_3_lut_rep_143_4_lut_4_lut.init = 16'h404a;
    L6MUX21 i12069 (.D0(n12731), .D1(n12732), .SD(rom_addr[6]), .Z(n12735));
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(rom_addr[0]), .B(n14483), 
         .C(rom_addr[4]), .D(n6753), .Z(n1467_adj_649)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    L6MUX21 i12070 (.D0(n12733), .D1(n12734), .SD(rom_addr[6]), .Z(n12736));
    LUT4 i7682_2_lut_rep_282_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14533)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7682_2_lut_rep_282_3_lut_4_lut.init = 16'h0060;
    L6MUX21 i12084 (.D0(n12748), .D1(n12749), .SD(rom_addr[6]), .Z(n12750));
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n15915), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14481), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n15915), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_adj_567)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i12109 (.D0(n12771), .D1(n12772), .SD(rom_addr[6]), .Z(n12775));
    L6MUX21 i12110 (.D0(n12773), .D1(n12774), .SD(rom_addr[6]), .Z(n12776));
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n15915), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_650), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_651)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i3216_3_lut_rep_145_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(rom_addr[3]), .Z(n14630)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3216_3_lut_rep_145_4_lut_4_lut_then_4_lut.init = 16'hefff;
    L6MUX21 i12129 (.D0(n12793), .D1(n12794), .SD(rom_addr[6]), .Z(n12795));
    LUT4 i12145_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n14684), .Z(n12811)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12145_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), 
         .C(rom_addr[4]), .D(n1435_adj_652), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i12163 (.D0(n12827), .D1(n12828), .SD(rom_addr[6]), .Z(n12829));
    LUT4 i12116_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n12782)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12116_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12086_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n1835), .Z(n12752)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12086_3_lut_4_lut.init = 16'hf101;
    LUT4 i12159_3_lut_4_lut (.A(n14482), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_653), .Z(n12825)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12159_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14482), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_654), .Z(n2010_adj_655)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12023_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), .C(rom_addr[4]), 
         .D(n2522_adj_656), .Z(n12689)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12023_3_lut_4_lut.init = 16'hf808;
    LUT4 i11953_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), .C(rom_addr[4]), 
         .D(n2298_adj_657), .Z(n12619)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11953_3_lut_4_lut.init = 16'hf808;
    LUT4 i3216_3_lut_rep_145_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[5]), .Z(n14629)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3216_3_lut_rep_145_4_lut_4_lut_else_4_lut.init = 16'hfbfb;
    LUT4 i5869_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), .C(rom_addr[5]), 
         .D(n2522_adj_656), .Z(n6757)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5869_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11477_2_lut_rep_295 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14546)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11477_2_lut_rep_295.init = 16'hdddd;
    PFUMX i12184 (.BLUT(n12848), .ALUT(n12849), .C0(rom_addr[6]), .Z(n12850));
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), 
         .C(rom_addr[4]), .D(n2490), .Z(n2396)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13691 (.BLUT(n14635), .ALUT(n14636), .C0(rom_addr[0]), .Z(n14637));
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), 
         .C(rom_addr[4]), .D(n2490), .Z(n2554)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 i11964_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), .C(rom_addr[4]), 
         .D(n2573), .Z(n12630)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11964_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11955_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), .C(rom_addr[4]), 
         .D(n14617), .Z(n12621)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11955_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14521), 
         .C(rom_addr[4]), .D(n2444_adj_658), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12196 (.BLUT(n12860), .ALUT(n12861), .C0(rom_addr[7]), .Z(n12862));
    LUT4 i11887_3_lut_4_lut (.A(n14599), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653), .Z(n12553)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11887_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_659), .B(n1914), 
         .C(rom_addr[5]), .Z(n1915_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 i12176_3_lut_4_lut (.A(n14599), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_661), .Z(n12842)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12176_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12395_3_lut (.A(n1228_adj_578), .B(n1243), .C(rom_addr[4]), 
         .Z(n12751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12395_3_lut.init = 16'hcaca;
    LUT4 i12081_3_lut (.A(n1514_adj_598), .B(n1529_adj_639), .C(rom_addr[4]), 
         .Z(n12747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12081_3_lut.init = 16'hcaca;
    LUT4 i12079_3_lut (.A(n1451), .B(n1466_adj_662), .C(rom_addr[4]), 
         .Z(n12745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12079_3_lut.init = 16'hcaca;
    LUT4 i12189_3_lut_4_lut (.A(rom_addr[0]), .B(n14539), .C(rom_addr[4]), 
         .D(n890), .Z(n12855)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12189_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n14539), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf202;
    LUT4 i11915_3_lut_4_lut (.A(rom_addr[0]), .B(n14539), .C(rom_addr[4]), 
         .D(n1002), .Z(n12581)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11915_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n14539), 
         .C(rom_addr[4]), .D(n14450), .Z(n2141_adj_596)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11910_3_lut_4_lut (.A(rom_addr[0]), .B(n14539), .C(rom_addr[4]), 
         .D(n443_adj_663), .Z(n12576)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11910_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12197_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12863)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12197_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i7786_2_lut_rep_381 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n15917)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7786_2_lut_rep_381.init = 16'h8888;
    LUT4 i12344_3_lut_4_lut (.A(n14611), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n12873)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12344_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_657)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 i12028_3_lut_4_lut (.A(rom_addr[0]), .B(n14409), .C(rom_addr[5]), 
         .D(n1212_adj_664), .Z(n12694)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12028_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14544), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_646)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14544), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_632)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11898_3_lut_4_lut (.A(rom_addr[1]), .B(n14544), .C(rom_addr[4]), 
         .D(n301), .Z(n12564)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11898_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11889_3_lut_4_lut (.A(rom_addr[1]), .B(n14544), .C(rom_addr[4]), 
         .D(n731), .Z(n12555)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11889_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i11671 (.D0(n12334), .D1(n12335), .SD(rom_addr[6]), .Z(n12337));
    LUT4 n5303_bdd_4_lut (.A(n14617), .B(rom_addr[4]), .C(rom_addr[1]), 
         .D(n14508), .Z(n13740)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B !(C)))) */ ;
    defparam n5303_bdd_4_lut.init = 16'h10dc;
    LUT4 address_11__I_0_Mux_2_i30_4_lut (.A(n14577), .B(n14455), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut.init = 16'hcacf;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14516), .Z(n731)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut.init = 16'hf202;
    PFUMX i11677 (.BLUT(n12339), .ALUT(n12340), .C0(rom_addr[6]), .Z(n12343));
    LUT4 i11975_3_lut (.A(n12639), .B(n12640), .C(rom_addr[7]), .Z(n12641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11975_3_lut.init = 16'hcaca;
    L6MUX21 i11678 (.D0(n12341), .D1(n12342), .SD(rom_addr[6]), .Z(n12344));
    LUT4 address_11__I_0_Mux_1_i1466_3_lut_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14494), .Z(n1466_adj_662)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1466_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 i5178_3_lut_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n15918)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5178_3_lut_4_lut_4_lut_else_3_lut.init = 16'hffbf;
    PFUMX i11684 (.BLUT(n12346), .ALUT(n12347), .C0(rom_addr[6]), .Z(n12350));
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14455), .Z(n1243_adj_665)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11673_3_lut_4_lut (.A(rom_addr[0]), .B(n14409), .C(rom_addr[5]), 
         .D(n1565_adj_651), .Z(n12339)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11673_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14626), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867), .ALUT(n1883_adj_666), 
          .C0(n14576), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14652)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'hc2c2;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[4]), .D(n14505), .Z(n1676_adj_644)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    PFUMX i11689 (.BLUT(n12353), .ALUT(n12354), .C0(rom_addr[6]), .Z(n12355));
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_9), 
          .C0(n12283), .Z(n1597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14523), .Z(n2475_adj_610)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i939_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14513), .Z(n939)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i939_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14528), .Z(n1435)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14513), .Z(n1243_adj_668)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14651)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'hc082;
    L6MUX21 i11696 (.D0(n12360), .D1(n12361), .SD(rom_addr[6]), .Z(n12362));
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14596), .Z(n1691_adj_669)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 n6331_bdd_3_lut_13583_4_lut_4_lut_then_4_lut (.A(n14470), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14655)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6331_bdd_3_lut_13583_4_lut_4_lut_then_4_lut.init = 16'h30a3;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_670), .ALUT(n1117), 
          .C0(n14576), .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14473), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14528), .Z(n397_adj_624)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14598), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2573_3_lut_4_lut.init = 16'hf202;
    LUT4 n6331_bdd_3_lut_13583_4_lut_4_lut_else_4_lut (.A(n14470), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n14654)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6331_bdd_3_lut_13583_4_lut_4_lut_else_4_lut.init = 16'h0808;
    L6MUX21 i11699 (.D0(n12363), .D1(n12364), .SD(rom_addr[6]), .Z(n12365));
    LUT4 i12059_3_lut (.A(n6776), .B(n668), .C(rom_addr[4]), .Z(n12725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12059_3_lut.init = 16'hcaca;
    PFUMX i11702 (.BLUT(n12366), .ALUT(n12367), .C0(rom_addr[6]), .Z(n12368));
    LUT4 address_11__I_0_Mux_1_i188_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14549), .Z(n188)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i188_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14636)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14525), .Z(n364)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11709 (.D0(n12373), .D1(n12374), .SD(rom_addr[6]), .Z(n12375));
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14532), .Z(n1466_adj_629)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    PFUMX i11711 (.BLUT(n190_adj_672), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12377));
    LUT4 address_11__I_0_Mux_1_i2380_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(rom_addr[3]), .D(n14528), .Z(n2380)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2380_3_lut_4_lut.init = 16'hf202;
    LUT4 i11959_3_lut_4_lut (.A(n14543), .B(n14577), .C(rom_addr[4]), 
         .D(n939_adj_673), .Z(n12625)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11959_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14658)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14657)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i7858_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14497), .Z(n3134)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7858_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    LUT4 i12053_3_lut (.A(n1962), .B(n1549), .C(rom_addr[4]), .Z(n12719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12053_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_674), 
          .C0(n14576), .Z(n2428_adj_568)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i3331_4_lut_4_lut_then_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .Z(n14661)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3331_4_lut_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i3331_4_lut_4_lut_else_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14660)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3331_4_lut_4_lut_else_3_lut.init = 16'hfff7;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_675)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i12051_3_lut (.A(n460_adj_676), .B(n572), .C(rom_addr[4]), .Z(n12717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12051_3_lut.init = 16'hcaca;
    LUT4 i12050_4_lut (.A(n14557), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n12716)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12050_4_lut.init = 16'hcac0;
    PFUMX i12056 (.BLUT(n589_adj_677), .ALUT(n604_adj_678), .C0(rom_addr[4]), 
          .Z(n12722));
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14593), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11876_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15928)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11876_then_4_lut.init = 16'h5924;
    LUT4 i11876_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15927)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11876_else_4_lut.init = 16'h5092;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    L6MUX21 i11715 (.D0(n12727), .D1(n764), .SD(rom_addr[6]), .Z(n12381));
    L6MUX21 i11973 (.D0(n12587), .D1(n12590), .SD(rom_addr[6]), .Z(n12639));
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n4666), .ALUT(n1692_adj_645), 
          .C0(n12266), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n220)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(B (C+!(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut.init = 16'h434f;
    LUT4 address_11__I_0_Mux_1_i277_3_lut_rep_281_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14532)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i277_3_lut_rep_281_4_lut_3_lut.init = 16'h4242;
    LUT4 i7808_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n14465), 
         .D(rom_addr[3]), .Z(n3912)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7808_4_lut_4_lut.init = 16'hd100;
    L6MUX21 i11716 (.D0(n829_adj_565), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12382));
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466_adj_600), .ALUT(n1467), 
          .C0(n12283), .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14635)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_1_i293_3_lut_rep_375 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14626)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i293_3_lut_rep_375.init = 16'h2424;
    LUT4 i12571_3_lut (.A(n14671), .B(n14757), .C(rom_addr[5]), .Z(n12704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12571_3_lut.init = 16'hcaca;
    LUT4 i5918_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6785)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5918_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n14591), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14519), .Z(n1676_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11872_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12538)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11872_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_680)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14510), 
         .C(rom_addr[4]), .D(n14450), .Z(n1596_adj_681)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    PFUMX i11718 (.BLUT(n12743), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12384));
    LUT4 i11888_4_lut_4_lut (.A(n14557), .B(rom_addr[4]), .C(n3969), .D(n684), 
         .Z(n12554)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11888_4_lut_4_lut.init = 16'h7340;
    PFUMX i11925 (.BLUT(n1054_adj_573), .ALUT(n1085_adj_683), .C0(rom_addr[5]), 
          .Z(n12591));
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1228_adj_684), .B(n1243_adj_668), 
         .C(rom_addr[4]), .Z(n1244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i12573_3_lut (.A(n1244), .B(n15926), .C(rom_addr[5]), .Z(n12695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12573_3_lut.init = 16'hcaca;
    LUT4 i7536_2_lut_4_lut (.A(n14416), .B(n14439), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7536_2_lut_4_lut.init = 16'hca00;
    PFUMX i13721 (.BLUT(n14681), .ALUT(n14682), .C0(rom_addr[1]), .Z(n14683));
    LUT4 i7549_4_lut_4_lut (.A(n14508), .B(rom_addr[4]), .C(n4686), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7549_4_lut_4_lut.init = 16'h7400;
    LUT4 i4820_3_lut_4_lut (.A(n14614), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14507), .Z(n5687)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4820_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7500_4_lut_4_lut (.A(n14423), .B(rom_addr[5]), .C(n10777), .D(rom_addr[0]), 
         .Z(n2492_adj_685)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i7500_4_lut_4_lut.init = 16'h7400;
    LUT4 i11932_4_lut_4_lut (.A(n14615), .B(rom_addr[4]), .C(rom_addr[1]), 
         .D(n443_adj_663), .Z(n12598)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11932_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i11719 (.D0(n1213), .D1(n12753), .SD(rom_addr[6]), .Z(n12385));
    PFUMX i11722 (.BLUT(n1597_adj_686), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n12388));
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14615), 
         .C(rom_addr[4]), .D(n526), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12681_3_lut (.A(n12615), .B(n13828), .C(rom_addr[7]), .Z(n12617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12681_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14615), 
         .C(rom_addr[4]), .D(n1867_adj_687), .Z(n1883_adj_688)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11724 (.BLUT(n12756), .ALUT(n1915_adj_660), .C0(rom_addr[6]), 
          .Z(n12390));
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n15917), .B(n14617), 
         .C(rom_addr[4]), .D(n1867_adj_687), .Z(n1883_adj_659)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i12063_3_lut_4_lut (.A(n15917), .B(n14617), .C(rom_addr[4]), 
         .D(n2040), .Z(n12729)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i12063_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i11725 (.D0(n12789), .D1(n12798), .SD(rom_addr[6]), .Z(n12391));
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n14423), .B(n4012), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_593)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut (.A(n14594), .B(n14617), 
         .C(rom_addr[4]), .D(n14619), .Z(n1244_adj_689)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_690), .ALUT(n380_adj_10), 
          .C0(n14593), .Z(n381_adj_571)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n3969), .B(n14597), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 i12755_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n3969)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12755_2_lut.init = 16'h9999;
    LUT4 n221_bdd_3_lut_13365 (.A(n221), .B(n13825), .C(rom_addr[5]), 
         .Z(n13826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_13365.init = 16'hcaca;
    LUT4 n221_bdd_4_lut_13579 (.A(n14394), .B(n3237), .C(rom_addr[0]), 
         .D(rom_addr[5]), .Z(n13827)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut_13579.init = 16'haa30;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_692), .ALUT(n62_adj_11), 
          .C0(n12283), .Z(n63_adj_570)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14594), .B(n14617), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12006_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14664)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12006_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 i12009_4_lut (.A(n2220), .B(n5702), .C(rom_addr[4]), .D(n14585), 
         .Z(n12675)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i12009_4_lut.init = 16'h3a0a;
    LUT4 i12006_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14663)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12006_3_lut_4_lut_else_4_lut.init = 16'h8088;
    PFUMX i13719 (.BLUT(n14678), .ALUT(n14679), .C0(rom_addr[0]), .Z(n14680));
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14594), .B(n14617), 
         .C(rom_addr[4]), .D(n1483_adj_694), .Z(n1499_adj_695)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n14559), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14528), .Z(n270_adj_12)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    LUT4 i12001_3_lut (.A(n188), .B(n2298_adj_584), .C(rom_addr[4]), .Z(n12667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12001_3_lut.init = 16'hcaca;
    L6MUX21 i11743 (.D0(n12822), .D1(n381), .SD(rom_addr[6]), .Z(n12409));
    PFUMX i11744 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n12410));
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14542), .B(rom_addr[4]), 
         .C(n14512), .D(n14546), .Z(n1117_adj_697)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12089_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14667)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12089_3_lut_4_lut_then_4_lut.init = 16'h1047;
    PFUMX i11830 (.BLUT(n2110_adj_698), .ALUT(n2173_adj_595), .C0(rom_addr[6]), 
          .Z(n12496));
    LUT4 i12089_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14666)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12089_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 i5852_4_lut_4_lut (.A(n14542), .B(rom_addr[3]), .C(n14528), .D(n14620), 
         .Z(n6740)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5852_4_lut_4_lut.init = 16'hd1c0;
    L6MUX21 i11745 (.D0(n12835), .D1(n12838), .SD(rom_addr[6]), .Z(n12411));
    LUT4 i11968_4_lut (.A(rom_addr[0]), .B(n397_adj_699), .C(rom_addr[4]), 
         .D(n5451), .Z(n12634)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11968_4_lut.init = 16'hc0ca;
    L6MUX21 i11746 (.D0(n12844), .D1(n12847), .SD(rom_addr[6]), .Z(n12412));
    LUT4 i12157_3_lut_4_lut_4_lut (.A(n14542), .B(rom_addr[3]), .C(n15915), 
         .D(rom_addr[4]), .Z(n12823)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i12157_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 i7490_4_lut (.A(rom_addr[0]), .B(n14500), .C(n14508), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7490_4_lut.init = 16'h0a22;
    LUT4 i11967_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n5441), 
         .Z(n12633)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11967_4_lut.init = 16'hc0ca;
    L6MUX21 i11747 (.D0(n829), .D1(n12856), .SD(rom_addr[6]), .Z(n12413));
    LUT4 i7821_4_lut (.A(n2621_c), .B(n14587), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7821_4_lut.init = 16'hc088;
    L6MUX21 i11750 (.D0(n12868), .D1(n12780), .SD(rom_addr[6]), .Z(n12416));
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2141_adj_623), 
         .C(rom_addr[5]), .D(n14430), .Z(n2621_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14516), .Z(n653_adj_661)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'h8f80;
    LUT4 n1116_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14558), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13312)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1116_bdd_3_lut_4_lut.init = 16'h4004;
    PFUMX i11751 (.BLUT(n12783), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12417));
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(n15916), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    L6MUX21 i11752 (.D0(n12786), .D1(n1531), .SD(rom_addr[6]), .Z(n12418));
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(n14519), .D(rom_addr[3]), .Z(n428_adj_701)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14597), .Z(n986_adj_702)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n14516), .B(n3969), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220_adj_703)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i11958_4_lut (.A(rom_addr[0]), .B(n14529), .C(rom_addr[4]), .D(n14461), 
         .Z(n12624)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11958_4_lut.init = 16'hcac0;
    LUT4 i11956_3_lut (.A(n2411), .B(n2426_adj_704), .C(rom_addr[4]), 
         .Z(n12622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11956_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(n14473), .D(rom_addr[3]), .Z(n653)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14626), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11756 (.D0(n12832), .D1(n12853), .SD(rom_addr[6]), .Z(n12422));
    L6MUX21 i11772 (.D0(n12883), .D1(n12886), .SD(rom_addr[6]), .Z(n12438));
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14519), .Z(n1483_adj_694)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12607_3_lut (.A(n12621), .B(n12622), .C(rom_addr[5]), .Z(n2428_adj_594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12607_3_lut.init = 16'hcaca;
    L6MUX21 i11741 (.D0(n63), .D1(n12813), .SD(rom_addr[6]), .Z(n12407));
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549_adj_601), .ALUT(n1564), 
          .C0(rom_addr[4]), .Z(n1565_adj_13)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n13441_bdd_3_lut (.A(n14737), .B(n13440), .C(rom_addr[5]), .Z(n13442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13441_bdd_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94_adj_14), .ALUT(n126), .C0(n14565), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i6_4_lut (.A(n14585), .B(n12), .C(rom_addr[7]), .D(rom_addr[5]), 
         .Z(n12011)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0008;
    LUT4 i5_4_lut (.A(rom_addr[8]), .B(n6832), .C(rom_addr[1]), .D(rom_addr[6]), 
         .Z(n12)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i5_4_lut.init = 16'h0040;
    LUT4 i5947_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n6832)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5947_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14591), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14534), .Z(n61_adj_692)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11773 (.D0(n190), .D1(n12310), .SD(rom_addr[6]), .Z(n12439));
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396_adj_608), .ALUT(n2428), 
          .C0(n14565), .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14519), .Z(n2009_adj_643)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 i12195_3_lut_4_lut_4_lut (.A(n14558), .B(n3725), .C(rom_addr[6]), 
         .D(n14485), .Z(n12861)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12195_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i12182_3_lut_4_lut (.A(rom_addr[1]), .B(n14469), .C(rom_addr[5]), 
         .D(n14700), .Z(n12848)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12182_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i939_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14599), .Z(n939_adj_673)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i939_3_lut_4_lut.init = 16'h2f20;
    LUT4 n300_bdd_3_lut_13631_4_lut (.A(rom_addr[0]), .B(n14602), .C(rom_addr[3]), 
         .D(n14532), .Z(n14193)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n300_bdd_3_lut_13631_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_709), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n300_bdd_3_lut_13554_4_lut (.A(rom_addr[0]), .B(n14602), .C(n14599), 
         .D(rom_addr[3]), .Z(n14192)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n300_bdd_3_lut_13554_4_lut.init = 16'h22f0;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14528), .Z(n124_adj_648)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_685), .ALUT(n2555), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14604), .B(n14610), 
         .C(rom_addr[4]), .D(n2204), .Z(n2205_adj_712)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 i11941_4_lut (.A(n3969), .B(n14429), .C(rom_addr[4]), .D(n14558), 
         .Z(n12607)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11941_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_1_i236_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14532), .Z(n236)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i236_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11679_3_lut (.A(n12343), .B(n12344), .C(rom_addr[7]), .Z(n12345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11679_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14494), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947_adj_713)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n12005)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14494), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_714), .Z(n1723_adj_715)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12133_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), .C(rom_addr[3]), 
         .D(n14597), .Z(n12799)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12133_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n14574), .B(n14626), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_716), 
          .C0(n14572), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7444_4_lut (.A(rom_addr[0]), .B(n14468), .C(n14414), .D(rom_addr[4]), 
         .Z(n1117_adj_717)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7444_4_lut.init = 16'h0a22;
    LUT4 i11762_3_lut (.A(n12417), .B(n12418), .C(rom_addr[7]), .Z(n12428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11762_3_lut.init = 16'hcaca;
    LUT4 i11763_3_lut (.A(n12419), .B(n14057), .C(rom_addr[7]), .Z(n12429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11763_3_lut.init = 16'hcaca;
    LUT4 i11922_3_lut (.A(n205), .B(n604_adj_718), .C(rom_addr[4]), .Z(n12588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11922_3_lut.init = 16'hcaca;
    LUT4 i11920_3_lut (.A(n557_adj_586), .B(n428_adj_701), .C(rom_addr[4]), 
         .Z(n12586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11920_3_lut.init = 16'hcaca;
    LUT4 i11919_3_lut (.A(n526_adj_589), .B(n635_adj_602), .C(rom_addr[4]), 
         .Z(n12585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11919_3_lut.init = 16'hcaca;
    LUT4 i7783_4_lut (.A(n14455), .B(rom_addr[4]), .C(n14596), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7783_4_lut.init = 16'hc088;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), .C(n14532), 
         .D(rom_addr[3]), .Z(n14364)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    L6MUX21 i11776 (.D0(n12322), .D1(n12325), .SD(rom_addr[6]), .Z(n12442));
    LUT4 n1923_bdd_4_lut_4_lut (.A(n14574), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(n14528), .Z(n14196)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n1923_bdd_4_lut_4_lut.init = 16'hf404;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n12012), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12449_3_lut (.A(n971), .B(n986_adj_702), .C(rom_addr[4]), .Z(n12580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12449_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14523), .Z(n908)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11779 (.D0(n12626), .D1(n12635), .SD(rom_addr[6]), .Z(n12445));
    LUT4 n2332_bdd_3_lut_13409_4_lut (.A(n14626), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14416), .Z(n13897)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_13409_4_lut.init = 16'h8f80;
    LUT4 i11913_3_lut (.A(n939), .B(n812_adj_719), .C(rom_addr[4]), .Z(n12579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11913_3_lut.init = 16'hcaca;
    L6MUX21 i11780 (.D0(n12671), .D1(n1149_adj_720), .SD(rom_addr[6]), 
            .Z(n12446));
    LUT4 i11912_3_lut (.A(n908_adj_721), .B(n397), .C(rom_addr[4]), .Z(n12578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11912_3_lut.init = 16'hcaca;
    LUT4 n14126_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14423), .C(rom_addr[5]), 
         .D(n14126), .Z(n14127)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n14126_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14626), .Z(n220_adj_722)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 i12215_3_lut_4_lut (.A(rom_addr[1]), .B(n14617), .C(rom_addr[4]), 
         .D(n30), .Z(n12881)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12215_3_lut_4_lut.init = 16'hf808;
    LUT4 i11909_3_lut (.A(n506), .B(n475), .C(rom_addr[4]), .Z(n12575)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11909_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n14423), 
         .C(n6162), .D(rom_addr[6]), .Z(n2110_adj_716)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 i11907_3_lut (.A(n428_adj_701), .B(n443_adj_663), .C(rom_addr[4]), 
         .Z(n12573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11907_3_lut.init = 16'hcaca;
    L6MUX21 i11783 (.D0(n12680), .D1(n12721), .SD(rom_addr[6]), .Z(n12449));
    PFUMX i11660 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12326));
    LUT4 i11863_3_lut (.A(n14159), .B(n12527), .C(rom_addr[7]), .Z(n12529)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11863_3_lut.init = 16'hcaca;
    LUT4 i11906_3_lut (.A(n397_adj_699), .B(n506), .C(rom_addr[4]), .Z(n12572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11906_3_lut.init = 16'hcaca;
    LUT4 i12455_3_lut (.A(n12799), .B(n12800), .C(rom_addr[4]), .Z(n12801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12455_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n14626), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14429), .Z(n1309_adj_723)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12714_4_lut (.A(n2573_adj_724), .B(n15913), .C(rom_addr[6]), 
         .D(n14576), .Z(n2685_c)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12714_4_lut.init = 16'hccca;
    LUT4 i12015_3_lut_4_lut (.A(rom_addr[0]), .B(n14423), .C(rom_addr[5]), 
         .D(n1851_adj_15), .Z(n12681)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12015_3_lut_4_lut.init = 16'hf202;
    PFUMX i11784 (.BLUT(n1597_adj_633), .ALUT(n1660_adj_726), .C0(rom_addr[6]), 
          .Z(n12450));
    LUT4 i11827_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), .C(rom_addr[3]), 
         .D(n14611), .Z(n12493)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11827_3_lut_4_lut.init = 16'h02f2;
    LUT4 i12471_3_lut (.A(n14722), .B(n2298_adj_588), .C(rom_addr[4]), 
         .Z(n2299_adj_727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12471_3_lut.init = 16'hcaca;
    LUT4 i5178_3_lut_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n15919)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5178_3_lut_4_lut_4_lut_then_3_lut.init = 16'hfefe;
    PFUMX i11785 (.BLUT(n1724_adj_728), .ALUT(n1787_adj_631), .C0(rom_addr[6]), 
          .Z(n12451));
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), 
         .C(rom_addr[3]), .D(n14599), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2490), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 i11672_3_lut (.A(n13899), .B(n12337), .C(rom_addr[7]), .Z(n12338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11672_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2426), .C(rom_addr[4]), 
         .Z(n2427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n14471), .B(n14434), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_adj_729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 i11855_3_lut (.A(n12517), .B(n14134), .C(rom_addr[7]), .Z(n12521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11855_3_lut.init = 16'hcaca;
    LUT4 i7584_4_lut (.A(rom_addr[0]), .B(n14511), .C(n14520), .D(n6908), 
         .Z(n2237_adj_730)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7584_4_lut.init = 16'h0a88;
    PFUMX i11786 (.BLUT(n1852_adj_731), .ALUT(n1915_adj_732), .C0(rom_addr[6]), 
          .Z(n12452));
    LUT4 i6007_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6908)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6007_2_lut.init = 16'heeee;
    LUT4 i7493_4_lut (.A(n1212), .B(rom_addr[6]), .C(n12026), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7493_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_688), .B(n1786_adj_630), 
         .C(rom_addr[5]), .Z(n1915_adj_732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7756_4_lut (.A(rom_addr[0]), .B(n14508), .C(n13740), .D(rom_addr[5]), 
         .Z(n1852_adj_731)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7756_4_lut.init = 16'ha022;
    LUT4 i11713_3_lut (.A(n12715), .B(n508_adj_733), .C(rom_addr[6]), 
         .Z(n12379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11713_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244_adj_689), .ALUT(n1275_adj_540), 
          .C0(rom_addr[5]), .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n12533), .B(n507), .C(rom_addr[5]), 
         .Z(n508_adj_733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), 
         .C(rom_addr[3]), .D(n14525), .Z(n2332)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i507_3_lut.init = 16'hcaca;
    PFUMX i11809 (.BLUT(n2268_adj_611), .ALUT(n2299_adj_727), .C0(rom_addr[5]), 
          .Z(n12475));
    LUT4 i12375_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n12812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12375_3_lut.init = 16'hcaca;
    L6MUX21 i13300 (.D0(n13898), .D1(n13896), .SD(rom_addr[6]), .Z(n13899));
    PFUMX i11810 (.BLUT(n2333), .ALUT(n2364_adj_729), .C0(rom_addr[5]), 
          .Z(n12476));
    PFUMX i11811 (.BLUT(n6740), .ALUT(n2427), .C0(rom_addr[5]), .Z(n12477));
    LUT4 i11654_3_lut (.A(n526_adj_675), .B(n397), .C(rom_addr[4]), .Z(n12320)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11654_3_lut.init = 16'hcaca;
    PFUMX i13298 (.BLUT(n13897), .ALUT(n14398), .C0(rom_addr[5]), .Z(n13898));
    PFUMX i11812 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12478));
    LUT4 i12303_3_lut (.A(n6778), .B(n891), .C(rom_addr[5]), .Z(n860_adj_561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12303_3_lut.init = 16'hcaca;
    PFUMX i11813 (.BLUT(n2523_adj_735), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n12479));
    LUT4 i11714_3_lut (.A(n12718), .B(n12724), .C(rom_addr[6]), .Z(n12380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11714_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14679)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14626), .B(n14398), .C(rom_addr[5]), 
         .D(n12025), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), 
         .C(rom_addr[3]), .D(n14598), .Z(n1435_adj_652)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15929), .B(n444_adj_736), 
         .C(rom_addr[5]), .Z(n445_adj_737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 i12619_3_lut (.A(n445_adj_737), .B(n12319), .C(rom_addr[6]), 
         .Z(n12441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12619_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), 
         .C(rom_addr[3]), .D(n14597), .Z(n2009)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i7507_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7507_2_lut_4_lut.init = 16'hca00;
    LUT4 i11834_3_lut (.A(n12496), .B(n12497), .C(rom_addr[7]), .Z(n12500)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11834_3_lut.init = 16'hcaca;
    LUT4 i11818_3_lut (.A(n12480), .B(n12481), .C(rom_addr[7]), .Z(n12484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11818_3_lut.init = 16'hcaca;
    PFUMX i11891 (.BLUT(n12553), .ALUT(n12554), .C0(rom_addr[5]), .Z(n12557));
    PFUMX i13296 (.BLUT(n14398), .ALUT(n13895), .C0(rom_addr[5]), .Z(n13896));
    LUT4 i4402_3_lut_rep_193_4_lut (.A(rom_addr[2]), .B(n14610), .C(rom_addr[4]), 
         .D(n14520), .Z(n14444)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4402_3_lut_rep_193_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n14418), 
         .C(rom_addr[5]), .D(n1403_adj_738), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    PFUMX i11892 (.BLUT(n12555), .ALUT(n12556), .C0(rom_addr[5]), .Z(n12558));
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14678)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    LUT4 address_11__I_0_Mux_0_i443_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14532), .Z(n443_adj_663)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i443_3_lut_4_lut.init = 16'hf404;
    LUT4 n1372_bdd_3_lut_13257_4_lut (.A(rom_addr[0]), .B(n14470), .C(rom_addr[4]), 
         .D(n2573), .Z(n13705)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1372_bdd_3_lut_13257_4_lut.init = 16'hf404;
    LUT4 i12501_3_lut (.A(n12781), .B(n12782), .C(rom_addr[5]), .Z(n12783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12501_3_lut.init = 16'hcaca;
    LUT4 i11928_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), .C(rom_addr[3]), 
         .D(n15915), .Z(n12594)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11928_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n1228_adj_684), .D(rom_addr[4]), .Z(n1914_adj_739)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i12041_3_lut_4_lut (.A(rom_addr[0]), .B(n14418), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n12707)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12041_3_lut_4_lut.init = 16'hf101;
    LUT4 i12507_3_lut (.A(n12606), .B(n12607), .C(rom_addr[5]), .Z(n2110_adj_698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12507_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n12539), .B(n444_adj_736), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i635_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14498), .Z(n635_adj_602)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i635_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14528), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h04f4;
    LUT4 i12517_3_lut (.A(n12754), .B(n14668), .C(rom_addr[5]), .Z(n12756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12517_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14682)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_4_lut.init = 16'hcc0d;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14681)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_4_lut.init = 16'hc2c8;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n14487), 
         .C(rom_addr[5]), .D(n2205_adj_712), .Z(n2237_adj_622)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 n2379_bdd_3_lut_13302_4_lut (.A(rom_addr[0]), .B(n14561), .C(rom_addr[3]), 
         .D(n14498), .Z(n13439)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2379_bdd_3_lut_13302_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_13), .B(n1596_adj_681), 
         .C(rom_addr[5]), .Z(n1597_adj_686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668), .B(n924), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14626), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14525), .Z(n2298_adj_584)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11899 (.BLUT(n12563), .ALUT(n12564), .C0(rom_addr[5]), .Z(n12565));
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n15915), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12524_3_lut (.A(n14706), .B(n14734), .C(rom_addr[5]), .Z(n12743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12524_3_lut.init = 16'hcaca;
    LUT4 i12040_3_lut_4_lut (.A(rom_addr[0]), .B(n14418), .C(rom_addr[5]), 
         .D(n1309_adj_723), .Z(n12706)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12040_3_lut_4_lut.init = 16'h1f10;
    LUT4 n1657_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), .C(rom_addr[3]), 
         .D(n14525), .Z(n14355)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_4_lut.init = 16'h4f40;
    PFUMX i11901 (.BLUT(n12801), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n12567));
    LUT4 i12037_3_lut_4_lut (.A(rom_addr[0]), .B(n14418), .C(rom_addr[5]), 
         .D(n1309), .Z(n12703)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12037_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14561), 
         .C(rom_addr[3]), .D(n14513), .Z(n604_adj_718)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 rom_addr_0__bdd_4_lut_13731 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14684)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13731.init = 16'h0da3;
    PFUMX i11908 (.BLUT(n12572), .ALUT(n12573), .C0(rom_addr[5]), .Z(n12574));
    LUT4 i11970_4_lut (.A(n12565), .B(n380_adj_740), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12636)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11970_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14589), .B(n14426), .C(rom_addr[4]), 
         .D(n14544), .Z(n380_adj_740)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n460_adj_676), .B(n1211), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    PFUMX i11911 (.BLUT(n12575), .ALUT(n12576), .C0(rom_addr[5]), .Z(n12577));
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n12850), 
         .C(rom_addr[7]), .D(n4198), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n15916), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i475_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14528), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_741), .Z(n2523_adj_735)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1228_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n15915), .Z(n1228_adj_684)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i1228_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5870_3_lut_4_lut (.A(n14528), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6757), .Z(n6758)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5870_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12495), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    PFUMX i2947 (.BLUT(n12039), .ALUT(n3804), .C0(rom_addr[6]), .Z(n3805));
    LUT4 i7559_4_lut (.A(rom_addr[0]), .B(n14413), .C(n6316), .D(rom_addr[5]), 
         .Z(n190_adj_672)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7559_4_lut.init = 16'h0a22;
    LUT4 i11748_4_lut (.A(n956_adj_551), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n8491), .Z(n12414)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11748_4_lut.init = 16'hca0a;
    PFUMX i11916 (.BLUT(n12578), .ALUT(n12579), .C0(rom_addr[5]), .Z(n12582));
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14626), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11870_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14689)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i11870_then_4_lut.init = 16'h3ac2;
    LUT4 i12536_3_lut (.A(n14683), .B(n444), .C(rom_addr[5]), .Z(n12366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12536_3_lut.init = 16'hcaca;
    LUT4 i11778_4_lut (.A(rom_addr[0]), .B(n14198), .C(rom_addr[6]), .D(n14712), 
         .Z(n12444)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11778_4_lut.init = 16'hcac0;
    LUT4 i12194_3_lut_4_lut (.A(rom_addr[2]), .B(n14401), .C(rom_addr[6]), 
         .D(n14399), .Z(n12860)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12194_3_lut_4_lut.init = 16'h7f70;
    PFUMX i11917 (.BLUT(n12580), .ALUT(n12581), .C0(rom_addr[5]), .Z(n12583));
    LUT4 i5937_2_lut_rep_363 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14614)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5937_2_lut_rep_363.init = 16'h6666;
    LUT4 n2275_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14358)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2275_bdd_3_lut_4_lut_4_lut.init = 16'h6202;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n812_adj_719), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14534), .Z(n428_adj_627)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n14602), 
         .C(rom_addr[3]), .D(n14528), .Z(n8875)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554_adj_742), 
          .C0(rom_addr[5]), .Z(n2555_adj_626)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12032_3_lut_4_lut (.A(n14589), .B(n14617), .C(rom_addr[4]), 
         .D(n397), .Z(n12698)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12032_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2889_3_lut_4_lut (.A(rom_addr[5]), .B(n14423), .C(rom_addr[6]), 
         .D(n6162), .Z(n3747)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2889_3_lut_4_lut.init = 16'h0efe;
    PFUMX i11921 (.BLUT(n12585), .ALUT(n12586), .C0(rom_addr[5]), .Z(n12587));
    PFUMX i11924 (.BLUT(n12588), .ALUT(n12589), .C0(rom_addr[5]), .Z(n12590));
    LUT4 i11870_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14688)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam i11870_else_4_lut.init = 16'h6802;
    PFUMX i11926 (.BLUT(n1117_adj_717), .ALUT(n12017), .C0(rom_addr[5]), 
          .Z(n12592));
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n15915), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    PFUMX i11933 (.BLUT(n12597), .ALUT(n12598), .C0(rom_addr[5]), .Z(n12599));
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14610), 
         .C(rom_addr[4]), .D(n14470), .Z(n1628_adj_743)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 i12139_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14610), .C(rom_addr[4]), 
         .D(n14510), .Z(n12805)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;
    defparam i12139_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut (.A(rom_addr[0]), .B(n14610), 
         .C(rom_addr[5]), .D(n14690), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n15916), .Z(n1707_adj_714)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(n14597), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i14469 (.BLUT(n15918), .ALUT(n15919), .C0(rom_addr[3]), .Z(n15920));
    L6MUX21 i13279 (.D0(n13874), .D1(n13871), .SD(rom_addr[5]), .Z(n13875));
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14534), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15915), .Z(n109)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12121_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), .C(rom_addr[4]), 
         .D(n1946_adj_744), .Z(n12787)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12121_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2475_adj_610), .B(n1898_adj_543), 
         .C(rom_addr[4]), .Z(n2491_adj_745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut (.A(n15917), .B(rom_addr[2]), 
         .C(n15915), .D(rom_addr[3]), .Z(n2009_adj_653)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11704_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n12370)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11704_3_lut_4_lut.init = 16'hf909;
    LUT4 i11658_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236_adj_581), .Z(n12324)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11658_3_lut_4_lut.init = 16'h6f60;
    LUT4 i12018_4_lut (.A(n14435), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12684)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i12018_4_lut.init = 16'haaca;
    LUT4 i12017_3_lut (.A(n1914_adj_634), .B(n14386), .C(rom_addr[5]), 
         .Z(n12683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12017_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14692)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i12094_3_lut (.A(n12345), .B(n12352), .C(rom_addr[8]), .Z(n12760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12094_3_lut.init = 16'hcaca;
    PFUMX i12912 (.BLUT(n14512), .ALUT(n13312), .C0(n14592), .Z(n13313));
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14614), 
         .C(rom_addr[3]), .D(n14626), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX i13277 (.BLUT(n13873), .ALUT(n13872), .C0(rom_addr[6]), .Z(n13874));
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14691)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h0082;
    LUT4 i11828_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), .C(rom_addr[3]), 
         .D(n14532), .Z(n12494)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11828_3_lut_4_lut.init = 16'hf808;
    PFUMX i11945 (.BLUT(n12609), .ALUT(n12610), .C0(rom_addr[5]), .Z(n2237));
    LUT4 i11687_3_lut_4_lut (.A(rom_addr[1]), .B(n14427), .C(rom_addr[5]), 
         .D(n62_adj_747), .Z(n12353)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11687_3_lut_4_lut.init = 16'hf202;
    LUT4 i5867_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), .C(rom_addr[3]), 
         .D(n8921), .Z(n6755)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5867_3_lut_4_lut.init = 16'h08f8;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n15916), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2687_3_lut_4_lut (.A(rom_addr[2]), .B(n14401), .C(rom_addr[6]), 
         .D(n6165), .Z(n3545)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2687_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_6__bdd_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14695)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;
    defparam rom_addr_6__bdd_3_lut_then_4_lut.init = 16'h4808;
    LUT4 i1_4_lut (.A(n14418), .B(rom_addr[7]), .C(n6553), .D(rom_addr[5]), 
         .Z(n11050)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 rom_addr_6__bdd_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14694)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam rom_addr_6__bdd_3_lut_else_4_lut.init = 16'h2622;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14533), 
         .C(rom_addr[4]), .D(n14487), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n14523), .Z(n1243_adj_636)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_3_lut_4_lut (.A(n14618), .B(n14617), .C(rom_addr[5]), .D(rom_addr[0]), 
         .Z(n10763)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n14598), .Z(n589_adj_677)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n14620), .B(n14574), .C(rom_addr[3]), 
         .D(n14542), .Z(n12017)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0454;
    PFUMX i11954 (.BLUT(n12618), .ALUT(n12619), .C0(rom_addr[5]), .Z(n2300_adj_591));
    LUT4 i11929_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), .C(rom_addr[3]), 
         .D(n14473), .Z(n12595)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11929_3_lut_4_lut.init = 16'hf808;
    PFUMX i13711 (.BLUT(n14666), .ALUT(n14667), .C0(rom_addr[0]), .Z(n14668));
    PFUMX i12973 (.BLUT(n13442), .ALUT(n14397), .C0(rom_addr[6]), .Z(n13443));
    LUT4 i2_3_lut_3_lut_4_lut (.A(rom_addr[5]), .B(n14619), .C(rom_addr[1]), 
         .D(n14620), .Z(n12042)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i11983_3_lut (.A(n13875), .B(n12829), .C(rom_addr[7]), .Z(n12649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11983_3_lut.init = 16'hcaca;
    LUT4 i12588_3_lut (.A(n14721), .B(n14659), .C(rom_addr[5]), .Z(n2110_adj_620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12588_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2396_adj_619), .B(n2491_adj_745), 
         .C(rom_addr[5]), .Z(n2492_adj_617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i11664_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14639)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B+(C+!(D))))) */ ;
    defparam i11664_then_4_lut.init = 16'h230a;
    LUT4 i12192_3_lut (.A(n1069), .B(n1084_adj_748), .C(rom_addr[4]), 
         .Z(n12858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12192_3_lut.init = 16'hcaca;
    LUT4 i12592_3_lut (.A(n14643), .B(n14646), .C(rom_addr[5]), .Z(n2365_adj_616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12592_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14621), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14598), .Z(n1084_adj_748)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 n13586_bdd_3_lut_4_lut (.A(n14631), .B(rom_addr[0]), .C(rom_addr[7]), 
         .D(n13585), .Z(n13587)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n13586_bdd_3_lut_4_lut.init = 16'hf404;
    LUT4 n2332_bdd_3_lut_13641_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n2332), .Z(n14157)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_13641_4_lut.init = 16'h2f20;
    PFUMX i13275 (.BLUT(n3134), .ALUT(n13870), .C0(rom_addr[6]), .Z(n13871));
    LUT4 i12745_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12992)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12745_2_lut.init = 16'h9999;
    LUT4 i7799_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(n14431), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n2684)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7799_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46), .B(n61), .C(rom_addr[4]), 
         .Z(n62_adj_747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    LUT4 i11845_3_lut (.A(n2237_adj_730), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11845_3_lut.init = 16'hcaca;
    LUT4 i11691_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n188), .Z(n12357)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11691_3_lut_4_lut.init = 16'hf202;
    LUT4 i12600_3_lut (.A(n14665), .B(n14754), .C(rom_addr[5]), .Z(n2365_adj_605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12600_3_lut.init = 16'hcaca;
    LUT4 i12445_3_lut (.A(n14647), .B(n635), .C(rom_addr[4]), .Z(n12589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12445_3_lut.init = 16'hcaca;
    LUT4 n12604_bdd_3_lut (.A(n12604), .B(n14640), .C(rom_addr[6]), .Z(n13958)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n12604_bdd_3_lut.init = 16'hacac;
    LUT4 i12603_3_lut (.A(n14740), .B(n14637), .C(rom_addr[5]), .Z(n2110_adj_599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12603_3_lut.init = 16'hcaca;
    LUT4 n13961_bdd_3_lut (.A(n14696), .B(n14703), .C(rom_addr[6]), .Z(n13962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13961_bdd_3_lut.init = 16'hcaca;
    PFUMX i11960 (.BLUT(n12624), .ALUT(n12625), .C0(rom_addr[5]), .Z(n12626));
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n236), .B(n443_adj_663), .C(rom_addr[4]), 
         .Z(n444_adj_736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i12605_3_lut (.A(n14715), .B(n14731), .C(rom_addr[5]), .Z(n2492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12605_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n14621), .B(n14435), .C(rom_addr[4]), 
         .D(n14617), .Z(n1403_adj_738)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_4_lut_adj_18 (.A(rom_addr[3]), .B(n14589), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n12024)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_18.init = 16'h8000;
    LUT4 i1_2_lut_adj_19 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n12025)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i7941_2_lut_rep_291 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14542)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7941_2_lut_rep_291.init = 16'heeee;
    LUT4 rom_addr_0__bdd_4_lut_13768 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13768.init = 16'hb124;
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14699)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_then_4_lut.init = 16'hd210;
    LUT4 i12614_3_lut (.A(n13516), .B(n2109), .C(rom_addr[5]), .Z(n12472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12614_3_lut.init = 16'hcaca;
    LUT4 i11774_3_lut (.A(n12313), .B(n14360), .C(rom_addr[6]), .Z(n12440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11774_3_lut.init = 16'hcaca;
    LUT4 i11982_3_lut (.A(n12795), .B(n6736), .C(rom_addr[7]), .Z(n12648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11982_3_lut.init = 16'hcaca;
    LUT4 i12218_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n14751), .Z(n12884)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12218_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), 
         .C(rom_addr[4]), .D(n14533), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14444), 
         .C(rom_addr[5]), .D(n2490), .Z(n2396_adj_674)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11952_3_lut_4_lut (.A(rom_addr[1]), .B(n14612), .C(rom_addr[4]), 
         .D(n2267), .Z(n12618)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11952_3_lut_4_lut.init = 16'hf101;
    LUT4 i11977_3_lut (.A(n12365), .B(n12368), .C(rom_addr[7]), .Z(n12643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11977_3_lut.init = 16'hcaca;
    LUT4 i11976_3_lut (.A(n12355), .B(n12362), .C(rom_addr[7]), .Z(n12642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11976_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i12673_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12673_3_lut.init = 16'hcaca;
    LUT4 i11985_3_lut (.A(n12644), .B(n12645), .C(rom_addr[8]), .Z(n12651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11985_3_lut.init = 16'hcaca;
    PFUMX i11966 (.BLUT(n12630), .ALUT(n12631), .C0(rom_addr[5]), .Z(n12632));
    LUT4 i11842_3_lut (.A(n12505), .B(n12506), .C(rom_addr[7]), .Z(n12508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11842_3_lut.init = 16'hcaca;
    LUT4 i11841_3_lut (.A(n12503), .B(n12504), .C(rom_addr[7]), .Z(n12507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11841_3_lut.init = 16'hcaca;
    LUT4 i7541_4_lut (.A(rom_addr[0]), .B(n15920), .C(n14387), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7541_4_lut.init = 16'h0a22;
    LUT4 n668_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n668), .Z(n14026)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n668_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut_4_lut (.A(n14571), .B(n2141_c), 
         .C(rom_addr[5]), .D(n14531), .Z(n2173_adj_621)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n5405_bdd_3_lut_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14710)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A !(B (D)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n5405_bdd_3_lut_3_lut_else_4_lut.init = 16'h6da3;
    LUT4 i7819_2_lut_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n1212)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7819_2_lut_3_lut_3_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i7604_2_lut_rep_216_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14467)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7604_2_lut_rep_216_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i11807_3_lut_4_lut_4_lut (.A(n14571), .B(n2141_adj_623), .C(rom_addr[5]), 
         .D(n14531), .Z(n12473)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11807_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11825_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3805), 
         .Z(n12491)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11825_4_lut.init = 16'hca0a;
    PFUMX i11969 (.BLUT(n12633), .ALUT(n12634), .C0(rom_addr[5]), .Z(n12635));
    LUT4 i11824_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3747), 
         .Z(n12490)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11824_4_lut.init = 16'hc0ca;
    LUT4 i11822_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n14148), 
         .Z(n12488)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11822_4_lut.init = 16'hcac0;
    PFUMX i11999 (.BLUT(n12663), .ALUT(n12664), .C0(rom_addr[5]), .Z(n2237_adj_603));
    LUT4 address_11__I_0_Mux_0_i1978_3_lut_rep_135_4_lut (.A(rom_addr[0]), 
         .B(n14468), .C(rom_addr[4]), .D(n14426), .Z(n14386)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1978_3_lut_rep_135_4_lut.init = 16'hf202;
    LUT4 i12113_4_lut (.A(n14416), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12779)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12113_4_lut.init = 16'hca0a;
    PFUMX i13709 (.BLUT(n14663), .ALUT(n14664), .C0(rom_addr[0]), .Z(n14665));
    LUT4 i11821_4_lut (.A(n2174), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3545), 
         .Z(n12487)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11821_4_lut.init = 16'hca0a;
    LUT4 i12185_4_lut (.A(n14450), .B(rom_addr[0]), .C(rom_addr[4]), .D(n5179), 
         .Z(n12851)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i12185_4_lut.init = 16'h0aca;
    LUT4 i12179_3_lut (.A(n1101), .B(n731_adj_750), .C(rom_addr[4]), .Z(n12845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12179_3_lut.init = 16'hcaca;
    LUT4 i7495_2_lut_rep_186_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14437)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7495_2_lut_rep_186_3_lut_4_lut.init = 16'h0090;
    LUT4 i12690_3_lut (.A(n13572), .B(n12712), .C(rom_addr[8]), .Z(n12469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12690_3_lut.init = 16'hcaca;
    PFUMX i12971 (.BLUT(n13439), .ALUT(n14450), .C0(rom_addr[4]), .Z(n13440));
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n812_adj_719), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i7438_4_lut (.A(n14518), .B(rom_addr[4]), .C(n14542), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7438_4_lut.init = 16'hc088;
    LUT4 i11796_3_lut (.A(n12454), .B(n12455), .C(rom_addr[8]), .Z(n12462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11796_3_lut.init = 16'hcaca;
    LUT4 i11795_3_lut (.A(n12452), .B(n12453), .C(rom_addr[7]), .Z(n12461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11795_3_lut.init = 16'hcaca;
    PFUMX i12002 (.BLUT(n12666), .ALUT(n12667), .C0(rom_addr[5]), .Z(n2300_adj_604));
    LUT4 i11793_3_lut (.A(n13707), .B(n12449), .C(rom_addr[7]), .Z(n12459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11793_3_lut.init = 16'hcaca;
    LUT4 i11792_3_lut (.A(n12446), .B(n14106), .C(rom_addr[7]), .Z(n12458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11792_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12509), .B(n13443), .C(rom_addr[9]), 
         .D(n14587), .Z(n3070_adj_16)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 i11799_3_lut (.A(n12460), .B(n12461), .C(rom_addr[8]), .Z(n12465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11799_3_lut.init = 16'hcaca;
    LUT4 i11820_3_lut (.A(n12484), .B(n12485), .C(rom_addr[8]), .Z(n12486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11820_3_lut.init = 16'hcaca;
    PFUMX i12005 (.BLUT(n12669), .ALUT(n12670), .C0(rom_addr[5]), .Z(n12671));
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12516), .B(n2685), .C(rom_addr[9]), 
         .D(n14587), .Z(n3070_adj_17)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 i7506_4_lut (.A(rom_addr[0]), .B(n3682), .C(n12862), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7506_4_lut.init = 16'h0a22;
    LUT4 i12699_3_lut (.A(n12423), .B(n12424), .C(rom_addr[8]), .Z(n12431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12699_3_lut.init = 16'hcaca;
    LUT4 i7798_4_lut (.A(n12632), .B(n14587), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_562)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7798_4_lut.init = 16'hc088;
    LUT4 i11836_3_lut (.A(n12500), .B(n12501), .C(rom_addr[8]), .Z(n12502)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11836_3_lut.init = 16'hcaca;
    LUT4 i11733_3_lut (.A(n12390), .B(n12391), .C(rom_addr[7]), .Z(n12399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11733_3_lut.init = 16'hcaca;
    LUT4 i11732_3_lut (.A(n12388), .B(n12389), .C(rom_addr[7]), .Z(n12398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11732_3_lut.init = 16'hcaca;
    LUT4 i11731_3_lut (.A(n13668), .B(n12387), .C(rom_addr[7]), .Z(n12397)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11731_3_lut.init = 16'hcaca;
    LUT4 i11730_3_lut (.A(n12384), .B(n12385), .C(rom_addr[7]), .Z(n12396)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11730_3_lut.init = 16'hcaca;
    LUT4 i11729_3_lut (.A(n12382), .B(n12383), .C(rom_addr[7]), .Z(n12395)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11729_3_lut.init = 16'hcaca;
    LUT4 i11728_3_lut (.A(n12380), .B(n12381), .C(rom_addr[7]), .Z(n12394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11728_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2204), 
         .C(rom_addr[4]), .D(n4686), .Z(n1786_adj_556)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i11727_3_lut (.A(n12378), .B(n12379), .C(rom_addr[7]), .Z(n12393)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11727_3_lut.init = 16'hcaca;
    LUT4 i11726_3_lut (.A(n12376), .B(n12377), .C(rom_addr[7]), .Z(n12392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11726_3_lut.init = 16'hcaca;
    LUT4 i11857_3_lut (.A(n12521), .B(n12522), .C(rom_addr[8]), .Z(n12523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11857_3_lut.init = 16'hcaca;
    LUT4 i13358_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14702)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i13358_then_4_lut.init = 16'h272b;
    PFUMX i12011 (.BLUT(n12675), .ALUT(n12676), .C0(rom_addr[5]), .Z(n2492_adj_609));
    LUT4 i7353_2_lut_rep_268_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14519)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7353_2_lut_rep_268_3_lut.init = 16'h9090;
    PFUMX i13236 (.BLUT(n13827), .ALUT(n13826), .C0(rom_addr[6]), .Z(n13828));
    LUT4 i11462_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1565_adj_546)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11462_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i12101_3_lut (.A(n1789), .B(n12687), .C(rom_addr[8]), .Z(n12767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12101_3_lut.init = 16'hcaca;
    PFUMX i12014 (.BLUT(n12678), .ALUT(n12679), .C0(rom_addr[5]), .Z(n12680));
    PFUMX i13234 (.BLUT(n1211), .ALUT(n13824), .C0(rom_addr[4]), .Z(n13825));
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_576)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut.init = 16'h6470;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n12025), 
         .D(rom_addr[2]), .Z(n12026)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    PFUMX i13707 (.BLUT(n14660), .ALUT(n14661), .C0(rom_addr[2]), .Z(n14662));
    LUT4 i12711_3_lut (.A(n12642), .B(n12643), .C(rom_addr[8]), .Z(n12650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12711_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2475_adj_610), .B(n2298_adj_584), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i7586_4_lut (.A(rom_addr[0]), .B(n5224), .C(n14507), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7586_4_lut.init = 16'h0a22;
    LUT4 n507_bdd_3_lut_13661_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14618), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13584)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n507_bdd_3_lut_13661_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_222_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14473)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_222_3_lut.init = 16'h7c7c;
    LUT4 i11981_3_lut (.A(n12705), .B(n12750), .C(rom_addr[7]), .Z(n12647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11981_3_lut.init = 16'hcaca;
    LUT4 i11935_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), .C(rom_addr[4]), 
         .D(n939_adj_673), .Z(n12601)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11935_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11980_3_lut (.A(n12593), .B(n12696), .C(rom_addr[7]), .Z(n12646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11980_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14517), .B(n14596), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_754)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i7590_4_lut (.A(rom_addr[0]), .B(n14468), .C(n5179), .D(rom_addr[4]), 
         .Z(n2523_adj_755)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7590_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n12104)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B ((D)+!C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h8073;
    LUT4 address_11__I_0_Mux_0_i205_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14528), .D(rom_addr[3]), .Z(n397_adj_699)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i205_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i12024 (.BLUT(n12688), .ALUT(n12689), .C0(rom_addr[5]), .Z(n2555_c));
    LUT4 i11864_3_lut (.A(n12528), .B(n12529), .C(rom_addr[8]), .Z(n12530)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11864_3_lut.init = 16'hcaca;
    LUT4 i13358_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14701)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C+!(D)))) */ ;
    defparam i13358_else_4_lut.init = 16'h0f28;
    LUT4 i12595_3_lut (.A(n2523_adj_755), .B(n2554_adj_754), .C(rom_addr[5]), 
         .Z(n2555_adj_614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12595_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14468), 
         .C(rom_addr[4]), .D(n2490), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2461_3_lut_4_lut_4_lut (.A(n14558), .B(n14535), .C(rom_addr[5]), 
         .D(n14568), .Z(n3319)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2461_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i7465_2_lut_rep_160_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14411)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7465_2_lut_rep_160_3_lut_4_lut.init = 16'hf080;
    LUT4 i12717_3_lut (.A(n12510), .B(n12511), .C(rom_addr[7]), .Z(n12514)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12717_3_lut.init = 16'hcaca;
    LUT4 i11664_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14638)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i11664_else_4_lut.init = 16'h8688;
    LUT4 i4791_2_lut_rep_249_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14500)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4791_2_lut_rep_249_3_lut.init = 16'hf9f9;
    LUT4 i7451_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_639)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7451_4_lut_4_lut.init = 16'hc700;
    LUT4 i12719_3_lut (.A(n12458), .B(n12459), .C(rom_addr[8]), .Z(n12464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12719_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475_adj_756), .C(rom_addr[4]), 
         .Z(n476_adj_757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12509_3_lut (.A(n476_adj_757), .B(n14725), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12509_3_lut.init = 16'hcaca;
    LUT4 i7782_2_lut_rep_334 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14585)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7782_2_lut_rep_334.init = 16'h2222;
    LUT4 i11706_3_lut (.A(n620_adj_680), .B(n635_adj_602), .C(rom_addr[4]), 
         .Z(n12372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11706_3_lut.init = 16'hcaca;
    LUT4 n2636_bdd_3_lut_13250_4_lut_4_lut (.A(n14558), .B(n14524), .C(rom_addr[5]), 
         .D(n14568), .Z(n13822)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2636_bdd_3_lut_13250_4_lut_4_lut.init = 16'h0cac;
    LUT4 i11705_3_lut (.A(n491), .B(n604_adj_583), .C(rom_addr[4]), .Z(n12371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11705_3_lut.init = 16'hcaca;
    LUT4 i7964_2_lut_rep_335 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14586)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7964_2_lut_rep_335.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n908_adj_721)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C+(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h5ef0;
    LUT4 i11768_3_lut (.A(n12429), .B(n12430), .C(rom_addr[8]), .Z(n12434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11768_3_lut.init = 16'hcaca;
    PFUMX i12033 (.BLUT(n12697), .ALUT(n12698), .C0(rom_addr[5]), .Z(n12699));
    LUT4 i11767_3_lut (.A(n12427), .B(n12428), .C(rom_addr[8]), .Z(n12433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11767_3_lut.init = 16'hcaca;
    LUT4 i11703_3_lut (.A(n526_adj_758), .B(n5224), .C(rom_addr[4]), .Z(n12369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11703_3_lut.init = 16'hcaca;
    LUT4 i12830_2_lut_rep_336 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14587)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12830_2_lut_rep_336.init = 16'h1111;
    LUT4 i7852_2_lut_rep_134_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_759), 
         .Z(n14385)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7852_2_lut_rep_134_3_lut.init = 16'h1010;
    LUT4 i7686_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n14128), 
         .Z(n3069_adj_554)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7686_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[6]), 
         .D(rom_addr[4]), .Z(n4_adj_18)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h9990;
    LUT4 i7806_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_c), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7806_2_lut_3_lut.init = 16'h1010;
    PFUMX i12036 (.BLUT(n12700), .ALUT(n12701), .C0(rom_addr[5]), .Z(n12702));
    LUT4 i12724_3_lut (.A(n1278), .B(n12338), .C(rom_addr[8]), .Z(n12759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12724_3_lut.init = 16'hcaca;
    LUT4 i12092_3_lut (.A(n12328), .B(n1021), .C(rom_addr[8]), .Z(n12758)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12092_3_lut.init = 16'hcaca;
    LUT4 i12476_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_642), 
         .D(n1676_adj_607), .Z(n1724_adj_728)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12476_3_lut_4_lut.init = 16'hf1e0;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2025_adj_569)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut.init = 16'h08f3;
    LUT4 i7710_2_lut_rep_326 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14577)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7710_2_lut_rep_326.init = 16'h2222;
    PFUMX i12042 (.BLUT(n1436), .ALUT(n1467_adj_649), .C0(rom_addr[5]), 
          .Z(n12708));
    LUT4 n2857_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13872)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2857_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i1_2_lut_rep_188_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14439)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_188_3_lut_4_lut.init = 16'h0800;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    LUT4 n1212_bdd_4_lut_13372 (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14621), 
         .D(rom_addr[4]), .Z(n13569)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n1212_bdd_4_lut_13372.init = 16'h2000;
    PFUMX i14475 (.BLUT(n15927), .ALUT(n15928), .C0(rom_addr[0]), .Z(n15929));
    LUT4 i12104_3_lut (.A(n12768), .B(n12769), .C(rom_addr[10]), .Z(n12770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12104_3_lut.init = 16'hcaca;
    LUT4 i7462_2_lut_rep_277_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14528)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7462_2_lut_rep_277_3_lut.init = 16'hf8f8;
    LUT4 i5906_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14720)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5906_3_lut_4_lut_then_4_lut.init = 16'h4691;
    L6MUX21 i13215 (.D0(n13795), .D1(n13793), .SD(rom_addr[5]), .Z(n13796));
    LUT4 address_11__I_0_Mux_1_i2426_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14528), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2426_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i12749_2_lut_rep_338 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14589)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12749_2_lut_rep_338.init = 16'h9999;
    LUT4 i2501_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14423), .C(rom_addr[5]), 
         .D(n14486), .Z(n3359)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2501_3_lut_4_lut_4_lut.init = 16'hcfc5;
    PFUMX i12043 (.BLUT(n1499_adj_695), .ALUT(n1530_adj_640), .C0(rom_addr[5]), 
          .Z(n12709));
    LUT4 i4712_3_lut_rep_210_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14461)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4712_3_lut_rep_210_4_lut_3_lut.init = 16'h6262;
    LUT4 i7709_2_lut_rep_276_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14527)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7709_2_lut_rep_276_3_lut.init = 16'h0808;
    LUT4 n1481_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1481_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i11693_4_lut (.A(n236), .B(n2970), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n12359)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11693_4_lut.init = 16'hca0a;
    LUT4 i12352_3_lut (.A(n1038_adj_762), .B(n1053), .C(rom_addr[4]), 
         .Z(n12857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12352_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_3_lut_13354_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13314)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_13354_4_lut.init = 16'h6000;
    LUT4 i11692_3_lut (.A(n205), .B(n220_adj_703), .C(rom_addr[4]), .Z(n12358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11692_3_lut.init = 16'hcaca;
    PFUMX i13213 (.BLUT(n13794), .ALUT(n14561), .C0(rom_addr[3]), .Z(n13795));
    LUT4 i12212_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14642)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam i12212_3_lut_then_4_lut.init = 16'h5c42;
    L6MUX21 i12049 (.D0(n12713), .D1(n12714), .SD(rom_addr[5]), .Z(n12715));
    LUT4 i4321_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5179)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4321_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i12052 (.BLUT(n12716), .ALUT(n12717), .C0(rom_addr[5]), .Z(n12718));
    LUT4 i11990_3_lut (.A(n12654), .B(n12655), .C(rom_addr[10]), .Z(n12656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11990_3_lut.init = 16'hcaca;
    LUT4 i5906_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14719)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5906_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_1_i187_3_lut_rep_298 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14549)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i187_3_lut_rep_298.init = 16'h3838;
    LUT4 i1_2_lut_rep_179_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14430)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_179_3_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_233_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n14484)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_233_3_lut.init = 16'h9090;
    PFUMX i12055 (.BLUT(n12719), .ALUT(n12720), .C0(rom_addr[5]), .Z(n12721));
    LUT4 i7425_2_lut_rep_274_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14525)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7425_2_lut_rep_274_3_lut.init = 16'h0909;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 i12542_3_lut (.A(n14650), .B(n14746), .C(rom_addr[5]), .Z(n12354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12542_3_lut.init = 16'hcaca;
    PFUMX i13705 (.BLUT(n14657), .ALUT(n14658), .C0(rom_addr[0]), .Z(n14659));
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_adj_690)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h5009;
    LUT4 i12212_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14641)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i12212_3_lut_else_4_lut.init = 16'h5102;
    LUT4 i4678_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5541)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4678_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i1_2_lut_rep_219_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14470)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_219_3_lut.init = 16'h0808;
    LUT4 i4337_2_lut_rep_260_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14511)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4337_2_lut_rep_260_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_678)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 i12642_3_lut (.A(n2010), .B(n14653), .C(rom_addr[5]), .Z(n12349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12642_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i460_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n460_adj_676)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i460_3_lut_4_lut_3_lut.init = 16'he7e7;
    PFUMX i13211 (.BLUT(n13792), .ALUT(n13791), .C0(rom_addr[4]), .Z(n13793));
    LUT4 i1_2_lut_rep_248_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14499)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_248_3_lut_4_lut.init = 16'h2022;
    LUT4 i7962_2_lut_rep_340 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14591)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7962_2_lut_rep_340.init = 16'hdddd;
    PFUMX i13703 (.BLUT(n14654), .ALUT(n14655), .C0(n14558), .Z(n14656));
    LUT4 i7948_2_lut_rep_220_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n14471)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7948_2_lut_rep_220_3_lut.init = 16'hd0d0;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867_adj_687)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 i7963_2_lut_rep_255_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n14506)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7963_2_lut_rep_255_3_lut.init = 16'h0d0d;
    L6MUX21 i12058 (.D0(n12722), .D1(n12723), .SD(rom_addr[5]), .Z(n12724));
    LUT4 i7457_2_lut_rep_191_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14442)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7457_2_lut_rep_191_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i12061 (.BLUT(n12725), .ALUT(n12726), .C0(rom_addr[5]), .Z(n12727));
    LUT4 i7564_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7564_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i11961_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14714)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11961_3_lut_4_lut_then_4_lut.init = 16'h744c;
    LUT4 i5901_2_lut_rep_359 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14610)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5901_2_lut_rep_359.init = 16'h8888;
    LUT4 i12545_3_lut (.A(n1883_c), .B(n1914_adj_739), .C(rom_addr[5]), 
         .Z(n12347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12545_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117_adj_697), .ALUT(n1148), 
          .C0(rom_addr[5]), .Z(n1149_adj_720)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1228_adj_684), 
         .C(rom_addr[4]), .Z(n1786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 i12167_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n14601), .Z(n12833)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12167_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i13701 (.BLUT(n14651), .ALUT(n14652), .C0(rom_addr[0]), .Z(n14653));
    PFUMX i12064 (.BLUT(n12728), .ALUT(n12729), .C0(rom_addr[5]), .Z(n12730));
    LUT4 i4366_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5224)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4366_3_lut_4_lut_3_lut.init = 16'h9e9e;
    PFUMX i12066 (.BLUT(n1628), .ALUT(n3912), .C0(rom_addr[5]), .Z(n12732));
    LUT4 i12770_2_lut_rep_324 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14575)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12770_2_lut_rep_324.init = 16'hbbbb;
    LUT4 i12638_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12638_3_lut_4_lut.init = 16'hf4b0;
    LUT4 address_11__I_0_Mux_1_i634_3_lut_rep_247_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14498)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i634_3_lut_rep_247_3_lut.init = 16'hc2c2;
    LUT4 rom_addr_1__bdd_4_lut_13765 (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14722)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam rom_addr_1__bdd_4_lut_13765.init = 16'hd004;
    PFUMX i13687 (.BLUT(n14629), .ALUT(n14630), .C0(rom_addr[2]), .Z(n14631));
    LUT4 i11961_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14713)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11961_3_lut_4_lut_else_4_lut.init = 16'h2222;
    PFUMX i12067 (.BLUT(n1692_adj_572), .ALUT(n1723_adj_715), .C0(rom_addr[5]), 
          .Z(n12733));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1466_adj_662), .B(n1691_adj_669), 
         .C(rom_addr[4]), .Z(n1692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    L6MUX21 i13676 (.D0(n14365), .D1(n14363), .SD(rom_addr[5]), .Z(n12319));
    LUT4 i7652_2_lut_rep_221_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14472)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7652_2_lut_rep_221_3_lut_4_lut.init = 16'h0880;
    PFUMX i12068 (.BLUT(n1755_adj_615), .ALUT(n1786_adj_635), .C0(rom_addr[5]), 
          .Z(n12734));
    PFUMX i13674 (.BLUT(n270), .ALUT(n14364), .C0(rom_addr[4]), .Z(n14365));
    LUT4 n1434_bdd_3_lut_3_lut_4_lut (.A(n14586), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14528), .Z(n14125)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1434_bdd_3_lut_3_lut_4_lut.init = 16'h808f;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_c)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i7826_2_lut_3_lut_4_lut_4_lut (.A(n14558), .B(rom_addr[5]), .C(rom_addr[0]), 
         .D(n14497), .Z(n2237_adj_709)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7826_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n12104), .Z(n1212_adj_664)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i5895_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14724)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5895_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212_adj_560)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    PFUMX i13672 (.BLUT(n14362), .ALUT(n557_adj_586), .C0(rom_addr[4]), 
          .Z(n14363));
    LUT4 i12354_3_lut (.A(n844), .B(n859), .C(rom_addr[4]), .Z(n12854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12354_3_lut.init = 16'hcaca;
    L6MUX21 i13669 (.D0(n14359), .D1(n14356), .SD(rom_addr[5]), .Z(n14360));
    LUT4 rom_addr_6__bdd_3_lut_13360_4_lut_4_lut (.A(n14542), .B(n14440), 
         .C(rom_addr[4]), .D(n14573), .Z(n13870)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_13360_4_lut_4_lut.init = 16'hc0c5;
    PFUMX i13667 (.BLUT(n14358), .ALUT(n14357), .C0(rom_addr[4]), .Z(n14359));
    LUT4 n220_bdd_3_lut_13415 (.A(n491), .B(n236_adj_581), .C(rom_addr[4]), 
         .Z(n14023)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_13415.init = 16'hacac;
    LUT4 i5916_2_lut_rep_306 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5916_2_lut_rep_306.init = 16'h6666;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n4_c)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1962), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14510), .Z(n1659_adj_764)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    LUT4 i12773_2_lut_rep_342 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14593)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12773_2_lut_rep_342.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n14430), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_758)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h5bf0;
    LUT4 n397_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[1]), 
         .D(n14536), .Z(n13636)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n397_bdd_4_lut_4_lut.init = 16'h4000;
    LUT4 i12548_3_lut (.A(n13316), .B(n1659_adj_764), .C(rom_addr[5]), 
         .Z(n12340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12548_3_lut.init = 16'hcaca;
    LUT4 i12590_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13313), 
         .D(n2538), .Z(n2555_adj_618)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12590_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i12850_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n12228)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12850_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i7787_2_lut_rep_343 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14594)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7787_2_lut_rep_343.init = 16'heeee;
    LUT4 i12075_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14599), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14705)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12075_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n971)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h0ef0;
    PFUMX i12082 (.BLUT(n12744), .ALUT(n12745), .C0(rom_addr[5]), .Z(n12748));
    LUT4 i7754_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14610), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14393)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7754_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    L6MUX21 i13142 (.D0(n13706), .D1(n13704), .SD(rom_addr[6]), .Z(n13707));
    LUT4 i12812_2_lut_rep_307 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14558)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12812_2_lut_rep_307.init = 16'h1111;
    LUT4 n435_bdd_2_lut_13587_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n13792)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n435_bdd_2_lut_13587_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_654), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    PFUMX i13140 (.BLUT(n13705), .ALUT(n14398), .C0(rom_addr[5]), .Z(n13706));
    PFUMX i12083 (.BLUT(n12746), .ALUT(n12747), .C0(rom_addr[5]), .Z(n12749));
    PFUMX i13665 (.BLUT(n14355), .ALUT(n14354), .C0(rom_addr[4]), .Z(n14356));
    LUT4 i1_2_lut_rep_288_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14539)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_288_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_217_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14468)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_217_3_lut.init = 16'hfefe;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228_adj_582), 
         .C(rom_addr[4]), .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557_adj_580)) /* synthesis lut_function=(A (C (D))+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hb005;
    LUT4 i12075_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14599), .C(rom_addr[3]), 
         .Z(n14704)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12075_3_lut_4_lut_else_4_lut.init = 16'h0404;
    PFUMX i12087 (.BLUT(n12751), .ALUT(n12752), .C0(rom_addr[5]), .Z(n12753));
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2444_adj_658)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'he00f;
    LUT4 i1_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n6316)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_4_lut.init = 16'heffe;
    PFUMX i13136 (.BLUT(n13701), .ALUT(n14598), .C0(rom_addr[3]), .Z(n13702));
    LUT4 n220_bdd_3_lut (.A(n220_adj_722), .B(n397), .C(rom_addr[4]), 
         .Z(n14024)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_650)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6792), 
         .C(rom_addr[5]), .D(n12596), .Z(n1660_adj_726)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i7658_2_lut_rep_165_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14416)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7658_2_lut_rep_165_3_lut_4_lut.init = 16'h0010;
    LUT4 i4608_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5468)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4608_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n731_adj_750)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hec10;
    LUT4 i7688_2_lut_rep_144_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14568), .D(rom_addr[0]), .Z(n14395)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7688_2_lut_rep_144_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_148_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14568), .D(rom_addr[5]), .Z(n14399)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_148_3_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_251_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .Z(n14502)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_251_2_lut_3_lut.init = 16'h0808;
    LUT4 i5845_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5845_4_lut_4_lut.init = 16'h8505;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i7656_2_lut_rep_195_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14446)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7656_2_lut_rep_195_3_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i4127_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4985)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4127_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i12798_2_lut_rep_308 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14559)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12798_2_lut_rep_308.init = 16'h7777;
    PFUMX i13138 (.BLUT(n13703), .ALUT(n1403), .C0(n14593), .Z(n13704));
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i5865_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6753)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5865_4_lut_4_lut_4_lut.init = 16'he303;
    LUT4 i7436_2_lut_rep_202_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14453)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7436_2_lut_rep_202_3_lut.init = 16'h0e0e;
    LUT4 i11580_2_lut_rep_328 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14579)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11580_2_lut_rep_328.init = 16'h8888;
    LUT4 i7440_2_lut_rep_262_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14513)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7440_2_lut_rep_262_3_lut.init = 16'he0e0;
    LUT4 i7772_2_lut_rep_310 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14561)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7772_2_lut_rep_310.init = 16'h2222;
    LUT4 n2379_bdd_2_lut_13308_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n13900)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2379_bdd_2_lut_13308_3_lut_4_lut.init = 16'h0d0f;
    LUT4 i1_2_lut_rep_270_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14521)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_270_3_lut.init = 16'h0808;
    LUT4 i11931_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n14521), .Z(n12597)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11931_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 rom_addr_1__bdd_4_lut_13748 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14647)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;
    defparam rom_addr_1__bdd_4_lut_13748.init = 16'h6414;
    LUT4 i7790_2_lut_rep_273_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14524)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7790_2_lut_rep_273_3_lut.init = 16'h2020;
    LUT4 address_11__I_0_Mux_0_i277_3_lut_rep_283_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14534)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i277_3_lut_rep_283_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1691)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'he003;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n15916), .D(rom_addr[3]), .Z(n2040_adj_585)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i12171_3_lut (.A(n475_adj_756), .B(n397), .C(rom_addr[4]), .Z(n12837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12171_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1244_3_lut (.A(n1228_adj_582), .B(n1243_adj_665), 
         .C(rom_addr[4]), .Z(n1244_adj_766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1244_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14598), .D(rom_addr[3]), .Z(n2522_adj_741)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i12105 (.BLUT(n1820_adj_638), .ALUT(n1851_adj_647), .C0(rom_addr[5]), 
          .Z(n12771));
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_345 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14596)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_345.init = 16'he8e8;
    LUT4 i11617_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n12283)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11617_1_lut_2_lut.init = 16'h7777;
    LUT4 address_11__I_0_Mux_1_i836_3_lut_3_lut_rep_346 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14597)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i836_3_lut_3_lut_rep_346.init = 16'h1c1c;
    PFUMX i12106 (.BLUT(n1883), .ALUT(n1914_adj_637), .C0(rom_addr[5]), 
          .Z(n12772));
    LUT4 i12216_3_lut (.A(n46_adj_19), .B(n61_adj_577), .C(rom_addr[4]), 
         .Z(n12882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12216_3_lut.init = 16'hcaca;
    LUT4 i11890_4_lut_4_lut (.A(rom_addr[0]), .B(n14505), .C(rom_addr[4]), 
         .D(n14421), .Z(n12556)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11890_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i2587_3_lut_rep_347 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14598)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2587_3_lut_rep_347.init = 16'h1818;
    LUT4 address_11__I_0_Mux_1_i667_3_lut_rep_348 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14599)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i667_3_lut_rep_348.init = 16'h3e3e;
    LUT4 i2_3_lut_4_lut_adj_20 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n10777)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_adj_20.init = 16'h2002;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14611), 
         .C(rom_addr[3]), .D(n14614), .Z(n1101_adj_670)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    PFUMX i12107 (.BLUT(n1947_adj_713), .ALUT(n1978_adj_579), .C0(rom_addr[5]), 
          .Z(n12773));
    LUT4 i4944_3_lut_rep_269_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14520)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4944_3_lut_rep_269_4_lut_3_lut.init = 16'hdede;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14717)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_656)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n12992), .Z(n1883_adj_666)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812_adj_719)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14549), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i12108 (.BLUT(n2010_adj_655), .ALUT(n6755), .C0(rom_addr[5]), 
          .Z(n12774));
    LUT4 i4835_2_lut_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n5702)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4835_2_lut_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    L6MUX21 i13108 (.D0(n13667), .D1(n13664), .SD(rom_addr[6]), .Z(n13668));
    LUT4 i11866_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12532)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11866_3_lut_4_lut_4_lut.init = 16'h1cc0;
    PFUMX i12114 (.BLUT(n12778), .ALUT(n12779), .C0(rom_addr[5]), .Z(n12780));
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_724)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_654)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_4_lut_4_lut.init = 16'h0381;
    PFUMX i13106 (.BLUT(n13666), .ALUT(n13665), .C0(n14576), .Z(n13667));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14708)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_then_4_lut.init = 16'h0040;
    LUT4 i7369_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n46)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7369_4_lut_4_lut.init = 16'h3d00;
    LUT4 i5885_3_lut_3_lut_3_lut_rep_350 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n14601)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5885_3_lut_3_lut_3_lut_rep_350.init = 16'hd3d3;
    LUT4 i5886_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n6774)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5886_3_lut_4_lut_4_lut.init = 16'hd388;
    LUT4 i5878_3_lut_rep_360 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5878_3_lut_rep_360.init = 16'hcaca;
    PFUMX i12120 (.BLUT(n12784), .ALUT(n12785), .C0(rom_addr[5]), .Z(n12786));
    LUT4 i7720_2_lut_rep_351 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14602)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7720_2_lut_rep_351.init = 16'hbbbb;
    LUT4 i12881_2_lut_rep_177_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14428)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12881_2_lut_rep_177_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i2_2_lut_rep_201_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14452)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_201_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i12213_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14645)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i12213_4_lut_then_4_lut.init = 16'ha9c8;
    LUT4 i12012_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14542), .C(rom_addr[4]), 
         .D(n5541), .Z(n12678)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;
    defparam i12012_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14716)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14513), .D(rom_addr[3]), .Z(n2426_adj_704)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_3_i285_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), 
         .C(n14498), .D(rom_addr[3]), .Z(n285_adj_592)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_3_i285_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i12123 (.BLUT(n12787), .ALUT(n12788), .C0(rom_addr[5]), .Z(n12789));
    LUT4 i12060_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n443_adj_663), .C(rom_addr[4]), 
         .D(n14521), .Z(n12726)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12060_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4583_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4583_3_lut_3_lut.init = 16'hcbcb;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14707)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 i4546_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5404)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4546_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i2496_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n3354)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2496_3_lut_3_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2444)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut.init = 16'h0340;
    PFUMX i12126 (.BLUT(n12790), .ALUT(n12791), .C0(rom_addr[5]), .Z(n2492_adj_625));
    LUT4 i12555_3_lut (.A(n1244_adj_766), .B(n1275), .C(rom_addr[5]), 
         .Z(n12849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12555_3_lut.init = 16'hcaca;
    LUT4 i12213_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14644)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12213_4_lut_else_4_lut.init = 16'h8888;
    L6MUX21 i13559 (.D0(n14197), .D1(n14194), .SD(rom_addr[5]), .Z(n14198));
    LUT4 i7673_2_lut_rep_265_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14516)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7673_2_lut_rep_265_3_lut.init = 16'h4040;
    PFUMX i13557 (.BLUT(n14196), .ALUT(n14195), .C0(rom_addr[4]), .Z(n14197));
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n15916), .Z(n1435_adj_641)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    LUT4 i3828_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4686)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3828_3_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 i12838_2_lut_rep_314 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14565)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12838_2_lut_rep_314.init = 16'hdddd;
    LUT4 i12793_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n12242)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12793_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i13104 (.BLUT(n14398), .ALUT(n13663), .C0(rom_addr[5]), .Z(n13664));
    LUT4 i1_2_lut_rep_315 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14566)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_315.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n14626), .Z(n589)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 i5946_2_lut_rep_361 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14612)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5946_2_lut_rep_361.init = 16'h6666;
    LUT4 i1_2_lut_rep_254_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14505)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_254_3_lut.init = 16'h6060;
    LUT4 i11463_2_lut_rep_316 (.A(rom_addr[4]), .B(rom_addr[6]), .Z(n14567)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11463_2_lut_rep_316.init = 16'heeee;
    LUT4 i1_2_lut_rep_317 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14568)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_317.init = 16'heeee;
    LUT4 address_11__I_0_Mux_0_i221_3_lut_4_lut (.A(n14598), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n397_adj_699), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_4_lut_4_lut_adj_21 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14577), .D(rom_addr[4]), .Z(n12015)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_adj_21.init = 16'hc090;
    LUT4 i1_2_lut_rep_172_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_172_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n1211_bdd_3_lut_13238_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13824)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1211_bdd_3_lut_13238_4_lut_4_lut.init = 16'hd000;
    LUT4 i12003_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n5468), 
         .D(n14516), .Z(n12669)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12003_4_lut_4_lut.init = 16'h7340;
    PFUMX i13555 (.BLUT(n14193), .ALUT(n14192), .C0(rom_addr[4]), .Z(n14194));
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n46_adj_19)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h0cb0;
    PFUMX i13777 (.BLUT(n14764), .ALUT(n14765), .C0(rom_addr[1]), .Z(n14766));
    PFUMX i13775 (.BLUT(n14761), .ALUT(n14762), .C0(rom_addr[4]), .Z(n14763));
    PFUMX i12128 (.BLUT(n1628_adj_743), .ALUT(n1659), .C0(rom_addr[5]), 
          .Z(n12794));
    PFUMX i13773 (.BLUT(n14758), .ALUT(n14759), .C0(rom_addr[0]), .Z(n14760));
    PFUMX i13771 (.BLUT(n14755), .ALUT(n14756), .C0(rom_addr[1]), .Z(n14757));
    LUT4 i5177_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n2970)) /* synthesis lut_function=(!(A (C)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5177_2_lut_3_lut.init = 16'h4b4b;
    PFUMX i13769 (.BLUT(n14752), .ALUT(n14753), .C0(rom_addr[1]), .Z(n14754));
    LUT4 i12786_2_lut_rep_320 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14571)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12786_2_lut_rep_320.init = 16'hdddd;
    PFUMX i13533 (.BLUT(n14158), .ALUT(n2396_adj_619), .C0(rom_addr[6]), 
          .Z(n14159));
    LUT4 i12782_2_lut_rep_236_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14487)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12782_2_lut_rep_236_3_lut.init = 16'h0909;
    LUT4 i4985_2_lut_rep_353 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14604)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4985_2_lut_rep_353.init = 16'h6666;
    PFUMX i13763 (.BLUT(n14744), .ALUT(n14745), .C0(rom_addr[3]), .Z(n14746));
    PFUMX i13531 (.BLUT(n14155), .ALUT(n14437), .C0(rom_addr[4]), .Z(n14156));
    PFUMX i12132 (.BLUT(n12796), .ALUT(n12797), .C0(rom_addr[5]), .Z(n12798));
    LUT4 i1_2_lut_rep_218_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14469)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_218_3_lut.init = 16'h2020;
    PFUMX i13083 (.BLUT(n13636), .ALUT(n13635), .C0(rom_addr[6]), .Z(n13637));
    LUT4 i12522_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1084), 
         .D(n1076), .Z(n1085_adj_683)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12522_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i13759 (.BLUT(n14738), .ALUT(n14739), .C0(rom_addr[2]), .Z(n14740));
    LUT4 i7566_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_628)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7566_2_lut_3_lut.init = 16'h9090;
    PFUMX i13757 (.BLUT(n14735), .ALUT(n14736), .C0(rom_addr[0]), .Z(n14737));
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n14574), 
         .C(rom_addr[3]), .D(n14626), .Z(n475_adj_756)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    PFUMX i13755 (.BLUT(n14732), .ALUT(n14733), .C0(rom_addr[2]), .Z(n14734));
    LUT4 i1_2_lut_rep_157_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14408)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_157_3_lut_4_lut.init = 16'h2000;
    LUT4 i12848_2_lut_rep_321 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14572)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12848_2_lut_rep_321.init = 16'heeee;
    PFUMX i13753 (.BLUT(n14729), .ALUT(n14730), .C0(rom_addr[0]), .Z(n14731));
    LUT4 i12696_3_lut_4_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(n2621), 
         .D(n13702), .Z(n2685_adj_759)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12696_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i12141 (.BLUT(n12805), .ALUT(n12806), .C0(rom_addr[5]), .Z(n12807));
    PFUMX i13749 (.BLUT(n14723), .ALUT(n14724), .C0(rom_addr[0]), .Z(n14725));
    PFUMX i12144 (.BLUT(n12808), .ALUT(n12809), .C0(rom_addr[5]), .Z(n12810));
    PFUMX i12147 (.BLUT(n12811), .ALUT(n12812), .C0(rom_addr[5]), .Z(n12813));
    PFUMX i13512 (.BLUT(n2237_adj_730), .ALUT(n14133), .C0(rom_addr[6]), 
          .Z(n14134));
    PFUMX i12941 (.BLUT(n13378), .ALUT(n12601), .C0(rom_addr[5]), .Z(n13379));
    PFUMX i11644 (.BLUT(n12308), .ALUT(n12309), .C0(rom_addr[5]), .Z(n12310));
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2283)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut.init = 16'h6003;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n14598), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14517), .Z(n2554_adj_742)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12198_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14542), .C(n15915), 
         .D(rom_addr[3]), .Z(n12864)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i12198_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i12156 (.BLUT(n12820), .ALUT(n12821), .C0(rom_addr[5]), .Z(n12822));
    PFUMX i11647 (.BLUT(n12311), .ALUT(n12312), .C0(rom_addr[5]), .Z(n12313));
    PFUMX i13052 (.BLUT(n13588), .ALUT(n13587), .C0(rom_addr[6]), .Z(n13589));
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n1946_adj_744)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut.init = 16'h6099;
    PFUMX i12161 (.BLUT(n12823), .ALUT(n12824), .C0(rom_addr[5]), .Z(n12827));
    LUT4 i7960_2_lut_rep_322 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14573)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7960_2_lut_rep_322.init = 16'h8888;
    LUT4 i7644_2_lut_rep_272_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14523)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7644_2_lut_rep_272_3_lut.init = 16'h6060;
    LUT4 i7671_2_lut_rep_323 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14574)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7671_2_lut_rep_323.init = 16'h8888;
    LUT4 i4593_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5451)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4593_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i12162 (.BLUT(n12825), .ALUT(n12826), .C0(rom_addr[5]), .Z(n12828));
    PFUMX i12166 (.BLUT(n12830), .ALUT(n12831), .C0(rom_addr[5]), .Z(n12832));
    PFUMX i13506 (.BLUT(n14127), .ALUT(n14383), .C0(rom_addr[6]), .Z(n14128));
    PFUMX i12169 (.BLUT(n12833), .ALUT(n12834), .C0(rom_addr[5]), .Z(n12835));
    LUT4 i12201_4_lut (.A(n14527), .B(n14574), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12867)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i12201_4_lut.init = 16'hfaca;
    LUT4 i7603_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_762)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7603_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 n5405_bdd_3_lut_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14711)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n5405_bdd_3_lut_3_lut_then_4_lut.init = 16'h0100;
    PFUMX i13049 (.BLUT(n13584), .ALUT(n507_adj_771), .C0(rom_addr[5]), 
          .Z(n13585));
    LUT4 address_11__I_0_Mux_0_i2025_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2025_3_lut_3_lut_4_lut.init = 16'h7870;
    PFUMX i12172 (.BLUT(n12836), .ALUT(n12837), .C0(rom_addr[5]), .Z(n12838));
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n397), 
         .C(rom_addr[4]), .D(n14521), .Z(n507_adj_771)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i13504 (.BLUT(n14416), .ALUT(n14125), .C0(rom_addr[4]), .Z(n14126));
    L6MUX21 i13039 (.D0(n13570), .D1(n13568), .SD(rom_addr[6]), .Z(n13571));
    L6MUX21 i13488 (.D0(n14105), .D1(n14103), .SD(rom_addr[6]), .Z(n14106));
    LUT4 i7659_2_lut_rep_231_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14482)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7659_2_lut_rep_231_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_170_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14421)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_170_3_lut_4_lut.init = 16'h8000;
    PFUMX i13486 (.BLUT(n14408), .ALUT(n14104), .C0(rom_addr[5]), .Z(n14105));
    LUT4 i1_2_lut_rep_232_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14483)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_232_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (cnt1, sys_clk_c, \state_3__N_368[1] , 
            n5, \ascii_num[0] , debug_led1_c_5, \end_y_8__N_304[4] , 
            n6921, debug_led2_c_3, sys_clk_c_enable_31, \end_x_8__N_286[3] , 
            \end_y_8__N_304[5] , \end_x_8__N_286[7] , \end_x_8__N_286[6] , 
            \end_x_8__N_286[5] , \end_x_8__N_286[4] , \ascii_num[6] , 
            \ascii_num[4] , \ascii_num[3] , \ascii_num[2] , \ascii_num[1] ) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    input sys_clk_c;
    output \state_3__N_368[1] ;
    input n5;
    output \ascii_num[0] ;
    input debug_led1_c_5;
    output \end_y_8__N_304[4] ;
    input n6921;
    input debug_led2_c_3;
    input sys_clk_c_enable_31;
    output \end_x_8__N_286[3] ;
    output \end_y_8__N_304[5] ;
    output \end_x_8__N_286[7] ;
    output \end_x_8__N_286[6] ;
    output \end_x_8__N_286[5] ;
    output \end_x_8__N_286[4] ;
    output \ascii_num[6] ;
    output \ascii_num[4] ;
    output \ascii_num[3] ;
    output \ascii_num[2] ;
    output \ascii_num[1] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire [6:0]ascii_num_6__N_514;
    wire [31:0]n226;
    
    wire cnt_ascii_num_4__N_513;
    wire [8:0]start_y_8__N_530;
    
    wire show_char_flag_N_539, n716, n14389, n13, n5906;
    wire [5:0]n1496;
    wire [4:0]n1530;
    
    wire n14501, n12088, n14541;
    wire [8:0]start_x_8__N_521;
    
    wire n2853, n14563, n14562;
    wire [1:0]n7;
    
    wire n14550, n6567, n15914, n722, n14419, n8527, n5903, n14388, 
        n12052, n12085, n14454, n6, n14479, n14556, n14480, n10788, 
        n14582, n14583, n14584, n22, n24, n20, n2912, n2844, 
        n16;
    
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_c), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_514[0]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1P3AY cnt_ascii_num_FSM_i0_i0 (.D(n226[31]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i0.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_530[4]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_y_8__N_304[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_38 (.D(show_char_flag_N_539), .CK(sys_clk_c), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_38.GSR = "ENABLED";
    LUT4 i7911_2_lut_rep_138 (.A(n716), .B(n226[18]), .Z(n14389)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7911_2_lut_rep_138.init = 16'h4444;
    LUT4 mux_802_i2_3_lut_4_lut (.A(n716), .B(n226[18]), .C(n13), .D(n5906), 
         .Z(ascii_num_6__N_514[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_802_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 init_done_I_0_2_lut (.A(debug_led1_c_5), .B(debug_led2_c_3), .Z(cnt_ascii_num_4__N_513)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(81[13:40])
    defparam init_done_I_0_2_lut.init = 16'h8888;
    PFUMX mux_802_i3 (.BLUT(n1496[2]), .ALUT(n1530[2]), .C0(n13), .Z(ascii_num_6__N_514[2]));
    LUT4 i2_3_lut_4_lut (.A(n226[4]), .B(n14501), .C(start_y_8__N_530[5]), 
         .D(n12088), .Z(start_y_8__N_530[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(n226[4]), .B(n14501), .C(n14541), .D(n226[12]), 
         .Z(start_x_8__N_521[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_10.init = 16'hfffe;
    PFUMX mux_802_i5 (.BLUT(n2853), .ALUT(n1530[4]), .C0(n13), .Z(ascii_num_6__N_514[4]));
    LUT4 i7913_4_lut_4_lut_4_lut_4_lut_3_lut_4_lut (.A(n226[14]), .B(n226[2]), 
         .C(n14563), .D(n14562), .Z(n1530[4])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7913_4_lut_4_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_c_enable_31), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_c), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_11 (.A(n226[15]), .B(n14550), .C(n226[18]), 
         .D(n6567), .Z(start_y_8__N_530[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_2_lut_rep_378 (.A(n226[14]), .B(n226[2]), .Z(n15914)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_378.init = 16'heeee;
    LUT4 i2_3_lut (.A(n226[13]), .B(n226[14]), .C(n226[12]), .Z(n6567)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_adj_12 (.A(n226[9]), .B(n226[10]), .C(n226[5]), .Z(n722)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_12.init = 16'hfefe;
    LUT4 i548_2_lut_rep_168_3_lut_4_lut (.A(n226[11]), .B(n14562), .C(n15914), 
         .D(n14563), .Z(n14419)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i548_2_lut_rep_168_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5026_4_lut_4_lut (.A(n226[11]), .B(n14562), .C(n722), .D(n8527), 
         .Z(n5903)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5026_4_lut_4_lut.init = 16'h3233;
    LUT4 i966_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(66[17:28])
    defparam i966_2_lut.init = 16'h6666;
    LUT4 reduce_or_681_i5_2_lut_rep_290 (.A(n226[15]), .B(n226[17]), .Z(n14541)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_681_i5_2_lut_rep_290.init = 16'heeee;
    LUT4 i8020_2_lut_3_lut_4_lut (.A(n226[15]), .B(n226[17]), .C(n716), 
         .D(n226[18]), .Z(n1496[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8020_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1996_3_lut_4_lut (.A(n226[15]), .B(n226[17]), .C(n716), .D(n226[18]), 
         .Z(n2853)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i1996_3_lut_4_lut.init = 16'h0f01;
    LUT4 i544_2_lut_rep_137 (.A(n226[18]), .B(n716), .Z(n14388)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i544_2_lut_rep_137.init = 16'heeee;
    LUT4 i7914_2_lut_3_lut (.A(n226[18]), .B(n716), .C(n13), .Z(ascii_num_6__N_514[6])) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i7914_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i3_4_lut (.A(n226[0]), .B(n12052), .C(n226[18]), .D(n12085), 
         .Z(start_x_8__N_521[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(n14454), .B(n12085), .C(n226[6]), .D(n6), .Z(start_x_8__N_521[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n226[11]), .B(n226[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_13 (.A(n722), .B(n12052), .C(n226[13]), .D(n14550), 
         .Z(start_x_8__N_521[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_13.init = 16'hfffe;
    LUT4 mux_802_i4_4_lut (.A(n14389), .B(n5903), .C(n13), .D(n14479), 
         .Z(ascii_num_6__N_514[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_802_i4_4_lut.init = 16'h0aca;
    LUT4 i3_4_lut_adj_14 (.A(n14556), .B(n226[8]), .C(n722), .D(n14480), 
         .Z(n10788)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_4_lut_adj_14.init = 16'hfffd;
    LUT4 mux_802_i1_4_lut (.A(n14541), .B(n1530[0]), .C(n13), .D(n14388), 
         .Z(ascii_num_6__N_514[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_802_i1_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut (.A(n226[5]), .B(n226[3]), .C(n226[4]), .Z(n12085)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_15 (.A(n226[5]), .B(n226[3]), .C(n226[1]), 
         .D(n14582), .Z(n12088)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_15.init = 16'hfffe;
    LUT4 i2_3_lut_rep_331 (.A(n226[7]), .B(n226[11]), .C(n226[9]), .Z(n14582)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_331.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(n226[7]), .B(n226[11]), .C(n226[9]), .D(n14583), 
         .Z(start_x_8__N_521[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_332 (.A(n226[8]), .B(n226[10]), .Z(n14583)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_332.init = 16'heeee;
    LUT4 i2_3_lut_rep_250_4_lut (.A(n226[8]), .B(n226[10]), .C(n226[0]), 
         .D(n14584), .Z(n14501)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_250_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_333 (.A(n226[6]), .B(n226[2]), .Z(n14584)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_333.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(n226[6]), .B(n226[2]), .C(n226[1]), 
         .Z(n12052)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_16.init = 16'hfefe;
    LUT4 i9_4_lut (.A(n226[20]), .B(n226[23]), .C(n226[21]), .D(n226[31]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_adj_17 (.A(n12088), .B(n6567), .C(n14501), .Z(n13)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_17.init = 16'hfefe;
    LUT4 i12_4_lut (.A(n226[27]), .B(n24), .C(n20), .D(n226[29]), .Z(n716)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_299 (.A(n226[17]), .B(n226[16]), .Z(n14550)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_299.init = 16'heeee;
    LUT4 i1_2_lut_rep_203_3_lut (.A(n226[17]), .B(n226[16]), .C(n226[15]), 
         .Z(n14454)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_203_3_lut.init = 16'hfefe;
    PFUMX mux_785_i1 (.BLUT(n2912), .ALUT(n2844), .C0(n14419), .Z(n1530[0]));
    LUT4 i11_4_lut (.A(n226[22]), .B(n22), .C(n16), .D(n226[30]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_305 (.A(n226[7]), .B(n226[1]), .Z(n14556)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_305.init = 16'heeee;
    LUT4 i7636_2_lut_3_lut (.A(n226[7]), .B(n226[1]), .C(n226[8]), .Z(n8527)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7636_2_lut_3_lut.init = 16'hfefe;
    LUT4 i12775_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_539)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[13:24])
    defparam i12775_2_lut.init = 16'h4444;
    LUT4 i7_3_lut (.A(n226[24]), .B(n226[26]), .C(n226[19]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut (.A(n226[28]), .B(n226[25]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_2_lut.init = 16'heeee;
    FD1S3IX start_x__i1 (.D(start_x_8__N_521[3]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_x_8__N_286[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_311 (.A(n226[12]), .B(n226[0]), .Z(n14562)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_311.init = 16'heeee;
    LUT4 i1988_3_lut_4_lut (.A(n226[12]), .B(n226[0]), .C(n15914), .D(n14563), 
         .Z(n2844)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1988_3_lut_4_lut.init = 16'h0f01;
    LUT4 i538_2_lut_rep_229_3_lut (.A(n226[12]), .B(n226[0]), .C(n226[11]), 
         .Z(n14480)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i538_2_lut_rep_229_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_312 (.A(n226[13]), .B(n226[3]), .Z(n14563)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_312.init = 16'heeee;
    LUT4 i5029_3_lut_3_lut_3_lut_4_lut (.A(n226[13]), .B(n226[3]), .C(n10788), 
         .D(n15914), .Z(n5906)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i5029_3_lut_3_lut_3_lut_4_lut.init = 16'h00fe;
    LUT4 i540_2_lut_rep_228_3_lut_4_lut (.A(n226[14]), .B(n226[2]), .C(n226[3]), 
         .D(n226[13]), .Z(n14479)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i540_2_lut_rep_228_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2054_3_lut_4_lut_4_lut (.A(n226[8]), .B(n722), .C(n226[1]), 
         .D(n226[7]), .Z(n2912)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam i2054_3_lut_4_lut_4_lut.init = 16'hdddc;
    LUT4 mux_785_i3_4_lut_4_lut (.A(n226[8]), .B(n722), .C(n14419), .D(n15914), 
         .Z(n1530[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam mux_785_i3_4_lut_4_lut.init = 16'hfd0d;
    FD1S3IX start_y__i2 (.D(start_y_8__N_530[5]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_y_8__N_304[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_521[7]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_x_8__N_286[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_521[6]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_x_8__N_286[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_521[5]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_x_8__N_286[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_521[4]), .CK(sys_clk_c), .CD(n6921), 
            .Q(\end_x_8__N_286[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i31 (.D(n226[30]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[31]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i31.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i30 (.D(n226[29]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[30]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i30.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i29 (.D(n226[28]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[29]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i29.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i28 (.D(n226[27]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[28]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i28.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i27 (.D(n226[26]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[27]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i27.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i26 (.D(n226[25]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[26]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i26.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i25 (.D(n226[24]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[25]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i25.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i24 (.D(n226[23]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[24]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i24.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i23 (.D(n226[22]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[23]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i23.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i22 (.D(n226[21]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i22.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i21 (.D(n226[20]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[21]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i21.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i20 (.D(n226[19]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i20.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i19 (.D(n226[18]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[19]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i19.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i18 (.D(n226[17]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i17 (.D(n226[16]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i16 (.D(n226[15]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i15 (.D(n226[14]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i14 (.D(n226[13]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i13 (.D(n226[12]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i12 (.D(n226[11]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i11 (.D(n226[10]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i10 (.D(n226[9]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i9 (.D(n226[8]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i8 (.D(n226[7]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i7 (.D(n226[6]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i6 (.D(n226[5]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i5 (.D(n226[4]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i4 (.D(n226[3]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i3 (.D(n226[2]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i2 (.D(n226[1]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i1 (.D(n226[0]), .SP(cnt_ascii_num_4__N_513), 
            .CK(sys_clk_c), .Q(n226[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i1.GSR = "ENABLED";
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_514[6]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_514[4]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_514[3]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_514[2]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_514[1]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=119, LSE_RLINE=131 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    
endmodule
