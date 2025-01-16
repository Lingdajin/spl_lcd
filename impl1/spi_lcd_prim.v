// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 22:16:09 2025
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
    
    wire VCC_net, sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, 
        lcd_mosi_c, lcd_cs_c, GND_net;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(34[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(38[17:26])
    
    wire en_write_init;
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(44[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(48[17:31])
    
    wire en_write_show_char;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    wire [5:0]state_adj_797;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_802;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    
    wire n14;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_810;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[17:21])
    
    wire sys_clk_50MHz_enable_50, n1338, sys_clk_50MHz_enable_84, sys_clk_50MHz_enable_45, 
        n5, n1213, n14114, n15564, n8443, n14240, sys_clk_50MHz_enable_58, 
        sys_clk_50MHz_enable_42;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .lcd_cs_c(lcd_cs_c), .cnt_sclk({cnt_sclk}), .n14114(n14114), 
            .sys_clk_50MHz_enable_50(sys_clk_50MHz_enable_50), .\state[2] (state[2]), 
            .lcd_sclk_c(lcd_sclk_c), .\state_3__N_25[1] (state_3__N_25[1]), 
            .\data[7] (data[7]), .n1338(n1338), .n14240(n14240), .\data[0] (data[0]), 
            .\data[1] (data[1]), .\data[4] (data[4]), .\data[2] (data[2]), 
            .\data[3] (data[3]), .\data[5] (data[5]), .\data[6] (data[6]), 
            .lcd_mosi_c(lcd_mosi_c)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
    ROM128X1A mux_283_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2E */ ;
    defparam mux_283_Mux_5.initval = 128'h000000000000000003C3038607107E2E;
    ROM128X1A mux_283_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_283_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_283_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_283_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14240), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_283_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_283_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    LUT4 m1_lut (.Z(n15564)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 i626_4_lut_rep_288 (.A(state_adj_797[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_810[0]), .D(cnt1_adj_810[1]), .Z(sys_clk_50MHz_enable_42)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i626_4_lut_rep_288.init = 16'hceee;
    LUT4 i1919_2_lut_4_lut (.A(state_adj_797[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_810[0]), .D(cnt1_adj_810[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i1919_2_lut_4_lut.init = 16'h3e1e;
    VHI i2 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i621_4_lut (.A(state_adj_802[2]), .B(length_num_flag), .C(n8443), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_84)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i621_4_lut.init = 16'hceee;
    LUT4 i1_2_lut_rep_295 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_58)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_295.init = 16'h2222;
    LUT4 i1923_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i1923_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i620_2_lut (.A(wr_done), .B(state_adj_797[4]), .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i620_2_lut.init = 16'hbbbb;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    lcd_init lcd_init_inst (.cnt_s2_num({cnt_s2_num}), .init_data({init_data}), 
            .sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_45(sys_clk_50MHz_enable_45), 
            .state({state_adj_797[5], Open_0, Open_1, Open_2, Open_3, 
            Open_4}), .n15564(n15564), .GND_net(GND_net), .lcd_rst_c(lcd_rst_c), 
            .n1338(n1338), .\state[4] (state_adj_797[4]), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .en_write_init(en_write_init), .\init_data_8__N_240[5] (init_data_8__N_240[5]), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .\init_data_8__N_240[2] (init_data_8__N_240[2]), 
            .n1213(n1213), .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    LUT4 i11232_2_lut_rep_323 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14240)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11232_2_lut_rep_323.init = 16'heeee;
    LUT4 i12550_3_lut_rep_197_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n14114)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12550_3_lut_rep_197_4_lut.init = 16'h0100;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    lcd_show_char lcd_show_char_inst (.state({Open_5, state_adj_802[2], 
            Open_6, Open_7}), .sys_clk_50MHz(sys_clk_50MHz), .cnt_length_num({cnt_length_num[4], 
            Open_8, Open_9, Open_10, cnt_length_num[0]}), .wr_done(wr_done), 
            .length_num_flag(length_num_flag), .n14(n14), .show_char_data({show_char_data}), 
            .sys_clk_50MHz_enable_58(sys_clk_50MHz_enable_58), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .\end_x_8__N_295[6] (end_x_8__N_295[6]), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_x_8__N_295[4] (end_x_8__N_295[4]), .\end_x_8__N_295[3] (end_x_8__N_295[3]), 
            .sys_clk_50MHz_enable_84(sys_clk_50MHz_enable_84), .n8443(n8443), 
            .\cnt_rom_prepare[2] (cnt_rom_prepare[2]), .\state_3__N_368[1] (state_3__N_368[1]), 
            .\state[3] (state_adj_802[3]), .GND_net(GND_net), .ascii_num({ascii_num}), 
            .en_write_show_char(en_write_show_char), .\end_x_8__N_295[7] (end_x_8__N_295[7])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    show_string_number_ctrl show_string_number_ctrl_inst (.ascii_num({ascii_num}), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_797[5]), 
            .cnt1({cnt1_adj_810}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\end_x_8__N_295[3] (end_x_8__N_295[3]), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .n1213(n1213), .sys_clk_50MHz_enable_42(sys_clk_50MHz_enable_42), 
            .\end_x_8__N_295[7] (end_x_8__N_295[7]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\state[3] (state_adj_802[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .init_data({init_data}), .show_char_data({show_char_data}), 
            .\state[5] (state_adj_797[5]), .en_write_init(en_write_init), 
            .en_write_show_char(en_write_show_char)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, lcd_cs_c, cnt_sclk, n14114, 
            sys_clk_50MHz_enable_50, \state[2] , lcd_sclk_c, \state_3__N_25[1] , 
            \data[7] , n1338, n14240, \data[0] , \data[1] , \data[4] , 
            \data[2] , \data[3] , \data[5] , \data[6] , lcd_mosi_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output [3:0]cnt_sclk;
    input n14114;
    input sys_clk_50MHz_enable_50;
    output \state[2] ;
    output lcd_sclk_c;
    input \state_3__N_25[1] ;
    input \data[7] ;
    output n1338;
    input n14240;
    input \data[0] ;
    input \data[1] ;
    input \data[4] ;
    input \data[2] ;
    input \data[3] ;
    input \data[5] ;
    input \data[6] ;
    output lcd_mosi_c;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]state_3__N_33;
    wire [3:0]n15;
    wire [3:0]n100;
    
    wire n2779, n2778, n2776, n1, sclk_N_53;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6879;
    wire [4:0]n25;
    
    wire n2793, mosi_N_56, n11951, mosi_N_55;
    wire [3:0]state_3__N_29;
    
    wire n6, n14110, n5867, n5868, mosi_N_65, sys_clk_50MHz_enable_99, 
        n14253, n11912, mosi_N_63, mosi_N_64, n2760, sys_clk_50MHz_enable_80, 
        n11948, n5900, mosi_N_60, mosi_N_61, mosi_N_58, mosi_N_59, 
        n11940, mosi_N_62, n11926, sys_clk_50MHz_enable_82, n13, n14, 
        n1461;
    wire [15:0]n120;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14114), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    LUT4 i735_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i735_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_50), .CD(n14114), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_50), .CD(n14114), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_50), .CD(n14114), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2779), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2778), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2776), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3IX cnt_delay_606__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6879), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_606__i4.GSR = "ENABLED";
    LUT4 i728_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i728_2_lut_3_lut.init = 16'h7878;
    PFUMX mosi_I_1 (.BLUT(n2793), .ALUT(mosi_N_56), .C0(n11951), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    LUT4 i721_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i721_2_lut.init = 16'h6666;
    LUT4 i1967_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2779)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1967_2_lut.init = 16'h2222;
    LUT4 i1966_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2778)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i1966_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 state_3__N_21_I_0_2_lut_rep_193 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n14110)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_193.init = 16'h2222;
    LUT4 i5036_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n5867), .Z(n5868)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5036_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1964_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2776)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i1964_3_lut_4_lut.init = 16'h2f22;
    LUT4 i640_1_lut (.A(wr_done), .Z(n1338)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i640_1_lut.init = 16'h5555;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i32_2_lut_rep_155_4_lut (.A(n14240), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_99)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_155_4_lut.init = 16'h0400;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i9933_3_lut_4_lut (.A(cnt_delay[2]), .B(n14253), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9933_3_lut_4_lut.init = 16'h7f80;
    LUT4 i12596_4_lut (.A(n11912), .B(cnt_delay[4]), .C(state[1]), .D(state[3]), 
         .Z(n6879)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12596_4_lut.init = 16'hffef;
    LUT4 i11290_2_lut (.A(cnt_delay[2]), .B(cnt_delay[3]), .Z(n11912)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11290_2_lut.init = 16'heeee;
    LUT4 i1949_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n2760)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1949_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14114), .C(state[1]), .Z(sys_clk_50MHz_enable_80)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i12541_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12541_4_lut.init = 16'h0200;
    LUT4 i12390_4_lut_4_lut (.A(n14110), .B(n11948), .C(n5868), .D(n2760), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12390_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5066_3_lut (.A(n5900), .B(\data[4] ), .C(mosi_N_60), .Z(n2793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5066_3_lut.init = 16'hcaca;
    LUT4 i5065_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n5900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5065_3_lut.init = 16'hcaca;
    LUT4 i11323_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n11948)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11323_2_lut.init = 16'h1111;
    LUT4 i12646_4_lut (.A(n14110), .B(mosi_N_58), .C(mosi_N_59), .D(n11940), 
         .Z(n11951)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12646_4_lut.init = 16'hfffe;
    LUT4 i11315_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n11940)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11315_3_lut.init = 16'h0101;
    LUT4 i1924_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_50), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i1924_2_lut.init = 16'h6666;
    LUT4 i5035_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n5867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5035_3_lut.init = 16'hcaca;
    LUT4 i12527_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n11926), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_82)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12527_4_lut.init = 16'hfbfa;
    LUT4 i11303_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n11926)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i11303_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i6990_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1461)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i6990_2_lut.init = 16'h2222;
    LUT4 i9912_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9912_2_lut.init = 16'h6666;
    LUT4 i9910_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9910_1_lut.init = 16'h5555;
    LUT4 i9915_2_lut_rep_336 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14253)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9915_2_lut_rep_336.init = 16'h8888;
    LUT4 i9919_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9919_2_lut_3_lut.init = 16'h7878;
    LUT4 i9926_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9926_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_80), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n1461), .SP(sys_clk_50MHz_enable_82), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    FD1S3IX cnt_delay_606__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6879), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_606__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_606__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6879), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_606__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_606__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6879), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_606__i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_606__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6879), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_606__i0.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n120[14]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n120[12]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n120[10]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n120[8]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n120[6]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n120[4]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n120[2]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_99), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (cnt_s2_num, init_data, sys_clk_50MHz, sys_clk_50MHz_enable_45, 
            state, n15564, GND_net, lcd_rst_c, n1338, \state[4] , 
            \init_data_8__N_240[0] , en_write_init, \init_data_8__N_240[5] , 
            \init_data_8__N_240[4] , \init_data_8__N_240[2] , n1213, wr_done) /* synthesis syn_module_defined=1 */ ;
    output [6:0]cnt_s2_num;
    output [8:0]init_data;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_45;
    output [5:0]state;
    input n15564;
    input GND_net;
    output lcd_rst_c;
    input n1338;
    output \state[4] ;
    input \init_data_8__N_240[0] ;
    output en_write_init;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    output n1213;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire n14262;
    wire [8:0]init_data_8__N_97;
    
    wire n14259;
    wire [6:0]n24;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n14214;
    wire [17:0]n357;
    
    wire sys_clk_50MHz_enable_5, n13749, n13748, n6342, n13750, n10534, 
        n10535, n13741, n13742, n13743, lcd_rst_high_flag;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274, n12101, n12102, n12103, n10531, n10532, 
        n10529, sys_clk_50MHz_enable_76;
    wire [6:0]n159;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire cnt_150ms_22__N_221;
    wire [22:0]n97;
    
    wire n14247, n6878, lcd_rst_high_flag_N_270;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    wire [5:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n13740, n14067, n14066, n11800, n6564, n14050, n46, n12110, 
        n12111, n13099, n14192, n12099, n12100, n15, n15543, n14261, 
        n13100, n13101, n12097, n30, n15553, n14178, n13953, n13951, 
        n14562, n14560, n14103, n13152, n13151, n11670, n6, n10589, 
        n12089, n17, n16, n14190, n12098, n14561, n11920, n14254, 
        n10533, n12088, n11782, n11672, n11781, n11900, n6537, 
        n6549, n11906, n14335, n13562, n13563, n14334, n11729, 
        n14333, n14045, n30_adj_783, n63, n11728, n10552, n10551, 
        n10550, n14211, n6_adj_784, n10549, n10548, n9, n10547, 
        n10546, n10545, n15_adj_785, n10544, n13153;
    wire [5:0]state_5__N_168;
    
    wire n2807, n11783, n6534, n6_adj_786;
    wire [5:0]state_5__N_174;
    
    wire n2810, n11805, n6_adj_787, n12, n11818, n10543, n6_adj_788, 
        n2812;
    wire [5:0]state_5__N_186;
    
    wire n2814, n11820, n11898, n2816, n30_adj_789, n10542, n15552, 
        n15551, n10537, n10536, n10530;
    
    LUT4 i1_2_lut_rep_345 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n14262)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_345.init = 16'hdddd;
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14259), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n15564), .SP(sys_clk_50MHz_enable_5), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    PFUMX i13197 (.BLUT(n13749), .ALUT(n13748), .C0(n6342), .Z(n13750));
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n14214), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_45), .CD(n14214), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10534), .COUT(n10535), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 cnt_s2_num_2__bdd_4_lut_13191_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[4]), .D(cnt_s2_num[3]), .Z(n13741)) /* synthesis lut_function=((B (C (D)+!C !(D))+!B (C (D)))+!A) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_13191_4_lut.init = 16'hf55d;
    PFUMX i13192 (.BLUT(n13742), .ALUT(n13741), .C0(cnt_s2_num[2]), .Z(n13743));
    FD1P3AX lcd_rst_172 (.D(n15564), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1338), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1338), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    L6MUX21 i11478 (.D0(n12101), .D1(n12102), .SD(cnt_s2_num[5]), .Z(n12103));
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10531), .COUT(n10532), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10529), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i22.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14247), .SP(sys_clk_50MHz_enable_76), .CD(n14259), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6878), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i5.GSR = "ENABLED";
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
    PFUMX init_data_8__I_0_i9 (.BLUT(init_data_8__N_231[8]), .ALUT(init_data_8__N_240[8]), 
          .C0(state_c[2]), .Z(init_data_8__N_97[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state_c[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    LUT4 cnt_s2_num_2__bdd_4_lut_13854 (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[4]), .D(cnt_s2_num[1]), .Z(n13742)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_13854.init = 16'h95dc;
    PFUMX init_data_8__I_0_i8 (.BLUT(init_data_8__N_231[7]), .ALUT(init_data_8__N_240[7]), 
          .C0(state_c[2]), .Z(init_data_8__N_97[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    LUT4 i7005_2_lut_2_lut_4_lut (.A(cnt_s2_num[6]), .B(n13743), .C(n13740), 
         .D(cnt_s2_num[5]), .Z(init_data_8__N_240[8])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7005_2_lut_2_lut_4_lut.init = 16'h5044;
    LUT4 i1_2_lut_rep_150 (.A(n6342), .B(cnt_s4_num[0]), .Z(n14067)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(238[13:17])
    defparam i1_2_lut_rep_150.init = 16'heeee;
    LUT4 i6993_3_lut_rep_133_4_lut (.A(cnt_s4_num[1]), .B(n14066), .C(n11800), 
         .D(n6564), .Z(n14050)) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(231[13:16])
    defparam i6993_3_lut_rep_133_4_lut.init = 16'hfda8;
    LUT4 mux_283_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_283_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 n6564_bdd_4_lut_12721 (.A(n12110), .B(n12111), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n13099)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam n6564_bdd_4_lut_12721.init = 16'h0c0a;
    LUT4 i7127_2_lut_2_lut_3_lut_4_lut (.A(n6342), .B(cnt_s4_num[0]), .C(\state[4] ), 
         .D(n14192), .Z(init_data_8__N_231[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(238[13:17])
    defparam i7127_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i11474_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12099)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i11474_3_lut_4_lut_4_lut.init = 16'h6c20;
    LUT4 i11475_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12100)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i11475_4_lut_4_lut_4_lut.init = 16'h0210;
    LUT4 mux_283_Mux_6_i15_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+((D)+!C))) */ ;
    defparam mux_283_Mux_6_i15_4_lut_4_lut_4_lut.init = 16'h8010;
    LUT4 n6564_bdd_4_lut_12727 (.A(n6564), .B(n15543), .C(n14261), .D(n14067), 
         .Z(n13100)) /* synthesis lut_function=(!(A (B (C+(D))))) */ ;
    defparam n6564_bdd_4_lut_12727.init = 16'h777f;
    LUT4 n165_bdd_2_lut_12760 (.A(n13100), .B(\state[4] ), .Z(n13101)) /* synthesis lut_function=(A (B)) */ ;
    defparam n165_bdd_2_lut_12760.init = 16'h8888;
    LUT4 i11472_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n12097)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11472_4_lut_4_lut.init = 16'h08e0;
    LUT4 mux_283_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_283_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n15553), .B(\init_data_8__N_240[0] ), 
         .C(state_c[2]), .D(\state[4] ), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hcac0;
    LUT4 i778_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14178), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i778_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 cnt_s2_num_5__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13953)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut.init = 16'ha088;
    LUT4 cnt_s2_num_0__bdd_4_lut_13369 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13951)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_13369.init = 16'h1020;
    LUT4 state_5__N_164_I_0_2_lut (.A(state_c[2]), .B(\state[4] ), .Z(en_write_init)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(276[19:72])
    defparam state_5__N_164_I_0_2_lut.init = 16'heeee;
    LUT4 n14562_bdd_4_lut (.A(n14562), .B(n6342), .C(n14560), .D(state_c[2]), 
         .Z(init_data_8__N_97[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n14562_bdd_4_lut.init = 16'hf022;
    LUT4 i785_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n14103), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i785_3_lut_4_lut.init = 16'h7f80;
    LUT4 n6342_bdd_4_lut_13523 (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[0]), .Z(n13152)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(B+!(C))) */ ;
    defparam n6342_bdd_4_lut_13523.init = 16'h90b2;
    LUT4 n6342_bdd_2_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n13151)) /* synthesis lut_function=(A (B)) */ ;
    defparam n6342_bdd_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n11670), .B(cnt_s4_num[14]), .C(n6), .D(cnt_s4_num[12]), 
         .Z(n6342)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    PFUMX i11464 (.BLUT(n46), .ALUT(n10589), .C0(cnt_s2_num[4]), .Z(n12089));
    LUT4 i2_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i9_4_lut (.A(n17), .B(cnt_s4_num[5]), .C(n16), .D(cnt_s4_num[15]), 
         .Z(n11670)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[8]), .C(cnt_s4_num[4]), 
         .D(cnt_s4_num[13]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i12536_4_lut (.A(cnt_s2_num[5]), .B(n14190), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12536_4_lut.init = 16'h1000;
    LUT4 i6_4_lut (.A(cnt_s4_num[16]), .B(cnt_s4_num[7]), .C(cnt_s4_num[6]), 
         .D(cnt_s4_num[10]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    PFUMX i11476 (.BLUT(n12097), .ALUT(n12098), .C0(cnt_s2_num[4]), .Z(n12101));
    PFUMX i11477 (.BLUT(n12099), .ALUT(n12100), .C0(cnt_s2_num[4]), .Z(n12102));
    LUT4 cnt_s4_num_2__bdd_4_lut_14182 (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[1]), .D(cnt_s4_num[0]), .Z(n14561)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut_14182.init = 16'h0018;
    LUT4 i1_2_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .Z(n11800)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(230[13:16])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_rep_363 (.A(n6342), .B(cnt_s4_num[0]), .C(n11800), .D(cnt_s4_num[1]), 
         .Z(n15543)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i1_3_lut_rep_363.init = 16'hfbff;
    LUT4 i12579_4_lut (.A(n14192), .B(n11670), .C(cnt_s4_num[0]), .D(n11920), 
         .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i12579_4_lut.init = 16'h1000;
    LUT4 i11298_4_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[11]), .C(cnt_s4_num[17]), 
         .D(cnt_s4_num[12]), .Z(n11920)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11298_4_lut.init = 16'h8000;
    LUT4 n165_bdd_2_lut_13596 (.A(n14561), .B(\state[4] ), .Z(n14562)) /* synthesis lut_function=(A (B)) */ ;
    defparam n165_bdd_2_lut_13596.init = 16'h8888;
    LUT4 i771_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14254), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i771_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10532), .COUT(n10533), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i12655_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12655_3_lut.init = 16'h0101;
    LUT4 n12089_bdd_4_lut_14181 (.A(n12089), .B(n12088), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n14560)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n12089_bdd_4_lut_14181.init = 16'h0a0c;
    LUT4 i6021_1_lut (.A(state_c[0]), .Z(n6878)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6021_1_lut.init = 16'h5555;
    LUT4 i12563_4_lut (.A(n11782), .B(n11672), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12563_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_31 (.A(cnt_150ms[3]), .B(n11781), .C(n11900), .D(cnt_150ms[0]), 
         .Z(n11782)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_31.init = 16'hdfff;
    LUT4 i11279_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n11900)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11279_3_lut.init = 16'h8080;
    LUT4 i2_4_lut (.A(cnt_150ms[18]), .B(n6537), .C(cnt_150ms[9]), .D(n6549), 
         .Z(n11781)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i3_4_lut (.A(cnt_150ms[7]), .B(cnt_150ms[17]), .C(cnt_150ms[22]), 
         .D(cnt_150ms[20]), .Z(n11672)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i3_4_lut_adj_32 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .C(cnt_150ms[12]), 
         .D(n11906), .Z(n6537)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_32.init = 16'hfeff;
    LUT4 i11284_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n11906)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11284_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_33 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n6549)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_33.init = 16'hfffb;
    LUT4 init_data_8__I_0_i6_4_lut (.A(n14335), .B(\init_data_8__N_240[5] ), 
         .C(state_c[2]), .D(\state[4] ), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hc5c0;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n14050), .B(\init_data_8__N_240[4] ), 
         .C(state_c[2]), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hc5c0;
    LUT4 cnt_s2_num_0__bdd_3_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .Z(n13562)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam cnt_s2_num_0__bdd_3_lut.init = 16'h0202;
    LUT4 cnt_s2_num_0__bdd_4_lut_13358 (.A(cnt_s2_num[4]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n13563)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_13358.init = 16'h0414;
    LUT4 n11681_bdd_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[4]), .D(n14262), .Z(n13740)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam n11681_bdd_3_lut_4_lut_4_lut.init = 16'h3f3b;
    LUT4 i2_4_lut_then_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .D(n6342), .Z(n14334)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A ((C+(D))+!B)) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'hffd3;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n11729), .B(\init_data_8__N_240[2] ), 
         .C(state_c[2]), .D(\state[4] ), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hc5c0;
    LUT4 i2_4_lut_else_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .D(n6342), .Z(n14333)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i2_4_lut_else_4_lut.init = 16'hffc8;
    LUT4 n13951_bdd_4_lut (.A(n13951), .B(cnt_s2_num[4]), .C(n13953), 
         .D(cnt_s2_num[5]), .Z(n14045)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n13951_bdd_4_lut.init = 16'h22f0;
    PFUMX i13432 (.BLUT(n14333), .ALUT(n14334), .C0(cnt_s4_num[2]), .Z(n14335));
    PFUMX i13062 (.BLUT(n13563), .ALUT(n13562), .C0(cnt_s2_num[0]), .Z(n12111));
    LUT4 i12464_4_lut (.A(n30_adj_783), .B(n14045), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n63)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i12464_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_4_lut (.A(n15543), .B(cnt_s4_num[1]), .C(n6564), .D(n11728), 
         .Z(n11729)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'ha800;
    CCU2D cnt_150ms_608_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10552), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10551), .COUT(n10552), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10550), .COUT(n10551), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_294 (.A(cnt_150ms[9]), .B(cnt_150ms[18]), .Z(n14211)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_rep_294.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(cnt_150ms[9]), .B(cnt_150ms[18]), .C(cnt_150ms[14]), 
         .Z(n6_adj_784)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    CCU2D cnt_150ms_608_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10549), .COUT(n10550), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10548), .COUT(n10549), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_15.INJECT1_1 = "NO";
    LUT4 i24_3_lut_4_lut (.A(cnt_s4_num[2]), .B(n14067), .C(cnt_s4_num[1]), 
         .D(n6564), .Z(n9)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i24_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i619_1_lut_rep_297 (.A(\state[4] ), .Z(n14214)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i619_1_lut_rep_297.init = 16'h5555;
    LUT4 i8_3_lut_4_lut_4_lut (.A(\state[4] ), .B(n9), .C(n11728), .D(n15543), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i8_3_lut_4_lut_4_lut.init = 16'h2aaa;
    CCU2D cnt_150ms_608_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10547), .COUT(n10548), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10546), .COUT(n10547), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10545), .COUT(n10546), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_9.INJECT1_1 = "NO";
    LUT4 i533_1_lut (.A(state[5]), .Z(n1213)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i533_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_rep_273_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14190)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_273_3_lut_4_lut.init = 16'hfbff;
    PFUMX i11485 (.BLUT(n15_adj_785), .ALUT(n30), .C0(cnt_s2_num[4]), 
          .Z(n12110));
    LUT4 cnt_s4_num_2__bdd_4_lut_13562 (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[1]), .Z(n13749)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut_13562.init = 16'h5a60;
    CCU2D cnt_150ms_608_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10544), .COUT(n10545), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_34 (.A(\state[4] ), .B(n6342), .C(n13153), .D(n13750), 
         .Z(init_data_8__N_231[8])) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i1_4_lut_adj_34.init = 16'haaa8;
    LUT4 i1995_2_lut (.A(state_c[0]), .B(state_5__N_168[0]), .Z(n2807)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1995_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_149 (.A(n6342), .B(cnt_s4_num[0]), .Z(n14066)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_149.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_35 (.A(n11672), .B(n11783), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut_adj_35.init = 16'hffef;
    LUT4 i1_2_lut_adj_36 (.A(n6534), .B(n11781), .Z(n11783)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_adj_36.init = 16'heeee;
    LUT4 i4_4_lut (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .C(cnt_150ms[1]), 
         .D(n6_adj_786), .Z(n6534)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_37 (.A(cnt_150ms[2]), .B(cnt_150ms[4]), .Z(n6_adj_786)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_adj_37.init = 16'heeee;
    LUT4 i1998_4_lut (.A(state_c[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state_c[0]), .Z(n2810)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1998_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_38 (.A(cnt_150ms[6]), .B(n11805), .C(n6_adj_787), 
         .D(n6549), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_38.init = 16'hfffd;
    LUT4 i6_4_lut_adj_39 (.A(n14211), .B(n12), .C(cnt_150ms[21]), .D(cnt_150ms[11]), 
         .Z(n11805)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i6_4_lut_adj_39.init = 16'hffef;
    LUT4 i2_2_lut_adj_40 (.A(cnt_150ms[13]), .B(n11818), .Z(n6_adj_787)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut_adj_40.init = 16'hdddd;
    CCU2D cnt_150ms_608_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10543), .COUT(n10544), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_5.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(cnt_150ms[19]), .B(cnt_150ms[5]), .C(cnt_150ms[12]), 
         .D(cnt_150ms[8]), .Z(n12)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_4_lut.init = 16'hffbf;
    LUT4 i1_4_lut_adj_41 (.A(n6534), .B(cnt_150ms[22]), .C(n6_adj_788), 
         .D(cnt_150ms[7]), .Z(n11818)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hbfff;
    LUT4 i2_2_lut_adj_42 (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .Z(n6_adj_788)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_42.init = 16'h8888;
    LUT4 cnt_s4_num_2__bdd_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[1]), .Z(n13748)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_s4_num_2__bdd_3_lut.init = 16'h4040;
    LUT4 i2000_4_lut (.A(state_c[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state_c[1]), .Z(n2812)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2000_4_lut.init = 16'h3b0a;
    LUT4 i2002_4_lut (.A(state_c[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state_c[2]), .Z(n2814)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2002_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_43 (.A(n11820), .B(cnt_150ms[5]), .C(n6_adj_784), 
         .D(cnt_150ms[6]), .Z(state_5__N_186[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_43.init = 16'hfffe;
    LUT4 i2_4_lut_adj_44 (.A(n11818), .B(n6537), .C(cnt_150ms[16]), .D(n11898), 
         .Z(n11820)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_4_lut_adj_44.init = 16'hefff;
    LUT4 i11277_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11898)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11277_2_lut.init = 16'h8888;
    LUT4 i2004_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state_c[3]), .Z(n2816)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2004_4_lut.init = 16'h3b0a;
    LUT4 i2_3_lut_4_lut (.A(n6342), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n6564)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i2_3_lut_4_lut.init = 16'hfffb;
    LUT4 mux_283_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_785)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_283_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i11473_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n12098)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i11473_4_lut_4_lut_4_lut.init = 16'hd0c0;
    PFUMX i11463 (.BLUT(n15), .ALUT(n30_adj_789), .C0(cnt_s2_num[4]), 
          .Z(n12088));
    CCU2D cnt_150ms_608_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10542), .COUT(n10543), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_608_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_608_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10542), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_608_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_608_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_608_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_283_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_783)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_283_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_283_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_789)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_283_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i13468_then_3_lut (.A(n6342), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n15552)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13468_then_3_lut.init = 16'h1010;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n10589)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i750_2_lut_rep_330 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14247)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i750_2_lut_rep_330.init = 16'h6666;
    LUT4 i13468_else_3_lut (.A(cnt_s4_num[0]), .B(n6342), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n15551)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i13468_else_3_lut.init = 16'h1011;
    PFUMX i14200 (.BLUT(n15551), .ALUT(n15552), .C0(cnt_s4_num[1]), .Z(n15553));
    LUT4 i752_2_lut_rep_337 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14254)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i752_2_lut_rep_337.init = 16'h8888;
    LUT4 i759_2_lut_rep_261_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14178)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i759_2_lut_rep_261_3_lut.init = 16'h8080;
    LUT4 i757_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i757_2_lut_3_lut.init = 16'h7878;
    LUT4 i766_2_lut_rep_186_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n14103)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i766_2_lut_rep_186_3_lut_4_lut.init = 16'h8000;
    LUT4 i764_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i764_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i12753 (.BLUT(n13152), .ALUT(n13151), .C0(n6342), .Z(n13153));
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10537), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i253_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_5)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i253_2_lut.init = 16'h8888;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10536), .COUT(n10537), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 i7009_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n63), .Z(init_data_8__N_240[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7009_2_lut_2_lut.init = 16'h4444;
    LUT4 i7018_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12103), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7018_2_lut_2_lut.init = 16'h4444;
    LUT4 i616_1_lut_rep_342 (.A(state_c[2]), .Z(n14259)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i616_1_lut_rep_342.init = 16'h5555;
    LUT4 i1921_2_lut_3_lut_3_lut (.A(state_c[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1921_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i617_2_lut_rep_267_2_lut (.A(state_c[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_76)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i617_2_lut_rep_267_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_344 (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .Z(n14261)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_344.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_275_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n14192)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_275_3_lut.init = 16'hbfbf;
    LUT4 i11253_2_lut_3_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), 
         .C(n6342), .D(cnt_s4_num[2]), .Z(n11728)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(235[13:16])
    defparam i11253_2_lut_3_lut_4_lut.init = 16'hfbff;
    FD1S3IX cnt_150ms_608__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_608__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_608__i0.GSR = "ENABLED";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10535), .COUT(n10536), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10530), .COUT(n10531), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10529), .COUT(n10530), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    PFUMX i12722 (.BLUT(n13101), .ALUT(n13099), .C0(state_c[2]), .Z(init_data_8__N_97[1]));
    FD1S3AY state_FSM_i5 (.D(n2807), .CK(sys_clk_50MHz), .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2810), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2812), .CK(sys_clk_50MHz), .Q(state_c[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2814), .CK(sys_clk_50MHz), .Q(state_c[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2816), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10533), .COUT(n10534), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    
endmodule
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
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (state, sys_clk_50MHz, cnt_length_num, wr_done, 
            length_num_flag, n14, show_char_data, sys_clk_50MHz_enable_58, 
            \end_y_8__N_313[4] , \end_x_8__N_295[6] , \end_x_8__N_295[5] , 
            \end_x_8__N_295[4] , \end_x_8__N_295[3] , sys_clk_50MHz_enable_84, 
            n8443, \cnt_rom_prepare[2] , \state_3__N_368[1] , \state[3] , 
            GND_net, ascii_num, en_write_show_char, \end_x_8__N_295[7] ) /* synthesis syn_module_defined=1 */ ;
    output [3:0]state;
    input sys_clk_50MHz;
    output [4:0]cnt_length_num;
    input wr_done;
    output length_num_flag;
    input n14;
    output [8:0]show_char_data;
    input sys_clk_50MHz_enable_58;
    input \end_y_8__N_313[4] ;
    input \end_x_8__N_295[6] ;
    input \end_x_8__N_295[5] ;
    input \end_x_8__N_295[4] ;
    input \end_x_8__N_295[3] ;
    input sys_clk_50MHz_enable_84;
    output n8443;
    output \cnt_rom_prepare[2] ;
    input \state_3__N_368[1] ;
    output \state[3] ;
    input GND_net;
    input [6:0]ascii_num;
    output en_write_show_char;
    input \end_x_8__N_295[7] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire n6, n14203;
    wire [15:0]n1;
    
    wire n5863, n11775, n14202, n5875, n14276;
    wire [5:0]n422;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_50MHz_enable_79, n1285, cnt_wr_color_data_5__N_439;
    wire [5:0]n21;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire n8539, the1_wr_done;
    wire [3:0]state_3__N_372;
    
    wire state1_finish_flag_N_459, sys_clk_50MHz_enable_78;
    wire [7:0]temp_7__N_345;
    
    wire n14298, n14299, n14300, length_num_flag_N_462;
    wire [3:0]state_3__N_376;
    
    wire sys_clk_50MHz_enable_81;
    wire [8:0]show_char_data_8__N_275;
    
    wire sys_clk_50MHz_enable_62, n14281, n14130, n14295, n14296, 
        n14297;
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    wire [2:0]n12;
    
    wire n14200, n15554, n15555, n15556;
    wire [6:0]n1277;
    
    wire n655;
    wire [15:0]n33;
    
    wire n14055;
    wire [4:0]n365;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n5865, n11710, n13, n11007, n14280;
    wire [4:0]n1270;
    
    wire n10701, n2770, n14196;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n6873, n723, n14162, n1565, n5988, n10633;
    wire [8:0]show_char_data_8__N_449;
    
    wire cnt_set_windows_3__N_384, n6856, n891, n12633, n14069, n14282;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n14235, n5857, n15548, n14124, n1851, n14197, n14213, 
        n4, n12250, n1276, n5855, n1069, n14246, n1084, n11908, 
        n6875, n1673;
    wire [2:0]n132;
    
    wire n2823, n2826, n2828, n6876, n14106, n14159, n1148, n14153, 
        n14181, n158, n1676, n3913, n13325, n11747, n14277, n14068, 
        n14062, n10541, n10540, n10539, n15568, n14189, n125, 
        n14218, n14058, n349, n10538, n1101, n1149, n14215, n14174, 
        n508, n4_adj_764, n14148, n126, n14087, n2428, n11731, 
        n5840, n158_adj_765, n892, n10821, n1534, n14231, n1233, 
        n11858, n14183, n14265, n6657, n14122, n15549, n12119, 
        n14239, n13473, n14177, n270, n12179, n6042, n3559, n10773, 
        n509, n1661, n1723, n6699, n1405, n1278_adj_766, n12287, 
        n510, n127, n12278, n14102, n14095, n14079, n1851_adj_767, 
        n14104, n14237, n14096, n14109, n2300, n11860, n12067, 
        n4_adj_768, n14086, n12213, n14111, n2141, n1172, n2025, 
        n12575, n5, n11689, n14275, n1565_adj_769, n2395, n1596, 
        n6_adj_770, n14146, n14078, n46, n62, n14132, n14127, 
        n13893, n2332, n2364, n14234, n10819, n796, n14176, n828, 
        n1211, n14163, n1530, n1643, n1530_adj_771, n14107, n379, 
        n380_adj_772, n4660, n14170, n828_adj_773, n3865, n1467, 
        n46_adj_774, n14084, n62_adj_775, n4_adj_776, n380_adj_777, 
        n8577, n1403, n14278, n14082, n13190, n13191, n14047, 
        n6_adj_778, n14166, n14097, n1076, n1085, n2652, n14060, 
        n2621, n14048, n12353, n4094, n3069, n12317, n4094_adj_779, 
        n1596_adj_780, n11748, n13222, n4094_adj_781, n14091, n14057, 
        n14074, n4_adj_782, n14065, n14064, n14179, n603, n14175, 
        n11755, n14244, n1436, n308, n301, n317, n15546, n94, 
        n6044, n14126, n13853, n14092, n12165, n14129, n13894, 
        n13772, n13477;
    
    LUT4 i1_2_lut (.A(cnt_wr_color_data[0]), .B(state[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(n14203), .B(n1[7]), .C(n1[5]), .D(n5863), 
         .Z(n11775)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i5043_3_lut_4_lut (.A(n14203), .B(n1[7]), .C(n1[9]), .D(n14202), 
         .Z(n5875)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5043_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i879_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14276), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i879_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX rom_addr_i0_i11 (.D(n1285), .SP(sys_clk_50MHz_enable_79), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    LUT4 i7683_3_lut (.A(cnt_wr_color_data[0]), .B(state[2]), .C(temp[0]), 
         .Z(n8539)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam i7683_3_lut.init = 16'haeae;
    FD1S3AX the1_wr_done_178 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_178.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_180 (.D(state1_finish_flag_N_459), .CK(sys_clk_50MHz), 
            .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_180.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    PFUMX i13409 (.BLUT(n14298), .ALUT(n14299), .C0(rom_addr[3]), .Z(n14300));
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_62), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    LUT4 i7251_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14281)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7251_4_lut_4_lut_then_4_lut.init = 16'h0004;
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_81), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    LUT4 i11365_2_lut_rep_213_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14130)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11365_2_lut_rep_213_2_lut.init = 16'h4444;
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_78), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    PFUMX i13407 (.BLUT(n14295), .ALUT(n14296), .C0(rom_addr[3]), .Z(n14297));
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    LUT4 i485_2_lut_rep_283 (.A(n1[7]), .B(n1[9]), .Z(n14200)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i485_2_lut_rep_283.init = 16'heeee;
    PFUMX i14202 (.BLUT(n15554), .ALUT(n15555), .C0(rom_addr[1]), .Z(n15556));
    FD1P3AX rom_addr_i0_i10 (.D(n1277[6]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    LUT4 i493_2_lut_rep_138_3_lut_4_lut (.A(n1[7]), .B(n1[9]), .C(n655), 
         .D(n33[10]), .Z(n14055)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i493_2_lut_rep_138_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_58), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_58), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_58), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(n1277[5]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_58), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_62), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_62), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_62), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_62), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(n1277[4]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(n1277[3]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_24 (.A(n1[7]), .B(n1[9]), .C(n1[5]), .D(n5865), 
         .Z(n11710)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_24.init = 16'h1110;
    FD1P3AX rom_addr_i0_i6 (.D(n1277[2]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i25_3_lut_4_lut (.A(n1[7]), .B(n1[9]), .C(\end_y_8__N_313[4] ), 
         .D(n13), .Z(n11007)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i25_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX rom_addr_i0_i5 (.D(n1277[1]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    LUT4 i7251_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14280)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7251_4_lut_4_lut_else_4_lut.init = 16'h1101;
    FD1P3AX rom_addr_i0_i4 (.D(n1277[0]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(n1270[1]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    LUT4 i481_2_lut_rep_285 (.A(n1[4]), .B(n1[5]), .Z(n14202)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i481_2_lut_rep_285.init = 16'heeee;
    FD1P3AX rom_addr_i0_i2 (.D(n1270[0]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    LUT4 i7567_4_lut_4_lut (.A(n1[4]), .B(n1[5]), .C(n14203), .D(n10701), 
         .Z(n2770)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i7567_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i483_2_lut_rep_286 (.A(n1[6]), .B(n1[8]), .Z(n14203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i483_2_lut_rep_286.init = 16'heeee;
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_279_3_lut (.A(n1[6]), .B(n1[8]), .C(n1[7]), .Z(n14196)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_279_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_rep_289 (.A(state_c[1]), .B(state[2]), .Z(sys_clk_50MHz_enable_81)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_289.init = 16'heeee;
    LUT4 i6016_3_lut_4_lut_4_lut (.A(state_c[1]), .B(state[2]), .C(n655), 
         .D(n33[10]), .Z(n6873)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;
    defparam i6016_3_lut_4_lut_4_lut.init = 16'heee4;
    LUT4 i7253_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n723), .C(rom_addr[3]), 
         .D(n14162), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7253_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i5146_3_lut (.A(n1[3]), .B(n1[4]), .C(n1[2]), .Z(n5988)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5146_3_lut.init = 16'h2323;
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n8539), .B(\end_x_8__N_295[6] ), 
         .C(state_c[1]), .D(n10633), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h05c5;
    LUT4 show_char_data_8__I_0_i6_3_lut (.A(n8539), .B(show_char_data_8__N_449[5]), 
         .C(state_c[1]), .Z(show_char_data_8__N_275[5])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i6_3_lut.init = 16'hc5c5;
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n1[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    LUT4 i5033_3_lut (.A(n10701), .B(\end_x_8__N_295[5] ), .C(n6856), 
         .Z(n5865)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5033_3_lut.init = 16'hc5c5;
    LUT4 i6001_3_lut (.A(n1[2]), .B(n1[4]), .C(n1[3]), .Z(n6856)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i6001_3_lut.init = 16'hcece;
    LUT4 i7135_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7135_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i12057_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n12633)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12057_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n8539), .B(n11007), .C(state_c[1]), 
         .D(n14069), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h05c5;
    LUT4 i2_4_lut (.A(n5988), .B(\end_x_8__N_295[4] ), .C(n1[5]), .D(n14203), 
         .Z(n13)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2_4_lut.init = 16'h0004;
    PFUMX i13397 (.BLUT(n14280), .ALUT(n14281), .C0(rom_addr[3]), .Z(n14282));
    LUT4 show_char_data_8__I_0_i4_3_lut (.A(n8539), .B(show_char_data_8__N_449[3]), 
         .C(state_c[1]), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i4_3_lut.init = 16'hc5c5;
    LUT4 i5031_3_lut (.A(n10701), .B(\end_x_8__N_295[3] ), .C(n6856), 
         .Z(n5863)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5031_3_lut.init = 16'hc5c5;
    LUT4 temp_7__I_0_i7_3_lut (.A(rom_q[6]), .B(temp[7]), .C(n14235), 
         .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 i5025_4_lut (.A(n14196), .B(n1[9]), .C(n1[5]), .D(n1[4]), .Z(n5857)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5025_4_lut.init = 16'hcdcc;
    LUT4 temp_7__I_0_i6_3_lut (.A(rom_q[5]), .B(temp[6]), .C(n14235), 
         .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i6_3_lut.init = 16'hcaca;
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n1[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n1[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n1[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n1[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    LUT4 i487_2_lut_rep_152 (.A(n33[10]), .B(n655), .Z(n14069)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i487_2_lut_rep_152.init = 16'heeee;
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n1[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    LUT4 temp_7__I_0_i5_3_lut (.A(rom_q[4]), .B(temp[5]), .C(n14235), 
         .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i5_3_lut.init = 16'hcaca;
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n1[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    LUT4 i2020_4_lut_4_lut (.A(n33[10]), .B(n655), .C(n1[9]), .D(n11775), 
         .Z(show_char_data_8__N_449[3])) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i2020_4_lut_4_lut.init = 16'h3332;
    LUT4 i7016_4_lut_4_lut (.A(n33[10]), .B(n655), .C(state_c[1]), .D(n5857), 
         .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;
    defparam i7016_4_lut_4_lut.init = 16'h3020;
    LUT4 i7190_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15548), 
         .D(n14124), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7190_4_lut_4_lut.init = 16'h5140;
    LUT4 temp_7__I_0_i4_3_lut (.A(rom_q[3]), .B(temp[4]), .C(n14235), 
         .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 i2008_4_lut_4_lut (.A(n33[10]), .B(n655), .C(n11710), .D(n14203), 
         .Z(show_char_data_8__N_449[5])) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;
    defparam i2008_4_lut_4_lut.init = 16'h2232;
    LUT4 temp_7__I_0_i3_3_lut (.A(rom_q[2]), .B(temp[3]), .C(n14235), 
         .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i2_3_lut (.A(rom_q[1]), .B(temp[2]), .C(n14235), 
         .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i1922_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_84), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i1922_2_lut.init = 16'h6666;
    LUT4 i7591_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8443)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7591_2_lut.init = 16'heeee;
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n1[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    LUT4 i7014_4_lut_4_lut (.A(n14200), .B(n14069), .C(state_c[1]), .D(n2770), 
         .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i7014_4_lut_4_lut.init = 16'h3f2f;
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n1[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    LUT4 i886_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14197), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i886_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n1[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(n1[3]), .B(n1[1]), .C(n1[2]), .Z(n10701)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i822_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i822_2_lut.init = 16'h6666;
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n1[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n1[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    LUT4 i858_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i858_2_lut.init = 16'h6666;
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n1[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    LUT4 i916_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), .Z(n1270[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i916_2_lut.init = 16'h6666;
    LUT4 i914_1_lut (.A(cnt_length_num_c[2]), .Z(n1270[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i914_1_lut.init = 16'h5555;
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n1[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    LUT4 i843_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n14213), .C(cnt_length_num_c[3]), 
         .D(cnt_length_num[4]), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i843_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7250_4_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15555)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7250_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_2_i1276_4_lut_4_lut (.A(rom_addr[4]), .B(n4), 
         .C(rom_addr[5]), .D(n12250), .Z(n1276)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1276_4_lut_4_lut.init = 16'h4f40;
    FD1P3IX data_i1 (.D(n5855), .SP(sys_clk_50MHz_enable_81), .CD(n6873), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 state_3__N_365_I_0_196_2_lut (.A(state_c[1]), .B(the1_wr_done), 
         .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam state_3__N_365_I_0_196_2_lut.init = 16'h8888;
    LUT4 i5023_4_lut (.A(n14202), .B(n1[9]), .C(n14196), .D(n10701), 
         .Z(n5855)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5023_4_lut.init = 16'hcecf;
    LUT4 i7250_4_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15554)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7250_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0414;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14246), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i11218_2_lut_rep_296 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n14213)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11218_2_lut_rep_296.init = 16'h8888;
    LUT4 i836_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i836_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i11286_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n11908)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11286_2_lut_3_lut.init = 16'h8080;
    LUT4 i6018_1_lut (.A(state[2]), .Z(n6875)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6018_1_lut.init = 16'h5555;
    LUT4 i829_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i829_2_lut_3_lut.init = 16'h7878;
    LUT4 i918_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), .Z(n1673)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i918_2_lut.init = 16'h8888;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_459)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14295)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i118_4_lut (.A(n11908), .B(length_num_flag), .C(cnt_length_num[4]), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    LUT4 i807_3_lut (.A(\cnt_rom_prepare[2] ), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i807_3_lut.init = 16'h6a6a;
    LUT4 i800_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i800_2_lut.init = 16'h6666;
    LUT4 i2011_2_lut (.A(state_c[0]), .B(\state_3__N_368[1] ), .Z(n2823)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2011_2_lut.init = 16'h2222;
    LUT4 i2014_4_lut (.A(state_c[1]), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state_c[0]), .Z(n2826)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2014_4_lut.init = 16'hce0a;
    LUT4 i2016_4_lut (.A(state[2]), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(state_c[1]), .Z(n2828)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2016_4_lut.init = 16'hce0a;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_78), .CD(n6876), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n1[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\state[3] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i7219_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14106), 
         .D(n14159), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7219_4_lut_4_lut.init = 16'h5140;
    LUT4 i7207_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14153), .C(rom_addr[3]), 
         .D(n14181), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7207_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 n1676_bdd_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1676), .C(n3913), 
         .D(rom_addr[3]), .Z(n13325)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1676_bdd_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_151_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n11747), .D(n14277), .Z(n14068)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_151_3_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(n14277), .Z(n14062)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_145_3_lut_4_lut_4_lut.init = 16'hfdff;
    CCU2D add_590_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10541), 
          .S0(n1285));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_590_cout.INIT0 = 16'h0000;
    defparam add_590_cout.INIT1 = 16'h0000;
    defparam add_590_cout.INJECT1_0 = "NO";
    defparam add_590_cout.INJECT1_1 = "NO";
    CCU2D add_590_7 (.A0(ascii_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ascii_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10540), .COUT(n10541), .S0(n1277[5]), .S1(n1277[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_590_7.INIT0 = 16'hfaaa;
    defparam add_590_7.INIT1 = 16'h0555;
    defparam add_590_7.INJECT1_0 = "NO";
    defparam add_590_7.INJECT1_1 = "NO";
    CCU2D add_590_5 (.A0(ascii_num[3]), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(cnt_length_num[4]), .A1(ascii_num[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10539), .COUT(n10540), .S0(n1277[3]), 
          .S1(n1277[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_590_5.INIT0 = 16'h556a;
    defparam add_590_5.INIT1 = 16'hfaaa;
    defparam add_590_5.INJECT1_0 = "NO";
    defparam add_590_5.INJECT1_1 = "NO";
    FD1P3AX rom_addr_i0_i1_rep_371 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_79), 
            .CK(sys_clk_50MHz), .Q(n15568)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1_rep_371.GSR = "ENABLED";
    LUT4 i7073_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14189), 
         .D(n14106), .Z(n125)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7073_4_lut_4_lut.init = 16'h5140;
    LUT4 n1834_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14299)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 i7419_2_lut_rep_141_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n14218), .D(rom_addr[0]), .Z(n14058)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7419_2_lut_rep_141_3_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i7360_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n14277), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7360_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    CCU2D add_590_3 (.A0(cnt_length_num[4]), .B0(n1673), .C0(ascii_num[1]), 
          .D0(GND_net), .A1(cnt_length_num[4]), .B1(n1673), .C1(ascii_num[2]), 
          .D1(GND_net), .CIN(n10538), .COUT(n10539), .S0(n1277[1]), 
          .S1(n1277[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_590_3.INIT0 = 16'he1e1;
    defparam add_590_3.INIT1 = 16'he1e1;
    defparam add_590_3.INJECT1_0 = "NO";
    defparam add_590_3.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n14058), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n1834_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14298)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_else_4_lut.init = 16'h20dc;
    LUT4 i12644_2_lut_3_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .Z(sys_clk_50MHz_enable_79)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam i12644_2_lut_3_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_5_i508_4_lut_4_lut (.A(rom_addr[6]), .B(n14215), 
         .C(n14068), .D(n14174), .Z(n508)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i508_4_lut_4_lut.init = 16'hd850;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n4_adj_764), 
         .C(n14148), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n14087), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11731), 
         .C(n5840), .D(n158_adj_765), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7584_3_lut_3_lut (.A(rom_addr[6]), .B(n10821), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7584_3_lut_3_lut.init = 16'h0202;
    LUT4 i76_2_lut_rep_314 (.A(state[2]), .B(the1_wr_done), .Z(n14231)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i76_2_lut_rep_314.init = 16'h8888;
    LUT4 i2_3_lut_rep_232_4_lut (.A(state[2]), .B(the1_wr_done), .C(n14235), 
         .D(\state[3] ), .Z(sys_clk_50MHz_enable_62)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i2_3_lut_rep_232_4_lut.init = 16'hff8f;
    LUT4 state_3__N_365_I_0_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .D(state_c[1]), .Z(en_write_show_char)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam state_3__N_365_I_0_3_lut_4_lut.init = 16'hff40;
    CCU2D add_590_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_length_num[4]), .B1(n1673), .C1(ascii_num[0]), .D1(GND_net), 
          .COUT(n10538), .S1(n1277[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_590_1.INIT0 = 16'hF000;
    defparam add_590_1.INIT1 = 16'h6969;
    defparam add_590_1.INJECT1_0 = "NO";
    defparam add_590_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_318 (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .Z(n14235)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam i2_3_lut_rep_318.init = 16'hf7f7;
    LUT4 i12557_2_lut_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(n1233), .Z(sys_clk_50MHz_enable_78)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam i12557_2_lut_2_lut_4_lut.init = 16'h08ff;
    LUT4 temp_7__N_424_I_0_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(\state[3] ), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam temp_7__N_424_I_0_2_lut_4_lut.init = 16'hff08;
    LUT4 i11240_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11858)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11240_2_lut_2_lut.init = 16'hdddd;
    LUT4 i5812_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14183), 
         .D(n14265), .Z(n6657)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5812_4_lut_4_lut.init = 16'h7340;
    LUT4 i11494_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14122), .C(rom_addr[4]), 
         .D(n15549), .Z(n12119)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11494_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i6019_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(n1233), .Z(n6876)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[13:35])
    defparam i6019_2_lut_4_lut.init = 16'h00f7;
    LUT4 n11756_bdd_3_lut_13323_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n14239), .D(rom_addr[4]), .Z(n13473)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n11756_bdd_3_lut_13323_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_260_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14177)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_260_3_lut_3_lut.init = 16'h1010;
    LUT4 i12109_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14153), .Z(n12179)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12109_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2747_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6042), 
         .D(n14062), .Z(n3559)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2747_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i12394_3_lut_3_lut (.A(rom_addr[7]), .B(n10773), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12394_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12410_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n6699)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12410_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11662_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278_adj_766), .Z(n12287)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11662_4_lut_4_lut.init = 16'h7340;
    LUT4 i11653_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12278)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11653_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7344_2_lut_rep_185_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(n15568), .Z(n14102)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7344_2_lut_rep_185_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14095), .D(n14079), .Z(n1851_adj_767)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7053_2_lut_rep_187_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14104)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7053_2_lut_rep_187_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 i2283_1_lut_rep_320 (.A(rom_addr[5]), .Z(n14237)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2283_1_lut_rep_320.init = 16'h5555;
    LUT4 i7110_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n14096), 
         .D(n14109), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7110_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i860_2_lut_rep_359 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14276)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i860_2_lut_rep_359.init = 16'h8888;
    LUT4 i11442_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11860), .C(rom_addr[4]), 
         .D(n15549), .Z(n12067)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11442_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11588_4_lut_4_lut (.A(rom_addr[3]), .B(n4_adj_768), .C(rom_addr[6]), 
         .D(n14086), .Z(n12213)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11588_4_lut_4_lut.init = 16'hbfb0;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14265), .D(n14111), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_231_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14148)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_231_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i11950_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12575)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11950_4_lut_4_lut.init = 16'h7340;
    LUT4 i867_2_lut_rep_280_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14197)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i867_2_lut_rep_280_3_lut.init = 16'h8080;
    LUT4 temp_7__I_0_i1_3_lut (.A(rom_q[0]), .B(temp[1]), .C(n14235), 
         .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[10] 182[16])
    defparam temp_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(n5), .B(n11689), .C(cnt_wr_color_data[0]), .D(n14231), 
         .Z(n1233)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14275), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n6042)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3IX data_i0 (.D(n5875), .SP(sys_clk_50MHz_enable_81), .CD(n6873), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    LUT4 i865_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i865_2_lut_3_lut.init = 16'h7878;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_769), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i4_4_lut (.A(n1[15]), .B(n1[11]), .C(n1[13]), .D(n6_adj_770), 
         .Z(n655)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i872_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i872_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_169_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14277), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14086)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_169_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i11245_2_lut_rep_229_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14146)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11245_2_lut_rep_229_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n14078), 
         .C(rom_addr[0]), .D(n46), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n8539), .B(\end_x_8__N_295[7] ), 
         .C(state_c[1]), .D(n10633), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h05c5;
    LUT4 rom_addr_6__bdd_4_lut_4_lut (.A(rom_addr[4]), .B(n14132), .C(rom_addr[5]), 
         .D(n14127), .Z(n13893)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_6__bdd_4_lut_4_lut.init = 16'h404a;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n14109), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14277), 
         .C(n14234), .D(rom_addr[7]), .Z(n10819)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14176), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n14163), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n14163), .D(rom_addr[0]), .Z(n1530_adj_771)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14107), 
         .C(rom_addr[1]), .D(n379), .Z(n380_adj_772)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11731), 
         .C(n4660), .D(n14170), .Z(n828_adj_773)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n3865), 
         .C(n14163), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_774), 
         .C(n14084), .D(rom_addr[1]), .Z(n62_adj_775)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_776), 
         .C(rom_addr[4]), .D(n14096), .Z(n380_adj_777)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8577), 
         .C(rom_addr[4]), .D(n14162), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i1_2_lut_rep_165_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14278), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14082)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_165_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 n13191_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13190), 
         .D(n13191), .Z(n14047)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13191_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n6_adj_778), 
         .C(n14166), .D(n14097), .Z(n1723)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 i12281_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1084), .C(n1076), 
         .D(rom_addr[4]), .Z(n1085)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12281_3_lut_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n14060), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_adj_25 (.A(n1[12]), .B(n1[14]), .Z(n6_adj_770)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n4)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7266_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14048), 
         .D(n12353), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7266_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7112_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12317), .Z(n4094_adj_779)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7112_4_lut_4_lut.init = 16'h5140;
    LUT4 i7426_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n14278), 
         .D(rom_addr[2]), .Z(n1596_adj_780)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7426_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i7578_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11748), 
         .D(n13222), .Z(n4094_adj_781)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7578_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_174_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15568), .Z(n14091)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_174_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i1917_2_lut_4_lut (.A(\state[3] ), .B(n14231), .C(n14235), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i1917_2_lut_4_lut.init = 16'h10ef;
    LUT4 i1_2_lut_rep_140_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14057)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_140_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i2_2_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[6]), 
         .Z(n6_adj_778)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i1_2_lut_rep_157_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14074)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_157_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_190_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .Z(n14107)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_190_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_26 (.A(rom_addr[3]), .B(n14275), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n4_adj_782)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_26.init = 16'h4000;
    LUT4 i1_2_lut_rep_148_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(n14215), .D(rom_addr[4]), .Z(n14065)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_148_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i12582_2_lut_rep_147_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14275), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14064)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12582_2_lut_rep_147_3_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 i4_4_lut_adj_27 (.A(the1_wr_done), .B(n5), .C(n11689), .D(n6), 
         .Z(length_num_flag_N_462)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_adj_27.init = 16'h2000;
    LUT4 i11405_2_lut_rep_262_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14179)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11405_2_lut_rep_262_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_167_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14084)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_167_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n14111), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14175), 
         .D(rom_addr[0]), .Z(n11755)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7673_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n14244), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7673_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14109), .D(n15546), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14215), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n6044)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 n1293_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14126), 
         .D(n14111), .Z(n13853)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1293_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 i11540_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14102), 
         .D(n14092), .Z(n12165)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11540_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5788_2_lut_rep_212_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14129)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5788_2_lut_rep_212_3_lut_3_lut.init = 16'h7d7d;
    LUT4 rom_addr_6__bdd_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[5]), 
         .C(n14215), .D(rom_addr[4]), .Z(n13894)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_6__bdd_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 n2880_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15549), .C(rom_addr[4]), 
         .D(n14109), .Z(n13772)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2880_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 n1969_bdd_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13477)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1969_bdd_4_lut_4_lut_4_lut.init = 16'h4303;
    LUT4 i1_2_lut_adj_28 (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[4]), 
         .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i2_3_lut_adj_29 (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), 
         .C(cnt_wr_color_data[3]), .Z(n11689)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_29.init = 16'h8080;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n14296)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_30 (.A(n5988), .B(n1[5]), .C(n14203), .D(n14055), 
         .Z(n10633)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i3_4_lut_adj_30.init = 16'hfffe;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_84), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(\cnt_rom_prepare[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_84), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2823), .CK(sys_clk_50MHz), .PD(\state[3] ), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2826), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2828), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n14082(n14082), .n13772(n13772), 
            .n14057(n14057), .n14087(n14087), .n6044(n6044), .n317(n317), 
            .n15556(n15556), .n14239(n14239), .n15568(n15568), .n14162(n14162), 
            .n13222(n13222), .n158(n158_adj_765), .n14107(n14107), .n14146(n14146), 
            .n14265(n14265), .n14109(n14109), .n14102(n14102), .n14183(n14183), 
            .n1148(n1148), .n12165(n12165), .n12179(n12179), .n4094(n4094), 
            .rom_q({rom_q}), .n158_adj_1(n158), .n4094_adj_2(n4094_adj_781), 
            .n4094_adj_3(n4094_adj_779), .n14163(n14163), .n14092(n14092), 
            .n1851(n1851), .n12278(n12278), .n1530(n1530), .n828(n828_adj_773), 
            .n12213(n12213), .n14096(n14096), .n14181(n14181), .n380(n380_adj_772), 
            .n14106(n14106), .n6657(n6657), .n301(n301), .n14126(n14126), 
            .n4(n4_adj_776), .n46(n46), .n1069(n1069), .n3865(n3865), 
            .n12287(n12287), .n62(n62_adj_775), .n12317(n12317), .n2395(n2395), 
            .n379(n379), .n5840(n5840), .n13191(n13191), .n1530_adj_4(n1530_adj_771), 
            .n14127(n14127), .n14166(n14166), .n14275(n14275), .n270(n270), 
            .n11747(n11747), .n828_adj_5(n828), .n1278(n1278_adj_766), 
            .n1643(n1643), .n1565(n1565), .n1596(n1596_adj_780), .n6699(n6699), 
            .n62_adj_6(n62), .n1101(n1101), .n14122(n14122), .n15546(n15546), 
            .n509(n509), .n510(n510), .n15549(n15549), .n2621(n2621), 
            .n14048(n14048), .n13853(n13853), .n12633(n12633), .n2332(n2332), 
            .n15548(n15548), .n14300(n14300), .n14177(n14177), .n14246(n14246), 
            .n1211(n1211), .n14153(n14153), .n14189(n14189), .n14097(n14097), 
            .n14104(n14104), .n14277(n14277), .n14215(n14215), .n14129(n14129), 
            .n11860(n11860), .n891(n891), .n14074(n14074), .n1149(n1149), 
            .n11731(n11731), .n14079(n14079), .n14244(n14244), .n603(n603), 
            .n10773(n10773), .n14179(n14179), .n2141(n2141), .n1534(n1534), 
            .n14078(n14078), .n12119(n12119), .n14095(n14095), .n11748(n11748), 
            .n14132(n14132), .n3069(n3069), .n14091(n14091), .n1276(n1276), 
            .n2025(n2025), .n1565_adj_7(n1565_adj_769), .n14130(n14130), 
            .n14218(n14218), .n4_adj_8(n4_adj_782), .n1085(n1085), .n1661(n1661), 
            .n1851_adj_9(n1851_adj_767), .n796(n796), .n11858(n11858), 
            .n14064(n14064), .n14084(n14084), .n892(n892), .n1676(n1676), 
            .n1596_adj_10(n1596), .n2364(n2364), .n1467(n1467), .n46_adj_11(n46_adj_774), 
            .n4_adj_12(n4_adj_764), .n3559(n3559), .n380_adj_13(n380_adj_777), 
            .n12353(n12353), .n2428(n2428), .n2300(n2300), .n14047(n14047), 
            .n94(n94), .n126(n126), .n127(n127), .n14176(n14176), .n3913(n3913), 
            .n14124(n14124), .n14175(n14175), .n10819(n10819), .n10821(n10821), 
            .n14297(n14297), .n1436(n1436), .n14278(n14278), .n8577(n8577), 
            .n12250(n12250), .n308(n308), .n13477(n13477), .n11755(n11755), 
            .n13473(n13473), .n723(n723), .n1076(n1076), .n4_adj_14(n4_adj_768), 
            .n13190(n13190), .n4660(n4660), .n125(n125), .n1405(n1405), 
            .n14159(n14159), .n14234(n14234), .n14060(n14060), .n14148(n14148), 
            .n14174(n14174), .n14282(n14282), .n14065(n14065), .n1172(n1172), 
            .n1403(n1403), .n12067(n12067), .n14111(n14111), .n13894(n13894), 
            .n13893(n13893), .n14170(n14170), .n13325(n13325), .n349(n349), 
            .n12575(n12575), .n14237(n14237)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n14082, n13772, n14057, n14087, n6044, 
            n317, n15556, n14239, n15568, n14162, n13222, n158, 
            n14107, n14146, n14265, n14109, n14102, n14183, n1148, 
            n12165, n12179, n4094, rom_q, n158_adj_1, n4094_adj_2, 
            n4094_adj_3, n14163, n14092, n1851, n12278, n1530, n828, 
            n12213, n14096, n14181, n380, n14106, n6657, n301, 
            n14126, n4, n46, n1069, n3865, n12287, n62, n12317, 
            n2395, n379, n5840, n13191, n1530_adj_4, n14127, n14166, 
            n14275, n270, n11747, n828_adj_5, n1278, n1643, n1565, 
            n1596, n6699, n62_adj_6, n1101, n14122, n15546, n509, 
            n510, n15549, n2621, n14048, n13853, n12633, n2332, 
            n15548, n14300, n14177, n14246, n1211, n14153, n14189, 
            n14097, n14104, n14277, n14215, n14129, n11860, n891, 
            n14074, n1149, n11731, n14079, n14244, n603, n10773, 
            n14179, n2141, n1534, n14078, n12119, n14095, n11748, 
            n14132, n3069, n14091, n1276, n2025, n1565_adj_7, n14130, 
            n14218, n4_adj_8, n1085, n1661, n1851_adj_9, n796, n11858, 
            n14064, n14084, n892, n1676, n1596_adj_10, n2364, n1467, 
            n46_adj_11, n4_adj_12, n3559, n380_adj_13, n12353, n2428, 
            n2300, n14047, n94, n126, n127, n14176, n3913, n14124, 
            n14175, n10819, n10821, n14297, n1436, n14278, n8577, 
            n12250, n308, n13477, n11755, n13473, n723, n1076, 
            n4_adj_14, n13190, n4660, n125, n1405, n14159, n14234, 
            n14060, n14148, n14174, n14282, n14065, n1172, n1403, 
            n12067, n14111, n13894, n13893, n14170, n13325, n349, 
            n12575, n14237) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    input n14082;
    input n13772;
    input n14057;
    output n14087;
    input n6044;
    input n317;
    input n15556;
    output n14239;
    input n15568;
    output n14162;
    output n13222;
    output n158;
    input n14107;
    input n14146;
    output n14265;
    output n14109;
    input n14102;
    output n14183;
    input n1148;
    input n12165;
    input n12179;
    input n4094;
    output [7:0]rom_q;
    input n158_adj_1;
    input n4094_adj_2;
    input n4094_adj_3;
    output n14163;
    output n14092;
    input n1851;
    input n12278;
    input n1530;
    input n828;
    input n12213;
    output n14096;
    output n14181;
    input n380;
    output n14106;
    input n6657;
    output n301;
    output n14126;
    output n4;
    output n46;
    output n1069;
    output n3865;
    input n12287;
    input n62;
    output n12317;
    output n2395;
    output n379;
    output n5840;
    output n13191;
    input n1530_adj_4;
    output n14127;
    output n14166;
    output n14275;
    output n270;
    output n11747;
    input n828_adj_5;
    output n1278;
    output n1643;
    input n1565;
    input n1596;
    input n6699;
    input n62_adj_6;
    output n1101;
    output n14122;
    output n15546;
    input n509;
    output n510;
    output n15549;
    input n2621;
    output n14048;
    input n13853;
    input n12633;
    output n2332;
    output n15548;
    input n14300;
    input n14177;
    output n14246;
    output n1211;
    output n14153;
    output n14189;
    output n14097;
    input n14104;
    output n14277;
    output n14215;
    input n14129;
    output n11860;
    input n891;
    input n14074;
    input n1149;
    output n11731;
    output n14079;
    output n14244;
    output n603;
    output n10773;
    input n14179;
    input n2141;
    input n1534;
    output n14078;
    input n12119;
    output n14095;
    output n11748;
    output n14132;
    output n3069;
    input n14091;
    input n1276;
    output n2025;
    output n1565_adj_7;
    input n14130;
    output n14218;
    input n4_adj_8;
    input n1085;
    output n1661;
    input n1851_adj_9;
    output n796;
    input n11858;
    input n14064;
    input n14084;
    input n892;
    output n1676;
    input n1596_adj_10;
    input n2364;
    input n1467;
    output n46_adj_11;
    output n4_adj_12;
    input n3559;
    input n380_adj_13;
    output n12353;
    input n2428;
    input n2300;
    input n14047;
    input n94;
    input n126;
    output n127;
    output n14176;
    output n3913;
    output n14124;
    output n14175;
    input n10819;
    output n10821;
    input n14297;
    input n1436;
    output n14278;
    output n8577;
    output n12250;
    output n308;
    input n13477;
    input n11755;
    input n13473;
    output n723;
    output n1076;
    output n4_adj_14;
    output n13190;
    output n4660;
    input n125;
    output n1405;
    output n14159;
    output n14234;
    output n14060;
    input n14148;
    output n14174;
    input n14282;
    input n14065;
    output n1172;
    input n1403;
    input n12067;
    output n14111;
    input n13894;
    input n13893;
    output n14170;
    input n13325;
    input n349;
    input n12575;
    input n14237;
    
    
    wire n2411, n1086, n12457, n14389, n14390, n14391, n1117, 
        n11771, n12606, n924, n955, n956, n13308, n12421, n1021, 
        n14080, n13773, n13770, n13774, n14383, n14384, n14385, 
        n13771, n12205, n5376, n12418, n5191, n13769, n14327, 
        n126_c, n12408, n476, n507, n12579, n12614, n12615, n12618, 
        n13767, n13765, n13768, n12414, n12415, n510_c, n14318, 
        n1978, n12400, n13766, n13764, n1275, n12616, n12617, 
        n12619, n12085, n12086, n12087, n14380, n14381, n14382, 
        n94_c, n11766, n14279, n30, n13910, n12091, n12092, n12093, 
        n12094, n12095, n12096, n3624, n14088, n4232, n924_adj_542, 
        n13848, n2173, n12318, n286, n12569, n1785, n1243, n1244, 
        n12104, n12105, n12106, n12609, n14377, n14378, n14379, 
        n12320, n12321, n12323, n12107, n12108, n12109, n14292, 
        n14293, n14294, n14201, n14115, n1946, n1947, n12116, 
        n12117, n12118, n236, n251, n12122, n12123, n12124, n15560, 
        n15561, n15562, n12125, n12126, n12127, n12128, n12129, 
        n12130, n14180, n14302, n1707, n1723, n12417, n766, n13221, 
        n13219, n13481, n12131, n12132, n12133, n14374, n14375, 
        n14376, n13696, n13694, n13697, n13695, n653, n668, n14090, 
        n12212, n14289, n14290, n14291, n397, n6648, n12245, n13693, 
        n13692, n14301, n12137, n12138, n12139, n14255, n2620, 
        n13476, n13604, n255, n12140, n12141, n12142, n15557, 
        n15558, n15559, n13561, n12389, n1533, n3252, n1278_c, 
        n1789, n2044, n12281, n14371, n14372, n14373, n12143, 
        n12144, n12145, n13559, n2523, n2554, n2555, n12072, n12270, 
        n12050, n6687, n12269, n1898, n1914, n12149, n12150, n12151, 
        n1309, n12152, n12153, n12154, n12571, n12580, n12264, 
        n14286, n14287, n14288, n12549, n12562, n12263, n12265, 
        n12266, n12272, n14369, n2173_adj_543, n12158, n12159, n12160, 
        n14271, n14284, n14285, n12161, n12162, n12163, n14089, 
        n860, n1117_adj_544, n1149_c, n12164, n12166, n14367, n14368, 
        n13486, n12508, n12520, n2283, n2298, n2299, n12173, n12174, 
        n12175, n12176, n12177, n12178, n205, n220, n12180, n12181, 
        n14364, n14365, n14366, n12505, n12506, n12519, n12182, 
        n12183, n12184, n12185, n12186, n12187, n12277, n189, 
        n190, n12526, n12291, n12188, n12189, n12190, n12451, 
        n12452, n12453, n12498, n12499, n12500, n12529, n12530, 
        n12531, n2047, n14144, n14117, n12194, n12195, n12196, 
        n12282, n12283, n12284, n14361, n14362, n14363, n443, 
        n2268, n12197, n12198, n12199, n12447, n12448, n12449, 
        n12450, n12496, n12497, n12476, n12477, n12489, n12200, 
        n12201, n12202, n12527, n12528, n12203, n12204, n12206, 
        n12207, n12208, n12273, n12274, n12276, n1820, n1852, 
        n12279, n12472, n12473, n12487, n12280, n12322, n12324, 
        n1514, n14238, n1531, n12470, n12486, n11737, n956_adj_548, 
        n12439, n12440, n12441, n12442, n12443, n12444, n12209, 
        n12210, n12211, n12445, n12446, n12494, n12495, n827, 
        n11973, n829, n12525, n12214, n971, n986, n12600, n2009, 
        n954, n12599, n908, n205_adj_549, n12598, n301_c, n12237, 
        n12338, n3069_c, n3070, n1676_c, n812, n668_adj_550, n12331, 
        n3069_adj_551, n3070_adj_552, n13639, n14195, n2237, n364, 
        n381, n2522, n2220, n12257, n12258, n12259, n61, n8547, 
        n1243_adj_553, n986_adj_554, n14242, n12235, n318, n270_c, 
        n828_adj_555, n14272, n797, n14073, n5720, n5723, n6652, 
        n731, n604, n1084, n526, n491, n12227, n12228, n12229, 
        n12301, n3069_adj_557, n3070_adj_558, n1002, n557, n12267, 
        n12268, n13187, n1691, n2283_adj_559, n4661, n3064, n12271, 
        n12275, n14120, n14152, n12556, n12285, n12286, n12289, 
        n732, n12288, n12290, n14150, n1196, n1212, n61_adj_560, 
        n63, n12306, n12307, n12308, n13354, n12239, n12632, n364_adj_561, 
        n12315, n12316, n1243_adj_562, n14137, n12248, n1564, n379_c, 
        n2077, n14358, n14359, n14360, n1228, n859, n620, n12584, 
        n1466, n12402, n12403, n12488, n12478, n12479, n12490, 
        n12484, n12485, n12493, n604_adj_563, n12583, n13145, n5294, 
        n2426, n2298_adj_564, n2300_c, n12581, n460, n13482, n14138, 
        n14164, n1085_c, n893, n11966, n1021_adj_565, n2475, n1676_adj_566, 
        n13640, n13637, n13641, n2283_adj_568, n1549, n12236, n12238, 
        n1851_adj_569, n2348, n3070_adj_570, n12246, n12247, n2685, 
        n14273, n2108, n205_adj_571, n747, n506, n14199, n15547, 
        n2554_adj_572, n14172, n1054, n14155, n1514_adj_573, n1531_adj_575, 
        n506_adj_576, n1529, n2427, n13588, n14151, n2588, n12167, 
        n12461, n526_adj_577, n2492, n13638, n14232, n14236, n2428_c, 
        n1931, n635, n2040, n12297, n12298, n12300, n14158, n1676_adj_578, 
        n2365, n2428_adj_579, n13306, n1770, n124, n14128, n12576, 
        n13522, n12327, n12328, n12330, n12332, n12333, n12336, 
        n12349, n12350, n12352, n12381, n12382, n766_adj_581, n1466_adj_582, 
        n12052, n6671, n12401, n4876, n1947_adj_583, n1181, n1212_adj_584, 
        n1213, n1786, n1787, n4433, n2523_adj_585, n1786_adj_586, 
        n1787_adj_587, n1549_adj_588, n1565_c, n3933, n13323, n14311, 
        n12535, n12046, n731_adj_589, n1435, n1436_c, n1835, n12379, 
        n428, n15544, n381_adj_590, n12425, n12311, n764, n12428, 
        n13038, n14121, n2522_adj_591, n2523_adj_592, n1019, n12430, 
        n6627, n6628, n526_adj_593, n860_adj_594, n14230, n892_c, 
        n1913, n1692, n14112, n1755, n1468, n12434, n2078, n2009_adj_595, 
        n829_adj_597, n12458, n14336, n12412, n12467, n12468, n2044_adj_599, 
        n1038, n1053, n12572, n731_adj_600, n1692_adj_601, n12574, 
        n1149_adj_602, n1597, n12056, n12482, n1914_adj_603, n12464, 
        n12048, n2396, n1851_adj_605, n12398, n1915, n2109, n1595, 
        n12361, n12362, n13142, n109, n12474, n12475, n1707_adj_606, 
        n12038, n1789_adj_607, n14100, n2009_adj_608, n13186, n61_adj_609, 
        n63_adj_611, n14093, n13846, n2025_c, n2040_adj_612, n12069, 
        n1979, n12516, n14113, n13189, n12501, n12502, n12517, 
        n12503, n12504, n12518, n12513, n12514, n12523, n14355, 
        n14356, n14357, n12605, n12607, n15545, n1755_adj_613, n844, 
        n859_adj_614, n12566, n12045, n12563, n1403_c, n14188, n12234, 
        n1628, n2490, n1914_adj_615, n1658, n12055, n2009_adj_616, 
        n2010, n14352, n14353, n14354, n1529_adj_617, n1530_adj_618, 
        n1820_adj_619, n1017, n221, n12534, n13143, n14191, n12564, 
        n12460, n1692_adj_620, n2555_adj_621, n14101, n507_adj_622, 
        n11962, n1451, n1467_c, n1451_adj_624, n1723_adj_625, n14147, 
        n2205, n12260, n12261, n12262, n12215, n12587, n12594, 
        n2573, n13356, n12375, n12376, n13139, n3070_adj_626, n12597, 
        n12604, n2685_adj_627, n12462, n15550, n428_adj_628, n14328, 
        n12559, n14315, n14233, n12296, n2365_adj_629, n12148, n12368, 
        n12369, n13140, n220_adj_630, n12558, n2538, n12157, n2429, 
        n13895, n684, n699, n12554, n2589, n15541, n12303, n380_adj_631, 
        n12193, n12304, n124_adj_632, n6622, n1467_adj_633, n78, 
        n8028, n14059, n13384, n14304, n890, n13590, n12305, n14061, 
        n13636, n2009_adj_634, n14349, n14350, n14351, n589, n604_adj_635, 
        n12550, n14370, n14258, n1867, n1883, n2283_adj_636, n12557, 
        n542, n12454, n12084, n2428_adj_637, n2333, n14052, n12063, 
        n1244_adj_638, n1275_adj_639, n1276_c, n14185, n1739, n2492_adj_640, 
        n2555_adj_641, n2301, n428_adj_642, n14221, n12221, n14331, 
        n12548, n2110, n14306, n12545, n14193, n2237_adj_643, n12169, 
        n1483, n12335, n1308, n1309_adj_644, n13421, n684_adj_645, 
        n12601, n14305, n890_adj_646, n12567, n1723_adj_647, n316, 
        n12341, n12342, n12348, n6663, n12060, n12343, n12344, 
        n1483_adj_648, n428_adj_649, n13557, n12345, n12346, n12357, 
        n12358, n444, n14309, n620_adj_650, n14308, n14260, n14346, 
        n14347, n14348, n1341, n12359, n12360, n1435_adj_651, n2267, 
        n13843, n1659, n557_adj_652, n1565_adj_653, n1403_adj_654, 
        n12590, n1084_adj_655, n14314, n1243_adj_656, n12042, n13464, 
        n13465, n12364, n12365, n13061, n2522_adj_657, n364_adj_658, 
        n12366, n12367, n12371, n12372, n12373, n12374, n13470, 
        n1883_adj_659, n1915_adj_660, n14160, n13471, n13603, n13602, 
        n13425, n1883_adj_661, n1914_adj_662, n12399, n1786_adj_663, 
        n13307, n12386, n12387, n12391, n12392, n12395, n1676_adj_664, 
        n1691_adj_665, n1692_adj_666, n1659_adj_667, n14317, n14216, 
        n10570, n14343, n14344, n14345, n13911, n12393, n12394, 
        n12396, n1212_adj_668, n13062, n13063, n1530_adj_669, n1228_adj_670, 
        n1499, n14316, n12582, n13478, n13479, n604_adj_671, n684_adj_672, 
        n699_adj_673, n1228_adj_674, n12378, n13485, n13484, n12068, 
        n2010_adj_675, n190_adj_676, n253, n12424, n13040, n13600, 
        n13601, n14156, n908_adj_677, n12429, n14044, n1213_adj_678, 
        n589_adj_679, n285, n12314, n12431, n12380, n12432, n220_adj_681, 
        n653_adj_682, n14075, n1786_adj_683, n2492_adj_684, n2555_adj_685, 
        n2556, n14319, n2573_adj_686, n2964, n14171, n1597_adj_687, 
        n5064, n1597_adj_688, n1660, n12435, n2491, n12407, n12437, 
        n2459, n2427_adj_689, n2364_c, n12413, n12456, n12438, n12463, 
        n14081, n6459, n10820, n6650, n12309, n14248, n13381, 
        n14142, n653_adj_690, n14340, n14341, n14342, n2110_adj_691, 
        n2174, n604_adj_692, n14323, n14322, n443_adj_693, n12216, 
        n12217, n13591, n13592, n3127, n987, n13533, n12465, n12466, 
        n14210, n2317, n14108, n637, n13460, n13537, n716, n14326, 
        n14325, n2045, n12608, n12588, n12553, n12537, n14330, 
        n14329, n1882, n475, n14337, n14338, n14339, n12252, n12120, 
        n12121, n2237_adj_694, n12319, n6625, n445, n508, n1435_adj_695, 
        n12546, n12552, n12555, n12565, n12251, n444_adj_696, n12578, 
        n12568, n12577, n12044, n12222, n12047, n1404, n12480, 
        n1946_adj_697, n12411, n13589, n1915_adj_698, n5933, n1852_adj_699, 
        n12061, n12053, n12481, n1724, n12483, n12051, n12405, 
        n445_adj_700, n12062, n12065, n2396_adj_701, n2396_adj_702, 
        n13042, n1883_adj_703, n2025_adj_704, n12064, n11720, n2621_adj_705, 
        n2684, n14161, n12455, n12241, n12509, n12491, n12492, 
        n13184, n12510, n1038_adj_708, n1054_adj_709, n12512, n1660_adj_710, 
        n1724_adj_712, n12515, n12049, n508_adj_713, n12426, n13386, 
        n12427, n1596_adj_715, n14076, n12223, n12547, n13480, n12351, 
        n14139, n6308, n12337, n12560, n12561, n12070, n12071, 
        n12551, n2685_adj_716, n12570, n2299_adj_717, n12054, n14223, 
        n12589, n5737, n13466, n13538, n12329, n12585, n12586, 
        n12592, n12593, n12595, n12596, n13220, n13560, n13558, 
        n12602, n12603, n14070, n11756, n1659_adj_720, n6857, n12610, 
        n12573, n12611, n12612, n12613, n12295, n12299, n12620, 
        n12423, n574, n380_adj_721, n13523, n13524, n2173_adj_722, 
        n2491_adj_723, n14274, n6691, n6718, n13423, n12082, n12536, 
        n1292, n12043, n13188, n13185, n14307, n2380, n1020, n62_adj_725, 
        n1867_adj_726, n1883_adj_727, n1101_adj_731, n1117_adj_732, 
        n270_adj_733, n12146, n14324, n12240, n12066, n2444, n2460, 
        n2554_adj_735, n2298_adj_737, n12729, n716_adj_740, n14228, 
        n12233, n4_adj_741, n476_adj_742, n364_adj_743, n14229, n12524, 
        n13358, n12522, n12521, n13327, n4707, n14116, n13525, 
        n2205_adj_747, n2109_adj_750, n891_adj_751, n12310, n13111, 
        n475_adj_752, n14219, n6686, n2236, n2268_adj_753, n14099, 
        n2298_adj_754, n2444_adj_755, n333, n1499_adj_757, n348, n541, 
        n14267, n12544, n526_adj_758, n2426_adj_759, n14133, n12168, 
        n12249, n4690, n13483, n4699, n10563, n1210, n13474, n13472, 
        n13218, n12147, n12253, n557_adj_761, n13041, n13039, n13909, 
        n4764, n14310, n14194, n635_adj_762, n13424, n13422, n13144, 
        n13141, n14303, n13382, n13844, n13112, n13357, n13355, 
        n14241, n12591, n13326, n13324, n13847, n13845;
    
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i11832_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14082), 
         .Z(n12457)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11832_4_lut.init = 16'h0aca;
    PFUMX i13470 (.BLUT(n14389), .ALUT(n14390), .C0(rom_addr[3]), .Z(n14391));
    PFUMX i11981 (.BLUT(n1117), .ALUT(n11771), .C0(rom_addr[5]), .Z(n12606));
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924), .B(n955), .C(rom_addr[5]), 
         .Z(n956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    LUT4 i12441_3_lut (.A(n13308), .B(n12421), .C(rom_addr[7]), .Z(n1021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12441_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_163_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14080)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_163_3_lut_4_lut.init = 16'h8000;
    L6MUX21 i13219 (.D0(n13773), .D1(n13770), .SD(rom_addr[5]), .Z(n13774));
    PFUMX i13466 (.BLUT(n14383), .ALUT(n14384), .C0(rom_addr[0]), .Z(n14385));
    PFUMX i13217 (.BLUT(n13772), .ALUT(n13771), .C0(rom_addr[6]), .Z(n13773));
    LUT4 i11793_4_lut (.A(n12205), .B(rom_addr[0]), .C(rom_addr[6]), .D(n5376), 
         .Z(n12418)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11793_4_lut.init = 16'h0aca;
    PFUMX i13215 (.BLUT(n5191), .ALUT(n13769), .C0(rom_addr[6]), .Z(n13770));
    LUT4 i11783_4_lut (.A(n14327), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12408)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11783_4_lut.init = 16'hcac0;
    LUT4 i11954_3_lut (.A(n476), .B(n507), .C(rom_addr[5]), .Z(n12579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11954_3_lut.init = 16'hcaca;
    PFUMX i11993 (.BLUT(n12614), .ALUT(n12615), .C0(rom_addr[5]), .Z(n12618));
    L6MUX21 i13213 (.D0(n13767), .D1(n13765), .SD(rom_addr[6]), .Z(n13768));
    LUT4 i11791_3_lut (.A(n12414), .B(n12415), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11791_3_lut.init = 16'hcaca;
    LUT4 i11775_3_lut (.A(n14318), .B(n1978), .C(rom_addr[5]), .Z(n12400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11775_3_lut.init = 16'hcaca;
    PFUMX i13211 (.BLUT(n14057), .ALUT(n13766), .C0(rom_addr[5]), .Z(n13767));
    PFUMX i13209 (.BLUT(n13764), .ALUT(n1275), .C0(rom_addr[5]), .Z(n13765));
    PFUMX i11994 (.BLUT(n12616), .ALUT(n12617), .C0(rom_addr[5]), .Z(n12619));
    PFUMX i11462 (.BLUT(n12085), .ALUT(n12086), .C0(rom_addr[5]), .Z(n12087));
    PFUMX i13464 (.BLUT(n14380), .ALUT(n14381), .C0(rom_addr[0]), .Z(n14382));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_c), .ALUT(n11766), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11460_3_lut_4_lut (.A(rom_addr[1]), .B(n14279), .C(rom_addr[4]), 
         .D(n30), .Z(n12085)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11460_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_0__bdd_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13910)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_4_lut_4_lut.init = 16'h0a01;
    PFUMX i11468 (.BLUT(n12091), .ALUT(n12092), .C0(rom_addr[5]), .Z(n12093));
    PFUMX i11471 (.BLUT(n12094), .ALUT(n12095), .C0(rom_addr[5]), .Z(n12096));
    LUT4 i2812_3_lut_4_lut (.A(rom_addr[5]), .B(n14087), .C(rom_addr[6]), 
         .D(n6044), .Z(n3624)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2812_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n14088), .D(n4232), .Z(n924_adj_542)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12435_3_lut (.A(n13848), .B(n2173), .C(rom_addr[6]), .Z(n12318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12435_3_lut.init = 16'hcaca;
    PFUMX i11944 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12569));
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243), .C(rom_addr[4]), 
         .Z(n1244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    PFUMX i11481 (.BLUT(n12104), .ALUT(n12105), .C0(rom_addr[5]), .Z(n12106));
    LUT4 i12279_3_lut (.A(n1244), .B(n15556), .C(rom_addr[5]), .Z(n12609)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12279_3_lut.init = 16'hcaca;
    PFUMX i13462 (.BLUT(n14377), .ALUT(n14378), .C0(rom_addr[0]), .Z(n14379));
    LUT4 i11698_3_lut (.A(n12320), .B(n12321), .C(rom_addr[7]), .Z(n12323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11698_3_lut.init = 16'hcaca;
    L6MUX21 i11484 (.D0(n12107), .D1(n12108), .SD(rom_addr[5]), .Z(n12109));
    PFUMX i13405 (.BLUT(n14292), .ALUT(n14293), .C0(n14239), .Z(n14294));
    LUT4 i7165_2_lut_rep_284 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14201)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7165_2_lut_rep_284.init = 16'heeee;
    LUT4 i12610_2_lut_rep_198_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15568), 
         .Z(n14115)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12610_2_lut_rep_198_3_lut.init = 16'h0101;
    LUT4 i11530_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14389)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11530_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14162), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    PFUMX i11493 (.BLUT(n12116), .ALUT(n12117), .C0(rom_addr[5]), .Z(n12118));
    LUT4 i11470_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n12095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11470_3_lut.init = 16'hcaca;
    PFUMX i11499 (.BLUT(n12122), .ALUT(n12123), .C0(rom_addr[5]), .Z(n12124));
    PFUMX i14206 (.BLUT(n15560), .ALUT(n15561), .C0(rom_addr[0]), .Z(n15562));
    L6MUX21 i11502 (.D0(n12125), .D1(n12126), .SD(rom_addr[5]), .Z(n12127));
    PFUMX i11505 (.BLUT(n12128), .ALUT(n12129), .C0(rom_addr[5]), .Z(n12130));
    LUT4 i4868_3_lut_4_lut_4_lut_then_4_lut (.A(n14180), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14302)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4868_3_lut_4_lut_4_lut_then_4_lut.init = 16'hcf5c;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14162), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707), .Z(n1723)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11794_3_lut (.A(n12417), .B(n12418), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11794_3_lut.init = 16'hcaca;
    PFUMX i12790 (.BLUT(n13221), .ALUT(n13219), .C0(rom_addr[8]), .Z(n13222));
    LUT4 rom_addr_0__bdd_3_lut_13326_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13481)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_3_lut_13326_4_lut_4_lut.init = 16'hafa8;
    PFUMX i11508 (.BLUT(n12131), .ALUT(n12132), .C0(rom_addr[5]), .Z(n12133));
    LUT4 i11530_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14390)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11530_3_lut_4_lut_then_4_lut.init = 16'h744c;
    PFUMX i13460 (.BLUT(n14374), .ALUT(n14375), .C0(rom_addr[0]), .Z(n14376));
    L6MUX21 i13168 (.D0(n13696), .D1(n13694), .SD(rom_addr[6]), .Z(n13697));
    PFUMX i13166 (.BLUT(n158), .ALUT(n13695), .C0(rom_addr[5]), .Z(n13696));
    PFUMX i11500 (.BLUT(n653), .ALUT(n668), .C0(rom_addr[4]), .Z(n12125));
    LUT4 i11587_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14090), .C(rom_addr[6]), 
         .D(n14087), .Z(n12212)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11587_3_lut_4_lut_4_lut.init = 16'hbfba;
    PFUMX i13403 (.BLUT(n14289), .ALUT(n14290), .C0(n15568), .Z(n14291));
    PFUMX i11620 (.BLUT(n397), .ALUT(n6648), .C0(rom_addr[4]), .Z(n12245));
    PFUMX i13164 (.BLUT(n13693), .ALUT(n13692), .C0(rom_addr[5]), .Z(n13694));
    LUT4 i4868_3_lut_4_lut_4_lut_else_4_lut (.A(n14180), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n14301)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4868_3_lut_4_lut_4_lut_else_4_lut.init = 16'hf7f7;
    PFUMX i11514 (.BLUT(n12137), .ALUT(n12138), .C0(rom_addr[5]), .Z(n12139));
    LUT4 n2172_bdd_3_lut_4_lut (.A(n14255), .B(n14107), .C(rom_addr[5]), 
         .D(n2620), .Z(n13476)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2172_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12443_3_lut (.A(n12408), .B(n13604), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12443_3_lut.init = 16'hcaca;
    PFUMX i11517 (.BLUT(n12140), .ALUT(n12141), .C0(rom_addr[5]), .Z(n12142));
    PFUMX i14204 (.BLUT(n15557), .ALUT(n15558), .C0(rom_addr[4]), .Z(n15559));
    LUT4 i7349_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14146), .Z(n5191)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7349_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11765_3_lut (.A(n13561), .B(n12389), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11765_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13768), 
         .C(rom_addr[7]), .D(n3252), .Z(n1278_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 i11656_3_lut (.A(n1789), .B(n2044), .C(rom_addr[8]), .Z(n12281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11656_3_lut.init = 16'hcaca;
    PFUMX i13458 (.BLUT(n14371), .ALUT(n14372), .C0(rom_addr[0]), .Z(n14373));
    PFUMX i11520 (.BLUT(n12143), .ALUT(n12144), .C0(rom_addr[5]), .Z(n12145));
    LUT4 n1962_bdd_3_lut_4_lut (.A(n14265), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14109), .Z(n13559)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1962_bdd_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11645_3_lut (.A(n13774), .B(n12072), .C(rom_addr[7]), .Z(n12270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11645_3_lut.init = 16'hcaca;
    LUT4 i11644_3_lut (.A(n12050), .B(n6687), .C(rom_addr[7]), .Z(n12269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11644_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i11526 (.BLUT(n12149), .ALUT(n12150), .C0(rom_addr[5]), .Z(n12151));
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n14265), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14102), .Z(n1309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11529 (.BLUT(n12152), .ALUT(n12153), .C0(rom_addr[5]), .Z(n12154));
    LUT4 i11639_3_lut (.A(n12571), .B(n12580), .C(rom_addr[7]), .Z(n12264)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11639_3_lut.init = 16'hcaca;
    PFUMX i13401 (.BLUT(n14286), .ALUT(n14287), .C0(rom_addr[2]), .Z(n14288));
    LUT4 i11638_3_lut (.A(n12549), .B(n12562), .C(rom_addr[7]), .Z(n12263)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11638_3_lut.init = 16'hcaca;
    LUT4 i11647_3_lut (.A(n12265), .B(n12266), .C(rom_addr[8]), .Z(n12272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11647_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n14255), .B(n14107), 
         .C(rom_addr[5]), .D(n14369), .Z(n2173_adj_543)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11535 (.BLUT(n12158), .ALUT(n12159), .C0(rom_addr[5]), .Z(n12160));
    PFUMX i13399 (.BLUT(n14271), .ALUT(n14284), .C0(rom_addr[0]), .Z(n14285));
    PFUMX i11538 (.BLUT(n12161), .ALUT(n12162), .C0(rom_addr[5]), .Z(n12163));
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n14089), .B(n14183), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117_adj_544), .ALUT(n1148), 
          .C0(rom_addr[5]), .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11541 (.BLUT(n12164), .ALUT(n12165), .C0(rom_addr[5]), .Z(n12166));
    PFUMX i13455 (.BLUT(n14367), .ALUT(n14368), .C0(rom_addr[0]), .Z(n14369));
    LUT4 i11895_3_lut (.A(n13486), .B(n12508), .C(rom_addr[7]), .Z(n12520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11895_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283), .B(n2298), .C(rom_addr[4]), 
         .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    PFUMX i11550 (.BLUT(n12173), .ALUT(n12174), .C0(rom_addr[5]), .Z(n12175));
    PFUMX i11553 (.BLUT(n12176), .ALUT(n12177), .C0(rom_addr[5]), .Z(n12178));
    LUT4 i11469_3_lut (.A(n205), .B(n220), .C(rom_addr[4]), .Z(n12094)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11469_3_lut.init = 16'hcaca;
    PFUMX i11556 (.BLUT(n12179), .ALUT(n12180), .C0(rom_addr[5]), .Z(n12181));
    PFUMX i13453 (.BLUT(n14364), .ALUT(n14365), .C0(rom_addr[0]), .Z(n14366));
    LUT4 i11894_3_lut (.A(n12505), .B(n12506), .C(rom_addr[7]), .Z(n12519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11894_3_lut.init = 16'hcaca;
    PFUMX i11559 (.BLUT(n12182), .ALUT(n12183), .C0(rom_addr[5]), .Z(n12184));
    PFUMX i11562 (.BLUT(n12185), .ALUT(n12186), .C0(rom_addr[5]), .Z(n12187));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12277), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158_adj_1), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12473_3_lut (.A(n12519), .B(n12520), .C(rom_addr[8]), .Z(n12526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12473_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12291), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11565 (.BLUT(n12188), .ALUT(n12189), .C0(rom_addr[5]), .Z(n12190));
    L6MUX21 i11828 (.D0(n12451), .D1(n12452), .SD(rom_addr[10]), .Z(n12453));
    L6MUX21 i11875 (.D0(n12498), .D1(n12499), .SD(rom_addr[10]), .Z(n12500));
    L6MUX21 i11906 (.D0(n12529), .D1(n12530), .SD(rom_addr[10]), .Z(n12531));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_3), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7248_4_lut (.A(rom_addr[0]), .B(n14144), .C(n14117), .D(rom_addr[4]), 
         .Z(n1117)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7248_4_lut.init = 16'h0a22;
    PFUMX i11571 (.BLUT(n12194), .ALUT(n12195), .C0(rom_addr[5]), .Z(n12196));
    L6MUX21 i11659 (.D0(n12282), .D1(n12283), .SD(rom_addr[10]), .Z(n12284));
    PFUMX i13451 (.BLUT(n14361), .ALUT(n14362), .C0(rom_addr[2]), .Z(n14363));
    LUT4 i7159_4_lut (.A(rom_addr[0]), .B(n443), .C(n14163), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7159_4_lut.init = 16'h0a22;
    PFUMX i11574 (.BLUT(n12197), .ALUT(n12198), .C0(rom_addr[5]), .Z(n12199));
    L6MUX21 i11826 (.D0(n12447), .D1(n12448), .SD(rom_addr[9]), .Z(n12451));
    LUT4 i7614_2_lut_rep_175_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n14092)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7614_2_lut_rep_175_3_lut_3_lut.init = 16'h3131;
    L6MUX21 i11827 (.D0(n12449), .D1(n12450), .SD(rom_addr[9]), .Z(n12452));
    PFUMX i11874 (.BLUT(n12496), .ALUT(n12497), .C0(rom_addr[9]), .Z(n12499));
    LUT4 i11864_3_lut (.A(n12476), .B(n12477), .C(rom_addr[7]), .Z(n12489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11864_3_lut.init = 16'hcaca;
    PFUMX i11577 (.BLUT(n12200), .ALUT(n12201), .C0(rom_addr[5]), .Z(n12202));
    PFUMX i11905 (.BLUT(n12527), .ALUT(n12528), .C0(rom_addr[9]), .Z(n12530));
    PFUMX i11580 (.BLUT(n12203), .ALUT(n12204), .C0(rom_addr[5]), .Z(n12205));
    LUT4 i11566_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14381)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11566_3_lut_4_lut_then_4_lut.init = 16'ha883;
    PFUMX i11583 (.BLUT(n12206), .ALUT(n12207), .C0(rom_addr[5]), .Z(n12208));
    L6MUX21 i11651 (.D0(n12273), .D1(n12274), .SD(rom_addr[9]), .Z(n12276));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11657 (.BLUT(n12278), .ALUT(n12279), .C0(rom_addr[9]), .Z(n12282));
    LUT4 i11862_3_lut (.A(n12472), .B(n12473), .C(rom_addr[7]), .Z(n12487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11862_3_lut.init = 16'hcaca;
    PFUMX i11658 (.BLUT(n12280), .ALUT(n12281), .C0(rom_addr[9]), .Z(n12283));
    PFUMX i11699 (.BLUT(n12322), .ALUT(n12323), .C0(rom_addr[8]), .Z(n12324));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14238), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11861_3_lut (.A(n12470), .B(n13697), .C(rom_addr[7]), .Z(n12486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11861_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_542), .ALUT(n11737), 
          .C0(rom_addr[5]), .Z(n956_adj_548)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11822 (.BLUT(n12439), .ALUT(n12440), .C0(rom_addr[8]), .Z(n12447));
    PFUMX i11823 (.BLUT(n12441), .ALUT(n12442), .C0(rom_addr[8]), .Z(n12448));
    PFUMX i11824 (.BLUT(n12443), .ALUT(n12444), .C0(rom_addr[8]), .Z(n12449));
    PFUMX i11586 (.BLUT(n12209), .ALUT(n12210), .C0(rom_addr[5]), .Z(n12211));
    PFUMX i11825 (.BLUT(n12445), .ALUT(n12446), .C0(rom_addr[8]), .Z(n12450));
    PFUMX i11873 (.BLUT(n12494), .ALUT(n12495), .C0(rom_addr[9]), .Z(n12498));
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n11973), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11904 (.BLUT(n12525), .ALUT(n12526), .C0(rom_addr[9]), .Z(n12529));
    PFUMX i11589 (.BLUT(n12212), .ALUT(n12213), .C0(rom_addr[7]), .Z(n12214));
    LUT4 address_11__I_0_Mux_6_i1387_3_lut_3_lut_rep_179_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14096)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1387_3_lut_3_lut_rep_179_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i12161_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n12600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12161_3_lut.init = 16'hcaca;
    LUT4 i11974_3_lut (.A(n2009), .B(n954), .C(rom_addr[4]), .Z(n12599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11974_3_lut.init = 16'hcaca;
    LUT4 i11973_3_lut (.A(n908), .B(n205_adj_549), .C(rom_addr[4]), .Z(n12598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11973_3_lut.init = 16'hcaca;
    LUT4 i11612_3_lut_4_lut (.A(n14181), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_c), .Z(n12237)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11612_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12338), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_c)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668_adj_550)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12331), .ALUT(n3069_adj_551), 
          .C0(rom_addr[9]), .Z(n3070_adj_552)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n1251_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13639)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1251_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 i7442_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(n14195), .C(rom_addr[0]), 
         .D(rom_addr[5]), .Z(n2237)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7442_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364), .ALUT(n380), .C0(n14238), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2220)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i12164_3_lut (.A(n12257), .B(n12258), .C(rom_addr[4]), .Z(n12259)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12164_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut.init = 16'h87fe;
    LUT4 i5779_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8547)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5779_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_553)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986_adj_554)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 address_11__I_0_Mux_2_i30_4_lut (.A(n14242), .B(n14106), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut.init = 16'hcacf;
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n12235), .ALUT(n6657), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11235_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n236)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11235_3_lut_4_lut_3_lut_4_lut.init = 16'h2242;
    LUT4 i11239_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11239_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h2422;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668_adj_550), .C(rom_addr[4]), 
         .Z(n828_adj_555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n301)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h4224;
    LUT4 i7246_4_lut (.A(n14126), .B(rom_addr[4]), .C(n14272), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7246_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    LUT4 i4903_3_lut (.A(n14073), .B(n5720), .C(rom_addr[5]), .Z(n5723)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4903_3_lut.init = 16'hc5c5;
    LUT4 i5807_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6652)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;
    defparam i5807_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n908)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h77a8;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n604)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'hc727;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n1084)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'h828e;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h778a;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(n15568), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h3818;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(n15568), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n491)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h1e9e;
    PFUMX i11604 (.BLUT(n12227), .ALUT(n12228), .C0(rom_addr[5]), .Z(n12229));
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12301), .ALUT(n3069_adj_557), 
          .C0(rom_addr[9]), .Z(n3070_adj_558)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1069)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h1148;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h5211;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+(D))) */ ;
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h8a11;
    PFUMX i11648 (.BLUT(n12267), .ALUT(n12268), .C0(rom_addr[8]), .Z(n12273));
    LUT4 n2545_bdd_3_lut_13083_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13187)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;
    defparam n2545_bdd_3_lut_13083_3_lut_4_lut_4_lut.init = 16'h6811;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1691)) /* synthesis lut_function=(A (B (D))+!A (B (C (D))+!B !(D))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hc811;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283_adj_559)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(D)))) */ ;
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h2811;
    LUT4 i3849_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n4661)) /* synthesis lut_function=(A (C+!(D))+!A (B+!((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3849_3_lut_4_lut_4_lut.init = 16'he4fe;
    LUT4 i2252_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n3064)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2252_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    PFUMX i11650 (.BLUT(n12271), .ALUT(n12272), .C0(rom_addr[9]), .Z(n12275));
    LUT4 i3053_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n3865)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3053_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 i4900_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15568), .D(rom_addr[4]), .Z(n5720)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4900_3_lut_4_lut_4_lut_4_lut.init = 16'hbffe;
    LUT4 i11931_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[4]), 
         .D(n14152), .Z(n12556)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11931_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11664 (.D0(n12285), .D1(n12286), .SD(rom_addr[9]), .Z(n12289));
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n14120), 
         .C(n14080), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    PFUMX i11665 (.BLUT(n12287), .ALUT(n12288), .C0(rom_addr[9]), .Z(n12290));
    LUT4 address_11__I_0_Mux_2_i1212_3_lut_4_lut (.A(rom_addr[0]), .B(n14150), 
         .C(rom_addr[4]), .D(n1196), .Z(n1212)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1212_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61_adj_560), .ALUT(n62), .C0(n11973), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11683 (.BLUT(n12306), .ALUT(n12307), .C0(rom_addr[8]), .Z(n12308));
    LUT4 n1403_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13354)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1403_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h8101;
    LUT4 i11614_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n12239)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11614_3_lut_4_lut_4_lut_4_lut.init = 16'h1086;
    LUT4 i12056_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n12632)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12056_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_561)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut_4_lut.init = 16'h1021;
    PFUMX i11692 (.BLUT(n12315), .ALUT(n12316), .C0(rom_addr[8]), .Z(n12317));
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1243_adj_562)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut_4_lut.init = 16'h4c10;
    LUT4 i5180_4_lut_rep_220_4_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n14137)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5180_4_lut_rep_220_4_lut.init = 16'hebae;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n205_adj_549)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 i11623_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n12248)) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11623_3_lut_4_lut_4_lut_4_lut.init = 16'hb1b0;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2395)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut.init = 16'h2101;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1564)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut_4_lut.init = 16'h2120;
    LUT4 i11633_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n12258)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11633_3_lut_4_lut_4_lut_4_lut.init = 16'h4e10;
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2077)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut_4_lut.init = 16'h1810;
    PFUMX i13449 (.BLUT(n14358), .ALUT(n14359), .C0(rom_addr[1]), .Z(n14360));
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n1228)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut_4_lut.init = 16'hd210;
    LUT4 i11959_3_lut (.A(n620), .B(n205), .C(rom_addr[4]), .Z(n12584)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11959_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1466)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0190;
    L6MUX21 i11779 (.D0(n12402), .D1(n12403), .SD(rom_addr[7]), .Z(n2044));
    LUT4 i11870_3_lut (.A(n12488), .B(n12489), .C(rom_addr[8]), .Z(n12495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11870_3_lut.init = 16'hcaca;
    L6MUX21 i11865 (.D0(n12478), .D1(n12479), .SD(rom_addr[7]), .Z(n12490));
    L6MUX21 i11868 (.D0(n12484), .D1(n12485), .SD(rom_addr[7]), .Z(n12493));
    LUT4 i11958_3_lut (.A(n491), .B(n604_adj_563), .C(rom_addr[4]), .Z(n12583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11958_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n13145), .B(n3070_adj_558), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 i4482_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5294)) /* synthesis lut_function=(A+!(B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4482_3_lut_4_lut_4_lut_4_lut.init = 16'hbfef;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2426)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i7260_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_564)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7260_4_lut_4_lut.init = 16'hf8f6;
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11956_3_lut (.A(n526), .B(n443), .C(rom_addr[4]), .Z(n12581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11956_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 rom_addr_0__bdd_4_lut_13004_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13482)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_4_lut_13004_4_lut_4_lut_4_lut.init = 16'h1170;
    LUT4 i7306_4_lut (.A(rom_addr[0]), .B(n14138), .C(n14164), .D(rom_addr[4]), 
         .Z(n1085_c)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7306_4_lut.init = 16'h0a22;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860), .ALUT(n893), .C0(n11966), 
          .Z(n1021_adj_565)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2475)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut.init = 16'h4140;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1676_adj_566)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut_4_lut.init = 16'h6160;
    L6MUX21 i13123 (.D0(n13640), .D1(n13637), .SD(rom_addr[6]), .Z(n13641));
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n379)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h1008;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283_adj_568)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut_4_lut.init = 16'hc410;
    LUT4 i7149_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7149_2_lut_4_lut_4_lut.init = 16'h4900;
    PFUMX i11649 (.BLUT(n12269), .ALUT(n12270), .C0(rom_addr[8]), .Z(n12274));
    PFUMX i11613 (.BLUT(n12236), .ALUT(n12237), .C0(rom_addr[5]), .Z(n12238));
    LUT4 i7052_2_lut_4_lut_4_lut (.A(n14144), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14180), .Z(n1851_adj_569)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7052_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i2389_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[5]), .Z(n5840)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2389_3_lut_4_lut_4_lut_4_lut.init = 16'hfbfd;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2298)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut_4_lut.init = 16'h0809;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12284), .B(n3070_adj_570), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 n2552_bdd_3_lut_13298_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13191)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2552_bdd_3_lut_13298_4_lut_4_lut.init = 16'hf7c0;
    L6MUX21 i11622 (.D0(n12245), .D1(n12246), .SD(rom_addr[5]), .Z(n12247));
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12308), .B(n2685), .C(rom_addr[9]), 
         .D(n14273), .Z(n3070_adj_570)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut.init = 16'h8004;
    PFUMX i11660 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n12285));
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_571)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14199), .B(n15547), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_572)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14152), 
         .C(rom_addr[4]), .D(n14172), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    PFUMX i11661 (.BLUT(n766), .ALUT(n1021), .C0(rom_addr[8]), .Z(n12286));
    LUT4 i11548_3_lut_4_lut (.A(rom_addr[0]), .B(n14155), .C(rom_addr[4]), 
         .D(n2426), .Z(n12173)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11548_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_573), .ALUT(n1530_adj_4), 
          .C0(n14238), .Z(n1531_adj_575)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506_adj_576)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 i7085_4_lut_4_lut (.A(rom_addr[0]), .B(n15568), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7085_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 n2062_bdd_3_lut_13152_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13588)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_13152_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 i11576_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(rom_addr[4]), 
         .D(n14151), .Z(n12201)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11576_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11584_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(rom_addr[4]), 
         .D(n2522), .Z(n12209)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11584_3_lut_4_lut.init = 16'hf202;
    LUT4 i11552_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(rom_addr[4]), 
         .D(n2283_adj_559), .Z(n12177)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11552_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11542_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(rom_addr[4]), 
         .D(n2588), .Z(n12167)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11542_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11836_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(rom_addr[4]), 
         .D(n14201), .Z(n12461)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11836_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_577)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), 
         .C(n14238), .D(n2283), .Z(n2492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13121 (.BLUT(n13639), .ALUT(n13638), .C0(n14232), .Z(n13640));
    LUT4 i6008_3_lut_4_lut (.A(rom_addr[0]), .B(n14127), .C(n14236), .D(n2426), 
         .Z(n2428_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6008_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut.init = 16'h400c;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    L6MUX21 i11675 (.D0(n12297), .D1(n12298), .SD(rom_addr[7]), .Z(n12300));
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n14158), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14166), .Z(n1676_adj_578)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11695 (.D0(n2365), .D1(n2428_adj_579), .SD(rom_addr[6]), 
            .Z(n12320));
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 rom_addr_4__bdd_3_lut_12853 (.A(rom_addr[4]), .B(n205_adj_549), 
         .C(rom_addr[5]), .Z(n13306)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam rom_addr_4__bdd_3_lut_12853.init = 16'h4040;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 i11951_4_lut (.A(n14128), .B(n14275), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12576)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11951_4_lut.init = 16'hfaca;
    LUT4 n2506_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13522)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2506_bdd_3_lut_4_lut_4_lut.init = 16'hc807;
    L6MUX21 i11705 (.D0(n12327), .D1(n12328), .SD(rom_addr[7]), .Z(n12330));
    L6MUX21 i11711 (.D0(n12332), .D1(n12333), .SD(rom_addr[7]), .Z(n12336));
    LUT4 i11557_3_lut_4_lut (.A(rom_addr[0]), .B(n14163), .C(rom_addr[4]), 
         .D(n2588), .Z(n12182)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11557_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11727 (.D0(n12349), .D1(n12350), .SD(rom_addr[7]), .Z(n12352));
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut.init = 16'hf813;
    LUT4 i11549_3_lut_4_lut (.A(rom_addr[0]), .B(n14163), .C(rom_addr[4]), 
         .D(n2220), .Z(n12174)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11549_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11758 (.D0(n12381), .D1(n12382), .SD(rom_addr[7]), .Z(n766_adj_581));
    LUT4 i11427_3_lut_4_lut (.A(rom_addr[0]), .B(n14163), .C(rom_addr[4]), 
         .D(n1466_adj_582), .Z(n12052)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11427_3_lut_4_lut.init = 16'hf202;
    LUT4 i5826_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n6671)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5826_3_lut_4_lut_4_lut.init = 16'h10c0;
    PFUMX i11778 (.BLUT(n12400), .ALUT(n12401), .C0(rom_addr[6]), .Z(n12403));
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14163), 
         .C(n4876), .D(rom_addr[5]), .Z(n1947_adj_583)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212_adj_584), 
          .C0(rom_addr[5]), .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14163), 
         .C(rom_addr[5]), .D(n1786), .Z(n1787)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i7163_4_lut (.A(rom_addr[0]), .B(n14144), .C(n4433), .D(rom_addr[4]), 
         .Z(n2523_adj_585)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7163_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14163), 
         .C(rom_addr[5]), .D(n1786_adj_586), .Z(n1787_adj_587)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), 
         .C(rom_addr[4]), .D(n1549_adj_588), .Z(n1565_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 n2426_bdd_4_lut_14168 (.A(n2426), .B(n3933), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13323)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n2426_bdd_4_lut_14168.init = 16'haac0;
    LUT4 i11910_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n14311), .Z(n12535)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11910_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11421_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n12046)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11421_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n731_adj_589)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'h200e;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_563)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), 
         .C(rom_addr[4]), .D(n1435), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 i11754_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n1835), .Z(n12379)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11754_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n11747)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 i5876_2_lut_rep_364 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15544)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5876_2_lut_rep_364.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    L6MUX21 i11800 (.D0(n12238), .D1(n381_adj_590), .SD(rom_addr[6]), 
            .Z(n12425));
    L6MUX21 i11803 (.D0(n12311), .D1(n764), .SD(rom_addr[6]), .Z(n12428));
    LUT4 n730_bdd_3_lut_12687_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13038)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_12687_4_lut_4_lut.init = 16'hc020;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14121), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_591), .Z(n2523_adj_592)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    PFUMX i11805 (.BLUT(n956), .ALUT(n1019), .C0(rom_addr[6]), .Z(n12430));
    LUT4 i5783_3_lut_4_lut (.A(n14121), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6627), .Z(n6628)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5783_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_593)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860_adj_594), 
          .C0(n14230), .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14164), 
         .C(rom_addr[5]), .D(n14163), .Z(n1692)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), 
         .C(rom_addr[4]), .D(n14112), .Z(n1755)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11809 (.D0(n1468), .D1(n1531_adj_575), .SD(rom_addr[6]), 
            .Z(n12434));
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14164), 
         .C(rom_addr[4]), .D(n14120), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i11536_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[4]), 
         .D(n2009_adj_595), .Z(n12161)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11536_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_5), .C0(n14238), 
          .Z(n829_adj_597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11834 (.BLUT(n12457), .ALUT(n12458), .C0(rom_addr[7]), .Z(n1278));
    LUT4 i11528_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[4]), 
         .D(n14336), .Z(n12153)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11528_3_lut_4_lut.init = 16'hf202;
    LUT4 i11787_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[4]), 
         .D(n1643), .Z(n12412)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11787_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11844 (.D0(n12467), .D1(n12468), .SD(rom_addr[7]), .Z(n2044_adj_599));
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14242), 
         .D(rom_addr[4]), .Z(n11737)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 i7209_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i7209_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 i12180_3_lut (.A(n1038), .B(n1053), .C(rom_addr[4]), .Z(n12572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12180_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n731_adj_600)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut.init = 16'h2030;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14164), 
         .C(rom_addr[5]), .D(n14150), .Z(n1692_adj_601)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h2a20;
    L6MUX21 i11853 (.D0(n12574), .D1(n1149_adj_602), .SD(rom_addr[6]), 
            .Z(n12478));
    L6MUX21 i11857 (.D0(n1597), .D1(n12056), .SD(rom_addr[6]), .Z(n12482));
    LUT4 i11839_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[5]), 
         .D(n1914_adj_603), .Z(n12464)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11839_3_lut_4_lut.init = 16'hf202;
    PFUMX i11423 (.BLUT(n1565), .ALUT(n1596), .C0(rom_addr[5]), .Z(n12048));
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 i11773_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[5]), 
         .D(n1851_adj_605), .Z(n12398)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11773_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11859 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n12484));
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 n12361_bdd_3_lut_13354 (.A(n12361), .B(n12362), .C(rom_addr[7]), 
         .Z(n13142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12361_bdd_3_lut_13354.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    LUT4 i7089_2_lut_rep_195_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14112)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7089_2_lut_rep_195_4_lut_4_lut.init = 16'h0081;
    L6MUX21 i11863 (.D0(n12474), .D1(n12475), .SD(rom_addr[7]), .Z(n12488));
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707_adj_606), .ALUT(n6699), 
          .C0(n12038), .Z(n1789_adj_607)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7061_2_lut_rep_183_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14100)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7061_2_lut_rep_183_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_608)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 n2545_bdd_2_lut_13292_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13186)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2545_bdd_2_lut_13292_4_lut_4_lut.init = 16'h1800;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_609), .ALUT(n62_adj_6), 
          .C0(n11973), .Z(n63_adj_611)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_595)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut.init = 16'h7882;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_573)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i7095_2_lut_rep_176_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14093)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7095_2_lut_rep_176_4_lut_4_lut.init = 16'h2900;
    LUT4 n549_bdd_4_lut_13381_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13846)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_13381_4_lut.init = 16'h9080;
    LUT4 i11444_3_lut (.A(n2025_c), .B(n2040_adj_612), .C(rom_addr[4]), 
         .Z(n12069)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11444_3_lut.init = 16'hcaca;
    L6MUX21 i11891 (.D0(n1979), .D1(n12163), .SD(rom_addr[6]), .Z(n12516));
    LUT4 address_11__I_0_Mux_5_i2685_3_lut_4_lut (.A(n14113), .B(n11747), 
         .C(rom_addr[6]), .D(n13189), .Z(n2685)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i2685_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11892 (.D0(n12501), .D1(n12502), .SD(rom_addr[7]), .Z(n12517));
    PFUMX i11893 (.BLUT(n12503), .ALUT(n12504), .C0(rom_addr[7]), .Z(n12518));
    L6MUX21 i11898 (.D0(n12513), .D1(n12514), .SD(rom_addr[7]), .Z(n12523));
    PFUMX i13447 (.BLUT(n14355), .ALUT(n14356), .C0(rom_addr[1]), .Z(n14357));
    L6MUX21 i11982 (.D0(n12605), .D1(n12606), .SD(rom_addr[6]), .Z(n12607));
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14162), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n15545), .Z(n1755_adj_613)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 i12184_3_lut (.A(n844), .B(n859_adj_614), .C(rom_addr[4]), .Z(n12566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12184_3_lut.init = 16'hcaca;
    LUT4 i11420_4_lut_4_lut (.A(n14162), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n12045)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i11420_4_lut_4_lut.init = 16'hdfd0;
    LUT4 i11938_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n12563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11938_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14162), .B(rom_addr[3]), 
         .C(n14122), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 i11609_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), .C(n14188), 
         .D(rom_addr[3]), .Z(n12234)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11609_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n2426), .Z(n1786_adj_586)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n14128), .Z(n1628)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_603)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914_adj_615)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 i11525_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), .C(rom_addr[4]), 
         .D(n1084), .Z(n12150)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11525_3_lut_4_lut.init = 16'hf808;
    LUT4 i11430_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), .C(rom_addr[4]), 
         .D(n1658), .Z(n12055)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11430_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n2009_adj_616), .Z(n2010)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    PFUMX i13445 (.BLUT(n14352), .ALUT(n14353), .C0(rom_addr[0]), .Z(n14354));
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n1529_adj_617), .Z(n1530_adj_618)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), 
         .C(rom_addr[4]), .D(n14115), .Z(n1820_adj_619)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n15546), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n15546), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14199), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 n12361_bdd_2_lut_13355 (.A(n12534), .B(rom_addr[7]), .Z(n13143)) /* synthesis lut_function=(A (B)) */ ;
    defparam n12361_bdd_2_lut_13355.init = 16'h8888;
    LUT4 i11507_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), .C(rom_addr[4]), 
         .D(n379), .Z(n12132)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11507_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11939_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), .C(rom_addr[4]), 
         .D(n747), .Z(n12564)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11939_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11835_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), .C(rom_addr[4]), 
         .D(n2588), .Z(n12460)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11835_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_620)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 i12377_3_lut (.A(n2523_adj_585), .B(n2554_adj_572), .C(rom_addr[5]), 
         .Z(n2555_adj_621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12377_3_lut.init = 16'hcaca;
    LUT4 i11504_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14101), .Z(n12129)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11504_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507_adj_622), .ALUT(n509), 
          .C0(n11962), .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_624), .Z(n1723_adj_625)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14147), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11637 (.D0(n12260), .D1(n12261), .SD(rom_addr[5]), .Z(n12262));
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_369 (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .Z(n15549)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_369.init = 16'h8383;
    LUT4 i11590_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12215)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11590_3_lut_4_lut_4_lut.init = 16'hc383;
    L6MUX21 i11640 (.D0(n12587), .D1(n12594), .SD(rom_addr[7]), .Z(n12265));
    LUT4 n2573_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14180), .C(rom_addr[4]), 
         .D(n2573), .Z(n13356)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2573_bdd_3_lut_4_lut.init = 16'hf404;
    LUT4 n12368_bdd_3_lut_12743 (.A(n12375), .B(n12376), .C(rom_addr[7]), 
         .Z(n13139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12368_bdd_3_lut_12743.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12453), .B(n3070_adj_626), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    L6MUX21 i11641 (.D0(n12597), .D1(n12604), .SD(rom_addr[7]), .Z(n12266));
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12324), .B(n2685_adj_627), 
         .C(rom_addr[9]), .D(n14273), .Z(n3070_adj_626)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n12462), .B(n14366), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685_adj_627)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_370 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15550)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_370.init = 16'h3838;
    LUT4 i11934_3_lut (.A(n428_adj_628), .B(n14328), .C(rom_addr[4]), 
         .Z(n12559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11934_3_lut.init = 16'hcaca;
    LUT4 i7336_2_lut_rep_131_4_lut (.A(n14315), .B(n2621), .C(n14233), 
         .D(n14273), .Z(n14048)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7336_2_lut_rep_131_4_lut.init = 16'hca00;
    L6MUX21 i11671 (.D0(n12130), .D1(n12139), .SD(rom_addr[6]), .Z(n12296));
    PFUMX i11672 (.BLUT(n2365_adj_629), .ALUT(n12148), .C0(rom_addr[6]), 
          .Z(n12297));
    LUT4 n12368_bdd_3_lut_13350 (.A(n12368), .B(n12369), .C(rom_addr[7]), 
         .Z(n13140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12368_bdd_3_lut_13350.init = 16'hcaca;
    LUT4 i11933_3_lut (.A(n205_adj_571), .B(n220_adj_630), .C(rom_addr[4]), 
         .Z(n12558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11933_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    PFUMX i11673 (.BLUT(n12157), .ALUT(n6628), .C0(rom_addr[6]), .Z(n12298));
    LUT4 i11691_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n13895), 
         .Z(n12316)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11691_4_lut.init = 16'hca0a;
    LUT4 i11929_3_lut (.A(n684), .B(n699), .C(rom_addr[4]), .Z(n12554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11929_3_lut.init = 16'hcaca;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13853), .C(n2589), 
         .D(rom_addr[6]), .Z(n15541)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n14183), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_c), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11678 (.D0(n12175), .D1(n12184), .SD(rom_addr[6]), .Z(n12303));
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n14183), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364_adj_561), .Z(n380_adj_631)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11679 (.BLUT(n12193), .ALUT(n2428_c), .C0(rom_addr[6]), .Z(n12304));
    LUT4 i11467_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), .C(rom_addr[4]), 
         .D(n124_adj_632), .Z(n12092)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11467_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(rom_addr[0]), .B(n14191), 
         .C(rom_addr[4]), .D(n6622), .Z(n1467_adj_633)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11602_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n78), .Z(n12227)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11602_3_lut_4_lut.init = 16'h2f20;
    PFUMX i9943 (.BLUT(n12632), .ALUT(n12633), .C0(rom_addr[5]), .Z(n8028));
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_142_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n14144), .C(rom_addr[4]), .D(n14191), .Z(n14059)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_142_4_lut_4_lut.init = 16'h5202;
    LUT4 rom_addr_4__bdd_3_lut_12923 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13384)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam rom_addr_4__bdd_3_lut_12923.init = 16'h2828;
    LUT4 rom_addr_1__bdd_4_lut_13417 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14304)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13417.init = 16'h6144;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14144), 
         .C(rom_addr[4]), .D(n14180), .Z(n1275)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5202;
    LUT4 i11582_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n890), .Z(n12207)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11582_3_lut_4_lut.init = 16'h2f20;
    LUT4 n2332_bdd_3_lut_13155_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n2332), .Z(n13590)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2332_bdd_3_lut_13155_4_lut.init = 16'h2f20;
    LUT4 n668_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n668_adj_550), .Z(n13695)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n668_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_365 (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .Z(n15545)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_365.init = 16'h8181;
    LUT4 i4064_3_lut_4_lut (.A(n14255), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14163), .Z(n4876)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4064_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), 
         .C(rom_addr[4]), .D(n14152), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11680 (.D0(n12202), .D1(n12211), .SD(rom_addr[6]), .Z(n12305));
    PFUMX i13119 (.BLUT(n14061), .ALUT(n13636), .C0(rom_addr[5]), .Z(n13637));
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_634)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12500), .B(n3070_adj_552), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    PFUMX i11696 (.BLUT(n2492), .ALUT(n2555_adj_621), .C0(rom_addr[6]), 
          .Z(n12321));
    PFUMX i13443 (.BLUT(n14349), .ALUT(n14350), .C0(rom_addr[1]), .Z(n14351));
    LUT4 i12191_3_lut (.A(n589), .B(n604_adj_635), .C(rom_addr[4]), .Z(n12550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12191_3_lut.init = 16'hcaca;
    LUT4 i11466_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n14370), .Z(n12091)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11466_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14258), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11932_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n2283_adj_636), .Z(n12557)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11932_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14258), 
         .C(rom_addr[4]), .D(n526_adj_577), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11829_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), .C(rom_addr[4]), 
         .D(n2009), .Z(n12454)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11829_3_lut_4_lut.init = 16'hf202;
    PFUMX i11702 (.BLUT(n12084), .ALUT(n2428_adj_637), .C0(rom_addr[6]), 
          .Z(n12327));
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14144), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_135_4_lut (.A(rom_addr[0]), 
         .B(n14144), .C(rom_addr[4]), .D(n14096), .Z(n14052)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_135_4_lut.init = 16'hf202;
    LUT4 i11438_4_lut (.A(n14115), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4433), 
         .Z(n12063)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11438_4_lut.init = 16'h0aca;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244_adj_638), .ALUT(n1275_adj_639), 
          .C0(rom_addr[5]), .Z(n1276_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n14185), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    PFUMX i11703 (.BLUT(n2492_adj_640), .ALUT(n2555_adj_641), .C0(rom_addr[6]), 
          .Z(n12328));
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12531), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    LUT4 i11690_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3624), 
         .Z(n12315)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11690_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n14181), .Z(n428_adj_642)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11596_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), .C(rom_addr[3]), 
         .D(n14221), .Z(n12221)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11596_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n15548), .Z(n2009_adj_616)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i12292_3_lut (.A(n14300), .B(n14331), .C(rom_addr[5]), .Z(n12548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12292_3_lut.init = 16'hcaca;
    PFUMX i11707 (.BLUT(n2110), .ALUT(n2173_adj_543), .C0(rom_addr[6]), 
          .Z(n12332));
    LUT4 i11531_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14306)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11531_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i11920_3_lut (.A(n557), .B(n526_adj_577), .C(rom_addr[4]), .Z(n12545)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11920_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14193), 
         .C(rom_addr[4]), .D(n14177), .Z(n2620)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut.init = 16'h5202;
    PFUMX i11708 (.BLUT(n2237_adj_643), .ALUT(n12169), .C0(rom_addr[6]), 
          .Z(n12333));
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n14181), .Z(n1483)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n15546), .Z(n1435)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11710 (.D0(n12178), .D1(n2555), .SD(rom_addr[6]), .Z(n12335));
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n14193), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309_adj_644)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf202;
    LUT4 n2172_bdd_3_lut_13283_4_lut (.A(rom_addr[0]), .B(n14193), .C(rom_addr[4]), 
         .D(n14115), .Z(n13421)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2172_bdd_3_lut_13283_4_lut.init = 16'h2f20;
    LUT4 i11564_3_lut_4_lut (.A(rom_addr[0]), .B(n14193), .C(rom_addr[4]), 
         .D(n684_adj_645), .Z(n12189)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11564_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11976_3_lut_4_lut (.A(rom_addr[0]), .B(n14193), .C(rom_addr[4]), 
         .D(n1002), .Z(n12601)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11976_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11531_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14305)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11531_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i11942_3_lut_4_lut (.A(rom_addr[0]), .B(n14193), .C(rom_addr[4]), 
         .D(n890_adj_646), .Z(n12567)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11942_3_lut_4_lut.init = 16'hf202;
    LUT4 i11534_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1529), .Z(n12159)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11534_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1676_c), .Z(n94_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut (.A(n15545), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14162), .Z(n1723_adj_647)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n15545), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n15549), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14265), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11723 (.D0(n12341), .D1(n12342), .SD(rom_addr[6]), .Z(n12348));
    LUT4 i11435_4_lut (.A(n6663), .B(n14093), .C(rom_addr[4]), .D(n14275), 
         .Z(n12060)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11435_4_lut.init = 16'hcac0;
    L6MUX21 i11724 (.D0(n12343), .D1(n12344), .SD(rom_addr[6]), .Z(n12349));
    LUT4 i11991_3_lut_4_lut (.A(n14162), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_648), .Z(n12616)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11991_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14153), .Z(n428_adj_649)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 n1340_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[4]), 
         .D(n14152), .Z(n13557)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11725 (.D0(n12345), .D1(n12346), .SD(rom_addr[6]), .Z(n12350));
    PFUMX i11736 (.BLUT(n12357), .ALUT(n12358), .C0(rom_addr[6]), .Z(n12361));
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_628), .B(n684_adj_645), 
         .C(rom_addr[4]), .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_366 (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .Z(n15546)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_366.init = 16'h1818;
    LUT4 i11607_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14309)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i11607_then_4_lut.init = 16'h3ac2;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_650)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i11607_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14308)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam i11607_else_4_lut.init = 16'h6802;
    LUT4 rom_addr_0__bdd_4_lut_13428 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14311)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13428.init = 16'h0da3;
    LUT4 i11682_3_lut (.A(n12304), .B(n12305), .C(rom_addr[7]), .Z(n12307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11682_3_lut.init = 16'hcaca;
    LUT4 i11516_3_lut_4_lut (.A(n14260), .B(n14242), .C(rom_addr[4]), 
         .D(n890), .Z(n12141)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11516_3_lut_4_lut.init = 16'h4f40;
    PFUMX i13441 (.BLUT(n14346), .ALUT(n14347), .C0(rom_addr[0]), .Z(n14348));
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14265), .B(n14061), .C(rom_addr[5]), 
         .D(n14271), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    L6MUX21 i11737 (.D0(n12359), .D1(n12360), .SD(rom_addr[6]), .Z(n12362));
    LUT4 i11989_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[4]), 
         .D(n1435_adj_651), .Z(n12614)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11989_3_lut_4_lut.init = 16'hf101;
    LUT4 i11512_3_lut_4_lut (.A(rom_addr[1]), .B(n15544), .C(rom_addr[4]), 
         .D(n2267), .Z(n12137)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11512_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14201), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_605)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11555_3_lut_4_lut (.A(rom_addr[1]), .B(n14201), .C(rom_addr[4]), 
         .D(n301_c), .Z(n12180)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11555_3_lut_4_lut.init = 16'h1f10;
    LUT4 n915_bdd_3_lut_13377_4_lut (.A(n14239), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14189), .Z(n13843)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_3_lut_13377_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_651), .B(n15549), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_652), .B(n1211), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14201), 
         .C(rom_addr[4]), .D(n1549_adj_588), .Z(n1565_adj_653)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n14239), .B(n14097), .C(rom_addr[4]), 
         .D(n14279), .Z(n1403_adj_654)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14104), .Z(n1820)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11965_3_lut_4_lut (.A(rom_addr[1]), .B(n14201), .C(rom_addr[4]), 
         .D(n731_adj_589), .Z(n12590)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11965_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14239), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15546), .Z(n1084_adj_655)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5848_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14314)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5848_4_lut_then_4_lut.init = 16'h0e01;
    LUT4 i12208_3_lut (.A(n1228), .B(n1243_adj_656), .C(rom_addr[4]), 
         .Z(n12042)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12208_3_lut.init = 16'hcaca;
    LUT4 n13464_bdd_3_lut (.A(n13464), .B(n14354), .C(rom_addr[5]), .Z(n13465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13464_bdd_3_lut.init = 16'hcaca;
    PFUMX i11743 (.BLUT(n12364), .ALUT(n12365), .C0(rom_addr[6]), .Z(n12368));
    LUT4 n858_bdd_3_lut_12700_4_lut (.A(rom_addr[0]), .B(n14246), .C(n14185), 
         .D(rom_addr[3]), .Z(n13061)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n858_bdd_3_lut_12700_4_lut.init = 16'h22f0;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_657)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_367 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15547)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_367.init = 16'he8e8;
    PFUMX i11483 (.BLUT(n364_adj_658), .ALUT(n379_c), .C0(rom_addr[4]), 
          .Z(n12108));
    L6MUX21 i11744 (.D0(n12366), .D1(n12367), .SD(rom_addr[6]), .Z(n12369));
    L6MUX21 i11750 (.D0(n12371), .D1(n12372), .SD(rom_addr[6]), .Z(n12375));
    L6MUX21 i11751 (.D0(n12373), .D1(n12374), .SD(rom_addr[6]), .Z(n12376));
    LUT4 n6498_bdd_4_lut_12989 (.A(n14277), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13470)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))) */ ;
    defparam n6498_bdd_4_lut_12989.init = 16'h8020;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_659), .B(n1914_adj_615), 
         .C(rom_addr[5]), .Z(n1915_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 n6498_bdd_4_lut (.A(n14160), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14172), .Z(n13471)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n6498_bdd_4_lut.init = 16'h3a0a;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14185), .Z(n890)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13097 (.BLUT(n13603), .ALUT(n13602), .C0(rom_addr[6]), .Z(n13604));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n14275), .B(n14265), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12428_3_lut (.A(n2010), .B(n14348), .C(rom_addr[5]), .Z(n12401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12428_3_lut.init = 16'hcaca;
    LUT4 i11681_3_lut (.A(n13425), .B(n12303), .C(rom_addr[7]), .Z(n12306)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11681_3_lut.init = 16'hcaca;
    LUT4 i12347_3_lut (.A(n1883_adj_661), .B(n1914_adj_662), .C(rom_addr[5]), 
         .Z(n12399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12347_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 rom_addr_4__bdd_3_lut_12918_4_lut (.A(rom_addr[0]), .B(n14271), 
         .C(n14215), .D(rom_addr[5]), .Z(n13307)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_4__bdd_3_lut_12918_4_lut.init = 16'h0040;
    L6MUX21 i11764 (.D0(n12386), .D1(n12387), .SD(rom_addr[6]), .Z(n12389));
    PFUMX i11770 (.BLUT(n12391), .ALUT(n12392), .C0(rom_addr[6]), .Z(n12395));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_664), .B(n1691_adj_665), 
         .C(rom_addr[4]), .Z(n1692_adj_666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14129), .Z(n1659_adj_667)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14317)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[5]), .B(n14215), .C(rom_addr[0]), 
         .D(n14216), .Z(n10570)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14183), .Z(n428_adj_628)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13439 (.BLUT(n14343), .ALUT(n14344), .C0(rom_addr[0]), .Z(n14345));
    LUT4 i12350_3_lut (.A(n13911), .B(n1659_adj_667), .C(rom_addr[5]), 
         .Z(n12392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12350_3_lut.init = 16'hcaca;
    L6MUX21 i11771 (.D0(n12393), .D1(n12394), .SD(rom_addr[6]), .Z(n12396));
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14272), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11860), .Z(n1212_adj_668)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    PFUMX i12701 (.BLUT(n13062), .ALUT(n13061), .C0(rom_addr[4]), .Z(n13063));
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_634), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    PFUMX i11777 (.BLUT(n12398), .ALUT(n12399), .C0(rom_addr[6]), .Z(n12402));
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228_adj_670), 
         .C(rom_addr[4]), .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 i11498_3_lut_4_lut (.A(n14272), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12123)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11498_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14316)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    LUT4 i11957_3_lut_4_lut (.A(n14272), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n12582)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11957_3_lut_4_lut.init = 16'hf909;
    LUT4 n13478_bdd_3_lut_13902 (.A(n13478), .B(n2109), .C(rom_addr[5]), 
         .Z(n13479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13478_bdd_3_lut_13902.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14255), 
         .C(rom_addr[3]), .D(n14265), .Z(n604_adj_671)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX i11501 (.BLUT(n684_adj_672), .ALUT(n699_adj_673), .C0(rom_addr[4]), 
          .Z(n12126));
    LUT4 i11632_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), .C(rom_addr[3]), 
         .D(n15548), .Z(n12257)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11632_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12222_3_lut (.A(n1228_adj_674), .B(n1243_adj_553), .C(rom_addr[4]), 
         .Z(n12378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12222_3_lut.init = 16'hcaca;
    LUT4 n13485_bdd_3_lut (.A(n13485), .B(n13484), .C(rom_addr[6]), .Z(n13486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13485_bdd_3_lut.init = 16'hcaca;
    LUT4 i12070_3_lut (.A(n6652), .B(n891), .C(rom_addr[5]), .Z(n860_adj_594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12070_3_lut.init = 16'hcaca;
    LUT4 n858_bdd_3_lut_12707_4_lut (.A(rom_addr[0]), .B(n14246), .C(rom_addr[3]), 
         .D(n14183), .Z(n13062)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n858_bdd_3_lut_12707_4_lut.init = 16'hf202;
    LUT4 i11443_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_608), .Z(n12068)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_634), .Z(n2010_adj_675)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    L6MUX21 i11790 (.D0(n12187), .D1(n12190), .SD(rom_addr[6]), .Z(n12415));
    PFUMX i11799 (.BLUT(n190_adj_676), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12424));
    LUT4 n270_bdd_3_lut_12810_4_lut (.A(rom_addr[0]), .B(n14246), .C(n14183), 
         .D(rom_addr[3]), .Z(n13040)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n270_bdd_3_lut_12810_4_lut.init = 16'h22f0;
    PFUMX i13095 (.BLUT(n1211), .ALUT(n13600), .C0(rom_addr[4]), .Z(n13601));
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14156), .Z(n908_adj_677)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11804 (.D0(n829_adj_597), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12429));
    LUT4 rom_addr_3__bdd_4_lut_13472 (.A(rom_addr[3]), .B(n14188), .C(n13384), 
         .D(rom_addr[4]), .Z(n14044)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam rom_addr_3__bdd_4_lut_13472.init = 16'h88f0;
    LUT4 address_11__I_0_Mux_2_i1213_3_lut_4_lut (.A(rom_addr[1]), .B(n14074), 
         .C(rom_addr[5]), .D(n1212), .Z(n1213_adj_678)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1213_3_lut_4_lut.init = 16'hf808;
    PFUMX i11635 (.BLUT(n589_adj_679), .ALUT(n604), .C0(rom_addr[4]), 
          .Z(n12260));
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14183), .B(n14185), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    PFUMX i11806 (.BLUT(n12314), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12431));
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14121), .Z(n124_adj_632)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11807 (.D0(n1213), .D1(n12380), .SD(rom_addr[6]), .Z(n12432));
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14265), .Z(n220_adj_681)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n14246), 
         .C(rom_addr[3]), .D(n14181), .Z(n653_adj_682)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14075), .Z(n1786_adj_683)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_684), .ALUT(n2555_adj_685), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14319)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_686)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_368 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15548)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_368.init = 16'h1c1c;
    LUT4 i12357_3_lut (.A(n14385), .B(n2964), .C(rom_addr[5]), .Z(n12365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12357_3_lut.init = 16'hcaca;
    LUT4 i12304_3_lut_4_lut (.A(n14171), .B(n11731), .C(rom_addr[5]), 
         .D(n1565_adj_653), .Z(n1597_adj_687)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12304_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12522_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5064)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12522_2_lut.init = 16'h9999;
    PFUMX i11810 (.BLUT(n1597_adj_688), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n12435));
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    PFUMX i11812 (.BLUT(n12407), .ALUT(n1915_adj_660), .C0(rom_addr[6]), 
          .Z(n12437));
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n14079), .B(n14104), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14162), .Z(n1676_adj_664)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604_adj_635)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i11813 (.D0(n12413), .D1(n12456), .SD(rom_addr[6]), .Z(n12438));
    PFUMX i11842 (.BLUT(n12463), .ALUT(n12464), .C0(rom_addr[6]), .Z(n12467));
    LUT4 i1_4_lut (.A(n14081), .B(rom_addr[7]), .C(n6459), .D(rom_addr[5]), 
         .Z(n10820)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 i11684_3_lut (.A(n6650), .B(n668_adj_550), .C(rom_addr[4]), .Z(n12309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11684_3_lut.init = 16'hcaca;
    LUT4 n2203_bdd_3_lut_13364_4_lut (.A(n14248), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n15549), .Z(n13381)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2203_bdd_3_lut_13364_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n14248), .B(rom_addr[2]), 
         .C(n14142), .D(rom_addr[3]), .Z(n653_adj_690)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    PFUMX i13437 (.BLUT(n14340), .ALUT(n14341), .C0(rom_addr[3]), .Z(n14342));
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_691), 
          .C0(n14233), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14248), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15548), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(n14248), .B(rom_addr[2]), 
         .C(n14189), .D(rom_addr[3]), .Z(n604_adj_692)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i2431_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14323)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2431_4_lut_then_4_lut.init = 16'hfffb;
    LUT4 i2431_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .Z(n14322)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2431_4_lut_else_4_lut.init = 16'hefef;
    LUT4 i11663_3_lut (.A(n1789_adj_607), .B(n2044_adj_599), .C(rom_addr[8]), 
         .Z(n12288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11663_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14162), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14153), .Z(n443_adj_693)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12226_3_lut (.A(n12215), .B(n12216), .C(rom_addr[4]), .Z(n12217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12226_3_lut.init = 16'hcaca;
    PFUMX i13088 (.BLUT(n13591), .ALUT(n2427), .C0(rom_addr[6]), .Z(n13592));
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3127), .Z(n10773)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14248), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14265), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14162), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(n14244), .B(rom_addr[2]), 
         .C(n14189), .D(rom_addr[3]), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668_adj_550), .B(n924), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 n2283_bdd_3_lut_13090 (.A(n2283_adj_559), .B(n2298), .C(rom_addr[4]), 
         .Z(n13533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2283_bdd_3_lut_13090.init = 16'hcaca;
    PFUMX i11843 (.BLUT(n12465), .ALUT(n12466), .C0(rom_addr[6]), .Z(n12468));
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n14210), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14122), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7075_2_lut_4_lut (.A(n14109), .B(n14108), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7075_2_lut_4_lut.init = 16'hca00;
    LUT4 n10687_bdd_3_lut_4_lut (.A(n14179), .B(n14156), .C(rom_addr[5]), 
         .D(n2141), .Z(n13460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n10687_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 n13536_bdd_3_lut (.A(n14342), .B(n13533), .C(rom_addr[5]), .Z(n13537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13536_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(n14221), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14326)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14325)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n14265), .Z(n589)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7107_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7107_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), 
         .C(n15550), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11983_3_lut_4_lut (.A(rom_addr[0]), .B(n14078), .C(rom_addr[5]), 
         .D(n1212_adj_668), .Z(n12608)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11983_3_lut_4_lut.init = 16'hf101;
    LUT4 i11963_3_lut_4_lut (.A(n14185), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_690), .Z(n12588)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11963_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11766_3_lut_4_lut (.A(rom_addr[0]), .B(n14078), .C(rom_addr[5]), 
         .D(n1565_c), .Z(n12391)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11766_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11928_3_lut_4_lut (.A(n14185), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_682), .Z(n12553)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11928_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11845 (.D0(n63), .D1(n12537), .SD(rom_addr[6]), .Z(n12470));
    LUT4 rom_addr_0__bdd_4_lut_13431 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14328)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_13431.init = 16'h480c;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n15546), .Z(n589_adj_679)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n14330)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n14329)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n15549), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n14265), .Z(n475)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    PFUMX i13435 (.BLUT(n14337), .ALUT(n14338), .C0(rom_addr[0]), .Z(n14339));
    LUT4 i11627_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), .C(rom_addr[3]), 
         .D(n14142), .Z(n12252)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11627_3_lut_4_lut.init = 16'hf808;
    LUT4 i12268_3_lut (.A(n12119), .B(n12120), .C(rom_addr[5]), .Z(n12121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12268_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n15545), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i11694_3_lut (.A(n2237_adj_694), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11694_3_lut.init = 16'hcaca;
    LUT4 i5780_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), .C(rom_addr[3]), 
         .D(n8547), .Z(n6625)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5780_3_lut_4_lut.init = 16'h08f8;
    L6MUX21 i11847 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12472));
    PFUMX i11848 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n12473));
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n15549), .Z(n1435_adj_695)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_adj_17 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11731)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h8888;
    L6MUX21 i11849 (.D0(n12546), .D1(n12552), .SD(rom_addr[6]), .Z(n12474));
    L6MUX21 i11850 (.D0(n12555), .D1(n12565), .SD(rom_addr[6]), .Z(n12475));
    LUT4 i11626_3_lut_4_lut (.A(rom_addr[0]), .B(n14215), .C(rom_addr[3]), 
         .D(n15545), .Z(n12251)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11626_3_lut_4_lut.init = 16'h4f40;
    LUT4 i12287_3_lut (.A(n14288), .B(n444_adj_696), .C(rom_addr[5]), 
         .Z(n12578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12287_3_lut.init = 16'hcaca;
    L6MUX21 i11851 (.D0(n829), .D1(n12568), .SD(rom_addr[6]), .Z(n12476));
    L6MUX21 i11854 (.D0(n12577), .D1(n12044), .SD(rom_addr[6]), .Z(n12479));
    LUT4 rom_addr_0__bdd_4_lut_13434 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_c)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13434.init = 16'hb124;
    LUT4 i11597_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), .C(rom_addr[3]), 
         .D(n14183), .Z(n12222)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11597_3_lut_4_lut.init = 16'hf808;
    PFUMX i11855 (.BLUT(n12047), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12480));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n15549), .Z(n1707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i11786_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), .C(rom_addr[4]), 
         .D(n1946_adj_697), .Z(n12411)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11786_3_lut_4_lut.init = 16'hf808;
    PFUMX i13086 (.BLUT(n13588), .ALUT(n14095), .C0(rom_addr[4]), .Z(n13589));
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n14215), 
         .C(rom_addr[3]), .D(n14183), .Z(n684_adj_645)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883), .B(n1786), .C(rom_addr[5]), 
         .Z(n1915_adj_698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7228_4_lut (.A(rom_addr[0]), .B(n14164), .C(n5933), .D(rom_addr[5]), 
         .Z(n1852_adj_699)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7228_4_lut.init = 16'ha022;
    LUT4 i11436_3_lut_4_lut (.A(n14166), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n12061)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11436_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11856 (.D0(n12053), .D1(n1531), .SD(rom_addr[6]), .Z(n12481));
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n14215), 
         .C(rom_addr[3]), .D(n14188), .Z(n205)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    PFUMX i11858 (.BLUT(n1724), .ALUT(n1787_adj_587), .C0(rom_addr[6]), 
          .Z(n12483));
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(rom_addr[0]), .B(n14275), 
         .C(rom_addr[3]), .D(n14156), .Z(n1243_adj_656)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_0__bdd_4_lut_13457 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14336)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13457.init = 16'h7002;
    LUT4 i11426_3_lut_4_lut (.A(n14166), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435_adj_695), .Z(n12051)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11426_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14215), 
         .C(rom_addr[3]), .D(n14265), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 i11780_3_lut_4_lut (.A(n14166), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14097), .Z(n12405)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11780_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15562), .B(n444), .C(rom_addr[5]), 
         .Z(n445_adj_700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11860 (.D0(n12062), .D1(n12065), .SD(rom_addr[6]), .Z(n12485));
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14073), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_701)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n14073), 
         .C(rom_addr[5]), .D(n2396_adj_702), .Z(n2428_adj_637)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14215), 
         .C(rom_addr[3]), .D(n15545), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14166), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_adj_661)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    L6MUX21 i11877 (.D0(n190), .D1(n12096), .SD(rom_addr[6]), .Z(n12502));
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14338)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i12404_3_lut (.A(n445_adj_700), .B(n13042), .C(rom_addr[6]), 
         .Z(n12504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12404_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut (.A(n14166), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14104), .Z(n1883_adj_703)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11439_3_lut_4_lut (.A(n15550), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_adj_704), .Z(n12064)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11439_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n11720), .C(rom_addr[6]), .D(n11747), 
         .Z(n11748)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_18 (.A(n14132), .B(rom_addr[8]), .C(n14177), .D(rom_addr[4]), 
         .Z(n11720)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h3022;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14337)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h0082;
    LUT4 i7434_4_lut (.A(n2621_adj_705), .B(n14273), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7434_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n14091), .Z(n2621_adj_705)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i12318_3_lut (.A(n12045), .B(n12046), .C(rom_addr[5]), .Z(n12047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12318_3_lut.init = 16'hcaca;
    LUT4 i11830_3_lut_4_lut (.A(n15550), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14161), .Z(n12455)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11830_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11880 (.D0(n12118), .D1(n12124), .SD(rom_addr[6]), .Z(n12505));
    L6MUX21 i11883 (.D0(n12142), .D1(n12145), .SD(rom_addr[6]), .Z(n12508));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n12241), .B(n444), .C(rom_addr[5]), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11884 (.D0(n12151), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12509));
    LUT4 i11866_3_lut (.A(n12480), .B(n12481), .C(rom_addr[7]), .Z(n12491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11866_3_lut.init = 16'hcaca;
    LUT4 i11867_3_lut (.A(n12482), .B(n12483), .C(rom_addr[7]), .Z(n12492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11867_3_lut.init = 16'hcaca;
    LUT4 n2596_bdd_3_lut_13289_4_lut (.A(rom_addr[0]), .B(n14215), .C(rom_addr[3]), 
         .D(n14188), .Z(n13184)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2596_bdd_3_lut_13289_4_lut.init = 16'h7f70;
    PFUMX i11885 (.BLUT(n1213_adj_678), .ALUT(n1276), .C0(rom_addr[6]), 
          .Z(n12510));
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n15550), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038_adj_708), .Z(n1054_adj_709)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11458_4_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14284)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam i11458_4_lut_then_4_lut.init = 16'hf284;
    L6MUX21 i11887 (.D0(n12154), .D1(n12160), .SD(rom_addr[6]), .Z(n12512));
    PFUMX i11888 (.BLUT(n1597_adj_687), .ALUT(n1660_adj_710), .C0(rom_addr[6]), 
          .Z(n12513));
    LUT4 n1699_bdd_4_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n14341)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (D)) */ ;
    defparam n1699_bdd_4_lut_then_4_lut.init = 16'hff28;
    LUT4 i11841_4_lut (.A(n14097), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12466)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11841_4_lut.init = 16'haaca;
    LUT4 i11772_3_lut (.A(n12395), .B(n12396), .C(rom_addr[7]), .Z(n1789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11772_3_lut.init = 16'hcaca;
    LUT4 i11840_3_lut (.A(n1914_adj_603), .B(n14052), .C(rom_addr[5]), 
         .Z(n12465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11840_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14160), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244_adj_638)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11889 (.BLUT(n1724_adj_712), .ALUT(n1787), .C0(rom_addr[6]), 
          .Z(n12514));
    LUT4 n13590_bdd_3_lut (.A(n13590), .B(n13589), .C(rom_addr[5]), .Z(n13591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13590_bdd_3_lut.init = 16'hcaca;
    PFUMX i11890 (.BLUT(n1852_adj_699), .ALUT(n1915_adj_698), .C0(rom_addr[6]), 
          .Z(n12515));
    LUT4 n1699_bdd_4_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14340)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1699_bdd_4_lut_else_4_lut.init = 16'h0202;
    L6MUX21 i11425 (.D0(n12048), .D1(n12049), .SD(rom_addr[6]), .Z(n12050));
    LUT4 n221_bdd_4_lut (.A(n14059), .B(n5294), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n13603)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut.init = 16'haa30;
    LUT4 i11801_3_lut (.A(n12247), .B(n508_adj_713), .C(rom_addr[6]), 
         .Z(n12426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11801_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n14291), .B(n507), .C(rom_addr[5]), 
         .Z(n508_adj_713)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 i11802_3_lut (.A(n13386), .B(n12262), .C(rom_addr[6]), .Z(n12427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11802_3_lut.init = 16'hcaca;
    LUT4 i12334_3_lut (.A(n12405), .B(n14376), .C(rom_addr[5]), .Z(n12407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12334_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_7), .B(n1596_adj_715), 
         .C(rom_addr[5]), .Z(n1597_adj_688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n14076), .B(n14121), .C(rom_addr[5]), 
         .D(n14130), .Z(n2555_adj_685)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    LUT4 i5816_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14344)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5816_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 i5816_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14343)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5816_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 i12341_3_lut (.A(n14294), .B(n14363), .C(rom_addr[5]), .Z(n12314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12341_3_lut.init = 16'hcaca;
    LUT4 n221_bdd_3_lut_13109 (.A(n221), .B(n13601), .C(rom_addr[5]), 
         .Z(n13602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_13109.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12223), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    PFUMX i11924 (.BLUT(n12547), .ALUT(n12548), .C0(rom_addr[6]), .Z(n12549));
    LUT4 i11726_3_lut (.A(n13480), .B(n12348), .C(rom_addr[7]), .Z(n12351)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11726_3_lut.init = 16'hcaca;
    LUT4 i7114_4_lut (.A(rom_addr[0]), .B(n14139), .C(n6308), .D(rom_addr[5]), 
         .Z(n190_adj_676)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7114_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n14185), .B(n603), .C(rom_addr[3]), 
         .Z(n699_adj_673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i11712_3_lut (.A(n13592), .B(n12335), .C(rom_addr[7]), .Z(n12337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11712_3_lut.init = 16'hcaca;
    L6MUX21 i11937 (.D0(n12560), .D1(n12561), .SD(rom_addr[6]), .Z(n12562));
    L6MUX21 i11447 (.D0(n12070), .D1(n12071), .SD(rom_addr[6]), .Z(n12072));
    LUT4 i11926_3_lut (.A(n475), .B(n205_adj_549), .C(rom_addr[4]), .Z(n12551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11926_3_lut.init = 16'hcaca;
    LUT4 i12469_4_lut (.A(n2573_adj_686), .B(n15541), .C(rom_addr[6]), 
         .D(n14232), .Z(n2685_adj_716)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12469_4_lut.init = 16'hccca;
    L6MUX21 i11946 (.D0(n12569), .D1(n12570), .SD(rom_addr[6]), .Z(n12571));
    LUT4 i12240_3_lut (.A(n2283_adj_568), .B(n2298_adj_564), .C(rom_addr[4]), 
         .Z(n2299_adj_717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12240_3_lut.init = 16'hcaca;
    PFUMX i11955 (.BLUT(n12578), .ALUT(n12579), .C0(rom_addr[6]), .Z(n12580));
    LUT4 i11429_3_lut_4_lut (.A(rom_addr[0]), .B(n14129), .C(rom_addr[4]), 
         .D(n14128), .Z(n12054)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11429_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14129), 
         .C(rom_addr[4]), .D(n14115), .Z(n1596_adj_715)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11964_4_lut_4_lut (.A(n14223), .B(rom_addr[4]), .C(n5064), .D(n684), 
         .Z(n12589)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11964_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut_4_lut (.A(n14272), .B(n14121), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1435_adj_651)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut_4_lut (.A(n14272), .B(n15550), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2283_adj_636)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_4_lut_4_lut (.A(n14272), .B(n14181), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1243)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut_4_lut (.A(n14272), .B(n15546), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2573)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i4917_3_lut_4_lut (.A(rom_addr[2]), .B(n14218), .C(rom_addr[4]), 
         .D(n14177), .Z(n5737)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4917_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11704_3_lut (.A(n13466), .B(n13538), .C(rom_addr[7]), .Z(n12329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11704_3_lut.init = 16'hcaca;
    L6MUX21 i11962 (.D0(n12585), .D1(n12586), .SD(rom_addr[6]), .Z(n12587));
    L6MUX21 i11969 (.D0(n12592), .D1(n12593), .SD(rom_addr[6]), .Z(n12594));
    L6MUX21 i11972 (.D0(n12595), .D1(n12596), .SD(rom_addr[6]), .Z(n12597));
    LUT4 n2174_bdd_3_lut (.A(n2174), .B(n13220), .C(rom_addr[7]), .Z(n13221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2174_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i13060 (.D0(n13560), .D1(n13558), .SD(rom_addr[6]), .Z(n13561));
    L6MUX21 i11979 (.D0(n12602), .D1(n12603), .SD(rom_addr[6]), .Z(n12604));
    LUT4 i4887_3_lut_rep_156_4_lut (.A(rom_addr[2]), .B(n14218), .C(rom_addr[4]), 
         .D(n14127), .Z(n14073)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4887_3_lut_rep_156_4_lut.init = 16'h04f4;
    LUT4 i11739_4_lut (.A(n14070), .B(n4_adj_8), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12364)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11739_4_lut.init = 16'hc0c5;
    PFUMX i11980 (.BLUT(n1054_adj_709), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n12605));
    LUT4 i7369_4_lut (.A(n11756), .B(rom_addr[6]), .C(n1659_adj_720), 
         .D(rom_addr[5]), .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7369_4_lut.init = 16'hc088;
    LUT4 i7157_4_lut (.A(rom_addr[0]), .B(n14155), .C(n14127), .D(n6857), 
         .Z(n2237_adj_694)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7157_4_lut.init = 16'h0a88;
    LUT4 i6002_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6857)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6002_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .Z(n14347)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'ha4a4;
    PFUMX i13429 (.BLUT(n14329), .ALUT(n14330), .C0(rom_addr[0]), .Z(n14331));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14346)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'ha084;
    PFUMX i11985 (.BLUT(n12608), .ALUT(n12609), .C0(rom_addr[6]), .Z(n12610));
    LUT4 i7399_4_lut_4_lut (.A(n14087), .B(rom_addr[5]), .C(n5737), .D(rom_addr[0]), 
         .Z(n2492_adj_684)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7399_4_lut_4_lut.init = 16'h7400;
    LUT4 i11948_3_lut (.A(n1069), .B(n1084_adj_655), .C(rom_addr[4]), 
         .Z(n12573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11948_3_lut.init = 16'hcaca;
    PFUMX i11988 (.BLUT(n12611), .ALUT(n12612), .C0(rom_addr[6]), .Z(n12613));
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n14087), .B(n3064), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_629)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut (.A(n14272), .B(n14156), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2283)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11674_3_lut (.A(n12295), .B(n12296), .C(rom_addr[7]), .Z(n12299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11674_3_lut.init = 16'hcaca;
    L6MUX21 i11995 (.D0(n12618), .D1(n12619), .SD(rom_addr[6]), .Z(n12620));
    LUT4 i5098_4_lut_4_lut (.A(n14164), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14279), .Z(n5933)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5098_4_lut_4_lut.init = 16'h505c;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14272), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212_adj_584)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11876 (.D0(n12087), .D1(n12093), .SD(rom_addr[6]), .Z(n12501));
    LUT4 i11852_4_lut (.A(n956_adj_548), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n8028), .Z(n12477)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11852_4_lut.init = 16'hca0a;
    L6MUX21 i11798 (.D0(n63_adj_611), .D1(n12229), .SD(rom_addr[6]), .Z(n12423));
    L6MUX21 i11792 (.D0(n12196), .D1(n12199), .SD(rom_addr[6]), .Z(n12417));
    PFUMX i11756 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12381));
    LUT4 i11881_3_lut (.A(n12127), .B(n12133), .C(rom_addr[6]), .Z(n12506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11881_3_lut.init = 16'hcaca;
    LUT4 i12987_then_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14350)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12987_then_4_lut.init = 16'h0004;
    LUT4 i12370_3_lut (.A(n14373), .B(n14379), .C(rom_addr[5]), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12370_3_lut.init = 16'hcaca;
    LUT4 i11789_4_lut (.A(n12181), .B(n380_adj_721), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12414)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11789_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14210), .B(n14096), .C(rom_addr[4]), 
         .D(n14201), .Z(n380_adj_721)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 n13523_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14087), .C(rom_addr[5]), 
         .D(n13523), .Z(n13524)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n13523_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n14087), 
         .C(n6044), .D(rom_addr[6]), .Z(n2110_adj_691)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    PFUMX i11670 (.BLUT(n12121), .ALUT(n2173_adj_722), .C0(rom_addr[6]), 
          .Z(n12295));
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491_adj_723), 
         .C(rom_addr[5]), .Z(n2492_adj_640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i11838_3_lut_4_lut (.A(rom_addr[0]), .B(n14087), .C(rom_addr[5]), 
         .D(n1851_adj_9), .Z(n12463)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11838_3_lut_4_lut.init = 16'hf202;
    LUT4 i5846_4_lut_4_lut (.A(n14272), .B(rom_addr[3]), .C(n14121), .D(n14274), 
         .Z(n6691)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5846_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12987_else_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14349)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i12987_else_4_lut.init = 16'h0812;
    LUT4 n2109_bdd_4_lut_4_lut (.A(n14272), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n6718), .Z(n13423)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2109_bdd_4_lut_4_lut.init = 16'h4474;
    PFUMX i13056 (.BLUT(n14061), .ALUT(n13557), .C0(rom_addr[5]), .Z(n13558));
    LUT4 i12374_3_lut (.A(n12082), .B(n14285), .C(rom_addr[5]), .Z(n12084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12374_3_lut.init = 16'hcaca;
    LUT4 i12201_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n12536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12201_3_lut.init = 16'hcaca;
    LUT4 n1251_bdd_4_lut (.A(n14061), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n15546), .Z(n13638)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut.init = 16'hb888;
    LUT4 i12099_3_lut (.A(n14304), .B(n635), .C(rom_addr[4]), .Z(n12198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12099_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut_4_lut (.A(n14272), .B(n14265), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n827)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11418_4_lut (.A(n14109), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12043)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11418_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    LUT4 i12981_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n14353)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B+((D)+!C)))) */ ;
    defparam i12981_then_4_lut.init = 16'h7547;
    LUT4 i12981_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n14352)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i12981_else_4_lut.init = 16'h7d62;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_583), 
          .C0(n14232), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12380_3_lut (.A(n14382), .B(n14360), .C(rom_addr[5]), .Z(n12193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12380_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n14081), 
         .C(rom_addr[5]), .D(n1403_adj_654), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i12775 (.D0(n13188), .D1(n13185), .SD(rom_addr[5]), .Z(n13189));
    LUT4 i7093_4_lut_4_lut (.A(n14164), .B(rom_addr[4]), .C(n3933), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7093_4_lut_4_lut.init = 16'h7400;
    LUT4 i11986_3_lut_4_lut (.A(rom_addr[0]), .B(n14081), .C(rom_addr[5]), 
         .D(n1309_adj_644), .Z(n12611)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11986_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12385_3_lut (.A(n14391), .B(n14307), .C(rom_addr[5]), .Z(n12157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12385_3_lut.init = 16'hcaca;
    LUT4 i11733_3_lut_4_lut (.A(rom_addr[0]), .B(n14081), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n12358)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11733_3_lut_4_lut.init = 16'hf101;
    LUT4 i11732_3_lut_4_lut (.A(rom_addr[0]), .B(n14081), .C(rom_addr[5]), 
         .D(n1309), .Z(n12357)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11732_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13426 (.BLUT(n14325), .ALUT(n14326), .C0(rom_addr[2]), .Z(n14327));
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut_4_lut (.A(n14272), .B(n14121), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2380)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut (.A(n14272), .B(n15547), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691_adj_665)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14272), .B(rom_addr[4]), 
         .C(n14160), .D(n11858), .Z(n1117_adj_544)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut_4_lut (.A(n14272), .B(n14142), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1707_adj_606)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7080_4_lut (.A(rom_addr[0]), .B(n15559), .C(n14064), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7080_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut_4_lut (.A(n14272), .B(n14183), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1466_adj_582)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11922_3_lut_4_lut (.A(rom_addr[1]), .B(n14084), .C(rom_addr[5]), 
         .D(n62_adj_725), .Z(n12547)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11922_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_726), .ALUT(n1883_adj_727), 
          .C0(n14232), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12448_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12448_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut_4_lut (.A(n14272), .B(n14181), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2009)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5782_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), .C(rom_addr[5]), 
         .D(n2522_adj_657), .Z(n6627)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5782_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut_4_lut (.A(n14272), 
         .B(n14150), .C(rom_addr[4]), .D(rom_addr[0]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut_4_lut.init = 16'hc500;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14356)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 i12627_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n11962)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12627_3_lut.init = 16'h7f7f;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_10), 
          .C0(n11973), .Z(n1597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13058 (.BLUT(n13559), .ALUT(n14061), .C0(rom_addr[5]), .Z(n13560));
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14355)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 i11585_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), .C(rom_addr[4]), 
         .D(n2522_adj_657), .Z(n12210)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11585_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_731), .ALUT(n1117_adj_732), 
          .C0(n14232), .Z(n1149_adj_602)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_733)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 i11521_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), .C(rom_addr[4]), 
         .D(n14279), .Z(n12146)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11521_3_lut_4_lut.init = 16'hf808;
    PFUMX i13424 (.BLUT(n14322), .ALUT(n14323), .C0(rom_addr[5]), .Z(n14324));
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_702)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11616 (.BLUT(n12239), .ALUT(n12240), .C0(rom_addr[4]), .Z(n12241));
    PFUMX i13043 (.BLUT(n2237_adj_694), .ALUT(n13537), .C0(rom_addr[6]), 
          .Z(n13538));
    LUT4 i11878_3_lut (.A(n12106), .B(n12109), .C(rom_addr[6]), .Z(n12503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11878_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_701), 
          .C0(n14232), .Z(n2428_adj_579)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11567_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14359)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11567_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 i11539_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), .C(rom_addr[4]), 
         .D(n2573), .Z(n12164)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11539_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14238), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut_4_lut (.A(n14272), .B(n14121), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n397)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11567_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n14358)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11567_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i12460_3_lut (.A(n12263), .B(n12264), .C(rom_addr[8]), .Z(n12271)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12460_3_lut.init = 16'hcaca;
    LUT4 i11441_3_lut_4_lut_4_lut (.A(n14272), .B(rom_addr[3]), .C(n15545), 
         .D(rom_addr[4]), .Z(n12066)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11441_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), 
         .C(rom_addr[4]), .D(n2444), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_735)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n11973), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11513_3_lut_4_lut (.A(rom_addr[0]), .B(n14132), .C(rom_addr[4]), 
         .D(n2298_adj_737), .Z(n12138)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11513_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283), .B(n2490), .C(rom_addr[4]), 
         .Z(n2491_adj_723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 n1340_bdd_4_lut (.A(n14097), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(n15546), .Z(n13636)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut.init = 16'hb888;
    LUT4 i11643_3_lut (.A(n12613), .B(n12620), .C(rom_addr[7]), .Z(n12268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11643_3_lut.init = 16'hcaca;
    LUT4 i12514_2_lut_rep_293 (.A(rom_addr[0]), .B(n15568), .Z(n14210)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12514_2_lut_rep_293.init = 16'h9999;
    LUT4 i11642_3_lut (.A(n12607), .B(n12610), .C(rom_addr[7]), .Z(n12267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11642_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46_adj_11), .B(n301), .C(rom_addr[4]), 
         .Z(n62_adj_725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914_adj_615), .D(n12729), .Z(n1883_adj_727)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_4_lut_4_lut_adj_19 (.A(n14274), .B(n14275), .C(rom_addr[3]), 
         .D(n14272), .Z(n11771)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_19.init = 16'h0454;
    LUT4 i11833_4_lut (.A(rom_addr[5]), .B(n1276_c), .C(rom_addr[6]), 
         .D(n11756), .Z(n12458)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11833_4_lut.init = 16'hcac0;
    LUT4 i7489_4_lut (.A(n12166), .B(n14273), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_557)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7489_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n14271), 
         .D(rom_addr[2]), .Z(n11766)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h9000;
    LUT4 i11676_3_lut (.A(n12299), .B(n12300), .C(rom_addr[8]), .Z(n12301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11676_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4_adj_12)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut.init = 16'h9090;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716_adj_740), .ALUT(n732), 
          .C0(n14232), .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 rom_addr_6__bdd_3_lut_13284_4_lut_4_lut (.A(n14272), .B(n14100), 
         .C(rom_addr[4]), .D(n14228), .Z(n13769)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_13284_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i12084_3_lut (.A(n12233), .B(n12234), .C(rom_addr[4]), .Z(n12235)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12084_3_lut.init = 16'hcaca;
    LUT4 i7106_4_lut (.A(rom_addr[0]), .B(n3559), .C(n12214), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7106_4_lut.init = 16'h0a22;
    LUT4 i12516_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12729)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12516_2_lut.init = 16'h9999;
    LUT4 n2286_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(n15568), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2286_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i12962_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14362)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam i12962_then_4_lut.init = 16'h0090;
    LUT4 i11706_3_lut (.A(n12329), .B(n12330), .C(rom_addr[8]), .Z(n12331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11706_3_lut.init = 16'hcaca;
    PFUMX i12773 (.BLUT(n13187), .ALUT(n13186), .C0(rom_addr[4]), .Z(n13188));
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n14215), .B(n14107), 
         .C(rom_addr[5]), .D(n14339), .Z(n2173_adj_722)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11575_4_lut_4_lut (.A(rom_addr[2]), .B(n4_adj_741), .C(rom_addr[4]), 
         .D(n2220), .Z(n12200)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11575_4_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), 
         .Z(n476_adj_742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12324_3_lut (.A(n476_adj_742), .B(n14345), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12324_3_lut.init = 16'hcaca;
    LUT4 i11713_3_lut (.A(n12336), .B(n12337), .C(rom_addr[8]), .Z(n12338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11713_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_743), .ALUT(n380_adj_13), 
          .C0(n14238), .Z(n381_adj_590)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11728_3_lut (.A(n12351), .B(n12352), .C(rom_addr[8]), .Z(n12353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11728_3_lut.init = 16'hcaca;
    LUT4 i2315_4_lut (.A(rom_addr[1]), .B(n14081), .C(rom_addr[5]), .D(n14146), 
         .Z(n3127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2315_4_lut.init = 16'hcfca;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n14229), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11900_3_lut (.A(n12517), .B(n12518), .C(rom_addr[8]), .Z(n12525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11900_3_lut.init = 16'hcaca;
    LUT4 i11899_3_lut (.A(n12515), .B(n12516), .C(rom_addr[7]), .Z(n12524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11899_3_lut.init = 16'hcaca;
    LUT4 i11897_3_lut (.A(n13358), .B(n12512), .C(rom_addr[7]), .Z(n12522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11897_3_lut.init = 16'hcaca;
    LUT4 i11896_3_lut (.A(n12509), .B(n12510), .C(rom_addr[7]), .Z(n12521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11896_3_lut.init = 16'hcaca;
    LUT4 i11903_3_lut (.A(n12523), .B(n12524), .C(rom_addr[8]), .Z(n12528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11903_3_lut.init = 16'hcaca;
    LUT4 i12476_3_lut (.A(n12486), .B(n12487), .C(rom_addr[8]), .Z(n12494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12476_3_lut.init = 16'hcaca;
    LUT4 i11821_3_lut (.A(n12437), .B(n12438), .C(rom_addr[7]), .Z(n12446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11821_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237), .ALUT(n2300), .C0(rom_addr[6]), 
          .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11820_3_lut (.A(n12435), .B(n13327), .C(rom_addr[7]), .Z(n12445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11820_3_lut.init = 16'hcaca;
    LUT4 i11819_3_lut (.A(n13641), .B(n12434), .C(rom_addr[7]), .Z(n12444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11819_3_lut.init = 16'hcaca;
    LUT4 i11818_3_lut (.A(n12431), .B(n12432), .C(rom_addr[7]), .Z(n12443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11818_3_lut.init = 16'hcaca;
    LUT4 i11817_3_lut (.A(n12429), .B(n12430), .C(rom_addr[7]), .Z(n12442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11817_3_lut.init = 16'hcaca;
    LUT4 i11816_3_lut (.A(n12427), .B(n12428), .C(rom_addr[7]), .Z(n12441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11816_3_lut.init = 16'hcaca;
    LUT4 i11524_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4707), 
         .D(n14116), .Z(n12149)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11524_4_lut_4_lut.init = 16'h7340;
    PFUMX i13034 (.BLUT(n13524), .ALUT(n14047), .C0(rom_addr[6]), .Z(n13525));
    LUT4 i11815_3_lut (.A(n12425), .B(n12426), .C(rom_addr[7]), .Z(n12440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11815_3_lut.init = 16'hcaca;
    LUT4 i11814_3_lut (.A(n12423), .B(n12424), .C(rom_addr[7]), .Z(n12439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11814_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n14172), 
         .C(rom_addr[5]), .D(n2205_adj_747), .Z(n2237_adj_643)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n14229), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12077_3_lut_4_lut (.A(rom_addr[0]), .B(n14164), .C(rom_addr[4]), 
         .D(n270_adj_733), .Z(n12236)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12077_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12483_3_lut (.A(n12318), .B(n12319), .C(rom_addr[7]), .Z(n12322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12483_3_lut.init = 16'hcaca;
    LUT4 i7066_2_lut_rep_204_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14121)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7066_2_lut_rep_204_3_lut.init = 16'hf8f8;
    LUT4 i7278_2_lut_rep_298 (.A(n15568), .B(rom_addr[2]), .Z(n14215)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7278_2_lut_rep_298.init = 16'h2222;
    LUT4 i7363_2_lut_rep_158_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14075)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7363_2_lut_rep_158_3_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut (.A(rom_addr[0]), .B(n14277), 
         .C(rom_addr[4]), .D(n2108), .Z(n2109_adj_750)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_222_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14139)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_222_3_lut_4_lut.init = 16'hfffb;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n14277), 
         .C(rom_addr[4]), .D(n14176), .Z(n891_adj_751)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3101_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n3913)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3101_3_lut_3_lut.init = 16'h7474;
    PFUMX i11621 (.BLUT(n428_adj_649), .ALUT(n443_adj_693), .C0(rom_addr[4]), 
          .Z(n12246));
    LUT4 i12487_3_lut (.A(n1278_c), .B(n1533), .C(rom_addr[8]), .Z(n12280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12487_3_lut.init = 16'hcaca;
    LUT4 i7319_2_lut_rep_272_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14189)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7319_2_lut_rep_272_3_lut.init = 16'h0202;
    LUT4 i11654_3_lut (.A(n766_adj_581), .B(n1021_adj_565), .C(rom_addr[8]), 
         .Z(n12279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11654_3_lut.init = 16'hcaca;
    LUT4 i7339_2_lut_rep_207_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14124)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7339_2_lut_rep_207_3_lut.init = 16'h2020;
    LUT4 i12962_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14361)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i12962_else_4_lut.init = 16'h0260;
    LUT4 i11581_3_lut (.A(n908_adj_677), .B(n205_adj_549), .C(rom_addr[4]), 
         .Z(n12206)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11581_3_lut.init = 16'hcaca;
    LUT4 i11579_4_lut (.A(n684_adj_645), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14258), .Z(n12204)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11579_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15549), .B(n14183), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 i12492_3_lut (.A(n12521), .B(n12522), .C(rom_addr[8]), .Z(n12527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12492_3_lut.init = 16'hcaca;
    PFUMX i11686 (.BLUT(n12309), .ALUT(n12310), .C0(rom_addr[5]), .Z(n12311));
    LUT4 i5865_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6663)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5865_2_lut.init = 16'h6666;
    LUT4 i11872_3_lut (.A(n12492), .B(n12493), .C(rom_addr[8]), .Z(n12497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11872_3_lut.init = 16'hcaca;
    LUT4 i11871_3_lut (.A(n12490), .B(n12491), .C(rom_addr[8]), .Z(n12496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11871_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_258_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .Z(n14175)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_258_3_lut.init = 16'h0202;
    LUT4 n2174_bdd_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), .C(rom_addr[6]), 
         .D(n14090), .Z(n13220)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam n2174_bdd_4_lut.init = 16'h8200;
    PFUMX i12770 (.BLUT(n13184), .ALUT(n14115), .C0(rom_addr[4]), .Z(n13185));
    LUT4 i11572_3_lut (.A(n205_adj_571), .B(n604_adj_692), .C(rom_addr[4]), 
         .Z(n12197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11572_3_lut.init = 16'hcaca;
    LUT4 i12533_2_lut_rep_299 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14216)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12533_2_lut_rep_299.init = 16'h1111;
    LUT4 i11570_3_lut (.A(n506_adj_576), .B(n428_adj_642), .C(rom_addr[4]), 
         .Z(n12195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11570_3_lut.init = 16'hcaca;
    PFUMX i13422 (.BLUT(n14319), .ALUT(n14088), .C0(rom_addr[4]), .Z(n924));
    LUT4 i5805_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n6650)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5805_3_lut_4_lut_4_lut.init = 16'h0b5b;
    LUT4 i7630_2_lut_rep_162_3_lut_3_lut (.A(rom_addr[2]), .B(n15568), .C(rom_addr[0]), 
         .Z(n14079)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7630_2_lut_rep_162_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i11569_3_lut (.A(n526_adj_593), .B(n205), .C(rom_addr[4]), .Z(n12194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11569_3_lut.init = 16'hcaca;
    LUT4 i4360_2_lut_rep_301 (.A(n15568), .B(rom_addr[3]), .Z(n14218)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4360_2_lut_rep_301.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14365)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0521;
    LUT4 i1_2_lut_rep_215_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14132)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_215_3_lut.init = 16'h0808;
    PFUMX i10204 (.BLUT(n10819), .ALUT(n10820), .C0(rom_addr[8]), .Z(n10821));
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(n14215), .B(n14107), 
         .C(rom_addr[5]), .D(n14297), .Z(n2173)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14277), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13111)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14364)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i11563_3_lut (.A(n506), .B(n475_adj_752), .C(rom_addr[4]), .Z(n12188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11563_3_lut.init = 16'hcaca;
    LUT4 i11666_3_lut (.A(n12289), .B(n12290), .C(rom_addr[10]), .Z(n12291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11666_3_lut.init = 16'hcaca;
    LUT4 i5840_4_lut_4_lut (.A(n15568), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451_adj_624)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5840_4_lut_4_lut.init = 16'h8505;
    LUT4 i1_2_lut_rep_203_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14120)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_203_3_lut.init = 16'hfbfb;
    LUT4 i7361_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14088)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7361_2_lut_rep_171_3_lut_4_lut.init = 16'h0040;
    LUT4 i11652_3_lut (.A(n12275), .B(n12276), .C(rom_addr[10]), .Z(n12277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11652_3_lut.init = 16'hcaca;
    LUT4 i11561_3_lut (.A(n428_adj_642), .B(n684_adj_645), .C(rom_addr[4]), 
         .Z(n12186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11561_3_lut.init = 16'hcaca;
    LUT4 i7340_2_lut_rep_159_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14076)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7340_2_lut_rep_159_3_lut_4_lut.init = 16'h0080;
    LUT4 i11560_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n12185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11560_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14158), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14153), .Z(n61_adj_609)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 i11244_3_lut_4_lut (.A(n15549), .B(rom_addr[3]), .C(n14219), 
         .D(n1676_c), .Z(n6686)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11244_3_lut_4_lut.init = 16'hefe0;
    PFUMX i11716 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12341));
    LUT4 i11558_3_lut (.A(n2283_adj_636), .B(n2298), .C(rom_addr[4]), 
         .Z(n12183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11558_3_lut.init = 16'hcaca;
    PFUMX i11717 (.BLUT(n2268_adj_753), .ALUT(n2299_adj_717), .C0(rom_addr[5]), 
          .Z(n12342));
    PFUMX i11718 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12343));
    LUT4 i1_2_lut_rep_153_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14070)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_153_3_lut_4_lut.init = 16'h0f1e;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n475_adj_752)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3130;
    PFUMX i11719 (.BLUT(n6691), .ALUT(n2427_adj_689), .C0(rom_addr[5]), 
          .Z(n12344));
    LUT4 i1_2_lut_rep_274_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14191)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_274_3_lut.init = 16'h8080;
    PFUMX i11720 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12345));
    LUT4 i1_2_lut_rep_182_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14099)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_182_3_lut_4_lut.init = 16'h8000;
    LUT4 i11566_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14380)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11566_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2298_adj_754)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut_4_lut.init = 16'h0241;
    PFUMX i11721 (.BLUT(n2523_adj_592), .ALUT(n2554_adj_735), .C0(rom_addr[5]), 
          .Z(n12346));
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61_adj_560)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14108)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'h0800;
    LUT4 i11551_3_lut (.A(n2444_adj_755), .B(n2459), .C(rom_addr[4]), 
         .Z(n12176)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11551_3_lut.init = 16'hcaca;
    PFUMX i11734 (.BLUT(n1436), .ALUT(n1467_adj_633), .C0(rom_addr[5]), 
          .Z(n12359));
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14166), 
         .C(rom_addr[3]), .D(n14210), .Z(n2332)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i220_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n220_adj_630)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut_4_lut.init = 16'h8240;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549_adj_588)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[3]), .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14368)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n333)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut_4_lut.init = 16'h5810;
    PFUMX i11735 (.BLUT(n1499_adj_757), .ALUT(n1530_adj_618), .C0(rom_addr[5]), 
          .Z(n12360));
    PFUMX i11482 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n12107));
    LUT4 i7457_2_lut_rep_302 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n14219)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7457_2_lut_rep_302.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_674)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    PFUMX i5842 (.BLUT(n6686), .ALUT(n1723_adj_625), .C0(rom_addr[5]), 
          .Z(n6687));
    LUT4 i11919_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n14267), .Z(n12544)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11919_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867_adj_726)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'hcc10;
    LUT4 i12638_2_lut_rep_144_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14278), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14061)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12638_2_lut_rep_144_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_758)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), 
         .C(n14181), .D(rom_addr[3]), .Z(n2426_adj_759)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n8577)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    LUT4 i7522_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n14133), 
         .D(rom_addr[3]), .Z(n2964)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7522_4_lut_4_lut.init = 16'hd100;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[3]), .C(rom_addr[4]), .Z(n14367)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut_4_lut_else_4_lut.init = 16'h2020;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_743)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    LUT4 rom_addr_0__bdd_4_lut_13295_4_lut (.A(n14137), .B(rom_addr[5]), 
         .C(n4661), .D(rom_addr[0]), .Z(n13485)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_4_lut_13295_4_lut.init = 16'h4700;
    PFUMX i11741 (.BLUT(n1692_adj_620), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12366));
    LUT4 i11543_3_lut (.A(n2283), .B(n2298_adj_754), .C(rom_addr[4]), 
         .Z(n12168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11543_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549), .ALUT(n1564), .C0(rom_addr[4]), 
          .Z(n1565_adj_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11742 (.BLUT(n1755_adj_613), .ALUT(n1786_adj_683), .C0(rom_addr[5]), 
          .Z(n12367));
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    LUT4 i1_2_lut_rep_164_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14081)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_164_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890_adj_646)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i5795_3_lut_rep_304 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5795_3_lut_rep_304.init = 16'hcaca;
    LUT4 i7258_2_lut_rep_362 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14279)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7258_2_lut_rep_362.init = 16'h8888;
    LUT4 i12368_3_lut (.A(n12167), .B(n12168), .C(rom_addr[5]), .Z(n12169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12368_3_lut.init = 16'hcaca;
    PFUMX i11746 (.BLUT(n1820_adj_619), .ALUT(n1851_adj_569), .C0(rom_addr[5]), 
          .Z(n12371));
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n716_adj_740)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 i7341_2_lut_rep_243_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15568), .D(rom_addr[0]), .Z(n14160)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7341_2_lut_rep_243_3_lut_4_lut.init = 16'h8880;
    LUT4 i7299_2_lut_rep_189_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14106)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7299_2_lut_rep_189_2_lut_3_lut.init = 16'h1010;
    PFUMX i11747 (.BLUT(n1883_adj_703), .ALUT(n1914), .C0(rom_addr[5]), 
          .Z(n12372));
    LUT4 i7347_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15568), .C(n14271), 
         .D(rom_addr[2]), .Z(n1659_adj_720)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7347_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 i11533_3_lut (.A(n1643), .B(n1549_adj_588), .C(rom_addr[4]), 
         .Z(n12158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11533_3_lut.init = 16'hcaca;
    PFUMX i11625 (.BLUT(n12248), .ALUT(n12249), .C0(rom_addr[4]), .Z(n12250));
    LUT4 i5154_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n15558)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5154_4_lut_then_4_lut.init = 16'hffef;
    LUT4 i5094_2_lut_rep_259_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14176)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5094_2_lut_rep_259_3_lut.init = 16'h1e1e;
    LUT4 rom_addr_0__bdd_4_lut_13473 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14370)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B !(C))) */ ;
    defparam rom_addr_0__bdd_4_lut_13473.init = 16'hc781;
    LUT4 i5821_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5821_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i11748 (.BLUT(n1947), .ALUT(n12217), .C0(rom_addr[5]), .Z(n12373));
    LUT4 i4885_3_lut_rep_210_4_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14127)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i4885_3_lut_rep_210_4_lut_3_lut.init = 16'hdede;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_adj_704)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 i7220_2_lut_rep_329 (.A(n15568), .B(rom_addr[2]), .Z(n14246)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7220_2_lut_rep_329.init = 16'hbbbb;
    PFUMX i13032 (.BLUT(n14109), .ALUT(n13522), .C0(rom_addr[4]), .Z(n13523));
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14287)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    PFUMX i11749 (.BLUT(n2010_adj_675), .ALUT(n6625), .C0(rom_addr[5]), 
          .Z(n12374));
    LUT4 i5828_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14372)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5828_3_lut_4_lut_then_4_lut.init = 16'h4691;
    LUT4 i7217_2_lut_rep_199_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14116)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7217_2_lut_rep_199_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14286)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 i7406_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_614)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i7406_3_lut_3_lut_4_lut.init = 16'hf010;
    LUT4 i7300_2_lut_rep_245_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14162)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7300_2_lut_rep_245_3_lut.init = 16'hfefe;
    LUT4 i7660_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_639)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7660_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i12607_2_lut_rep_356 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14273)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12607_2_lut_rep_356.init = 16'h1111;
    LUT4 i3878_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3878_3_lut_3_lut.init = 16'hcbcb;
    LUT4 address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444_adj_755)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut.init = 16'h0430;
    LUT4 i7389_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13525), 
         .Z(n3069_adj_551)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7389_2_lut_3_lut.init = 16'h1010;
    PFUMX i11755 (.BLUT(n12378), .ALUT(n12379), .C0(rom_addr[5]), .Z(n12380));
    LUT4 i7366_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_716), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7366_2_lut_3_lut.init = 16'h1010;
    LUT4 i11259_2_lut_rep_357 (.A(rom_addr[0]), .B(rom_addr[4]), .Z(n14274)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11259_2_lut_rep_357.init = 16'heeee;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n11756)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h1000;
    L6MUX21 i13002 (.D0(n13483), .D1(n13063), .SD(rom_addr[5]), .Z(n13484));
    LUT4 i4985_2_lut_rep_306 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14223)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4985_2_lut_rep_306.init = 16'h6666;
    PFUMX i13000 (.BLUT(n13482), .ALUT(n13481), .C0(rom_addr[3]), .Z(n13483));
    LUT4 i7279_2_lut_rep_358 (.A(n15568), .B(rom_addr[2]), .Z(n14275)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7279_2_lut_rep_358.init = 16'h8888;
    LUT4 i7653_2_lut_rep_331 (.A(rom_addr[0]), .B(n15568), .Z(n14248)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7653_2_lut_rep_331.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2444)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'he00f;
    LUT4 i3887_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4699)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3887_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h0580;
    PFUMX i12998 (.BLUT(n13479), .ALUT(n13476), .C0(rom_addr[6]), .Z(n13480));
    LUT4 i5777_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6622)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i5777_4_lut_4_lut_4_lut.init = 16'he303;
    PFUMX i13420 (.BLUT(n14316), .ALUT(n14317), .C0(rom_addr[0]), .Z(n14318));
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    PFUMX i12996 (.BLUT(n13477), .ALUT(n14122), .C0(rom_addr[4]), .Z(n13478));
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i11757 (.BLUT(n11755), .ALUT(n10563), .C0(rom_addr[6]), .Z(n12382));
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i11601_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14290)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i11601_then_3_lut.init = 16'h3838;
    LUT4 n205_bdd_3_lut_13245 (.A(n205_adj_549), .B(n220_adj_681), .C(rom_addr[4]), 
         .Z(n13693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n205_bdd_3_lut_13245.init = 16'hcaca;
    PFUMX i11761 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12386));
    LUT4 i4937_2_lut_rep_221_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14138)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4937_2_lut_rep_221_3_lut.init = 16'hf9f9;
    LUT4 i5154_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n15557)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5154_4_lut_else_4_lut.init = 16'hfbfb;
    LUT4 address_11__I_0_Mux_3_i699_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n15548), .D(n5064), .Z(n699)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i11762 (.BLUT(n1499), .ALUT(n1530_adj_669), .C0(rom_addr[5]), 
          .Z(n12387));
    L6MUX21 i12994 (.D0(n13474), .D1(n13472), .SD(rom_addr[6]), .Z(n12534));
    LUT4 i5828_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14371)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5828_3_lut_4_lut_else_4_lut.init = 16'h8200;
    PFUMX i12992 (.BLUT(n13473), .ALUT(n11756), .C0(rom_addr[5]), .Z(n13474));
    LUT4 i7244_2_lut_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n723)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i7244_2_lut_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i7048_2_lut_rep_264_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14181)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i7048_2_lut_rep_264_3_lut.init = 16'he0e0;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n971)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h0ef0;
    PFUMX i11768 (.BLUT(n1692_adj_666), .ALUT(n1723_adj_647), .C0(rom_addr[5]), 
          .Z(n12393));
    LUT4 i3420_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4232)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i3420_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i7372_2_lut_rep_244_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14161)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7372_2_lut_rep_244_3_lut_4_lut.init = 16'h0888;
    LUT4 i11503_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12128)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11503_3_lut_4_lut.init = 16'hf808;
    LUT4 i3121_3_lut_4_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n3933)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3121_3_lut_4_lut_3_lut.init = 16'h4848;
    PFUMX i11769 (.BLUT(n1755), .ALUT(n1786_adj_663), .C0(rom_addr[5]), 
          .Z(n12394));
    LUT4 i11603_3_lut_4_lut (.A(n14210), .B(n14279), .C(rom_addr[4]), 
         .D(n205_adj_549), .Z(n12228)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11603_3_lut_4_lut.init = 16'h8f80;
    LUT4 n13218_bdd_3_lut (.A(n13218), .B(n2556), .C(rom_addr[7]), .Z(n13219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13218_bdd_3_lut.init = 16'hcaca;
    PFUMX i12990 (.BLUT(n13471), .ALUT(n13470), .C0(rom_addr[5]), .Z(n13472));
    LUT4 i3895_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4707)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam i3895_3_lut_3_lut.init = 16'he3e3;
    LUT4 n205_bdd_3_lut_13163 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n13692)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n205_bdd_3_lut_13163.init = 16'hacac;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2220), .Z(n2268_adj_753)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    PFUMX i13418 (.BLUT(n14330), .ALUT(n14314), .C0(rom_addr[0]), .Z(n14315));
    LUT4 i11601_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14289)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i11601_else_3_lut.init = 16'h0484;
    LUT4 i7233_4_lut (.A(n14106), .B(rom_addr[4]), .C(n15547), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7233_4_lut.init = 16'hc088;
    LUT4 i11522_3_lut (.A(n2411), .B(n2426_adj_759), .C(rom_addr[4]), 
         .Z(n12147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11522_3_lut.init = 16'hcaca;
    LUT4 i12387_3_lut (.A(n12146), .B(n12147), .C(rom_addr[5]), .Z(n12148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12387_3_lut.init = 16'hcaca;
    LUT4 i11519_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4699), 
         .Z(n12144)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11519_4_lut.init = 16'hc0ca;
    PFUMX i11628 (.BLUT(n12251), .ALUT(n12252), .C0(rom_addr[4]), .Z(n12253));
    LUT4 i11518_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n4690), 
         .Z(n12143)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11518_4_lut.init = 16'hc0ca;
    LUT4 i7181_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7181_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i11461_3_lut (.A(n46), .B(n61), .C(rom_addr[4]), .Z(n12086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11461_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    LUT4 i5869_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n6718)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5869_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2025)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_236_3_lut (.A(rom_addr[0]), .B(n15568), 
         .C(rom_addr[2]), .Z(n14153)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_236_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 i7611_2_lut_rep_311 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14228)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7611_2_lut_rep_311.init = 16'h8888;
    PFUMX i11788 (.BLUT(n12411), .ALUT(n12412), .C0(rom_addr[5]), .Z(n12413));
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_268_3_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .Z(n14185)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_268_3_lut.init = 16'h3e3e;
    LUT4 i7144_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14272), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i7144_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_266_4_lut_3_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .Z(n14183)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_266_4_lut_3_lut.init = 16'h4242;
    LUT4 i11515_4_lut (.A(rom_addr[0]), .B(n14176), .C(rom_addr[4]), .D(n14171), 
         .Z(n12140)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11515_4_lut.init = 16'hcac0;
    LUT4 i12573_2_lut_rep_312 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14229)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12573_2_lut_rep_312.init = 16'hdddd;
    LUT4 i1_2_lut_rep_263_2_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14180)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_263_2_lut_3_lut.init = 16'h0808;
    LUT4 i12576_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11966)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12576_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i12984 (.BLUT(n13465), .ALUT(n13460), .C0(rom_addr[6]), .Z(n13466));
    PFUMX i11831 (.BLUT(n12454), .ALUT(n12455), .C0(rom_addr[5]), .Z(n12456));
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038_adj_708)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_652)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i7410_2_lut_rep_327 (.A(rom_addr[0]), .B(n15568), .Z(n14244)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7410_2_lut_rep_327.init = 16'h8888;
    PFUMX i11837 (.BLUT(n12460), .ALUT(n12461), .C0(rom_addr[5]), .Z(n12462));
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_348 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14265)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_348.init = 16'h2424;
    LUT4 i11615_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12240)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11615_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 i11619_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15561)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11619_then_4_lut.init = 16'h5924;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[5]), .Z(n4_adj_14)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'h8088;
    PFUMX i11419 (.BLUT(n12042), .ALUT(n12043), .C0(rom_addr[5]), .Z(n12044));
    LUT4 i11619_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15560)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11619_else_4_lut.init = 16'h5092;
    LUT4 i11624_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12249)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam i11624_3_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 n2552_bdd_2_lut_13297_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13190)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_13297_3_lut_4_lut.init = 16'h0007;
    LUT4 i11781_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14375)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11781_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i11781_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14374)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11781_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 i11227_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11227_3_lut_4_lut.init = 16'h8880;
    LUT4 i12547_2_lut_rep_313 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14230)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12547_2_lut_rep_313.init = 16'hbbbb;
    PFUMX i11424 (.BLUT(n1628), .ALUT(n1659), .C0(rom_addr[5]), .Z(n12049));
    LUT4 i12420_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986_adj_554), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12420_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5874_2_lut_rep_338 (.A(n15568), .B(rom_addr[2]), .Z(n14255)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5874_2_lut_rep_338.init = 16'h6666;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_761)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i4055_3_lut_rep_246_4_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14163)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4055_3_lut_rep_246_4_lut_3_lut.init = 16'hd6d6;
    LUT4 i3979_3_lut_rep_254_4_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14171)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3979_3_lut_rep_254_4_lut_3_lut.init = 16'h6262;
    LUT4 i3848_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4660)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3848_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i12538_2_lut_rep_315 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14232)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12538_2_lut_rep_315.init = 16'heeee;
    PFUMX i11428 (.BLUT(n12051), .ALUT(n12052), .C0(rom_addr[5]), .Z(n12053));
    LUT4 i12302_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692), 
         .D(n1676_adj_566), .Z(n1724_adj_712)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12302_3_lut_4_lut.init = 16'hf1e0;
    L6MUX21 i12685 (.D0(n13041), .D1(n13039), .SD(rom_addr[5]), .Z(n13042));
    LUT4 i12315_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_601), 
         .D(n1676_adj_578), .Z(n1724)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12315_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13909)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 i12613_2_lut_rep_316 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14233)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12613_2_lut_rep_316.init = 16'heeee;
    LUT4 i7042_2_lut_rep_249_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14166)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7042_2_lut_rep_249_3_lut.init = 16'h9090;
    LUT4 i7045_2_lut_rep_216_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14133)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7045_2_lut_rep_216_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n11860)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n10570), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7183_2_lut_rep_242_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14159)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7183_2_lut_rep_242_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i7090_2_lut_rep_178_3_lut_4_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n14095)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7090_2_lut_rep_178_3_lut_4_lut.init = 16'h0090;
    LUT4 i1_2_lut_rep_317 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14234)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_317.init = 16'heeee;
    LUT4 i5796_2_lut_rep_247_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14164)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5796_2_lut_rep_247_3_lut.init = 16'hf6f6;
    LUT4 i3637_2_lut_rep_238_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14155)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3637_2_lut_rep_238_3_lut.init = 16'h6060;
    PFUMX i11912 (.BLUT(n12535), .ALUT(n12536), .C0(rom_addr[5]), .Z(n12537));
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    LUT4 i7304_2_lut_rep_143_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n14277), .Z(n14060)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7304_2_lut_rep_143_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_225_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14142)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_225_3_lut.init = 16'h7c7c;
    LUT4 i11992_3_lut (.A(n2077), .B(n1529_adj_617), .C(rom_addr[4]), 
         .Z(n12617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11992_3_lut.init = 16'hcaca;
    LUT4 i3952_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n4764)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3952_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i2440_3_lut_4_lut (.A(n14278), .B(n14148), .C(rom_addr[6]), .D(n14324), 
         .Z(n3252)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2440_3_lut_4_lut.init = 16'hefe0;
    PFUMX i13415 (.BLUT(n14308), .ALUT(n14309), .C0(rom_addr[0]), .Z(n14310));
    LUT4 i11591_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), .C(n15545), 
         .D(rom_addr[3]), .Z(n12216)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11591_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i1_2_lut_rep_173_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14090)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_173_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i7235_2_lut_rep_209_2_lut_3_lut (.A(n15568), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14126)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7235_2_lut_rep_209_2_lut_3_lut.init = 16'h0606;
    LUT4 n2506_bdd_3_lut_13031_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n13464)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2506_bdd_3_lut_13031_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(n15568), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 i1_2_lut_rep_354 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14271)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_354.init = 16'h8888;
    LUT4 i7043_4_lut_4_lut (.A(rom_addr[0]), .B(n15568), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_617)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7043_4_lut_4_lut.init = 16'hc700;
    PFUMX i11431 (.BLUT(n12054), .ALUT(n12055), .C0(rom_addr[5]), .Z(n12056));
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14248), .B(n14279), 
         .C(rom_addr[4]), .D(n1483), .Z(n1499_adj_757)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11527_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14272), .C(rom_addr[4]), 
         .D(n4764), .Z(n12152)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11527_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1946_adj_697)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_3_lut_3_lut_4_lut.init = 16'h6909;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_662)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i7413_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(n14278), .Z(n158)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7413_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i7296_2_lut_rep_205_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14122)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7296_2_lut_rep_205_3_lut.init = 16'h8080;
    PFUMX i13413 (.BLUT(n14305), .ALUT(n14306), .C0(rom_addr[0]), .Z(n14307));
    LUT4 i1_2_lut_rep_277_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14194)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_277_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14248), .B(n14279), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7128_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_762)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7128_2_lut_3_lut.init = 16'h9090;
    LUT4 i1_2_lut_rep_233_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14150)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_233_3_lut.init = 16'h6060;
    PFUMX i11437 (.BLUT(n12060), .ALUT(n12061), .C0(rom_addr[5]), .Z(n12062));
    LUT4 i1_2_lut_rep_257_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14174)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_257_3_lut.init = 16'h0808;
    LUT4 i12554_2_lut_rep_255_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15568), 
         .Z(n14172)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12554_2_lut_rep_255_3_lut.init = 16'h0909;
    LUT4 i11990_3_lut (.A(n1451_adj_624), .B(n1676_adj_664), .C(rom_addr[4]), 
         .Z(n12615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11990_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n6459)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h0008;
    PFUMX i12683 (.BLUT(n270_c), .ALUT(n13040), .C0(rom_addr[4]), .Z(n13041));
    LUT4 i3621_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n4433)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3621_3_lut_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 n2880_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13771)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2880_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i12277_3_lut (.A(n14282), .B(n14357), .C(rom_addr[5]), .Z(n12612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12277_3_lut.init = 16'hcaca;
    LUT4 i12133_3_lut (.A(n716), .B(n731_adj_600), .C(rom_addr[4]), .Z(n12131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12133_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n14244), .B(n14279), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_659)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i12950 (.D0(n13424), .D1(n13422), .SD(rom_addr[6]), .Z(n13425));
    PFUMX i11636 (.BLUT(n620_adj_650), .ALUT(n635_adj_762), .C0(rom_addr[4]), 
          .Z(n12261));
    LUT4 i11537_3_lut_4_lut (.A(n14244), .B(n14279), .C(rom_addr[4]), 
         .D(n2040), .Z(n12162)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11537_3_lut_4_lut.init = 16'hf404;
    LUT4 i7382_2_lut_rep_180_3_lut_3_lut_4_lut (.A(n15568), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14097)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7382_2_lut_rep_180_3_lut_3_lut_4_lut.init = 16'h0080;
    PFUMX i12948 (.BLUT(n13423), .ALUT(n2109_adj_750), .C0(rom_addr[5]), 
          .Z(n13424));
    PFUMX i12946 (.BLUT(n13421), .ALUT(n14065), .C0(rom_addr[5]), .Z(n13422));
    LUT4 i11347_2_lut_rep_319 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14236)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11347_2_lut_rep_319.init = 16'h8888;
    LUT4 n1211_bdd_3_lut_13099_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13600)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1211_bdd_3_lut_13099_3_lut_4_lut.init = 16'h8088;
    LUT4 i11384_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11973)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11384_1_lut_2_lut.init = 16'h7777;
    PFUMX i11921 (.BLUT(n12544), .ALUT(n12545), .C0(rom_addr[5]), .Z(n12546));
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14378)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    PFUMX i11440 (.BLUT(n12063), .ALUT(n12064), .C0(rom_addr[5]), .Z(n12065));
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_562), .B(n1228_adj_670), .C(rom_addr[4]), 
         .Z(n13764)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    L6MUX21 i12748 (.D0(n13144), .D1(n13141), .SD(rom_addr[9]), .Z(n13145));
    LUT4 n2556_bdd_4_lut (.A(n14303), .B(n5723), .C(rom_addr[0]), .D(rom_addr[6]), 
         .Z(n13218)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam n2556_bdd_4_lut.init = 16'h3050;
    LUT4 i2_3_lut_4_lut_adj_22 (.A(rom_addr[1]), .B(n14194), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n10563)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_22.init = 16'h8000;
    PFUMX i11927 (.BLUT(n12550), .ALUT(n12551), .C0(rom_addr[5]), .Z(n12552));
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[3]), .D(rom_addr[4]), 
         .Z(n13766)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hc0aa;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14277), 
         .B(rom_addr[5]), .C(n14124), .D(n14234), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 i11796_4_lut (.A(n12208), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14351), 
         .Z(n12421)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11796_4_lut.init = 16'hca0a;
    PFUMX i12746 (.BLUT(n13143), .ALUT(n13142), .C0(rom_addr[8]), .Z(n13144));
    L6MUX21 i12921 (.D0(n14044), .D1(n13382), .SD(rom_addr[5]), .Z(n13386));
    PFUMX i12744 (.BLUT(n13140), .ALUT(n13139), .C0(rom_addr[8]), .Z(n13141));
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), 
         .C(n15546), .D(rom_addr[3]), .Z(n2522_adj_591)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11930 (.BLUT(n12553), .ALUT(n12554), .C0(rom_addr[5]), .Z(n12555));
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14272), 
         .C(n15549), .D(rom_addr[3]), .Z(n2040_adj_612)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i12591_2_lut_rep_360 (.A(rom_addr[3]), .B(n15568), .Z(n14277)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12591_2_lut_rep_360.init = 16'h1111;
    LUT4 n915_bdd_2_lut_13378_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n13844)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_2_lut_13378_3_lut.init = 16'h1010;
    PFUMX i12681 (.BLUT(n13038), .ALUT(n506_adj_576), .C0(rom_addr[4]), 
          .Z(n13039));
    LUT4 i1_2_lut_rep_227_3_lut (.A(rom_addr[3]), .B(n15568), .C(rom_addr[2]), 
         .Z(n14144)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_227_3_lut.init = 16'hfefe;
    LUT4 i7168_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n46_adj_11)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7168_4_lut_4_lut.init = 16'h3d00;
    LUT4 i5802_3_lut_3_lut_rep_350 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n14267)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5802_3_lut_3_lut_rep_350.init = 16'hd3d3;
    LUT4 i7388_2_lut_rep_282_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15568), 
         .Z(n14199)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7388_2_lut_rep_282_3_lut.init = 16'h8080;
    LUT4 i7342_2_lut_rep_230_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14147)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7342_2_lut_rep_230_3_lut_4_lut.init = 16'h8008;
    LUT4 i12560_2_lut_rep_321 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14238)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12560_2_lut_rep_321.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14384)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut.init = 16'h0001;
    PFUMX i12916 (.BLUT(n557_adj_652), .ALUT(n13381), .C0(rom_addr[4]), 
          .Z(n13382));
    LUT4 i12372_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13112), 
         .D(n2538), .Z(n2555_adj_641)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12372_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i12615_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n12038)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12615_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i11935 (.BLUT(n12556), .ALUT(n12557), .C0(rom_addr[5]), .Z(n12560));
    LUT4 i11497_3_lut (.A(n301), .B(n604_adj_671), .C(rom_addr[4]), .Z(n12122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11497_3_lut.init = 16'hcaca;
    LUT4 i11495_4_lut (.A(n5064), .B(n14102), .C(rom_addr[4]), .D(n14277), 
         .Z(n12120)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11495_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n6308)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_4_lut.init = 16'heffe;
    LUT4 i1897_2_lut_rep_322 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14239)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1897_2_lut_rep_322.init = 16'h6666;
    PFUMX i11936 (.BLUT(n12558), .ALUT(n12559), .C0(rom_addr[5]), .Z(n12561));
    LUT4 i11687_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14185), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14293)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11687_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut.init = 16'h6363;
    LUT4 i7317_2_lut_rep_192_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14109)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7317_2_lut_rep_192_3_lut_4_lut.init = 16'h0010;
    LUT4 i11492_3_lut (.A(n557_adj_761), .B(n428_adj_628), .C(rom_addr[4]), 
         .Z(n12117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11492_3_lut.init = 16'hcaca;
    LUT4 i11687_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14185), .C(rom_addr[3]), 
         .Z(n14292)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11687_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_737)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 i11491_3_lut (.A(n526_adj_758), .B(n205_adj_549), .C(rom_addr[4]), 
         .Z(n12116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11491_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_278_2_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n14195)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_278_2_lut_3_lut.init = 16'hefef;
    L6MUX21 i12897 (.D0(n13357), .D1(n13355), .SD(rom_addr[6]), .Z(n13358));
    LUT4 i1_2_lut_rep_170_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(n15568), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14087)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_170_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4564_3_lut_4_lut (.A(n15568), .B(n14194), .C(rom_addr[5]), .D(n14087), 
         .Z(n5376)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4564_3_lut_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14377)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i4958_2_lut_rep_324 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14241)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4958_2_lut_rep_324.init = 16'h6666;
    PFUMX i11598 (.BLUT(n12221), .ALUT(n12222), .C0(rom_addr[4]), .Z(n12223));
    LUT4 i7370_2_lut_rep_234_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14151)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7370_2_lut_rep_234_3_lut_4_lut.init = 16'h6000;
    LUT4 i7320_2_lut_rep_239_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(n15568), 
         .Z(n14156)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7320_2_lut_rep_239_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14241), .B(n14218), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205_adj_747)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_325 (.A(rom_addr[0]), .B(n15568), .Z(n14242)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_325.init = 16'h2222;
    PFUMX i12893 (.BLUT(n13354), .ALUT(n1403), .C0(n14238), .Z(n13355));
    LUT4 address_11__I_0_Mux_1_i1483_4_lut (.A(n14122), .B(n14210), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n1483_adj_648)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut.init = 16'hcafa;
    LUT4 i1_2_lut_rep_276_3_lut (.A(rom_addr[3]), .B(n15568), .C(rom_addr[2]), 
         .Z(n14193)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_276_3_lut.init = 16'hefef;
    LUT4 i7123_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam i7123_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14383)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (D)))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut.init = 16'h4480;
    PFUMX i11445 (.BLUT(n12066), .ALUT(n12067), .C0(rom_addr[5]), .Z(n12070));
    PFUMX i12895 (.BLUT(n13356), .ALUT(n14061), .C0(rom_addr[5]), .Z(n13357));
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_271_3_lut (.A(rom_addr[0]), 
         .B(n15568), .C(rom_addr[2]), .Z(n14188)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_271_3_lut.init = 16'hc2c2;
    LUT4 i7338_2_lut_rep_194_3_lut_4_lut (.A(rom_addr[3]), .B(n15568), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n14111)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7338_2_lut_rep_194_3_lut_4_lut.init = 16'h1000;
    LUT4 i11608_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n12233)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11608_3_lut_4_lut_4_lut.init = 16'h22c2;
    PFUMX i13327 (.BLUT(n13910), .ALUT(n13909), .C0(rom_addr[0]), .Z(n13911));
    LUT4 i12600_2_lut_rep_341 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14258)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12600_2_lut_rep_341.init = 16'h4444;
    LUT4 i12612_2_lut_rep_196_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(n15568), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14113)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12612_2_lut_rep_196_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i7325_2_lut_rep_172_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14089)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7325_2_lut_rep_172_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i5803_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n6648)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5803_3_lut_4_lut_4_lut.init = 16'hd388;
    LUT4 i7121_2_lut_rep_361 (.A(n15568), .B(rom_addr[3]), .Z(n14278)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7121_2_lut_rep_361.init = 16'hbbbb;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14310), 
         .C(rom_addr[5]), .D(n14218), .Z(n1660)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11940 (.BLUT(n12563), .ALUT(n12564), .C0(rom_addr[5]), .Z(n12565));
    LUT4 i11480_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11480_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n4_adj_741)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_adj_23.init = 16'hb0b0;
    LUT4 i11578_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668_adj_550), .C(rom_addr[4]), 
         .D(n14132), .Z(n12203)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11578_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_161_3_lut_3_lut_4_lut (.A(n15568), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14078)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_161_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i11457_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n12082)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11457_3_lut.init = 16'hcaca;
    LUT4 i11479_3_lut (.A(n270_c), .B(n285), .C(rom_addr[4]), .Z(n12104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11479_3_lut.init = 16'hcaca;
    PFUMX i11943 (.BLUT(n12566), .ALUT(n12567), .C0(rom_addr[5]), .Z(n12568));
    LUT4 i7316_2_lut_rep_235_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15568), .D(rom_addr[0]), .Z(n14152)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7316_2_lut_rep_235_3_lut_4_lut.init = 16'h0440;
    LUT4 i7435_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n14275), .D(n14179), .Z(n2684)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7435_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i7375_2_lut_rep_211_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(n15568), .Z(n14128)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7375_2_lut_rep_211_3_lut_3_lut.init = 16'h4040;
    PFUMX i13314 (.BLUT(n13894), .ALUT(n13893), .C0(rom_addr[6]), .Z(n13895));
    LUT4 i1_2_lut_rep_200_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14117)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_200_3_lut.init = 16'hbfbf;
    LUT4 i11234_2_lut_rep_343 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14260)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11234_2_lut_rep_343.init = 16'h2222;
    LUT4 i11966_4_lut_4_lut (.A(rom_addr[0]), .B(n14150), .C(rom_addr[4]), 
         .D(n14099), .Z(n12591)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11966_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_rep_253_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14170)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_253_3_lut_4_lut.init = 16'h0d00;
    LUT4 i11225_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1228_adj_670)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11225_3_lut_4_lut_3_lut_4_lut.init = 16'h200d;
    LUT4 i7386_2_lut_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n348)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7386_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n14091), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14221), 
         .C(rom_addr[3]), .D(n14255), .Z(n1101_adj_731)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    PFUMX i11446 (.BLUT(n12068), .ALUT(n12069), .C0(rom_addr[5]), .Z(n12071));
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6671), 
         .C(rom_addr[5]), .D(n12253), .Z(n1660_adj_710)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i7385_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n684_adj_672)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7385_2_lut_3_lut_4_lut.init = 16'h0220;
    LUT4 i11685_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684_adj_645), .C(rom_addr[4]), 
         .D(n14132), .Z(n12310)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11685_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12641_2_lut_rep_184_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14101)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12641_2_lut_rep_184_3_lut_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n205_adj_549), 
         .C(rom_addr[4]), .D(n14132), .Z(n507_adj_622)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n443), .C(rom_addr[4]), 
         .Z(n444_adj_696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    L6MUX21 i12870 (.D0(n13326), .D1(n13324), .SD(rom_addr[6]), .Z(n13327));
    PFUMX i12868 (.BLUT(n13325), .ALUT(n14095), .C0(rom_addr[5]), .Z(n13326));
    PFUMX i11945 (.BLUT(n349), .ALUT(n380_adj_631), .C0(rom_addr[5]), 
          .Z(n12570));
    PFUMX i11949 (.BLUT(n12572), .ALUT(n12573), .C0(rom_addr[5]), .Z(n12574));
    PFUMX i12866 (.BLUT(n1739), .ALUT(n13323), .C0(rom_addr[5]), .Z(n13324));
    PFUMX i11952 (.BLUT(n12575), .ALUT(n12576), .C0(rom_addr[5]), .Z(n12577));
    L6MUX21 i13281 (.D0(n13847), .D1(n13845), .SD(rom_addr[5]), .Z(n13848));
    PFUMX i13279 (.BLUT(n13846), .ALUT(n14215), .C0(rom_addr[3]), .Z(n13847));
    PFUMX i13411 (.BLUT(n14301), .ALUT(n14302), .C0(n14277), .Z(n14303));
    LUT4 i7598_2_lut_rep_355 (.A(n15568), .B(rom_addr[2]), .Z(n14272)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7598_2_lut_rep_355.init = 16'heeee;
    PFUMX i13277 (.BLUT(n13844), .ALUT(n13843), .C0(rom_addr[4]), .Z(n13845));
    PFUMX i12854 (.BLUT(n13307), .ALUT(n13306), .C0(rom_addr[6]), .Z(n13308));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085_c), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12729 (.BLUT(n14160), .ALUT(n13111), .C0(n14237), .Z(n13112));
    PFUMX i11960 (.BLUT(n12581), .ALUT(n12582), .C0(rom_addr[5]), .Z(n12585));
    PFUMX i11961 (.BLUT(n12583), .ALUT(n12584), .C0(rom_addr[5]), .Z(n12586));
    PFUMX i11967 (.BLUT(n12588), .ALUT(n12589), .C0(rom_addr[5]), .Z(n12592));
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14189), 
         .C(rom_addr[3]), .D(n14210), .Z(n364_adj_658)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11968 (.BLUT(n12590), .ALUT(n12591), .C0(rom_addr[5]), .Z(n12593));
    LUT4 i7629_2_lut_rep_241_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14158)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7629_2_lut_rep_241_2_lut.init = 16'hdddd;
    PFUMX i11970 (.BLUT(n797), .ALUT(n828_adj_555), .C0(rom_addr[5]), 
          .Z(n12595));
    PFUMX i11971 (.BLUT(n12259), .ALUT(n891_adj_751), .C0(rom_addr[5]), 
          .Z(n12596));
    PFUMX i11977 (.BLUT(n12598), .ALUT(n12599), .C0(rom_addr[5]), .Z(n12602));
    PFUMX i11978 (.BLUT(n12600), .ALUT(n12601), .C0(rom_addr[5]), .Z(n12603));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (ascii_num, sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_368[1] , n5, \end_x_8__N_295[3] , \end_y_8__N_313[4] , 
            n1213, sys_clk_50MHz_enable_42, \end_x_8__N_295[7] , \end_x_8__N_295[6] , 
            \end_x_8__N_295[5] , \end_x_8__N_295[4] , \state[3] ) /* synthesis syn_module_defined=1 */ ;
    output [6:0]ascii_num;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_368[1] ;
    input n5;
    output \end_x_8__N_295[3] ;
    output \end_y_8__N_313[4] ;
    input n1213;
    input sys_clk_50MHz_enable_42;
    output \end_x_8__N_295[7] ;
    output \end_x_8__N_295[6] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    input \state[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [6:0]ascii_num_6__N_515;
    
    wire n5906, n17, show_char_flag_N_540;
    wire [8:0]start_y_8__N_531;
    
    wire n54, cnt_ascii_num_4__N_514, n6868, sys_clk_50MHz_enable_23;
    wire [31:0]n225;
    wire [1:0]n1;
    
    wire n14063, n10596, n11746, n2757, n11723, n10865, n14207, 
        n14217, n14118, n7, n1035, n14269, n980, n11918, n10, 
        n11882, n14270, n12, n14268;
    wire [3:0]n1393;
    
    wire n24, n11878, n2803, n14222, n14225, n10_adj_541, n14224, 
        n11675;
    
    FD1P3AX ascii_num_i0_i0 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i0.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i5 (.D(ascii_num_6__N_515[5]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i5.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_x__i1 (.D(n17), .CK(sys_clk_50MHz), .CD(n5906), .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_79 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[10] 95[32])
    defparam show_char_flag_79.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n1213), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(228[10] 253[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i1 (.D(n6868), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_514), 
            .Q(n54));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i4 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n225[11]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_514));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n225[10]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i3 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n225[9]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n225[8]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n225[7]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n225[6]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n225[5]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n225[4]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n225[3]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n225[2]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n225[1]), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n54), .SP(sys_clk_50MHz_enable_23), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i2 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i1 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n1[1]), .SP(sys_clk_50MHz_enable_42), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(n10596), .CK(sys_clk_50MHz), .CD(n14063), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(n2757), .CK(sys_clk_50MHz), .CD(n11746), .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(n11723), .CK(sys_clk_50MHz), .CD(n14063), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(n10865), .CK(sys_clk_50MHz), .CD(n5906), .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i6.GSR = "ENABLED";
    LUT4 i12530_2_lut_rep_146 (.A(start_y_8__N_531[4]), .B(\state[5] ), 
         .Z(n14063)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12530_2_lut_rep_146.init = 16'h7777;
    LUT4 i5071_2_lut_3_lut (.A(start_y_8__N_531[4]), .B(\state[5] ), .C(n54), 
         .Z(n5906)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i5071_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_290 (.A(n225[2]), .B(n225[3]), .Z(n14207)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_2_lut_rep_290.init = 16'heeee;
    LUT4 i2_3_lut_rep_201_4_lut (.A(n225[2]), .B(n225[3]), .C(n225[9]), 
         .D(n14217), .Z(n14118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i2_3_lut_rep_201_4_lut.init = 16'hfffe;
    LUT4 i901_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(85[17:28])
    defparam i901_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(n7), .B(n1035), .C(n225[11]), .D(n14269), .Z(n10596)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i462_2_lut (.A(n225[2]), .B(n225[1]), .Z(n980)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i462_2_lut.init = 16'heeee;
    LUT4 i12570_4_lut (.A(n11918), .B(\state[5] ), .C(n10), .D(n225[1]), 
         .Z(n11746)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam i12570_4_lut.init = 16'hffbf;
    LUT4 i11261_2_lut (.A(n225[3]), .B(n54), .Z(n11882)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11261_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n980), .B(n11882), .C(n14270), .D(n14217), .Z(n11723)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut.init = 16'h1110;
    LUT4 i1_4_lut_adj_10 (.A(n225[1]), .B(n12), .C(n14207), .D(n14268), 
         .Z(n10865)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_10.init = 16'h5054;
    LUT4 i1_4_lut_adj_11 (.A(n225[6]), .B(n225[8]), .C(n225[7]), .D(n1393[1]), 
         .Z(n12)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_11.init = 16'hfbfa;
    LUT4 i2_3_lut_4_lut (.A(n225[10]), .B(n14118), .C(n225[1]), .D(n225[8]), 
         .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n14207), .B(n14217), .C(n225[9]), .D(n54), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i11271_2_lut_rep_351 (.A(n225[5]), .B(n225[4]), .Z(n14268)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11271_2_lut_rep_351.init = 16'heeee;
    LUT4 i12619_4_lut (.A(n225[1]), .B(n225[2]), .C(n225[3]), .D(n24), 
         .Z(n17)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i12619_4_lut.init = 16'hbabb;
    LUT4 i1_4_lut_adj_12 (.A(n225[4]), .B(n225[5]), .C(n225[6]), .D(n11878), 
         .Z(n24)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_12.init = 16'hbabb;
    LUT4 i11257_4_lut (.A(n225[8]), .B(n225[7]), .C(n2803), .D(n225[9]), 
         .Z(n11878)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i11257_4_lut.init = 16'hdddc;
    LUT4 i1991_2_lut (.A(n225[10]), .B(n225[11]), .Z(n2803)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1991_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_13 (.A(n14222), .B(n14225), .C(n10_adj_541), .D(n14224), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i1_4_lut_adj_13.init = 16'hfffe;
    LUT4 i19_2_lut_rep_292 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_23)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i19_2_lut_rep_292.init = 16'h8888;
    LUT4 i4_4_lut_adj_14 (.A(n225[5]), .B(n11675), .C(n54), .D(n225[2]), 
         .Z(n10_adj_541)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i4_4_lut_adj_14.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n225[7]), .B(n225[11]), .C(n225[8]), .Z(n11675)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i6011_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n54), .Z(n6868)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i6011_2_lut_3_lut.init = 16'h7070;
    LUT4 i12543_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[13:24])
    defparam i12543_2_lut.init = 16'h4444;
    LUT4 reduce_or_598_i1_2_lut (.A(n225[6]), .B(n54), .Z(ascii_num_6__N_515[5])) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_598_i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_300 (.A(n225[4]), .B(n225[7]), .Z(n14217)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_300.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_15 (.A(n225[4]), .B(n225[7]), .C(n225[8]), 
         .D(n225[6]), .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_15.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_16 (.A(n225[4]), .B(n225[7]), .C(n225[11]), 
         .D(n14222), .Z(ascii_num_6__N_515[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_16.init = 16'hfffe;
    LUT4 i11296_3_lut_4_lut (.A(n225[5]), .B(n225[4]), .C(n225[2]), .D(n225[6]), 
         .Z(n11918)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11296_3_lut_4_lut.init = 16'hfffe;
    LUT4 i456_2_lut_rep_352 (.A(n225[8]), .B(n225[7]), .Z(n14269)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i456_2_lut_rep_352.init = 16'heeee;
    LUT4 i1946_4_lut_4_lut (.A(n225[8]), .B(n225[7]), .C(n14225), .D(n225[11]), 
         .Z(n2757)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i1946_4_lut_4_lut.init = 16'h3332;
    LUT4 i458_2_lut_rep_353 (.A(n225[6]), .B(n225[5]), .Z(n14270)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i458_2_lut_rep_353.init = 16'heeee;
    LUT4 i1_2_lut_rep_305 (.A(n225[6]), .B(n225[1]), .Z(n14222)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i1_2_lut_rep_305.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n225[6]), .B(n225[1]), .C(n14118), .D(n225[10]), 
         .Z(ascii_num_6__N_515[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(229[9] 251[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_307 (.A(n225[4]), .B(n225[3]), .Z(n14224)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_2_lut_rep_307.init = 16'heeee;
    LUT4 i472_3_lut_4_lut (.A(n225[4]), .B(n225[3]), .C(n54), .D(n980), 
         .Z(n1035)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i472_3_lut_4_lut.init = 16'hfffe;
    LUT4 i454_2_lut_rep_308 (.A(n225[10]), .B(n225[9]), .Z(n14225)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i454_2_lut_rep_308.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(n225[10]), .B(n225[9]), .C(n11882), .D(n11675), 
         .Z(n10)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i3_3_lut_4_lut.init = 16'h0f0e;
    LUT4 mux_670_i2_3_lut_3_lut (.A(n225[10]), .B(n225[9]), .C(n225[11]), 
         .Z(n1393[1])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam mux_670_i2_3_lut_3_lut.init = 16'h3232;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n225[6]), .B(n225[5]), .C(n225[9]), 
         .D(n225[10]), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 reduce_or_599_i1_2_lut (.A(n225[8]), .B(n225[6]), .Z(ascii_num_6__N_515[4])) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_599_i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_25[1] , lcd_dc_c_8, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , init_data, show_char_data, \state[5] , 
            en_write_init, en_write_show_char) /* synthesis syn_module_defined=1 */ ;
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
    input \state[5] ;
    input en_write_init;
    input en_write_show_char;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95;
    
    FD1S3AX data_i0 (.D(data_8__N_73[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_95), .CK(sys_clk_50MHz), .Q(\state_3__N_25[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
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
    PFUMX en_write_I_0 (.BLUT(en_write_init), .ALUT(en_write_show_char), 
          .C0(\state[5] ), .Z(en_write_N_95)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=99, LSE_RLINE=111 */ ;
    
endmodule
