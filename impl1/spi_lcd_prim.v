// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Jan 15 21:40:01 2025
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
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
    wire sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, lcd_mosi_c, 
        lcd_cs_c, GND_net;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(35[17:26])
    
    wire en_write_init;
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(41[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(45[17:31])
    
    wire en_write_show_char;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    
    wire sys_clk_50MHz_enable_35;
    wire [5:0]state_adj_556;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    
    wire sys_clk_50MHz_enable_58, n5;
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_562;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_570;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_7, n1392, n14, VCC_net, n5382, n2459, 
        n3454, sys_clk_50MHz_enable_56, n5162, sys_clk_50MHz_enable_18;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .n1392(n1392), .\state[2] (state[2]), .cnt_sclk({cnt_sclk[3:2], 
            Open_0, Open_1}), .sys_clk_50MHz_enable_7(sys_clk_50MHz_enable_7), 
            .lcd_sclk_c(lcd_sclk_c), .\data[2] (data[2]), .\data[3] (data[3]), 
            .\data[5] (data[5]), .\data[6] (data[6]), .n5162(n5162), .lcd_mosi_c(lcd_mosi_c), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_cs_c(lcd_cs_c), 
            .\data[7] (data[7]), .\data[0] (data[0]), .\data[1] (data[1]), 
            .\data[4] (data[4])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(57[12] 69[2])
    ROM128X1A mux_288_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_288_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_288_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_288_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_288_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_288_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    show_string_number_ctrl show_string_number_ctrl_inst (.\ascii_num[0] (ascii_num[0]), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_556[5]), 
            .cnt1({cnt1_adj_570}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\end_x_8__N_295[3] (end_x_8__N_295[3]), .n2459(n2459), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .\end_x_8__N_295[7] (end_x_8__N_295[7]), 
            .\end_x_8__N_295[6] (end_x_8__N_295[6]), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_x_8__N_295[4] (end_x_8__N_295[4]), .\state[3] (state_adj_562[3]), 
            .sys_clk_50MHz_enable_18(sys_clk_50MHz_enable_18), .\ascii_num[6] (ascii_num[6]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[1] (ascii_num[1]), 
            .\end_y_8__N_313[5] (end_y_8__N_313[5])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[26] 125[2])
    LUT4 i716_4_lut_rep_61 (.A(state_adj_556[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_570[0]), .D(cnt1_adj_570[1]), .Z(sys_clk_50MHz_enable_18)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i716_4_lut_rep_61.init = 16'hceee;
    LUT4 i1154_2_lut_4_lut (.A(state_adj_556[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_570[0]), .D(cnt1_adj_570[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i1154_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i1_2_lut_rep_66 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_56)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_66.init = 16'h2222;
    LUT4 i1158_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i1158_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i712_4_lut (.A(state_adj_562[2]), .B(length_num_flag), .C(n3454), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_58)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i712_4_lut.init = 16'hceee;
    ROM128X1A mux_288_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_288_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    LUT4 i711_2_lut (.A(wr_done), .B(state_adj_556[4]), .Z(sys_clk_50MHz_enable_35)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i711_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n5162), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_7)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    lcd_show_char lcd_show_char_inst (.state({state_adj_562[3], Open_2, 
            Open_3, Open_4}), .sys_clk_50MHz(sys_clk_50MHz), .cnt_length_num({cnt_length_num[4], 
            Open_5, Open_6, Open_7, cnt_length_num[0]}), .length_num_flag(length_num_flag), 
            .n14(n14), .wr_done(wr_done), .show_char_data({show_char_data}), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\ascii_num[1] (ascii_num[1]), 
            .GND_net(GND_net), .\ascii_num[2] (ascii_num[2]), .\ascii_num[0] (ascii_num[0]), 
            .\state[2] (state_adj_562[2]), .\end_x_8__N_295[7] (end_x_8__N_295[7]), 
            .sys_clk_50MHz_enable_58(sys_clk_50MHz_enable_58), .n3454(n3454), 
            .\cnt_rom_prepare[2] (cnt_rom_prepare[2]), .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), 
            .\state_3__N_368[1] (state_3__N_368[1]), .\end_y_8__N_313[5] (end_y_8__N_313[5]), 
            .\ascii_num[6] (ascii_num[6]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[4] (ascii_num[4]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .en_write_show_char(en_write_show_char), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .\end_x_8__N_295[3] (end_x_8__N_295[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(97[16] 111[2])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(51[5] 55[2])
    lcd_init lcd_init_inst (.GND_net(GND_net), .cnt_s2_num({cnt_s2_num}), 
            .init_data({init_data}), .sys_clk_50MHz(sys_clk_50MHz), .\state[4] (state_adj_556[4]), 
            .sys_clk_50MHz_enable_35(sys_clk_50MHz_enable_35), .\state[5] (state_adj_556[5]), 
            .n5382(n5382), .n1392(n1392), .lcd_rst_c(lcd_rst_c), .\init_data_8__N_240[5] (init_data_8__N_240[5]), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .en_write_init(en_write_init), 
            .\init_data_8__N_240[2] (init_data_8__N_240[2]), .n2459(n2459), 
            .\init_data_8__N_240[0] (init_data_8__N_240[0]), .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[11] 95[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .init_data({init_data}), 
            .show_char_data({show_char_data}), .\state[5] (state_adj_556[5]), 
            .lcd_dc_c_8(lcd_dc_c_8), .\data[7] (data[7]), .\data[6] (data[6]), 
            .\data[5] (data[5]), .\data[4] (data[4]), .\data[3] (data[3]), 
            .\data[2] (data[2]), .\data[1] (data[1]), .en_write_init(en_write_init), 
            .en_write_show_char(en_write_show_char)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(71[10] 83[2])
    LUT4 m1_lut (.Z(n5382)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VHI i4261 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, n1392, \state[2] , cnt_sclk, 
            sys_clk_50MHz_enable_7, lcd_sclk_c, \data[2] , \data[3] , 
            \data[5] , \data[6] , n5162, lcd_mosi_c, \state_3__N_25[1] , 
            lcd_cs_c, \data[7] , \data[0] , \data[1] , \data[4] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output n1392;
    output \state[2] ;
    output [3:0]cnt_sclk;
    input sys_clk_50MHz_enable_7;
    output lcd_sclk_c;
    input \data[2] ;
    input \data[3] ;
    input \data[5] ;
    input \data[6] ;
    output n5162;
    output lcd_mosi_c;
    input \state_3__N_25[1] ;
    output lcd_cs_c;
    input \data[7] ;
    input \data[0] ;
    input \data[1] ;
    input \data[4] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    
    wire n1979, mosi_N_65, n1, n1956;
    wire [3:0]state_3__N_29;
    
    wire n4805, sys_clk_50MHz_enable_17, n13, n14, n5140;
    wire [3:0]n100;
    
    wire mosi_N_63, mosi_N_59, mosi_N_61;
    wire [3:0]cnt_sclk_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]n15;
    
    wire mosi_N_62, mosi_N_64, mosi_N_60, mosi_N_58, mosi_N_55, n1523, 
        sclk_N_53, n2112, n4851, n5135, n4843, n4854, n2110;
    wire [15:0]n120;
    
    wire sys_clk_50MHz_enable_16;
    wire [3:0]state_3__N_33;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n5161;
    wire [4:0]n25;
    
    wire n1980, mosi_N_56, n2111, n1975, n6, n1987, sys_clk_50MHz_enable_84, 
        n2466, n4773;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    LUT4 i730_1_lut (.A(wr_done), .Z(n1392)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i730_1_lut.init = 16'h5555;
    FD1S3AX state_FSM_i2 (.D(n1979), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    FD1S3AX state_FSM_i1 (.D(n1956), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i4105_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n4805), .D(state[1]), 
         .Z(sys_clk_50MHz_enable_17)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i4105_4_lut.init = 16'hfbfa;
    LUT4 i3994_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n4805)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3994_4_lut.init = 16'ha080;
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_7), .CD(n5140), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_7), .CD(n5140), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_7), .CD(n5140), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n5140), 
            .Q(cnt_sclk_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2504_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1523)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i2504_2_lut.init = 16'h2222;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i1330_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n2112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1330_3_lut.init = 16'hcaca;
    LUT4 i4039_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n4851)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i4039_2_lut.init = 16'h1111;
    LUT4 i4118_4_lut (.A(n5135), .B(mosi_N_58), .C(mosi_N_59), .D(n4843), 
         .Z(n4854)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i4118_4_lut.init = 16'hfffe;
    LUT4 i4031_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n4843)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i4031_3_lut.init = 16'h0101;
    LUT4 i4121_4_lut (.A(cnt_sclk_c[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk_c[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i4121_4_lut.init = 16'h0200;
    LUT4 i1328_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1328_3_lut.init = 16'hcaca;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_16), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    LUT4 i3389_2_lut_rep_64 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n5161)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3389_2_lut_rep_64.init = 16'h8888;
    LUT4 i3393_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3393_2_lut_3_lut.init = 16'h7878;
    LUT4 i3400_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3400_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_65 (.A(cnt_sclk_c[0]), .B(cnt_sclk_c[1]), .Z(n5162)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_65.init = 16'heeee;
    LUT4 i4124_3_lut_rep_43_4_lut (.A(cnt_sclk_c[0]), .B(cnt_sclk_c[1]), 
         .C(cnt_sclk[3]), .D(cnt_sclk[2]), .Z(n5140)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i4124_3_lut_rep_43_4_lut.init = 16'h0100;
    FD1P3AX mosi_100 (.D(n1523), .SP(sys_clk_50MHz_enable_17), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i830_3_lut_4_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i830_3_lut_4_lut.init = 16'h7f80;
    LUT4 i823_2_lut_3_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i823_2_lut_3_lut.init = 16'h7878;
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    PFUMX mosi_I_1 (.BLUT(n1980), .ALUT(mosi_N_56), .C0(n4854), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=69 */ ;
    LUT4 i4082_4_lut_4_lut (.A(n5135), .B(n4851), .C(n2111), .D(n1975), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i4082_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1198_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n1979)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1198_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:57])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 state_3__N_21_I_0_2_lut_rep_38 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n5135)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam state_3__N_21_I_0_2_lut_rep_38.init = 16'h2222;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:57])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1206_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n1987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1206_2_lut.init = 16'h2222;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    FD1S3JX state_FSM_i3 (.D(n1987), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    LUT4 i1329_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n2110), .Z(n2111)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i1329_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n120[2]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n120[4]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n120[6]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n120[8]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n120[10]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n120[12]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n120[14]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    LUT4 i1176_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n1956)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:57])
    defparam i1176_3_lut_4_lut.init = 16'h2f22;
    LUT4 i1195_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n1975)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1195_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n5140), .C(state[1]), .Z(sys_clk_50MHz_enable_16)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1S3IX cnt_delay_678__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n2466), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_678__i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_678__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n2466), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_678__i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_678__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n2466), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_678__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_678__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n2466), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_678__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_678__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n2466), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_678__i4.GSR = "ENABLED";
    LUT4 i1331_3_lut (.A(n2112), .B(\data[4] ), .C(mosi_N_60), .Z(n1980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1331_3_lut.init = 16'hcaca;
    LUT4 i4140_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n4773), .D(cnt_delay[2]), 
         .Z(n2466)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i4140_4_lut.init = 16'hfffb;
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i3963_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n4773)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3963_2_lut.init = 16'heeee;
    LUT4 i3384_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3384_1_lut.init = 16'h5555;
    LUT4 i3386_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3386_2_lut.init = 16'h6666;
    LUT4 i3407_3_lut_4_lut (.A(cnt_delay[2]), .B(n5161), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i3407_3_lut_4_lut.init = 16'h7f80;
    LUT4 i32_2_lut_rep_39_4_lut (.A(n5162), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_84)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_39_4_lut.init = 16'h0400;
    LUT4 i816_2_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i816_2_lut.init = 16'h6666;
    LUT4 i1159_2_lut (.A(cnt_sclk_c[0]), .B(sys_clk_50MHz_enable_7), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i1159_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (\ascii_num[0] , sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_368[1] , n5, \end_x_8__N_295[3] , n2459, 
            \end_y_8__N_313[4] , \end_x_8__N_295[7] , \end_x_8__N_295[6] , 
            \end_x_8__N_295[5] , \end_x_8__N_295[4] , \state[3] , sys_clk_50MHz_enable_18, 
            \ascii_num[6] , \ascii_num[4] , \ascii_num[3] , \ascii_num[2] , 
            \ascii_num[1] , \end_y_8__N_313[5] ) /* synthesis syn_module_defined=1 */ ;
    output \ascii_num[0] ;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_368[1] ;
    input n5;
    output \end_x_8__N_295[3] ;
    input n2459;
    output \end_y_8__N_313[4] ;
    output \end_x_8__N_295[7] ;
    output \end_x_8__N_295[6] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    input \state[3] ;
    input sys_clk_50MHz_enable_18;
    output \ascii_num[6] ;
    output \ascii_num[4] ;
    output \ascii_num[3] ;
    output \ascii_num[2] ;
    output \ascii_num[1] ;
    output \end_y_8__N_313[5] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    wire [31:0]n225;
    
    wire n4675, n5180, n5150, n3374, n2085;
    wire [6:0]ascii_num_6__N_515;
    
    wire cnt_ascii_num_4__N_514;
    wire [8:0]start_x_8__N_522;
    
    wire n5160, n5168, n6;
    wire [8:0]start_y_8__N_531;
    
    wire show_char_flag_N_540, n5169, n5131, n5133, n4672, n5179, 
        n5178, n1063;
    wire [1:0]n7;
    
    wire n5129, n13, n5152, n699, n5128, n5177, n5149, n4286, 
        n5139, n1930, n4585, n5171;
    wire [4:0]n1500;
    
    wire n24, n20;
    wire [5:0]n1468;
    
    wire n22, n16, n1992, n1934, n2084, n2318, n5165, n6_adj_548;
    
    LUT4 i3_4_lut (.A(n225[5]), .B(n225[3]), .C(n225[11]), .D(n225[6]), 
         .Z(n4675)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1304_4_lut_4_lut (.A(n225[11]), .B(n5180), .C(n5150), .D(n3374), 
         .Z(n2085)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i1304_4_lut_4_lut.init = 16'h3233;
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1P3AY cnt_ascii_num_FSM_i0_i0 (.D(n225[31]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i0.GSR = "ENABLED";
    FD1S3IX start_x__i1 (.D(start_x_8__N_522[3]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n225[13]), .B(n5160), .C(n5168), .D(n6), .Z(start_x_8__N_522[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_38 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_38.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n5169), .B(n5131), .C(n5133), .D(n4672), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i540_2_lut_3_lut_4_lut (.A(n5179), .B(n5178), .C(n5180), .D(n225[11]), 
         .Z(n1063)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i540_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_37 (.A(n5169), .B(n5131), .C(n225[18]), .D(n225[3]), 
         .Z(start_x_8__N_522[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_37.init = 16'hfffe;
    LUT4 i996_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(66[17:28])
    defparam i996_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_83 (.A(n225[12]), .B(n225[0]), .Z(n5180)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_83.init = 16'heeee;
    FD1S3IX start_x__i5 (.D(start_x_8__N_522[7]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_522[6]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_522[5]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_522[4]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i31 (.D(n225[30]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[31]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i31.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i30 (.D(n225[29]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[30]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i30.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i29 (.D(n225[28]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[29]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i29.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i28 (.D(n225[27]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[28]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i28.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i27 (.D(n225[26]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[27]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i27.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i26 (.D(n225[25]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[26]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i26.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i25 (.D(n225[24]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[25]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i25.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i24 (.D(n225[23]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[24]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i24.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i23 (.D(n225[22]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[23]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i23.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i22 (.D(n225[21]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i22.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i21 (.D(n225[20]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[21]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i21.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i20 (.D(n225[19]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i20.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i19 (.D(n225[18]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[19]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i19.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i18 (.D(n225[17]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i17 (.D(n225[16]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i16 (.D(n225[15]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i15 (.D(n225[14]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i14 (.D(n225[13]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i13 (.D(n225[12]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i12 (.D(n225[11]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i11 (.D(n225[10]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i10 (.D(n225[9]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i9 (.D(n225[8]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i8 (.D(n225[7]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i7 (.D(n225[6]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i6 (.D(n225[5]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i5 (.D(n225[4]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i5.GSR = "ENABLED";
    LUT4 mux_799_i4_4_lut (.A(n5129), .B(n2085), .C(n13), .D(n5152), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_799_i4_4_lut.init = 16'h0aca;
    LUT4 i536_2_lut_rep_31 (.A(n225[18]), .B(n699), .Z(n5128)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i536_2_lut_rep_31.init = 16'heeee;
    FD1P3AX cnt_ascii_num_FSM_i0_i4 (.D(n225[3]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i3 (.D(n225[2]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i2 (.D(n225[1]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_63 (.A(n225[17]), .B(n225[16]), .Z(n5160)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_63.init = 16'heeee;
    LUT4 i3_4_lut_adj_38 (.A(n5177), .B(n225[8]), .C(n5150), .D(n5149), 
         .Z(n4286)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_4_lut_adj_38.init = 16'hfffd;
    LUT4 i1_2_lut_rep_42_3_lut (.A(n225[17]), .B(n225[16]), .C(n225[15]), 
         .Z(n5139)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_42_3_lut.init = 16'hfefe;
    PFUMX mux_799_i5 (.BLUT(n1930), .ALUT(n4585), .C0(n13), .Z(ascii_num_6__N_515[4]));
    LUT4 i1_2_lut_rep_36_3_lut_4_lut (.A(n225[17]), .B(n225[16]), .C(n225[18]), 
         .D(n225[15]), .Z(n5133)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_36_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2586_2_lut_3_lut (.A(n225[18]), .B(n699), .C(n13), .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2586_2_lut_3_lut.init = 16'hf1f1;
    LUT4 mux_799_i1_4_lut (.A(n5171), .B(n1500[0]), .C(n13), .D(n5128), 
         .Z(ascii_num_6__N_515[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_799_i1_4_lut.init = 16'hc0ca;
    LUT4 i12_4_lut (.A(n225[27]), .B(n24), .C(n20), .D(n225[29]), .Z(n699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i12_4_lut.init = 16'hfffe;
    PFUMX mux_799_i3 (.BLUT(n1468[2]), .ALUT(n1500[2]), .C0(n13), .Z(ascii_num_6__N_515[2]));
    LUT4 i11_4_lut (.A(n225[22]), .B(n22), .C(n16), .D(n225[30]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(n225[24]), .B(n225[26]), .C(n225[19]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(n225[20]), .B(n225[23]), .C(n225[21]), .D(n225[31]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i530_2_lut_rep_52_3_lut (.A(n225[12]), .B(n225[0]), .C(n225[11]), 
         .Z(n5149)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i530_2_lut_rep_52_3_lut.init = 16'hfefe;
    PFUMX mux_795_i1 (.BLUT(n1992), .ALUT(n1934), .C0(n1063), .Z(n1500[0]));
    LUT4 i3_2_lut (.A(n225[28]), .B(n225[25]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i2501_2_lut_rep_32 (.A(n699), .B(n225[18]), .Z(n5129)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i2501_2_lut_rep_32.init = 16'h4444;
    LUT4 i3_3_lut_4_lut (.A(n225[0]), .B(n5168), .C(n4672), .D(n5169), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_799_i2_3_lut_4_lut (.A(n699), .B(n225[18]), .C(n13), .D(n2084), 
         .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_799_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 init_done_I_0_2_lut (.A(\state[5] ), .B(\state[3] ), .Z(cnt_ascii_num_4__N_514)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(81[13:40])
    defparam init_done_I_0_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(start_x_8__N_522[7]), .B(n2318), .C(n225[3]), .Z(n4672)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut (.A(n225[7]), .B(n225[8]), .C(n5165), .D(n225[11]), 
         .Z(start_x_8__N_522[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    FD1P3AX cnt_ascii_num_FSM_i0_i1 (.D(n225[0]), .SP(cnt_ascii_num_4__N_514), 
            .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_50MHz_enable_18), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_68 (.A(n225[10]), .B(n225[9]), .Z(n5165)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_68.init = 16'heeee;
    LUT4 i1_2_lut_rep_53_3_lut (.A(n225[10]), .B(n225[9]), .C(n225[5]), 
         .Z(n5150)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_53_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_adj_39 (.A(n225[13]), .B(n225[14]), .C(n225[12]), .Z(n2318)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_39.init = 16'hfefe;
    LUT4 i1_2_lut_rep_71 (.A(n225[6]), .B(n225[2]), .Z(n5168)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_71.init = 16'heeee;
    LUT4 i1_2_lut_rep_34_3_lut_4_lut (.A(n225[6]), .B(n225[2]), .C(n225[4]), 
         .D(n225[0]), .Z(n5131)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_34_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_72 (.A(n225[5]), .B(n225[1]), .Z(n5169)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_72.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n225[5]), .B(n225[1]), .C(n225[9]), 
         .D(n225[10]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    LUT4 reduce_or_676_i5_2_lut_rep_74 (.A(n225[15]), .B(n225[17]), .Z(n5171)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_676_i5_2_lut_rep_74.init = 16'heeee;
    LUT4 i1152_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(n699), .D(n225[18]), 
         .Z(n1930)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i1152_3_lut_4_lut.init = 16'h0f01;
    LUT4 i2654_2_lut_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(n699), 
         .D(n225[18]), .Z(n1468[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2654_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut (.A(n225[15]), .B(n225[17]), .C(n225[12]), .Z(n6_adj_548)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_40 (.A(n225[10]), .B(n5131), .C(n225[8]), .D(n6_adj_548), 
         .Z(start_x_8__N_522[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_40.init = 16'hfffe;
    FD1S3IX start_y__i2 (.D(start_y_8__N_531[5]), .CK(sys_clk_50MHz), .CD(n2459), 
            .Q(\end_y_8__N_313[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=125 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n225[15]), .B(n5160), .C(n2318), 
         .D(n225[18]), .Z(start_y_8__N_531[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'hfffe;
    LUT4 i1_2_lut_rep_80 (.A(n225[7]), .B(n225[1]), .Z(n5177)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_80.init = 16'heeee;
    LUT4 i2591_2_lut_3_lut (.A(n225[7]), .B(n225[1]), .C(n225[8]), .Z(n3374)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i2591_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1211_3_lut_4_lut_4_lut (.A(n225[8]), .B(n5177), .C(n5165), .D(n225[5]), 
         .Z(n1992)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam i1211_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 mux_795_i3_4_lut_4_lut (.A(n225[8]), .B(n5150), .C(n1063), .D(n5178), 
         .Z(n1500[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam mux_795_i3_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_2_lut_rep_81 (.A(n225[14]), .B(n225[2]), .Z(n5178)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 i1303_3_lut_4_lut_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n5179), 
         .D(n4286), .Z(n2084)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1303_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i1155_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n5180), .D(n5179), 
         .Z(n1934)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1155_3_lut_4_lut.init = 16'h1101;
    LUT4 i4114_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[13:24])
    defparam i4114_2_lut.init = 16'h4444;
    LUT4 i11_3_lut_4_lut_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n5179), 
         .D(n5180), .Z(n4585)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i11_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_82 (.A(n225[13]), .B(n225[3]), .Z(n5179)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_82.init = 16'heeee;
    LUT4 i532_2_lut_rep_55_3_lut_4_lut (.A(n225[13]), .B(n225[3]), .C(n225[2]), 
         .D(n225[14]), .Z(n5152)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i532_2_lut_rep_55_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_42 (.A(n225[4]), .B(n5139), .C(n225[14]), .D(n4675), 
         .Z(start_x_8__N_522[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_42.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (state, sys_clk_50MHz, cnt_length_num, length_num_flag, 
            n14, wr_done, show_char_data, \end_x_8__N_295[5] , \ascii_num[1] , 
            GND_net, \ascii_num[2] , \ascii_num[0] , \state[2] , \end_x_8__N_295[7] , 
            sys_clk_50MHz_enable_58, n3454, \cnt_rom_prepare[2] , sys_clk_50MHz_enable_56, 
            \state_3__N_368[1] , \end_y_8__N_313[5] , \ascii_num[6] , 
            \ascii_num[3] , \ascii_num[4] , \end_x_8__N_295[6] , en_write_show_char, 
            \end_x_8__N_295[4] , \end_y_8__N_313[4] , \end_x_8__N_295[3] ) /* synthesis syn_module_defined=1 */ ;
    output [3:0]state;
    input sys_clk_50MHz;
    output [4:0]cnt_length_num;
    output length_num_flag;
    input n14;
    input wr_done;
    output [8:0]show_char_data;
    input \end_x_8__N_295[5] ;
    input \ascii_num[1] ;
    input GND_net;
    input \ascii_num[2] ;
    input \ascii_num[0] ;
    output \state[2] ;
    input \end_x_8__N_295[7] ;
    input sys_clk_50MHz_enable_58;
    output n3454;
    output \cnt_rom_prepare[2] ;
    input sys_clk_50MHz_enable_56;
    input \state_3__N_368[1] ;
    input \end_y_8__N_313[5] ;
    input \ascii_num[6] ;
    input \ascii_num[3] ;
    input \ascii_num[4] ;
    input \end_x_8__N_295[6] ;
    output en_write_show_char;
    input \end_x_8__N_295[4] ;
    input \end_y_8__N_313[4] ;
    input \end_x_8__N_295[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
    wire n5172, n5173;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    wire [5:0]n21;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_50MHz_enable_69, n5130, n5157, n5153, n2041;
    wire [8:0]show_char_data_8__N_449;
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    wire [2:0]n12;
    wire [3:0]state_3__N_376;
    wire [15:0]n396;
    
    wire cnt_set_windows_3__N_384;
    wire [15:0]n33;
    
    wire cnt_wr_color_data_5__N_439, the1_wr_done;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_85;
    wire [7:0]temp_7__N_345;
    
    wire n5063, length_num_flag_N_462, sys_clk_50MHz_enable_15;
    wire [8:0]show_char_data_8__N_275;
    
    wire n2461, n4334, n2450, n2096, n4203, n1735;
    wire [6:0]n1321;
    
    wire n4204;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n5137, n2115, n5155, n687;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n5156, n2117, n2054, n4859;
    wire [5:0]n422;
    wire [8:0]show_char_data_8__N_440;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n5164;
    wire [4:0]n365;
    
    wire n4797;
    wire [2:0]n132;
    
    wire n5143, n5170, sys_clk_50MHz_enable_46;
    wire [4:0]n1314;
    
    wire n3, n1329, n2012, n2010, n2007, n4783, n4678, n1278, 
        n2089, n2097, n4715, n2465, n4732, n4206;
    wire [3:0]state_3__N_372;
    
    wire n2458, n8_adj_547, n4205, n2056, n6, n2105;
    
    LUT4 i1156_2_lut_4_lut (.A(state[3]), .B(n5172), .C(n5173), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[13:52])
    defparam i1156_2_lut_4_lut.init = 16'h10ef;
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    LUT4 mux_566_i9_4_lut_4_lut (.A(n5130), .B(n5157), .C(n5153), .D(n2041), 
         .Z(show_char_data_8__N_449[8])) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam mux_566_i9_4_lut_4_lut.init = 16'haaa8;
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(141[10] 144[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(208[10] 215[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n396[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n396[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n396[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n396[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n396[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_177 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_177.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n396[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    LUT4 n409_bdd_4_lut (.A(n396[3]), .B(n396[5]), .C(n396[2]), .D(n396[4]), 
         .Z(n5063)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n409_bdd_4_lut.init = 16'hccef;
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n396[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n396[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n396[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n396[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n396[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n396[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n396[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n396[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1S3AX length_num_flag_183 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(187[10] 202[32])
    defparam length_num_flag_183.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n2461), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n396[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n396[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    LUT4 i2627_4_lut (.A(n4334), .B(n396[5]), .C(\end_x_8__N_295[5] ), 
         .D(n2450), .Z(n2096)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i2627_4_lut.init = 16'hfcdd;
    CCU2D add_671_3 (.A0(cnt_length_num[4]), .B0(n1735), .C0(\ascii_num[1] ), 
          .D0(GND_net), .A1(cnt_length_num[4]), .B1(n1735), .C1(\ascii_num[2] ), 
          .D1(GND_net), .CIN(n4203), .COUT(n4204), .S0(n1321[1]), .S1(n1321[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam add_671_3.INIT0 = 16'he1e1;
    defparam add_671_3.INIT1 = 16'he1e1;
    defparam add_671_3.INJECT1_0 = "NO";
    defparam add_671_3.INJECT1_1 = "NO";
    LUT4 i554_2_lut_rep_56 (.A(n396[6]), .B(n396[8]), .Z(n5153)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i554_2_lut_rep_56.init = 16'heeee;
    LUT4 state_3__N_365_I_0_195_2_lut (.A(state_c[1]), .B(the1_wr_done), 
         .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(125[13:44])
    defparam state_3__N_365_I_0_195_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_40_3_lut (.A(n396[6]), .B(n396[8]), .C(n396[7]), 
         .Z(n5137)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_40_3_lut.init = 16'hfefe;
    LUT4 n5063_bdd_2_lut_3_lut (.A(n396[6]), .B(n396[8]), .C(n5063), .Z(n2115)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n5063_bdd_2_lut_3_lut.init = 16'hfefe;
    CCU2D add_671_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_length_num[4]), .B1(n1735), .C1(\ascii_num[0] ), .D1(GND_net), 
          .COUT(n4203), .S1(n1321[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam add_671_1.INIT0 = 16'hF000;
    defparam add_671_1.INIT1 = 16'h6969;
    defparam add_671_1.INJECT1_0 = "NO";
    defparam add_671_1.INJECT1_1 = "NO";
    LUT4 i153_2_lut_rep_58 (.A(\state[2] ), .B(temp[0]), .Z(n5155)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[13:55])
    defparam i153_2_lut_rep_58.init = 16'h2222;
    LUT4 i1274_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), .C(state_c[1]), 
         .D(n687), .Z(show_char_data_8__N_449[5])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[13:55])
    defparam i1274_3_lut_4_lut.init = 16'hf202;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), 
         .C(state_c[1]), .D(show_char_data_8__N_449[3]), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[13:55])
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hf202;
    LUT4 temp_7__I_0_i7_3_lut (.A(rom_q[6]), .B(temp[7]), .C(n5173), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i6_3_lut (.A(rom_q[5]), .B(temp[6]), .C(n5173), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i6_3_lut.init = 16'hcaca;
    FD1S3AX data_i8 (.D(show_char_data_8__N_275[8]), .CK(sys_clk_50MHz), 
            .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i8.GSR = "ENABLED";
    LUT4 show_char_data_8__I_0_i3_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), 
         .C(state_c[1]), .D(show_char_data_8__N_449[2]), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[13:55])
    defparam show_char_data_8__I_0_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 i552_2_lut_rep_59 (.A(n396[4]), .B(n396[5]), .Z(n5156)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i552_2_lut_rep_59.init = 16'heeee;
    LUT4 temp_7__I_0_i5_3_lut (.A(rom_q[4]), .B(temp[5]), .C(n5173), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i4_3_lut (.A(rom_q[3]), .B(temp[4]), .C(n5173), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i4_3_lut.init = 16'hcaca;
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i4.GSR = "ENABLED";
    LUT4 i1260_3_lut_3_lut (.A(n396[4]), .B(n396[5]), .C(n4334), .Z(n2041)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1260_3_lut_3_lut.init = 16'h3232;
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_15), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(232[10] 258[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 temp_7__I_0_i3_3_lut (.A(rom_q[2]), .B(temp[3]), .C(n5173), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i2_3_lut (.A(rom_q[1]), .B(temp[2]), .C(n5173), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n5155), .B(\end_x_8__N_295[7] ), 
         .C(state_c[1]), .D(n2117), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[10] 258[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i556_2_lut_rep_60 (.A(n396[7]), .B(n396[9]), .Z(n5157)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i556_2_lut_rep_60.init = 16'heeee;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n2054), .ALUT(show_char_data_8__N_449[5]), 
          .C0(n4859), .Z(show_char_data_8__N_275[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;
    LUT4 i953_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i953_2_lut.init = 16'h6666;
    PFUMX show_char_data_8__I_0_i9 (.BLUT(show_char_data_8__N_440[8]), .ALUT(show_char_data_8__N_449[8]), 
          .C0(state_c[1]), .Z(show_char_data_8__N_275[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;
    LUT4 i3955_2_lut_rep_67 (.A(cnt_length_num[0]), .B(cnt_length_num_c[1]), 
         .Z(n5164)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3955_2_lut_rep_67.init = 16'h8888;
    LUT4 i931_2_lut_3_lut_4_lut (.A(cnt_length_num[0]), .B(cnt_length_num_c[1]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i931_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3986_2_lut_3_lut (.A(cnt_length_num[0]), .B(cnt_length_num_c[1]), 
         .C(cnt_length_num_c[3]), .Z(n4797)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3986_2_lut_3_lut.init = 16'h8080;
    LUT4 i924_2_lut_3_lut (.A(cnt_length_num[0]), .B(cnt_length_num_c[1]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i924_2_lut_3_lut.init = 16'h7878;
    LUT4 i1013_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1735)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam i1013_2_lut.init = 16'h8888;
    LUT4 i1149_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_58), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(141[10] 144[51])
    defparam i1149_2_lut.init = 16'h6666;
    LUT4 i2669_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n3454)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2669_2_lut.init = 16'heeee;
    LUT4 i917_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(215[27:48])
    defparam i917_2_lut.init = 16'h6666;
    LUT4 i902_3_lut (.A(\cnt_rom_prepare[2] ), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(144[28:50])
    defparam i902_3_lut.init = 16'h6a6a;
    LUT4 i895_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(144[28:50])
    defparam i895_2_lut.init = 16'h6666;
    LUT4 i981_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n5143), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i981_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_85), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 i955_2_lut_rep_73 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n5170)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i955_2_lut_rep_73.init = 16'h8888;
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_46), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    LUT4 i4131_2_lut_rep_33 (.A(n33[10]), .B(n687), .Z(n5130)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i4131_2_lut_rep_33.init = 16'h4444;
    LUT4 i1011_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1314[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam i1011_2_lut.init = 16'h6666;
    LUT4 i962_2_lut_rep_46_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n5143)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i962_2_lut_rep_46_3_lut.init = 16'h8080;
    LUT4 i118_4_lut (.A(n4797), .B(length_num_flag), .C(cnt_length_num[4]), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(212[13:77])
    defparam i118_4_lut.init = 16'h0800;
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_46), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_46), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_46), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_46), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(221[10] 226[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    LUT4 i1049_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(212[24:58])
    defparam i1049_1_lut.init = 16'h5555;
    LUT4 temp_7__I_0_i1_3_lut (.A(rom_q[0]), .B(temp[1]), .C(n5173), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 180[16])
    defparam temp_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i960_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i960_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(208[10] 215[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(208[10] 215[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(208[10] 215[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(208[10] 215[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_58), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(\cnt_rom_prepare[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(141[10] 144[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_58), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(141[10] 144[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(n1329), .SP(sys_clk_50MHz_enable_69), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i10 (.D(n1321[6]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(n1321[5]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(n1321[4]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(n1321[3]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(n1321[2]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(n1321[1]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(n1321[0]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(n1314[1]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_69), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(150[10] 153[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i967_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i967_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1335_2_lut_3_lut_3_lut_4_lut (.A(n33[10]), .B(n687), .C(n5157), 
         .D(n2115), .Z(n2117)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1335_2_lut_3_lut_3_lut_4_lut.init = 16'hfffb;
    FD1S3AX state_FSM_i1 (.D(n2012), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2010), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2007), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 i76_2_lut_rep_75 (.A(\state[2] ), .B(the1_wr_done), .Z(n5172)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(170[13:55])
    defparam i76_2_lut_rep_75.init = 16'h8888;
    LUT4 i3973_2_lut_3_lut (.A(\state[2] ), .B(the1_wr_done), .C(cnt_wr_color_data[0]), 
         .Z(n4783)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(170[13:55])
    defparam i3973_2_lut_3_lut.init = 16'h8080;
    LUT4 i3_4_lut (.A(n4678), .B(cnt_wr_color_data[5]), .C(cnt_wr_color_data[4]), 
         .D(n4783), .Z(n1278)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), .C(cnt_wr_color_data[3]), 
         .Z(n4678)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_rep_48_4_lut (.A(\state[2] ), .B(the1_wr_done), .C(n5173), 
         .D(state[3]), .Z(sys_clk_50MHz_enable_46)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(170[13:55])
    defparam i2_3_lut_rep_48_4_lut.init = 16'hff8f;
    LUT4 i2_3_lut_rep_76 (.A(cnt_rom_prepare[1]), .B(\cnt_rom_prepare[2] ), 
         .C(cnt_rom_prepare[0]), .Z(n5173)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_76.init = 16'hdfdf;
    LUT4 i4108_2_lut_2_lut_4_lut (.A(cnt_rom_prepare[1]), .B(\cnt_rom_prepare[2] ), 
         .C(cnt_rom_prepare[0]), .D(n1278), .Z(sys_clk_50MHz_enable_85)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i4108_2_lut_2_lut_4_lut.init = 16'h20ff;
    LUT4 i1308_3_lut_4_lut (.A(n5153), .B(n396[7]), .C(n396[9]), .D(n5156), 
         .Z(n2089)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1308_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1_3_lut_4_lut (.A(n5153), .B(n396[7]), .C(n396[5]), .D(n2097), 
         .Z(n4715)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_85), .CD(n2465), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(159[10] 180[16])
    defparam temp_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n5153), .B(n396[7]), .C(n396[4]), .D(n396[5]), 
         .Z(n4732)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 temp_7__N_424_I_0_2_lut_4_lut (.A(cnt_rom_prepare[1]), .B(\cnt_rom_prepare[2] ), 
         .C(cnt_rom_prepare[0]), .D(state[3]), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam temp_7__N_424_I_0_2_lut_4_lut.init = 16'hff20;
    LUT4 i1676_2_lut_4_lut (.A(cnt_rom_prepare[1]), .B(\cnt_rom_prepare[2] ), 
         .C(cnt_rom_prepare[0]), .D(n1278), .Z(n2465)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (D))) */ ;
    defparam i1676_2_lut_4_lut.init = 16'h00df;
    LUT4 i1278_4_lut_4_lut (.A(n33[10]), .B(n687), .C(n396[9]), .D(n4715), 
         .Z(show_char_data_8__N_449[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1278_4_lut_4_lut.init = 16'hccc8;
    CCU2D add_671_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4206), 
          .S0(n1329));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam add_671_cout.INIT0 = 16'h0000;
    defparam add_671_cout.INIT1 = 16'h0000;
    defparam add_671_cout.INJECT1_0 = "NO";
    defparam add_671_cout.INJECT1_1 = "NO";
    LUT4 i1280_4_lut_4_lut (.A(n33[10]), .B(n687), .C(n396[9]), .D(n4732), 
         .Z(show_char_data_8__N_449[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1280_4_lut_4_lut.init = 16'hc8cc;
    LUT4 i1231_4_lut (.A(\state[2] ), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(state_c[1]), .Z(n2012)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1231_4_lut.init = 16'hce0a;
    LUT4 i1229_4_lut (.A(state_c[1]), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state_c[0]), .Z(n2010)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1229_4_lut.init = 16'hce0a;
    LUT4 i1226_2_lut (.A(state_c[0]), .B(\state_3__N_368[1] ), .Z(n2007)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1226_2_lut.init = 16'h2222;
    LUT4 i1340_2_lut (.A(\state[2] ), .B(show_char_data[8]), .Z(show_char_data_8__N_440[8])) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(252[10] 258[22])
    defparam i1340_2_lut.init = 16'heeee;
    LUT4 i1273_4_lut (.A(n2096), .B(\end_y_8__N_313[5] ), .C(n5157), .D(n5153), 
         .Z(n2054)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1273_4_lut.init = 16'hc0ca;
    FD1S3IX state1_finish_flag_179 (.D(the1_wr_done), .CK(sys_clk_50MHz), 
            .CD(n2458), .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=97, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(132[10] 135[36])
    defparam state1_finish_flag_179.GSR = "ENABLED";
    LUT4 i4_3_lut (.A(the1_wr_done), .B(n8_adj_547), .C(n4678), .Z(length_num_flag_N_462)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_35 (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[5]), .D(\state[2] ), .Z(n8_adj_547)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_35.init = 16'h0400;
    CCU2D add_671_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4205), .COUT(n4206), .S0(n1321[5]), .S1(n1321[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam add_671_7.INIT0 = 16'hf000;
    defparam add_671_7.INIT1 = 16'h0555;
    defparam add_671_7.INJECT1_0 = "NO";
    defparam add_671_7.INJECT1_1 = "NO";
    LUT4 i4116_2_lut_3_lut (.A(n33[10]), .B(n687), .C(state_c[1]), .Z(n4859)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i4116_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1669_1_lut (.A(n33[10]), .Z(n2458)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(126[28:50])
    defparam i1669_1_lut.init = 16'h5555;
    CCU2D add_671_5 (.A0(\ascii_num[3] ), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(cnt_length_num[4]), .A1(\ascii_num[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4204), .COUT(n4205), .S0(n1321[3]), .S1(n1321[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:85])
    defparam add_671_5.INIT0 = 16'h556a;
    defparam add_671_5.INIT1 = 16'hfaaa;
    defparam add_671_5.INJECT1_0 = "NO";
    defparam add_671_5.INJECT1_1 = "NO";
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n5155), .B(\end_x_8__N_295[6] ), 
         .C(state_c[1]), .D(n2117), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[10] 258[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i4143_2_lut_3_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .Z(sys_clk_50MHz_enable_69)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(271[49:71])
    defparam i4143_2_lut_3_lut.init = 16'h0404;
    LUT4 i1672_1_lut (.A(\state[2] ), .Z(n2461)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1672_1_lut.init = 16'h5555;
    LUT4 state_3__N_365_I_0_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .D(state_c[1]), .Z(en_write_show_char)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(271[49:71])
    defparam state_3__N_365_I_0_3_lut_4_lut.init = 16'hff40;
    LUT4 i938_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n5164), .C(cnt_length_num_c[3]), 
         .D(cnt_length_num[4]), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(215[27:48])
    defparam i938_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_2_lut (.A(state_c[1]), .B(\state[2] ), .Z(sys_clk_50MHz_enable_15)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n5155), .B(n2089), .C(state_c[1]), 
         .D(n5130), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[10] 258[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'hca0a;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n5155), .B(n2056), .C(state_c[1]), 
         .D(n5130), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[10] 258[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'hca0a;
    LUT4 i1275_4_lut (.A(\end_x_8__N_295[4] ), .B(\end_y_8__N_313[4] ), 
         .C(n5157), .D(n2115), .Z(n2056)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1275_4_lut.init = 16'hc0ca;
    LUT4 i4135_4_lut (.A(n396[15]), .B(n396[11]), .C(n396[13]), .D(n6), 
         .Z(n687)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i4135_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(n396[12]), .B(n396[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1315_3_lut (.A(n4334), .B(\end_x_8__N_295[3] ), .C(n2450), .Z(n2097)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1315_3_lut.init = 16'hc5c5;
    LUT4 i2_3_lut_adj_36 (.A(n396[3]), .B(n396[1]), .C(n396[2]), .Z(n4334)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_36.init = 16'hfefe;
    LUT4 i1663_3_lut (.A(n396[2]), .B(n396[4]), .C(n396[3]), .Z(n2450)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i1663_3_lut.init = 16'hcece;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n5155), .B(n2105), .C(state_c[1]), 
         .D(n5130), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(247[10] 258[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'hca0a;
    LUT4 i1323_4_lut (.A(n5156), .B(n396[9]), .C(n5137), .D(n4334), 
         .Z(n2105)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(233[9] 246[16])
    defparam i1323_4_lut.init = 16'hcecf;
    LUT4 i974_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n5170), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(226[30:54])
    defparam i974_2_lut_3_lut_4_lut.init = 16'h78f0;
    rom_8x4096 rom_8x4096_inst (.rom_addr({rom_addr}), .sys_clk_50MHz(sys_clk_50MHz), 
            .GND_net(GND_net), .rom_q({rom_q})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(275[12] 276[17])
    
endmodule
//
// Verilog Description of module rom_8x4096
//

module rom_8x4096 (rom_addr, sys_clk_50MHz, GND_net, rom_q) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    input sys_clk_50MHz;
    input GND_net;
    output [7:0]rom_q;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
    wire VCC_net;
    
    DP8KC rom_8x4096_0_3_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(rom_addr[0]), 
          .ADA2(rom_addr[1]), .ADA3(rom_addr[2]), .ADA4(rom_addr[3]), 
          .ADA5(rom_addr[4]), .ADA6(rom_addr[5]), .ADA7(rom_addr[6]), 
          .ADA8(rom_addr[7]), .ADA9(rom_addr[8]), .ADA10(rom_addr[9]), 
          .ADA11(rom_addr[10]), .ADA12(rom_addr[11]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(sys_clk_50MHz), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(rom_q[6]), .DOA1(rom_q[7])) /* synthesis MEM_LPC_FILE="rom_8x4096.lpc", MEM_INIT_FILE="rom_8x4096.mem", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=17, LSE_LLINE=275, LSE_RLINE=276 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(275[12] 276[17])
    defparam rom_8x4096_0_3_0.DATA_WIDTH_A = 2;
    defparam rom_8x4096_0_3_0.DATA_WIDTH_B = 2;
    defparam rom_8x4096_0_3_0.REGMODE_A = "OUTREG";
    defparam rom_8x4096_0_3_0.REGMODE_B = "NOREG";
    defparam rom_8x4096_0_3_0.CSDECODE_A = "0b000";
    defparam rom_8x4096_0_3_0.CSDECODE_B = "0b111";
    defparam rom_8x4096_0_3_0.WRITEMODE_A = "NORMAL";
    defparam rom_8x4096_0_3_0.WRITEMODE_B = "NORMAL";
    defparam rom_8x4096_0_3_0.GSR = "ENABLED";
    defparam rom_8x4096_0_3_0.RESETMODE = "SYNC";
    defparam rom_8x4096_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_8x4096_0_3_0.INIT_DATA = "STATIC";
    defparam rom_8x4096_0_3_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_09 = "0x0000000800000000000600200000010A800000000000000000020100000000000028000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_0A = "0x0AA5400000000010C000000000000000600000000000000000002000000000810000000000000010";
    defparam rom_8x4096_0_3_0.INITVAL_0B = "0x0A0150000000000080000A800000000A8000800402000000000A8050000500015000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_0C = "0x08A54000000005500000002000000002010000040000008000000000000000000000000AA5400001";
    defparam rom_8x4096_0_3_0.INITVAL_0D = "0x0AA55180000080000000000010000108001000000AA540000008005080000A8000000D0800000000";
    defparam rom_8x4096_0_3_0.INITVAL_0E = "0x00055000000AA54000050AA55180040000008005000000000400000080000000008000000000000D";
    defparam rom_8x4096_0_3_0.INITVAL_0F = "0x000011800000A550800000005180010AA551800000001080010A0050800D00015000100AA5400000";
    defparam rom_8x4096_0_3_0.INITVAL_10 = "0x00000000C0000000000000000020000000000050000000001000000008010800008000000000800D";
    defparam rom_8x4096_0_3_0.INITVAL_11 = "0x0AA00000140004000000000421800100A000000D0AA550800100200000000A8000000D0AA0000000";
    defparam rom_8x4096_0_3_0.INITVAL_12 = "0x0A800000010AA000000D0AA000000A1544000000000000000400040000000000000000000000000D";
    defparam rom_8x4096_0_3_0.INITVAL_13 = "0x00040000000AAC000000002C00000D0AA40000000000000001082400000000240000D50AA4000000";
    defparam rom_8x4096_0_3_0.INITVAL_14 = "0x0000000000000000000000000060000000000000000000003000000018050004000000002C000004";
    defparam rom_8x4096_0_3_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC rom_8x4096_0_1_2 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(rom_addr[0]), 
          .ADA2(rom_addr[1]), .ADA3(rom_addr[2]), .ADA4(rom_addr[3]), 
          .ADA5(rom_addr[4]), .ADA6(rom_addr[5]), .ADA7(rom_addr[6]), 
          .ADA8(rom_addr[7]), .ADA9(rom_addr[8]), .ADA10(rom_addr[9]), 
          .ADA11(rom_addr[10]), .ADA12(rom_addr[11]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(sys_clk_50MHz), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(rom_q[2]), .DOA1(rom_q[3])) /* synthesis MEM_LPC_FILE="rom_8x4096.lpc", MEM_INIT_FILE="rom_8x4096.mem", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=17, LSE_LLINE=275, LSE_RLINE=276 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(275[12] 276[17])
    defparam rom_8x4096_0_1_2.DATA_WIDTH_A = 2;
    defparam rom_8x4096_0_1_2.DATA_WIDTH_B = 2;
    defparam rom_8x4096_0_1_2.REGMODE_A = "OUTREG";
    defparam rom_8x4096_0_1_2.REGMODE_B = "NOREG";
    defparam rom_8x4096_0_1_2.CSDECODE_A = "0b000";
    defparam rom_8x4096_0_1_2.CSDECODE_B = "0b111";
    defparam rom_8x4096_0_1_2.WRITEMODE_A = "NORMAL";
    defparam rom_8x4096_0_1_2.WRITEMODE_B = "NORMAL";
    defparam rom_8x4096_0_1_2.GSR = "ENABLED";
    defparam rom_8x4096_0_1_2.RESETMODE = "SYNC";
    defparam rom_8x4096_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_8x4096_0_1_2.INIT_DATA = "STATIC";
    defparam rom_8x4096_0_1_2.INITVAL_00 = "0x0FA4000CAA120021548000000000060BC90004DB0801D0EA74014E70A000000A4008550A00000000";
    defparam rom_8x4096_0_1_2.INITVAL_01 = "0x0600A1D4E00180C0600C0303001A550A00C000300001614000000000000C00000000000025D0A001";
    defparam rom_8x4096_0_1_2.INITVAL_02 = "0x008580600110090000C30000012280028040000400200018300600C0183000A561600C018B00180C";
    defparam rom_8x4096_0_1_2.INITVAL_03 = "0x154B001A550E00001800018200600405C300182E0600C00030018000600C01830000EB0A00C1AC30";
    defparam rom_8x4096_0_1_2.INITVAL_04 = "0x0000D0AA7001824060040583005C400600401830018000600414A2000A5A1400C00010008A60201A";
    defparam rom_8x4096_0_1_2.INITVAL_05 = "0x180000000000024074AA1580214A0006A550B80C02CB001A561400A12CA0014AD0A0051D00001800";
    defparam rom_8x4096_0_1_2.INITVAL_06 = "0x1582001A540200401800198CC0000D0BA60018CC0000C018200180C0000C01800018CC0000000004";
    defparam rom_8x4096_0_1_2.INITVAL_07 = "0x000090BA40018CC00004030001180C0004C018000180C000040180000A5C0000D0AA50008E80006A";
    defparam rom_8x4096_0_1_2.INITVAL_08 = "0x00000000000002402A590A8AA154AA054A61500D0D80002E840000A0D000014D4000071080001808";
    defparam rom_8x4096_0_1_2.INITVAL_09 = "0x054A800000000000A80C04A80180010B455000AE154EA1C0000603508000000000F00A014AA10000";
    defparam rom_8x4096_0_1_2.INITVAL_0A = "0x00001100010D00000005000000000000600000150000000002156AA00000156EA000061000212000";
    defparam rom_8x4096_0_1_2.INITVAL_0B = "0x00C401800A1540018009002811000C0028018008060580000C000801800C0C0001800E154AB10009";
    defparam rom_8x4096_0_1_2.INITVAL_0C = "0x06A581800A0001018001100090000006030000000486000068000800000A000A00000D012011000C";
    defparam rom_8x4096_0_1_2.INITVAL_0D = "0x006000800C0000018004000C01800C000C01800C000001800C000001800C000C01800401A5A1000C";
    defparam rom_8x4096_0_1_2.INITVAL_0E = "0x006001800C0000018004000A50000A154550800C0000008004004E0080C0000001800E154AA18004";
    defparam rom_8x4096_0_1_2.INITVAL_0F = "0x0B4940800002AAA1000A12A400800C000000800E154AA1800C0044018004000C01800C0600018004";
    defparam rom_8x4096_0_1_2.INITVAL_10 = "0x00000048C0000000000000000030300000001800004A50002A154AA1500C02C001800E1545008004";
    defparam rom_8x4096_0_1_2.INITVAL_11 = "0x00280000C3060C00000E154EA0000C018C00000900280000090028000009002800000C030C000000";
    defparam rom_8x4096_0_1_2.INITVAL_12 = "0x002800000C000C0000040028000004000C00000E154AA1800403000000C0000800000E154C318004";
    defparam rom_8x4096_0_1_2.INITVAL_13 = "0x15240000000B4800000A0A8400000C0000000002154E80000C060C00000D0AE4000009002800004C";
    defparam rom_8x4096_0_1_2.INITVAL_14 = "0x00000000000000000000000000061A1542A148000000000000000000000D140C00006A0A8400000D";
    defparam rom_8x4096_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC rom_8x4096_0_0_3 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(rom_addr[0]), 
          .ADA2(rom_addr[1]), .ADA3(rom_addr[2]), .ADA4(rom_addr[3]), 
          .ADA5(rom_addr[4]), .ADA6(rom_addr[5]), .ADA7(rom_addr[6]), 
          .ADA8(rom_addr[7]), .ADA9(rom_addr[8]), .ADA10(rom_addr[9]), 
          .ADA11(rom_addr[10]), .ADA12(rom_addr[11]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(sys_clk_50MHz), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(rom_q[0]), .DOA1(rom_q[1])) /* synthesis MEM_LPC_FILE="rom_8x4096.lpc", MEM_INIT_FILE="rom_8x4096.mem", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=17, LSE_LLINE=275, LSE_RLINE=276 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(275[12] 276[17])
    defparam rom_8x4096_0_0_3.DATA_WIDTH_A = 2;
    defparam rom_8x4096_0_0_3.DATA_WIDTH_B = 2;
    defparam rom_8x4096_0_0_3.REGMODE_A = "OUTREG";
    defparam rom_8x4096_0_0_3.REGMODE_B = "NOREG";
    defparam rom_8x4096_0_0_3.CSDECODE_A = "0b000";
    defparam rom_8x4096_0_0_3.CSDECODE_B = "0b111";
    defparam rom_8x4096_0_0_3.WRITEMODE_A = "NORMAL";
    defparam rom_8x4096_0_0_3.WRITEMODE_B = "NORMAL";
    defparam rom_8x4096_0_0_3.GSR = "ENABLED";
    defparam rom_8x4096_0_0_3.RESETMODE = "SYNC";
    defparam rom_8x4096_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_8x4096_0_0_3.INIT_DATA = "STATIC";
    defparam rom_8x4096_0_0_3.INITVAL_00 = "0x0D200040000100000000000000D0090B480014090C00D01260014E300000000A0000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_01 = "0x0E00013400012000C00D1026001000100090AA600348000008000000000C00068000000000C00000";
    defparam rom_8x4096_0_0_3.INITVAL_02 = "0x000010C00800008000C30000001000000000000000000014250C0090B260000000E0090BA600120D";
    defparam rom_8x4096_0_0_3.INITVAL_03 = "0x00020018000600E154B0004551000E154B001CAA1600E154B0012550C00E154B001CA8000090AA60";
    defparam rom_8x4096_0_0_3.INITVAL_04 = "0x160080007001A090C00E154B0012D50C00E154B0012550C00E154B000A5F1E00E154B001CAA16034";
    defparam rom_8x4096_0_0_3.INITVAL_05 = "0x1800000000000200400001000000A8000000000E10070010021600E104B0014A90A000054B0004AA";
    defparam rom_8x4096_0_0_3.INITVAL_06 = "0x00000010080000E154B0054200000801000004A00000214000004A00000A154B0004200000000000";
    defparam rom_8x4096_0_0_3.INITVAL_07 = "0x0000001000010280000E15800004A0000EA15800004A00000E1580000A5C0000C0003001CAA160C0";
    defparam rom_8x4096_0_0_3.INITVAL_08 = "0x000000000000006040000100000000000000000801000180AC0000E05800014940000015800004AC";
    defparam rom_8x4096_0_0_3.INITVAL_09 = "0x000000000000003050090ACAA0000800455100021002A0000A174B00000000002000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_0A = "0x154A800028000000000A000000000000400000CA0000000000006000000001830000200000001000";
    defparam rom_8x4096_0_0_3.INITVAL_0B = "0x1402A000000000A10000154A800002104AA1000005400000021000A0000A0002A000080000200000";
    defparam rom_8x4096_0_0_3.INITVAL_0C = "0x12A5A000000002A0000800000100000603000000004000000000000000000000000000000A800002";
    defparam rom_8x4096_0_0_3.INITVAL_0D = "0x154AA1800212A5A0000E154AA1800E154AA1800E154AA1800212A5A0000E154AA1800E1400000002";
    defparam rom_8x4096_0_0_3.INITVAL_0E = "0x154AA180020AA560000E154AA1800E154AA1800E154AA1800E154AA180D00000000008000001000E";
    defparam rom_8x4096_0_0_3.INITVAL_0F = "0x000021800A14A55180000002A18002154AA18000000011800A1002A0000E154AA180021AA560000E";
    defparam rom_8x4096_0_0_3.INITVAL_10 = "0x00000010C00000000000000000002000000010000000014000000000000E10001100000000A1800E";
    defparam rom_8x4096_0_0_3.INITVAL_11 = "0x154AA180281140000008000800000215400000001500000000150000000A154AA180021040000000";
    defparam rom_8x4096_0_0_3.INITVAL_12 = "0x154C000002154000000E154C00000E154C000008000001000E154AA180A00000000008000800000E";
    defparam rom_8x4096_0_0_3.INITVAL_13 = "0x000800000A0AAC000000004C000002154C000000000800000A014000000C000C00000015000000EA";
    defparam rom_8x4096_0_0_3.INITVAL_14 = "0x00000000000000000000000000502000000010000000000000000000000800480000C0004C000008";
    defparam rom_8x4096_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC rom_8x4096_0_2_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(rom_addr[0]), 
          .ADA2(rom_addr[1]), .ADA3(rom_addr[2]), .ADA4(rom_addr[3]), 
          .ADA5(rom_addr[4]), .ADA6(rom_addr[5]), .ADA7(rom_addr[6]), 
          .ADA8(rom_addr[7]), .ADA9(rom_addr[8]), .ADA10(rom_addr[9]), 
          .ADA11(rom_addr[10]), .ADA12(rom_addr[11]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(sys_clk_50MHz), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(rom_q[4]), .DOA1(rom_q[5])) /* synthesis MEM_LPC_FILE="rom_8x4096.lpc", MEM_INIT_FILE="rom_8x4096.mem", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=17, LSE_LLINE=275, LSE_RLINE=276 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(275[12] 276[17])
    defparam rom_8x4096_0_2_1.DATA_WIDTH_A = 2;
    defparam rom_8x4096_0_2_1.DATA_WIDTH_B = 2;
    defparam rom_8x4096_0_2_1.REGMODE_A = "OUTREG";
    defparam rom_8x4096_0_2_1.REGMODE_B = "NOREG";
    defparam rom_8x4096_0_2_1.CSDECODE_A = "0b000";
    defparam rom_8x4096_0_2_1.CSDECODE_B = "0b111";
    defparam rom_8x4096_0_2_1.WRITEMODE_A = "NORMAL";
    defparam rom_8x4096_0_2_1.WRITEMODE_B = "NORMAL";
    defparam rom_8x4096_0_2_1.GSR = "ENABLED";
    defparam rom_8x4096_0_2_1.RESETMODE = "SYNC";
    defparam rom_8x4096_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_8x4096_0_2_1.INIT_DATA = "STATIC";
    defparam rom_8x4096_0_2_1.INITVAL_00 = "0x08200000000002400018000000000C0A80000C900A00108050000C70A00000004000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_01 = "0x020040800000251080040024000000000010AA400000000800000000000400000000000000400000";
    defparam rom_8x4096_0_2_1.INITVAL_02 = "0x00001080000320000041000090001800000000000000000255080010A24000000020010A00000250";
    defparam rom_8x4096_0_2_1.INITVAL_03 = "0x00030008000200D0AA70002700A0000005000A000A0010AA40002000A0010A24001A40000040AA40";
    defparam rom_8x4096_0_2_1.INITVAL_04 = "0x0E00000050002400A00D0824002255080000024000255080050AA7000A550A00E0000001A000E000";
    defparam rom_8x4096_0_2_1.INITVAL_05 = "0x180000000000000000000000400000020000080500010000000200400010000010A0000027000255";
    defparam rom_8x4096_0_2_1.INITVAL_06 = "0x00000000000000D0A0000C81C0000400830008500000D0AA5000814000010A00001A500000000000";
    defparam rom_8x4096_0_2_1.INITVAL_07 = "0x000040000000A0400000008001AA54000010A000002500000D0A00000A50000040000001A0C00000";
    defparam rom_8x4096_0_2_1.INITVAL_08 = "0x0000000000000180000000000000000200000804008000001C000040080000014000000380001A54";
    defparam rom_8x4096_0_2_1.INITVAL_09 = "0x080010C00000000000090D615000090AC56100061520A080050EA7A1000000001140050000000000";
    defparam rom_8x4096_0_2_1.INITVAL_0A = "0x000020800000268000000000000000006000000000000000000060000000012600000002A5400009";
    defparam rom_8x4096_0_2_1.INITVAL_0B = "0x01280180000005A180060044218006004401800E174AB10006004601800C00C801800C0000000006";
    defparam rom_8x4096_0_2_1.INITVAL_0C = "0x04A560800502C00180000309000000060300000208006000000000000005000500000600C020800C";
    defparam rom_8x4096_0_2_1.INITVAL_0D = "0x00600100061580A1800000A541800C00A5418006000020800600000180060046A0800805C5400006";
    defparam rom_8x4096_0_2_1.INITVAL_0E = "0x0060018006000020800212A001000A154FF1800C000000000E12806180150AA551800C0000018008";
    defparam rom_8x4096_0_2_1.INITVAL_0F = "0x14A681000A16A00100000ACA01000C0000010004000001800C012001800014AC0180270800208000";
    defparam rom_8x4096_0_2_1.INITVAL_10 = "0x00000000C0000000000000000018150AA550A80A1280000030000000180C0005A180040005A18008";
    defparam rom_8x4096_0_2_1.INITVAL_11 = "0x000C0000C3034C00000C000C01800C018C000006000C01000C000C000006004400000C018C000000";
    defparam rom_8x4096_0_2_1.INITVAL_12 = "0x004400000C000C000008000C00000D0AAC00000C000000000E0A2C00006A154C31800C0000000008";
    defparam rom_8x4096_0_2_1.INITVAL_13 = "0x0ACC00000A0A080000000D08000006000800000C000C00000C060C000004000C00008C000C000006";
    defparam rom_8x4096_0_2_1.INITVAL_14 = "0x00000000000000000000000000180000040000550AA550AA0A1546A1400C00CC0000010D0800000A";
    defparam rom_8x4096_0_2_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_8x4096_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    VHI i1 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module pll
//

module pll (sys_clk_c, sys_clk_50MHz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input sys_clk_c;
    output sys_clk_50MHz;
    input GND_net;
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
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
            .PLLADDR4(GND_net), .CLKOP(sys_clk_50MHz)) /* synthesis FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=55 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(51[5] 55[2])
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
// Verilog Description of module lcd_init
//

module lcd_init (GND_net, cnt_s2_num, init_data, sys_clk_50MHz, \state[4] , 
            sys_clk_50MHz_enable_35, \state[5] , n5382, n1392, lcd_rst_c, 
            \init_data_8__N_240[5] , \init_data_8__N_240[4] , en_write_init, 
            \init_data_8__N_240[2] , n2459, \init_data_8__N_240[0] , wr_done) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [6:0]cnt_s2_num;
    output [8:0]init_data;
    input sys_clk_50MHz;
    output \state[4] ;
    input sys_clk_50MHz_enable_35;
    output \state[5] ;
    input n5382;
    input n1392;
    output lcd_rst_c;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    output en_write_init;
    input \init_data_8__N_240[2] ;
    output n2459;
    input \init_data_8__N_240[0] ;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    
    wire n4197;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    wire [17:0]n357;
    
    wire n4198, n5050, n3984, n3978, n1966, n5122, n4, n5126, 
        n5125, n71, n10, n14, n10_adj_541, cnt_s4_num_done_N_274, 
        n4833, n2296;
    wire [8:0]init_data_8__N_97;
    
    wire n5151, n4793, n5175;
    wire [6:0]n24;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n2462, n4736, n4722;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire lcd_rst_high_flag_N_270, n4721, n4785, n4781, n37, n46, 
        n4402, n4865, n2374, n2371, n4817;
    wire [5:0]state_5__N_192;
    
    wire sys_clk_50MHz_enable_8, n72, n1394, n5154, n5132, n15, 
        n4664, n42, cnt_150ms_22__N_221;
    wire [22:0]n97;
    
    wire n54, n4623, n15_adj_542, n5123, n73, n5127, n4979, cnt_s2_num_done_N_272, 
        n4980, n4202, n46_adj_543, n25, n4217, n4863;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n4868, n5183, n4866, n4872, n4216, n63, n5134;
    wire [6:0]n159;
    
    wire n5159, n39, n61, n5142, n4233, n83, n5121, n4215, n5019, 
        n5147, n5146, n4711, n4861, lcd_rst_high_flag, n4201, n4200, 
        n4214, n4195, n4196, n4862, n4661, n4199, n2347, n5020, 
        n5184, n33, n5176, n4213, n4749, n4864, n52, n4870, 
        n5182, n5181, n30, n1337, n5138, n4991, n4212;
    wire [5:0]state_5__N_180;
    
    wire n4194, n4752, n4211, sys_clk_50MHz_enable_52;
    wire [5:0]state_5__N_186;
    
    wire n2006, n4668, n4_adj_544, n4777, n4210, n4209, n4208, 
        n4207, n2004, n2002, n2000, n1997, n4666, n4761, n10_adj_545, 
        n4779, n4992;
    wire [5:0]state_5__N_174;
    
    wire n4683, n10_adj_546, n4791, n5141;
    wire [5:0]state_5__N_168;
    
    wire n4723, n43, n4801, n3506, n5018;
    
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4197), .COUT(n4198), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_3__bdd_4_lut_4202 (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[0]), .Z(n5050)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (D)+!B !(C)))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut_4202.init = 16'h6523;
    LUT4 n3984_bdd_4_lut (.A(n3984), .B(n3978), .C(n1966), .D(cnt_s2_num[4]), 
         .Z(n5122)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n3984_bdd_4_lut.init = 16'heef0;
    LUT4 i1_2_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_s4_num[1]), .B(n5126), .C(cnt_s4_num[2]), 
         .D(n5125), .Z(n71)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i4_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[14]), .C(cnt_s4_num[11]), 
         .D(cnt_s4_num[12]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt_s4_num[17]), .B(n14), .C(n10_adj_541), .D(cnt_s4_num[14]), 
         .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(cnt_s4_num[0]), .B(n4833), .C(n2296), .D(cnt_s4_num[3]), 
         .Z(n14)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i6_4_lut.init = 16'h0200;
    LUT4 i2_2_lut (.A(cnt_s4_num[11]), .B(cnt_s4_num[12]), .Z(n10_adj_541)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    LUT4 i4022_4_lut (.A(cnt_s4_num[10]), .B(n5151), .C(n4793), .D(cnt_s4_num[15]), 
         .Z(n4833)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4022_4_lut.init = 16'hfffe;
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n5175), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    LUT4 i3982_2_lut (.A(cnt_s4_num[13]), .B(cnt_s4_num[16]), .Z(n4793)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3982_2_lut.init = 16'heeee;
    LUT4 i1673_1_lut (.A(state[0]), .Z(n2462)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1673_1_lut.init = 16'h5555;
    LUT4 i4103_4_lut (.A(n4736), .B(n4722), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4103_4_lut.init = 16'h0010;
    LUT4 i2_4_lut (.A(n4721), .B(cnt_150ms[22]), .C(n4785), .D(n4781), 
         .Z(n4722)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hbfff;
    LUT4 i3_4_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[8]), .C(cnt_s4_num[7]), 
         .D(cnt_s4_num[6]), .Z(n37)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i3975_2_lut (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .Z(n4785)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3975_2_lut.init = 16'h8888;
    PFUMX i4053 (.BLUT(n46), .ALUT(n4402), .C0(cnt_s2_num[4]), .Z(n4865));
    LUT4 i3971_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n4781)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3971_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_10 (.A(cnt_150ms[18]), .B(n2374), .C(cnt_150ms[9]), 
         .D(n2371), .Z(n4721)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_10.init = 16'hffdf;
    LUT4 i3_4_lut_adj_11 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n2374)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_11.init = 16'hfffb;
    LUT4 i3_4_lut_adj_12 (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .C(cnt_150ms[13]), 
         .D(n4817), .Z(n2371)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_12.init = 16'hfeff;
    LUT4 i4000_3_lut_rep_54 (.A(n37), .B(cnt_s4_num[5]), .C(cnt_s4_num[4]), 
         .Z(n5151)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4000_3_lut_rep_54.init = 16'hfefe;
    LUT4 i4006_3_lut (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .Z(n4817)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4006_3_lut.init = 16'h8080;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[17]), .C(cnt_150ms[7]), 
         .Z(n4736)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i258_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_8)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i258_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_s4_num[1]), .B(n5126), .C(n4), .D(n5125), 
         .Z(n72)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf040;
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h1014;
    LUT4 i4018_2_lut_rep_35_4_lut (.A(n37), .B(cnt_s4_num[5]), .C(cnt_s4_num[4]), 
         .D(n5154), .Z(n5132)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4018_2_lut_rep_35_4_lut.init = 16'hfffe;
    LUT4 i30_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[0]), .Z(n15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i30_4_lut_4_lut.init = 16'h2851;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(n4664), .Z(n42)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'he080;
    FD1S3IX cnt_150ms_680__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i0.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(cnt_s4_num[13]), .B(n10), .C(cnt_s4_num[10]), .Z(n54)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i8_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[0]), .Z(n4623)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A (B+(C+!(D))))) */ ;
    defparam i8_4_lut_4_lut.init = 16'h2308;
    LUT4 i1_3_lut_4_lut_4_lut_adj_13 (.A(cnt_s2_num[3]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n15_adj_542)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1_3_lut_4_lut_4_lut_adj_13.init = 16'h5840;
    LUT4 i1_4_lut (.A(cnt_s4_num[0]), .B(n5123), .C(n5125), .D(cnt_s4_num[2]), 
         .Z(n73)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut.init = 16'h5111;
    LUT4 cnt_s4_num_2__bdd_4_lut (.A(cnt_s4_num[2]), .B(n5127), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[1]), .Z(n4979)) /* synthesis lut_function=(!(A (C+(D))+!A (B+((D)+!C)))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut.init = 16'h001a;
    LUT4 i1_2_lut_rep_57 (.A(cnt_s4_num[17]), .B(cnt_s4_num[16]), .Z(n5154)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_57.init = 16'heeee;
    LUT4 i1_2_lut_rep_30_3_lut_4_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[16]), 
         .C(n5151), .D(n54), .Z(n5127)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_30_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX state_FSM_i0 (.D(n5382), .SP(sys_clk_50MHz_enable_8), .CK(sys_clk_50MHz), 
            .Q(\state[5] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i4100_2_lut_rep_29_2_lut_3_lut_4_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[16]), 
         .C(n54), .D(n5151), .Z(n5126)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4100_2_lut_rep_29_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3_4_lut_adj_14 (.A(n3978), .B(cnt_s2_num[5]), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_14.init = 16'h2000;
    LUT4 n165_bdd_2_lut_4158 (.A(n4979), .B(cnt_s4_num[0]), .Z(n4980)) /* synthesis lut_function=(A (B)) */ ;
    defparam n165_bdd_2_lut_4158.init = 16'h8888;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4202), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    PFUMX i67 (.BLUT(n46_adj_543), .ALUT(n25), .C0(state[2]), .Z(init_data_8__N_97[8]));
    CCU2D cnt_150ms_680_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4217), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_23.INJECT1_1 = "NO";
    LUT4 init_data_8__I_0_i7_4_lut_4_lut (.A(cnt_s2_num[6]), .B(state[2]), 
         .C(n4863), .D(init_data_8__N_231[7]), .Z(init_data_8__N_97[6])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam init_data_8__I_0_i7_4_lut_4_lut.init = 16'h7340;
    PFUMX init_data_8__I_0_i2 (.BLUT(init_data_8__N_231[1]), .ALUT(init_data_8__N_240[1]), 
          .C0(state[2]), .Z(init_data_8__N_97[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[5]), .C(n4868), 
         .D(n5183), .Z(n25)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i2525_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n4866), .Z(init_data_8__N_240[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i2525_2_lut_2_lut.init = 16'h4444;
    LUT4 i2507_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n4872), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i2507_2_lut_2_lut.init = 16'h4444;
    CCU2D cnt_150ms_680_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4216), .COUT(n4217), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_21.INJECT1_1 = "NO";
    LUT4 init_data_8__I_0_i8_4_lut_4_lut (.A(cnt_s2_num[6]), .B(state[2]), 
         .C(n63), .D(init_data_8__N_231[7]), .Z(init_data_8__N_97[7])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam init_data_8__I_0_i8_4_lut_4_lut.init = 16'h7340;
    LUT4 i880_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n5134), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i880_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[0]), .Z(n3978)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1000;
    LUT4 i847_2_lut_rep_62 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n5159)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i847_2_lut_rep_62.init = 16'h8888;
    PFUMX i65 (.BLUT(n39), .ALUT(n42), .C0(cnt_s4_num[0]), .Z(n61));
    LUT4 i854_2_lut_rep_45_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n5142)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i854_2_lut_rep_45_3_lut.init = 16'h8080;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;
    LUT4 i852_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i852_2_lut_3_lut.init = 16'h7878;
    PFUMX i88 (.BLUT(n4233), .ALUT(n71), .C0(cnt_s4_num[3]), .Z(n83));
    LUT4 cnt_s4_num_3__bdd_4_lut_4253 (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[0]), .Z(n5121)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (D)+!B !(C+(D))))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut_4253.init = 16'h6423;
    CCU2D cnt_150ms_680_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4215), .COUT(n4216), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_19.INJECT1_1 = "NO";
    LUT4 i1186_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n1966)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1186_3_lut_4_lut.init = 16'h7088;
    LUT4 i861_2_lut_rep_37_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n5134)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i861_2_lut_rep_37_3_lut_4_lut.init = 16'h8000;
    LUT4 i859_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i859_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 cnt_s2_num_2__bdd_4_lut_4186 (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n5019)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D)))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_4186.init = 16'he020;
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1392), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    LUT4 i4080_3_lut_4_lut (.A(n5147), .B(n5146), .C(cnt_s2_num[4]), .D(n4711), 
         .Z(n4861)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i4080_3_lut_4_lut.init = 16'hefe0;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n2462), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4201), .COUT(n4202), .S0(n357[15]), .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 i2712_2_lut_rep_26_3_lut_3_lut_4_lut (.A(n5154), .B(n5151), .C(n54), 
         .D(cnt_s4_num[1]), .Z(n5123)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2712_2_lut_rep_26_3_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4200), .COUT(n4201), .S0(n357[13]), .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D cnt_150ms_680_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4214), .COUT(n4215), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_17.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4195), .COUT(n4196), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    PFUMX i4051 (.BLUT(n4861), .ALUT(n4862), .C0(cnt_s2_num[5]), .Z(n4863));
    LUT4 i15_2_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n4661)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4199), .COUT(n4200), .S0(n357[11]), .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 i4146_2_lut_3_lut_4_lut (.A(n54), .B(n5151), .C(cnt_s4_num[2]), 
         .D(n5154), .Z(n2347)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i4146_2_lut_3_lut_4_lut.init = 16'h0001;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4196), .COUT(n4197), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 mux_288_Mux_7_i63_4_lut (.A(n5020), .B(n5184), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n63)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_288_Mux_7_i63_4_lut.init = 16'h0aca;
    LUT4 i2579_4_lut (.A(n33), .B(\state[4] ), .C(n5127), .D(n5176), 
         .Z(init_data_8__N_231[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i2579_4_lut.init = 16'hc8c0;
    CCU2D cnt_150ms_680_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4213), .COUT(n4214), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_15.INJECT1_1 = "NO";
    FD1P3AX lcd_rst_172 (.D(n5382), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    LUT4 i49_4_lut (.A(cnt_s4_num[0]), .B(n5125), .C(cnt_s4_num[3]), .D(n5126), 
         .Z(n33)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i49_4_lut.init = 16'hcac0;
    LUT4 init_data_8__I_0_i6_3_lut (.A(init_data_8__N_231[5]), .B(\init_data_8__N_240[5] ), 
         .C(state[2]), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i2580_4_lut (.A(n5050), .B(\state[4] ), .C(n5125), .D(n5126), 
         .Z(init_data_8__N_231[5])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i2580_4_lut.init = 16'hc8c0;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n4749), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    L6MUX21 i4054 (.D0(n4864), .D1(n4865), .SD(cnt_s2_num[5]), .Z(n4866));
    LUT4 i1_4_lut_adj_15 (.A(n52), .B(n5125), .C(n4664), .D(cnt_s4_num[1]), 
         .Z(n4749)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_15.init = 16'hccec;
    L6MUX21 i4060 (.D0(n4870), .D1(n5122), .SD(cnt_s2_num[5]), .Z(n4872));
    LUT4 i4112_3_lut_4_lut (.A(n54), .B(n5151), .C(cnt_s4_num[17]), .D(cnt_s4_num[16]), 
         .Z(n4664)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i4112_3_lut_4_lut.init = 16'h0001;
    LUT4 i4073_3_lut_then_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[2]), .Z(n5182)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C+(D)))) */ ;
    defparam i4073_3_lut_then_4_lut.init = 16'hbb9f;
    LUT4 i4073_3_lut_else_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[2]), .Z(n5181)) /* synthesis lut_function=(!(A (B)+!A !(B (C (D))+!B (C+(D))))) */ ;
    defparam i4073_3_lut_else_4_lut.init = 16'h7332;
    LUT4 i69_3_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .Z(n52)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i69_3_lut.init = 16'h4242;
    PFUMX i4058 (.BLUT(n15_adj_542), .ALUT(n30), .C0(cnt_s2_num[4]), .Z(n4870));
    LUT4 state_5__N_164_I_0_2_lut (.A(state[2]), .B(\state[4] ), .Z(en_write_init)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(275[19:72])
    defparam state_5__N_164_I_0_2_lut.init = 16'heeee;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n1337), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_28_3_lut_4_lut (.A(n54), .B(n5151), .C(n5138), .D(n5154), 
         .Z(n5125)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_rep_28_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[0]), .Z(n4711)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 n4829_bdd_4_lut (.A(n5132), .B(cnt_s4_num[0]), .C(n54), .D(n2296), 
         .Z(n4991)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n4829_bdd_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n54), .B(n5151), .C(n83), .D(n5154), 
         .Z(n1337)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'hfffe;
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    LUT4 i873_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n5142), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i873_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D cnt_150ms_680_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4212), .COUT(n4213), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_13.INJECT1_1 = "NO";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    PFUMX i4203 (.BLUT(n5181), .ALUT(n5182), .C0(cnt_s2_num[3]), .Z(n5183));
    LUT4 i1670_1_lut (.A(\state[5] ), .Z(n2459)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1670_1_lut.init = 16'h5555;
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1394), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1392), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_35), .CD(n1394), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4194), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_17 (.A(n5127), .B(n5138), .C(n15), .D(n5126), 
         .Z(n4752)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_adj_17.init = 16'hfeee;
    CCU2D cnt_150ms_680_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4211), .COUT(n4212), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_11.INJECT1_1 = "NO";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    LUT4 i1225_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state[3]), .Z(n2006)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1225_4_lut.init = 16'h3b0a;
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n4661), .SP(sys_clk_50MHz_enable_52), .CD(n5175), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=95 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_18 (.A(cnt_150ms[16]), .B(n4668), .C(n4_adj_544), 
         .D(n4777), .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_18.init = 16'hfdff;
    CCU2D cnt_150ms_680_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4210), .COUT(n4211), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_680_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4209), .COUT(n4210), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_680_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4208), .COUT(n4209), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_150ms_680_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4207), .COUT(n4208), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_680_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_3.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i1 (.D(n2006), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2004), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2002), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2000), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AY state_FSM_i5 (.D(n1997), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_19 (.A(cnt_150ms[14]), .B(cnt_150ms[5]), .C(cnt_150ms[6]), 
         .D(n4666), .Z(n4668)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_19.init = 16'hfffe;
    PFUMX i4052 (.BLUT(n4761), .ALUT(n4623), .C0(cnt_s2_num[4]), .Z(n4864));
    LUT4 i3967_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n4777)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3967_2_lut.init = 16'h8888;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4194), .COUT(n4195), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_20 (.A(cnt_150ms[3]), .B(cnt_150ms[4]), .C(cnt_150ms[22]), 
         .D(cnt_150ms[2]), .Z(n10_adj_545)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_20.init = 16'hffef;
    LUT4 i2_4_lut_adj_21 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n4779), 
         .D(cnt_150ms[18]), .Z(n4666)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_4_lut_adj_21.init = 16'hffdf;
    LUT4 i29_4_lut (.A(\state[4] ), .B(\init_data_8__N_240[0] ), .C(state[2]), 
         .D(n4752), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i29_4_lut.init = 16'hcac0;
    LUT4 i3969_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n4779)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3969_2_lut.init = 16'h8888;
    PFUMX i4162 (.BLUT(n4991), .ALUT(n73), .C0(cnt_s4_num[3]), .Z(n4992));
    FD1S3IX cnt_150ms_680__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_680__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680__i22.GSR = "ENABLED";
    LUT4 i710_1_lut (.A(\state[4] ), .Z(n1394)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i710_1_lut.init = 16'h5555;
    LUT4 i1223_4_lut (.A(state[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n2004)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1223_4_lut.init = 16'heca0;
    LUT4 i1221_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state[1]), .Z(n2002)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1221_4_lut.init = 16'h3b0a;
    CCU2D cnt_150ms_680_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4207), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_680_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_680_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_680_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_680_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_22 (.A(cnt_150ms[5]), .B(n4683), .C(n10_adj_546), 
         .D(n4666), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_22.init = 16'hfffd;
    LUT4 i2_4_lut_adj_23 (.A(cnt_150ms[13]), .B(n2374), .C(n4791), .D(n5141), 
         .Z(n4683)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_23.init = 16'hffdf;
    LUT4 i4_4_lut_adj_24 (.A(cnt_150ms[8]), .B(cnt_150ms[6]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[11]), .Z(n10_adj_546)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_24.init = 16'hfffb;
    LUT4 i3980_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n4791)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3980_2_lut.init = 16'h8888;
    LUT4 i1219_4_lut (.A(state[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state[0]), .Z(n2000)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1219_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_25 (.A(n4736), .B(n4723), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut_adj_25.init = 16'hffef;
    LUT4 i1216_2_lut (.A(state[0]), .B(state_5__N_168[0]), .Z(n1997)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1216_2_lut.init = 16'h8888;
    LUT4 i4050_4_lut (.A(n43), .B(n3984), .C(cnt_s2_num[4]), .D(n3978), 
         .Z(n4862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i4050_4_lut.init = 16'hcfca;
    LUT4 cnt_s2_num_0__bdd_4_lut_4230 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n5184)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_4230.init = 16'h1200;
    LUT4 i4056_3_lut_3_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[4]), .C(n3978), 
         .Z(n4868)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+!(C)))) */ ;
    defparam i4056_3_lut_3_lut.init = 16'h4747;
    LUT4 i1_2_lut_rep_49_2_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[0]), .Z(n5146)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_49_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_3_lut_3_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n4402)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_50_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .Z(n5147)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1_2_lut_rep_50_3_lut.init = 16'h2020;
    LUT4 i2_4_lut_adj_26 (.A(cnt_s4_num[1]), .B(n4664), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[0]), .Z(n4233)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i2_4_lut_adj_26.init = 16'h8400;
    LUT4 i1_3_lut_4_lut_adj_27 (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n43)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam i1_3_lut_4_lut_adj_27.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_4_lut_adj_28 (.A(cnt_s2_num[3]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[2]), .Z(n4761)) /* synthesis lut_function=(A (B+(C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_28.init = 16'hb8f8;
    LUT4 i2582_4_lut (.A(n5121), .B(\state[4] ), .C(n5125), .D(n5126), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i2582_4_lut.init = 16'hc8c0;
    LUT4 i707_1_lut_rep_78 (.A(state[2]), .Z(n5175)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i707_1_lut_rep_78.init = 16'h5555;
    LUT4 i2_4_lut_adj_29 (.A(n2347), .B(n4801), .C(cnt_s4_num[1]), .D(n72), 
         .Z(n39)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i2_4_lut_adj_29.init = 16'hffb3;
    LUT4 i1157_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1157_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i3990_2_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .Z(n4801)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i3990_2_lut.init = 16'hbbbb;
    LUT4 i708_2_lut_rep_51_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_52)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i708_2_lut_rep_51_2_lut.init = 16'hdddd;
    LUT4 i2584_4_lut (.A(n5127), .B(\state[4] ), .C(n4992), .D(n3506), 
         .Z(init_data_8__N_231[1])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i2584_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut_adj_30 (.A(\state[4] ), .B(n5127), .C(n61), .D(n4980), 
         .Z(n46_adj_543)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_adj_30.init = 16'haaa8;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut_adj_31 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    defparam i1_3_lut_4_lut_4_lut_4_lut_adj_31.init = 16'hf040;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n3984)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_79 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n5176)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_79.init = 16'h8888;
    LUT4 i1_2_lut_rep_41_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[3]), 
         .Z(n5138)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_41_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_32 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[0]), .D(cnt_s4_num[3]), .Z(n3506)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_3_lut_4_lut_adj_32.init = 16'h8000;
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4198), .COUT(n4199), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    LUT4 i4138_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i4138_3_lut.init = 16'h0101;
    LUT4 i5_3_lut_rep_44 (.A(cnt_150ms[0]), .B(n10_adj_545), .C(cnt_150ms[1]), 
         .Z(n5141)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i5_3_lut_rep_44.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(cnt_150ms[0]), .B(n10_adj_545), .C(cnt_150ms[1]), 
         .D(n4721), .Z(n4723)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 cnt_s2_num_2__bdd_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .Z(n5018)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;
    defparam cnt_s2_num_2__bdd_3_lut.init = 16'h5c5c;
    LUT4 i866_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n5159), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i866_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_adj_33 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n2296)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_33.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_adj_34 (.A(cnt_150ms[0]), .B(n10_adj_545), .C(cnt_150ms[1]), 
         .D(n2371), .Z(n4_adj_544)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut_adj_34.init = 16'hfffe;
    PFUMX i4176 (.BLUT(n5019), .ALUT(n5018), .C0(cnt_s2_num[4]), .Z(n5020));
    
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

module control (\data[0] , sys_clk_50MHz, \state_3__N_25[1] , init_data, 
            show_char_data, \state[5] , lcd_dc_c_8, \data[7] , \data[6] , 
            \data[5] , \data[4] , \data[3] , \data[2] , \data[1] , 
            en_write_init, en_write_show_char) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_25[1] ;
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
    input en_write_init;
    input en_write_show_char;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95;
    
    FD1S3AX data_i0 (.D(data_8__N_73[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_95), .CK(sys_clk_50MHz), .Q(\state_3__N_25[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(\state[5] ), 
         .Z(data_8__N_73[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
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
    FD1S3AX data_i8 (.D(data_8__N_73[8]), .CK(sys_clk_50MHz), .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX data_i7 (.D(data_8__N_73[7]), .CK(sys_clk_50MHz), .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX data_i6 (.D(data_8__N_73[6]), .CK(sys_clk_50MHz), .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3AX data_i5 (.D(data_8__N_73[5]), .CK(sys_clk_50MHz), .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(data_8__N_73[4]), .CK(sys_clk_50MHz), .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(data_8__N_73[3]), .CK(sys_clk_50MHz), .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i2 (.D(data_8__N_73[2]), .CK(sys_clk_50MHz), .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(data_8__N_73[1]), .CK(sys_clk_50MHz), .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i1.GSR = "ENABLED";
    PFUMX en_write_I_0 (.BLUT(en_write_init), .ALUT(en_write_show_char), 
          .C0(\state[5] ), .Z(en_write_N_95)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=83 */ ;
    
endmodule
