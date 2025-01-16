// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 22:07:06 2025
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
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(44[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(48[17:31])
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_25;
    wire [5:0]state_adj_788;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    
    wire n5, sys_clk_50MHz_enable_50, n14;
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_793;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    
    wire sys_clk_50MHz_enable_56;
    wire [1:0]cnt1_adj_801;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[17:21])
    
    wire sys_clk_50MHz_enable_17, n1381, n1246, n13984, n8745, sys_clk_50MHz_enable_54, 
        n15350, sys_clk_50MHz_enable_19, n14075;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .cnt_sclk({cnt_sclk}), .n13984(n13984), .lcd_cs_c(lcd_cs_c), 
            .sys_clk_50MHz_enable_17(sys_clk_50MHz_enable_17), .\state[2] (state[2]), 
            .lcd_sclk_c(lcd_sclk_c), .\data[5] (data[5]), .\data[6] (data[6]), 
            .\state_3__N_25[1] (state_3__N_25[1]), .n1381(n1381), .\data[7] (data[7]), 
            .n14075(n14075), .\data[0] (data[0]), .\data[1] (data[1]), 
            .\data[2] (data[2]), .\data[3] (data[3]), .\data[4] (data[4]), 
            .lcd_mosi_c(lcd_mosi_c)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
    ROM128X1A mux_283_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_283_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_283_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2E */ ;
    defparam mux_283_Mux_5.initval = 128'h000000000000000003C3038607107E2E;
    ROM128X1A mux_283_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_283_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_283_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_283_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    VHI i2 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    lcd_init lcd_init_inst (.GND_net(GND_net), .init_data({init_data}), 
            .sys_clk_50MHz(sys_clk_50MHz), .state({state_adj_788[5:4], Open_0, 
            state_adj_788[2], Open_1, Open_2}), .sys_clk_50MHz_enable_50(sys_clk_50MHz_enable_50), 
            .cnt_s2_num({cnt_s2_num}), .n15350(n15350), .n1381(n1381), 
            .lcd_rst_c(lcd_rst_c), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .\init_data_8__N_240[5] (init_data_8__N_240[5]), .\init_data_8__N_240[4] (init_data_8__N_240[4]), 
            .\init_data_8__N_240[2] (init_data_8__N_240[2]), .wr_done(wr_done), 
            .n1246(n1246)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    LUT4 i665_4_lut (.A(state_adj_793[2]), .B(length_num_flag), .C(n8745), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_56)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i665_4_lut.init = 16'hceee;
    LUT4 m1_lut (.Z(n15350)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i11028_2_lut_rep_288 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14075)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11028_2_lut_rep_288.init = 16'heeee;
    LUT4 i12351_3_lut_rep_197_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n13984)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12351_3_lut_rep_197_4_lut.init = 16'h0100;
    LUT4 i664_2_lut (.A(wr_done), .B(state_adj_788[4]), .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i664_2_lut.init = 16'hbbbb;
    LUT4 i670_4_lut_rep_292 (.A(state_adj_788[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_801[0]), .D(cnt1_adj_801[1]), .Z(sys_clk_50MHz_enable_19)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i670_4_lut_rep_292.init = 16'hceee;
    LUT4 i1953_2_lut_4_lut (.A(state_adj_788[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_801[0]), .D(cnt1_adj_801[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i1953_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14075), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_17)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    LUT4 i1_2_lut_rep_341 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_54)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_341.init = 16'h2222;
    LUT4 i1949_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i1949_2_lut_3_lut.init = 16'hd2d2;
    lcd_show_char lcd_show_char_inst (.sys_clk_50MHz(sys_clk_50MHz), .cnt_rom_prepare({cnt_rom_prepare}), 
            .length_num_flag(length_num_flag), .cnt_length_num({Open_3, 
            Open_4, Open_5, Open_6, cnt_length_num[0]}), .n14(n14), 
            .show_char_data({show_char_data}), .wr_done(wr_done), .GND_net(GND_net), 
            .state({state_adj_793[3:1], Open_7}), .ascii_num({ascii_num}), 
            .\end_x_8__N_295[4] (end_x_8__N_295[4]), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .\cnt_length_num[4] (cnt_length_num[4]), .\end_x_8__N_295[3] (end_x_8__N_295[3]), 
            .sys_clk_50MHz_enable_54(sys_clk_50MHz_enable_54), .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), 
            .n8745(n8745), .\end_x_8__N_295[6] (end_x_8__N_295[6]), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_x_8__N_295[7] (end_x_8__N_295[7]), .\state_3__N_368[1] (state_3__N_368[1])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .init_data({init_data}), .show_char_data({show_char_data}), 
            .\state[5] (state_adj_788[5]), .\state[1] (state_adj_793[1]), 
            .cnt_rom_prepare({cnt_rom_prepare}), .\state[2] (state_adj_788[2]), 
            .\state[4] (state_adj_788[4])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    show_string_number_ctrl show_string_number_ctrl_inst (.ascii_num({ascii_num}), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_788[5]), 
            .cnt1({cnt1_adj_801}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\end_x_8__N_295[3] (end_x_8__N_295[3]), .\end_x_8__N_295[7] (end_x_8__N_295[7]), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .n1246(n1246), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .sys_clk_50MHz_enable_19(sys_clk_50MHz_enable_19), .\state[3] (state_adj_793[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, cnt_sclk, n13984, lcd_cs_c, 
            sys_clk_50MHz_enable_17, \state[2] , lcd_sclk_c, \data[5] , 
            \data[6] , \state_3__N_25[1] , n1381, \data[7] , n14075, 
            \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , 
            lcd_mosi_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output [3:0]cnt_sclk;
    input n13984;
    output lcd_cs_c;
    input sys_clk_50MHz_enable_17;
    output \state[2] ;
    output lcd_sclk_c;
    input \data[5] ;
    input \data[6] ;
    input \state_3__N_25[1] ;
    output n1381;
    input \data[7] ;
    input n14075;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[4] ;
    output lcd_mosi_c;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]n15;
    wire [3:0]state_3__N_33;
    wire [3:0]n100;
    
    wire n2815, n2814, n2812, n1, sclk_N_53;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6831;
    wire [4:0]n25;
    
    wire mosi_N_58, n5853;
    wire [3:0]state_3__N_29;
    
    wire n11714, sys_clk_50MHz_enable_67, n13, n14, mosi_N_65, mosi_N_63, 
        mosi_N_61, mosi_N_64, mosi_N_59, mosi_N_62, mosi_N_60, mosi_N_55, 
        n1503, n6, sys_clk_50MHz_enable_68, n2827, mosi_N_56, n11741, 
        n13973, n5854, sys_clk_50MHz_enable_84, n11694, n2801, n11738, 
        n5855, n11730;
    wire [15:0]n120;
    
    wire n14118;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n13984), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_17), .CD(n13984), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_17), .CD(n13984), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_17), .CD(n13984), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2815), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2814), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2812), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3IX cnt_delay_634__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6831), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_634__i4.GSR = "ENABLED";
    LUT4 i5025_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n5853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5025_3_lut.init = 16'hcaca;
    LUT4 i12338_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n11714), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_67)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12338_4_lut.init = 16'hfbfa;
    LUT4 i11101_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n11714)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i11101_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_61), .D(mosi_N_64), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_59), .B(mosi_N_62), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7331_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1503)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7331_2_lut.init = 16'h2222;
    LUT4 i764_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i764_2_lut.init = 16'h6666;
    LUT4 i2004_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2815)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2004_2_lut.init = 16'h2222;
    LUT4 i2003_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2814)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2003_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i684_1_lut (.A(wr_done), .Z(n1381)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i684_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n13984), .C(state[1]), .Z(sys_clk_50MHz_enable_68)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i12348_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12348_4_lut.init = 16'h0200;
    PFUMX mosi_I_1 (.BLUT(n2827), .ALUT(mosi_N_56), .C0(n11741), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    LUT4 state_3__N_21_I_0_2_lut_rep_186 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n13973)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_186.init = 16'h2222;
    LUT4 i5026_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n5853), .Z(n5854)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5026_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2001_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2812)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2001_3_lut_4_lut.init = 16'h2f22;
    LUT4 i32_2_lut_rep_149_4_lut (.A(n14075), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_84)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_149_4_lut.init = 16'h0400;
    LUT4 i12398_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n11694), .D(cnt_delay[2]), 
         .Z(n6831)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12398_4_lut.init = 16'hfffb;
    LUT4 i11081_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n11694)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11081_2_lut.init = 16'heeee;
    LUT4 i1991_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n2801)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i1991_4_lut.init = 16'hcac0;
    LUT4 i12189_4_lut_4_lut (.A(n13973), .B(n11738), .C(n5854), .D(n2801), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12189_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5027_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n5855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5027_3_lut.init = 16'hcaca;
    LUT4 i11124_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n11738)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11124_2_lut.init = 16'h1111;
    LUT4 i12442_4_lut (.A(n13973), .B(mosi_N_58), .C(mosi_N_59), .D(n11730), 
         .Z(n11741)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12442_4_lut.init = 16'hfffe;
    LUT4 i11116_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n11730)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11116_3_lut.init = 16'h0101;
    LUT4 i5028_3_lut (.A(n5855), .B(\data[4] ), .C(mosi_N_60), .Z(n2827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5028_3_lut.init = 16'hcaca;
    LUT4 i1950_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_17), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i1950_2_lut.init = 16'h6666;
    LUT4 i9646_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9646_2_lut.init = 16'h6666;
    LUT4 i9644_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9644_1_lut.init = 16'h5555;
    FD1P3AX mosi_100 (.D(n1503), .SP(sys_clk_50MHz_enable_67), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_68), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i9649_2_lut_rep_331 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14118)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9649_2_lut_rep_331.init = 16'h8888;
    LUT4 i9653_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9653_2_lut_3_lut.init = 16'h7878;
    LUT4 i9660_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9660_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i9667_3_lut_4_lut (.A(cnt_delay[2]), .B(n14118), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9667_3_lut_4_lut.init = 16'h7f80;
    LUT4 i778_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i778_3_lut_4_lut.init = 16'h7f80;
    LUT4 i771_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i771_2_lut_3_lut.init = 16'h7878;
    FD1S3IX cnt_delay_634__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6831), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_634__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_634__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6831), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_634__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_634__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6831), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_634__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n120[14]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n120[12]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n120[10]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n120[8]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n120[6]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n120[4]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n120[2]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_84), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_634__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6831), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_634__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (GND_net, init_data, sys_clk_50MHz, state, sys_clk_50MHz_enable_50, 
            cnt_s2_num, n15350, n1381, lcd_rst_c, \init_data_8__N_240[0] , 
            \init_data_8__N_240[5] , \init_data_8__N_240[4] , \init_data_8__N_240[2] , 
            wr_done, n1246) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [8:0]init_data;
    input sys_clk_50MHz;
    output [5:0]state;
    input sys_clk_50MHz_enable_50;
    output [6:0]cnt_s2_num;
    input n15350;
    input n1381;
    output lcd_rst_c;
    input \init_data_8__N_240[0] ;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    input wr_done;
    output n1246;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n10270;
    wire [8:0]init_data_8__N_97;
    
    wire n14402, n14399;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1383;
    wire [17:0]n357;
    
    wire n14071;
    wire [6:0]n24;
    
    wire sys_clk_50MHz_enable_16;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272, lcd_rst_high_flag;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274, sys_clk_50MHz_enable_32;
    wire [6:0]n159;
    
    wire n15346, n15347, n15348, n11864, cnt_150ms_22__N_221, n40, 
        n15328, n13, n3;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n30, n10325, n46, n2785, n11863, n11866, n14215, n14216, 
        n14217, n15, n30_adj_774, n11865, n14055, n14040, n14400, 
        n6521, n13930, n51, n70, n10509, n11849, n13727, n13729, 
        n11858, n11867, n11868, n10, n13982, n6542, n4, n11593, 
        n11595, n13_adj_775, n12, n14127, n11712, n41, n68, n14125, 
        n14122, n14121, n11487, n14120, n11596, n6;
    wire [5:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n13382, n6829, lcd_rst_high_flag_N_270, n13452, n13451, n13453, 
        n14204, n14203, n11521, n14124, n16, n8853, n52, n14207, 
        n14206, n14205, n14208, n11676, n11585, n13454, n13914, 
        n30_adj_776, n11857, n13921, n15_adj_777, n11848, n11616, 
        n11594, n11718, n6562, n10_adj_778, n13969, n10265;
    wire [5:0]state_5__N_168;
    
    wire n2836;
    wire [5:0]state_5__N_174;
    
    wire n2839, n11503, n10_adj_779, n11484, n11692, n11690, n2841;
    wire [5:0]state_5__N_186;
    
    wire n2843, n11486, n11634, n2845, n5, n14139, n13701, n10264, 
        n10263, n10258, n10259, n14398, n11859, n11869, n11850, 
        n10280, n10262, n10279, n10260, n10257, n10278, n10277, 
        n10261, n10276, n10275, n10274, n10273, n10272, n10271;
    
    CCU2D cnt_150ms_636_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10270), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_636_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_636_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_1.INJECT1_1 = "NO";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    PFUMX i13413 (.BLUT(n14402), .ALUT(n14399), .C0(state[2]), .Z(init_data_8__N_97[7]));
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14071), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n15350), .SP(sys_clk_50MHz_enable_16), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1381), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n15350), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1381), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    PFUMX i14041 (.BLUT(n15346), .ALUT(n15347), .C0(cnt_s2_num[0]), .Z(n15348));
    LUT4 i11250_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n11864)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i11250_4_lut_4_lut_4_lut.init = 16'hd0c0;
    FD1S3IX cnt_150ms_636__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i22.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n159[1]), .SP(sys_clk_50MHz_enable_32), .CD(n14071), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_50), 
            .CD(n1383), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    PFUMX i68 (.BLUT(n40), .ALUT(n15328), .C0(state[2]), .Z(init_data_8__N_97[8]));
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_50), .CD(n1383), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    PFUMX i29 (.BLUT(n13), .ALUT(n3), .C0(state[2]), .Z(init_data_8__N_97[1]));
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i7.GSR = "ENABLED";
    PFUMX init_data_8__I_0_i7 (.BLUT(init_data_8__N_231[6]), .ALUT(init_data_8__N_240[6]), 
          .C0(state[2]), .Z(init_data_8__N_97[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i6.GSR = "ENABLED";
    LUT4 mux_283_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_283_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
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
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n10325)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i1.GSR = "ENABLED";
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    LUT4 mux_283_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_283_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 i7881_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n2785)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i7881_4_lut_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 i11249_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n11863)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11249_4_lut_4_lut.init = 16'h08e0;
    LUT4 i11252_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n11866)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;
    defparam i11252_4_lut_4_lut.init = 16'h1004;
    LUT4 i253_2_lut (.A(state_5__N_192[5]), .B(state[4]), .Z(sys_clk_50MHz_enable_16)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i253_2_lut.init = 16'h8888;
    PFUMX i13322 (.BLUT(n14215), .ALUT(n14216), .C0(cnt_s4_num[2]), .Z(n14217));
    LUT4 mux_283_Mux_6_i15_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam mux_283_Mux_6_i15_4_lut_4_lut.init = 16'h8004;
    LUT4 mux_283_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n30_adj_774)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_283_Mux_1_i30_3_lut_4_lut.init = 16'h084a;
    LUT4 i11251_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n11865)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i11251_3_lut_4_lut_4_lut.init = 16'h6c20;
    LUT4 i12345_4_lut (.A(cnt_s2_num[5]), .B(n14055), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12345_4_lut.init = 16'h1000;
    LUT4 i821_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14040), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i821_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n165_bdd_2_lut_13431_3_lut (.A(n14400), .B(n6521), .C(state[4]), 
         .Z(n14402)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n165_bdd_2_lut_13431_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_4_lut (.A(cnt_s4_num[0]), .B(n13930), .C(n51), .D(cnt_s4_num[3]), 
         .Z(n70)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf0f1;
    PFUMX i11235 (.BLUT(n2785), .ALUT(n10509), .C0(cnt_s2_num[4]), .Z(n11849));
    LUT4 cnt_s2_num_0__bdd_4_lut_13210 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13727)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_13210.init = 16'h1020;
    LUT4 cnt_s2_num_5__bdd_4_lut_13246 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13729)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut_13246.init = 16'ha088;
    PFUMX i11244 (.BLUT(n46), .ALUT(n10325), .C0(cnt_s2_num[4]), .Z(n11858));
    PFUMX i11253 (.BLUT(n11863), .ALUT(n11864), .C0(cnt_s2_num[4]), .Z(n11867));
    PFUMX i11254 (.BLUT(n11865), .ALUT(n11866), .C0(cnt_s2_num[4]), .Z(n11868));
    LUT4 i5_3_lut_rep_195 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .Z(n13982)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i5_3_lut_rep_195.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n6542), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_35 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n11593), .Z(n11595)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_2_lut_4_lut_adj_35.init = 16'hfffe;
    LUT4 i7_4_lut (.A(n13_adj_775), .B(cnt_s4_num[0]), .C(n12), .D(cnt_s4_num[3]), 
         .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i5_4_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[12]), .C(cnt_s4_num[14]), 
         .D(n14127), .Z(n13_adj_775)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0080;
    LUT4 i4_4_lut (.A(cnt_s4_num[11]), .B(cnt_s4_num[4]), .C(n11712), 
         .D(cnt_s4_num[13]), .Z(n12)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0002;
    LUT4 i11099_4_lut (.A(cnt_s4_num[15]), .B(n41), .C(cnt_s4_num[16]), 
         .D(cnt_s4_num[7]), .Z(n11712)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11099_4_lut.init = 16'hfffe;
    LUT4 init_data_8__I_0_i1_3_lut (.A(init_data_8__N_231[0]), .B(\init_data_8__N_240[0] ), 
         .C(state[2]), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i7330_3_lut (.A(n68), .B(state[4]), .C(n14125), .Z(init_data_8__N_231[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7330_3_lut.init = 16'hc8c8;
    LUT4 i87_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n68)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i87_4_lut.init = 16'h05c1;
    LUT4 i3_4_lut (.A(n14122), .B(n14121), .C(n41), .D(n11487), .Z(n6521)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i814_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14120), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i814_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut (.A(cnt_s4_num[10]), .B(n11596), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_36 (.A(cnt_s4_num[4]), .B(cnt_s4_num[13]), .C(cnt_s4_num[17]), 
         .D(n6), .Z(n11487)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i4_4_lut_adj_36.init = 16'hfffe;
    LUT4 i12454_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12454_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_adj_37 (.A(cnt_s4_num[12]), .B(cnt_s4_num[16]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut_adj_37.init = 16'heeee;
    LUT4 i793_2_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n159[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i793_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_38 (.A(cnt_s4_num[6]), .B(cnt_s4_num[5]), .C(cnt_s4_num[8]), 
         .D(cnt_s4_num[9]), .Z(n11596)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i3_4_lut_adj_38.init = 16'hfffe;
    LUT4 cnt_s4_num_3__bdd_4_lut_13367 (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[0]), .Z(n13382)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (D)+!B !(C+(D))))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut_13367.init = 16'h6423;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6829), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    PFUMX i12914 (.BLUT(n13452), .ALUT(n13451), .C0(cnt_s4_num[3]), .Z(n13453));
    LUT4 i1_4_lut_then_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(n6521), .Z(n14204)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_4_lut_then_4_lut.init = 16'hffcd;
    LUT4 i1_4_lut_else_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(n6521), .Z(n14203)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_4_lut_else_4_lut.init = 16'hffb3;
    LUT4 i1_4_lut (.A(cnt_s4_num[0]), .B(n11521), .C(n14124), .D(cnt_s4_num[3]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i1_4_lut_adj_39 (.A(n14127), .B(cnt_s4_num[10]), .C(n14121), 
         .D(n8853), .Z(n11521)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_39.init = 16'h0002;
    LUT4 i69_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n52)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i69_3_lut.init = 16'h1818;
    LUT4 i1_4_lut_then_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(cnt_s4_num[2]), 
         .Z(n14207)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_else_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[2]), .Z(n14206)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_else_3_lut.init = 16'h2202;
    LUT4 init_data_8__I_0_i6_4_lut (.A(n14205), .B(\init_data_8__N_240[5] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 n11581_bdd_4_lut_13029 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(n13930), 
         .D(cnt_s4_num[0]), .Z(n13452)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+!(D))))) */ ;
    defparam n11581_bdd_4_lut_13029.init = 16'h0900;
    PFUMX i13316 (.BLUT(n14206), .ALUT(n14207), .C0(n6521), .Z(n14208));
    LUT4 i12415_3_lut (.A(n13930), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .Z(n11676)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i12415_3_lut.init = 16'h4141;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n11585), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i7448_3_lut (.A(n13382), .B(state[4]), .C(n14125), .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7448_3_lut.init = 16'hc8c8;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n13454), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 n13453_bdd_2_lut (.A(n13453), .B(n6521), .Z(n13454)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n13453_bdd_2_lut.init = 16'heeee;
    PFUMX i13314 (.BLUT(n14203), .ALUT(n14204), .C0(cnt_s4_num[3]), .Z(n14205));
    LUT4 n13727_bdd_4_lut (.A(n13727), .B(cnt_s2_num[4]), .C(n13729), 
         .D(cnt_s2_num[5]), .Z(n13914)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n13727_bdd_4_lut.init = 16'h22f0;
    LUT4 i2_4_lut_then_4_lut (.A(cnt_s4_num[3]), .B(n13930), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n14216)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i2_4_lut_then_4_lut.init = 16'h1012;
    LUT4 i2_3_lut_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .Z(n10509)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 mux_283_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_776)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_283_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2_4_lut_else_4_lut (.A(cnt_s4_num[3]), .B(n6521), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n14215)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i2_4_lut_else_4_lut.init = 16'h2220;
    LUT4 i660_1_lut_rep_284 (.A(state[2]), .Z(n14071)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i660_1_lut_rep_284.init = 16'h5555;
    PFUMX i11243 (.BLUT(n15), .ALUT(n30_adj_776), .C0(cnt_s2_num[4]), 
          .Z(n11857));
    LUT4 i1952_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1952_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i661_2_lut_rep_190_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_32)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i661_2_lut_rep_190_2_lut.init = 16'hdddd;
    LUT4 i8025_2_lut_rep_134_4_lut (.A(n14121), .B(n8853), .C(cnt_s4_num[10]), 
         .D(cnt_s4_num[0]), .Z(n13921)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8025_2_lut_rep_134_4_lut.init = 16'hfffe;
    PFUMX i11234 (.BLUT(n15_adj_777), .ALUT(n30_adj_774), .C0(cnt_s2_num[4]), 
          .Z(n11848));
    LUT4 i5977_1_lut (.A(state_c[0]), .Z(n6829)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i5977_1_lut.init = 16'h5555;
    LUT4 i12336_4_lut (.A(n11616), .B(n11594), .C(cnt_150ms[6]), .D(cnt_150ms[3]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12336_4_lut.init = 16'h0100;
    LUT4 i3_4_lut_adj_40 (.A(cnt_150ms[5]), .B(n11718), .C(cnt_150ms[22]), 
         .D(n11593), .Z(n11594)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i3_4_lut_adj_40.init = 16'hff7f;
    LUT4 i11105_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[2]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n11718)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11105_4_lut.init = 16'h8000;
    LUT4 i2_4_lut (.A(cnt_150ms[18]), .B(n6542), .C(cnt_150ms[9]), .D(n6562), 
         .Z(n11593)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i5_3_lut (.A(cnt_150ms[11]), .B(n10_adj_778), .C(cnt_150ms[13]), 
         .Z(n6542)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i5_3_lut.init = 16'hfdfd;
    LUT4 i4_4_lut_adj_41 (.A(cnt_150ms[21]), .B(cnt_150ms[19]), .C(cnt_150ms[12]), 
         .D(cnt_150ms[8]), .Z(n10_adj_778)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_41.init = 16'hfbff;
    LUT4 i3_4_lut_adj_42 (.A(cnt_150ms[15]), .B(cnt_150ms[10]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n6562)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_42.init = 16'hffef;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n11616)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i828_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n13969), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i828_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_283_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_777)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_283_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i663_1_lut (.A(state[4]), .Z(n1383)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i663_1_lut.init = 16'h5555;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10265), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i2025_2_lut (.A(state_c[0]), .B(state_5__N_168[0]), .Z(n2836)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2025_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_43 (.A(n11616), .B(n11595), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_4_lut_adj_43.init = 16'hffef;
    LUT4 i4_4_lut_adj_44 (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i4_4_lut_adj_44.init = 16'hfffb;
    LUT4 i2028_4_lut (.A(state_c[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state_c[0]), .Z(n2839)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2028_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_45 (.A(cnt_150ms[5]), .B(n11503), .C(n10_adj_779), 
         .D(n11484), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_45.init = 16'hfffd;
    LUT4 i2_4_lut_adj_46 (.A(cnt_150ms[13]), .B(n6562), .C(n11692), .D(n13982), 
         .Z(n11503)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_46.init = 16'hffdf;
    LUT4 i4_4_lut_adj_47 (.A(cnt_150ms[8]), .B(cnt_150ms[6]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[11]), .Z(n10_adj_779)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_47.init = 16'hfffb;
    LUT4 i11079_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n11692)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11079_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_48 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n11690), 
         .D(cnt_150ms[18]), .Z(n11484)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i2_4_lut_adj_48.init = 16'hffdf;
    LUT4 i11077_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n11690)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11077_2_lut.init = 16'h8888;
    LUT4 i2030_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state_c[1]), .Z(n2841)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2030_4_lut.init = 16'h3b0a;
    LUT4 i2032_4_lut (.A(state_c[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n2843)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2032_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_49 (.A(cnt_150ms[16]), .B(n11486), .C(n4), .D(n11634), 
         .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_49.init = 16'hfdff;
    LUT4 i3_4_lut_adj_50 (.A(cnt_150ms[14]), .B(cnt_150ms[5]), .C(cnt_150ms[6]), 
         .D(n11484), .Z(n11486)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_50.init = 16'hfffe;
    LUT4 i11022_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11634)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11022_2_lut.init = 16'h8888;
    LUT4 i2034_4_lut (.A(state[4]), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state_c[3]), .Z(n2845)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2034_4_lut.init = 16'h3b0a;
    LUT4 i7424_4_lut (.A(n52), .B(state[4]), .C(n14125), .D(n13921), 
         .Z(init_data_8__N_231[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7424_4_lut.init = 16'hc0c8;
    LUT4 i1_4_lut_adj_51 (.A(state[4]), .B(n6521), .C(n14208), .D(n16), 
         .Z(n13)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_51.init = 16'haaa8;
    LUT4 i1_4_lut_adj_52 (.A(state[4]), .B(n6521), .C(n5), .D(n14217), 
         .Z(n40)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_52.init = 16'haaa8;
    LUT4 i7344_2_lut_rep_352 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n14139)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i7344_2_lut_rep_352.init = 16'hdddd;
    LUT4 n11482_bdd_3_lut_13221_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[4]), .D(n14139), .Z(n13701)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam n11482_bdd_3_lut_13221_4_lut_4_lut.init = 16'h3f3b;
    LUT4 i2_2_lut_rep_268_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14055)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_268_3_lut_4_lut.init = 16'hfbff;
    LUT4 n13705_bdd_4_lut (.A(n15348), .B(n13701), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n15328)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n13705_bdd_4_lut.init = 16'h00ca;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10264), .COUT(n10265), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10263), .COUT(n10264), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10258), .COUT(n10259), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    LUT4 i795_2_lut_rep_333 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14120)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i795_2_lut_rep_333.init = 16'h8888;
    LUT4 i802_2_lut_rep_253_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14040)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i802_2_lut_rep_253_3_lut.init = 16'h8080;
    LUT4 i800_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i800_2_lut_3_lut.init = 16'h7878;
    LUT4 i809_2_lut_rep_182_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n13969)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i809_2_lut_rep_182_3_lut_4_lut.init = 16'h8000;
    LUT4 i807_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i807_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_334 (.A(cnt_s4_num[7]), .B(cnt_s4_num[11]), .Z(n14121)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut_rep_334.init = 16'heeee;
    LUT4 i2_3_lut_rep_143_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[11]), 
         .C(cnt_s4_num[10]), .D(n8853), .Z(n13930)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i2_3_lut_rep_143_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_335 (.A(cnt_s4_num[14]), .B(cnt_s4_num[15]), .Z(n14122)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut_rep_335.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(cnt_s4_num[14]), .B(cnt_s4_num[15]), 
         .C(n11596), .D(n11487), .Z(n8853)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_3_lut_4_lut_adj_53.init = 16'hfffe;
    LUT4 i1_2_lut_rep_337 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n14124)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_2_lut_rep_337.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6521), .Z(n51)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hcc80;
    LUT4 i1_3_lut_rep_338 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6521), .Z(n14125)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_3_lut_rep_338.init = 16'hff80;
    LUT4 n11581_bdd_3_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6521), .Z(n13451)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam n11581_bdd_3_lut_4_lut.init = 16'hccc4;
    LUT4 n14398_bdd_2_lut (.A(n14398), .B(cnt_s2_num[6]), .Z(n14399)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14398_bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_340 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n14127)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_2_lut_rep_340.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(n70), 
         .D(cnt_s4_num[3]), .Z(n5)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_4_lut_4_lut.init = 16'hc0e2;
    LUT4 i1_3_lut_4_lut_adj_54 (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(n11676), 
         .D(n14125), .Z(n11585)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_3_lut_4_lut_adj_54.init = 16'hff40;
    LUT4 n13704_bdd_3_lut_then_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n15347)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(C (D)))) */ ;
    defparam n13704_bdd_3_lut_then_4_lut.init = 16'h988a;
    LUT4 n13914_bdd_4_lut (.A(n13914), .B(n30), .C(cnt_s2_num[5]), .D(cnt_s2_num[4]), 
         .Z(n14398)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam n13914_bdd_4_lut.init = 16'hacaa;
    LUT4 n13704_bdd_3_lut_else_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n15346)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam n13704_bdd_3_lut_else_4_lut.init = 16'hff7e;
    LUT4 i567_1_lut (.A(state[5]), .Z(n1246)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i567_1_lut.init = 16'h5555;
    LUT4 i7366_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n11859), .Z(init_data_8__N_240[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7366_2_lut_2_lut.init = 16'h4444;
    LUT4 i7376_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n11869), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7376_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n11850), .Z(n3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 n6521_bdd_4_lut_13861 (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[1]), .Z(n14400)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam n6521_bdd_4_lut_13861.init = 16'hc040;
    FD1S3IX cnt_150ms_636__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_636__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i1.GSR = "ENABLED";
    L6MUX21 i11236 (.D0(n11848), .D1(n11849), .SD(cnt_s2_num[5]), .Z(n11850));
    L6MUX21 i11245 (.D0(n11857), .D1(n11858), .SD(cnt_s2_num[5]), .Z(n11859));
    CCU2D cnt_150ms_636_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10280), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_23.INJECT1_1 = "NO";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10262), .COUT(n10263), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10279), .COUT(n10280), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_21.INJECT1_1 = "NO";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10259), .COUT(n10260), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10257), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    FD1S3AY state_FSM_i5 (.D(n2836), .CK(sys_clk_50MHz), .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2839), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2841), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2843), .CK(sys_clk_50MHz), .Q(state_c[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2845), .CK(sys_clk_50MHz), .Q(state[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    CCU2D cnt_150ms_636_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10278), .COUT(n10279), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10277), .COUT(n10278), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_17.INJECT1_1 = "NO";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10260), .COUT(n10261), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10276), .COUT(n10277), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10275), .COUT(n10276), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10274), .COUT(n10275), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10273), .COUT(n10274), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt_150ms_636__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636__i0.GSR = "ENABLED";
    CCU2D cnt_150ms_636_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10272), .COUT(n10273), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_636_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10271), .COUT(n10272), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_5.INJECT1_1 = "NO";
    L6MUX21 i11255 (.D0(n11867), .D1(n11868), .SD(cnt_s2_num[5]), .Z(n11869));
    CCU2D cnt_150ms_636_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10270), .COUT(n10271), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_636_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_636_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_636_add_4_3.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10257), .COUT(n10258), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10261), .COUT(n10262), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (sys_clk_50MHz, cnt_rom_prepare, length_num_flag, 
            cnt_length_num, n14, show_char_data, wr_done, GND_net, 
            state, ascii_num, \end_x_8__N_295[4] , \end_y_8__N_313[4] , 
            \cnt_length_num[4] , \end_x_8__N_295[3] , sys_clk_50MHz_enable_54, 
            sys_clk_50MHz_enable_56, n8745, \end_x_8__N_295[6] , \end_x_8__N_295[5] , 
            \end_x_8__N_295[7] , \state_3__N_368[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output [2:0]cnt_rom_prepare;
    output length_num_flag;
    output [4:0]cnt_length_num;
    input n14;
    output [8:0]show_char_data;
    input wr_done;
    input GND_net;
    output [3:0]state;
    input [6:0]ascii_num;
    input \end_x_8__N_295[4] ;
    input \end_y_8__N_313[4] ;
    output \cnt_length_num[4] ;
    input \end_x_8__N_295[3] ;
    input sys_clk_50MHz_enable_54;
    input sys_clk_50MHz_enable_56;
    output n8745;
    input \end_x_8__N_295[6] ;
    input \end_x_8__N_295[5] ;
    input \end_x_8__N_295[7] ;
    input \state_3__N_368[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_43;
    wire [7:0]temp_7__N_345;
    wire [2:0]n12;
    wire [3:0]state_3__N_376;
    wire [15:0]n1;
    
    wire cnt_set_windows_3__N_384, sys_clk_50MHz_enable_69;
    wire [8:0]show_char_data_8__N_275;
    
    wire n14082;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire sys_clk_50MHz_enable_22, cnt_wr_color_data_5__N_439;
    wire [5:0]n422;
    wire [5:0]n21;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_372;
    
    wire state1_finish_flag_N_459, n13981, length_num_flag_N_462;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire n14108;
    wire [15:0]n33;
    
    wire n14158, n14159, n14160, n13966, n13968, n2300, n1643, 
        n14058, n1530, n13818, n5903, n13023, n13024, n13915, 
        n15342, n13926, n2621, n10269, n1319, n51, n14051, n10268;
    wire [6:0]n1311;
    
    wire n39, n13934, n14066, n5991;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n1715, n2332, n2364, n15340, n15341, n14067, n2780, n6830;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n10267, n14077, n11628, n10410, n6809, n5849;
    wire [4:0]n365;
    
    wire n1228, n891, n6640, n5861, n14074, n236, n12423;
    wire [2:0]n132;
    
    wire sys_clk_50MHz_enable_98, n2826, n13975, n14098, n11704, n14169, 
        n14168, n5898, n15338, n11545, n14172, n14171, n14129;
    wire [4:0]n1304;
    
    wire n3, n14133, n6, n1262, n6827, n1565, n2395, n1596, 
        n1211, n1530_adj_752, n7540, n7538, n6_adj_753, n10266, 
        n5851, n47;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2848, n2851, n2853, n4, n15330, n94, n13972, n13958, 
        n15333, n1820, n13924, n14080, n13320, n14049, n11870, 
        n1172, n2025, n12014, n270, n14018, n11873, n14016, n796, 
        n14001, n828, n13957, n13963, n15329, n1755, n13952, n13960, 
        n1883, n13999, n6_adj_754, n11654, n14035, n13974, n2141, 
        n14010, n1676, n94_adj_755, n13638, n364, n14004, n380_adj_756, 
        n270_adj_757, n286, n308, n301, n317, n14029, n4_adj_758, 
        n125, n126, n14173, n15337, n15339, n6293, n13944, n2428, 
        n14026, n2684, n14107, n508, n11535, n5836, n158, n892, 
        n13949, n10578, n1534, n6411, n13961, n8851, n14013, n1403, 
        n13959, n379, n380_adj_759, n13998, n14090, n6619, n1723, 
        n4664, n13954, n828_adj_760, n13792, n13927, n859, n11658, 
        n11836, n13931, n14025, n14063, n13948, n14041, n2237, 
        n14105, n3336, n6263, n13947, n14062, n13962, n1069, n14101, 
        n1084, n14037, n13352, n1676_adj_761, n3928, n13255, n6650, 
        n10299, n13939, n708, n11895, n14020, n13928, n14130, 
        n2172, n6626, n11570, n1101, n1149, n15335, n14057, n1851, 
        n3880, n1467, n4_adj_762, n14141, n1723_adj_763, n14023, 
        n1148, n46, n13953, n62, n13929, n46_adj_764, n62_adj_765, 
        n14068, n13951, n14006, n158_adj_766, n13983, n1565_adj_767, 
        n4_adj_768, n380_adj_769, n14022, n1596_adj_770, n1076, n1085, 
        n14042, n3066, n14008, n10576, n6404, n14061, n13990, 
        n1851_adj_771, n14170, n1181, n14027, n11548, n14053, n5298, 
        n1661, n6674, n10460, n509, n6038, n2944, n1405, n12056, 
        n12167, n510, n127, n12041, n11610, n5993, n14102, n1436, 
        n13942, n1529, n12403, n13955, n13463, n13916, n12237, 
        n4094, n3069, n12187, n4094_adj_772, n11527, n13022, n4094_adj_773;
    
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n1[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n1[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n1[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    LUT4 i500_2_lut_rep_295 (.A(n1[6]), .B(n1[8]), .Z(n14082)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i500_2_lut_rep_295.init = 16'heeee;
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_22), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n1[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1S3AX the1_wr_done_177 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_177.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_179 (.D(state1_finish_flag_N_459), .CK(sys_clk_50MHz), 
            .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_179.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n1[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    LUT4 i11069_2_lut_rep_194_3_lut (.A(n1[6]), .B(n1[8]), .C(n1[7]), 
         .Z(n13981)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11069_2_lut_rep_194_3_lut.init = 16'hfefe;
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n1[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX length_num_flag_183 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_183.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    LUT4 i2090_1_lut_rep_321 (.A(rom_addr[5]), .Z(n14108)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2090_1_lut_rep_321.init = 16'h5555;
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n1[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n1[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_22), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n1[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n1[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n1[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n1[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    PFUMX i13285 (.BLUT(n14158), .ALUT(n14159), .C0(rom_addr[3]), .Z(n14160));
    LUT4 i7384_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13966), 
         .D(n13968), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7384_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n14058), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n13818_bdd_2_lut_3_lut (.A(n1[6]), .B(n1[8]), .C(n13818), .Z(n5903)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n13818_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 n13024_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13023), 
         .D(n13024), .Z(n13915)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13024_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n15342), .D(n13926), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_22), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_22), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_22), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n1[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n1[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    CCU2D add_625_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10269), 
          .S0(n1319));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_625_cout.INIT0 = 16'h0000;
    defparam add_625_cout.INIT1 = 16'h0000;
    defparam add_625_cout.INJECT1_0 = "NO";
    defparam add_625_cout.INJECT1_1 = "NO";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_43), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    LUT4 i1954_2_lut_4_lut (.A(state[3]), .B(n51), .C(n14051), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i1954_2_lut_4_lut.init = 16'h10ef;
    CCU2D add_625_7 (.A0(ascii_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ascii_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10268), .COUT(n10269), .S0(n1311[5]), .S1(n1311[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_625_7.INIT0 = 16'hfaaa;
    defparam add_625_7.INIT1 = 16'h0555;
    defparam add_625_7.INJECT1_0 = "NO";
    defparam add_625_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_147 (.A(n33[10]), .B(n39), .Z(n13934)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_rep_147.init = 16'heeee;
    LUT4 i5153_2_lut_3_lut_4_lut (.A(n33[10]), .B(n39), .C(n5903), .D(n14066), 
         .Z(n5991)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i5153_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i961_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), .Z(n1715)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i961_2_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n13968), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    PFUMX i14037 (.BLUT(n15340), .ALUT(n15341), .C0(rom_addr[4]), .Z(n15342));
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14067), .B(n2780), .C(state[1]), 
         .D(n13934), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i1970_4_lut (.A(\end_x_8__N_295[4] ), .B(\end_y_8__N_313[4] ), 
         .C(n14066), .D(n5903), .Z(n2780)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1970_4_lut.init = 16'hc0ca;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_43), .CD(n6830), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    CCU2D add_625_5 (.A0(ascii_num[3]), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(\cnt_length_num[4] ), .A1(ascii_num[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10267), .COUT(n10268), .S0(n1311[3]), 
          .S1(n1311[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_625_5.INIT0 = 16'h556a;
    defparam add_625_5.INIT1 = 16'hfaaa;
    defparam add_625_5.INJECT1_0 = "NO";
    defparam add_625_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(cnt_wr_color_data[0]), .B(n14077), .C(n51), .D(n11628), 
         .Z(length_num_flag_N_462)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i11016_2_lut (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[5]), 
         .Z(n11628)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11016_2_lut.init = 16'heeee;
    LUT4 i5021_3_lut (.A(n10410), .B(\end_x_8__N_295[3] ), .C(n6809), 
         .Z(n5849)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5021_3_lut.init = 16'hc5c5;
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_54), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(\cnt_length_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_54), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_54), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_54), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    LUT4 i11025_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11025_3_lut_4_lut_4_lut_4_lut.init = 16'h4203;
    LUT4 i7475_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7475_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i5799_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n6640)) /* synthesis lut_function=(!((B (C)+!B ((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5799_3_lut_4_lut_4_lut_4_lut.init = 16'h0828;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14067), .B(n5861), .C(state[1]), 
         .D(n13934), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 i5033_4_lut (.A(n14074), .B(n1[9]), .C(n13981), .D(n10410), 
         .Z(n5861)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5033_4_lut.init = 16'hcecf;
    LUT4 i11033_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n236)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11033_3_lut_4_lut_4_lut_4_lut.init = 16'h180c;
    LUT4 i1951_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_56), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i1951_2_lut.init = 16'h6666;
    LUT4 i11860_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n12423)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11860_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i7902_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8745)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7902_2_lut.init = 16'heeee;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_56), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_56), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(n1319), .SP(sys_clk_50MHz_enable_98), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    LUT4 i7342_4_lut_4_lut (.A(n14066), .B(n13934), .C(state[1]), .D(n2826), 
         .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i7342_4_lut_4_lut.init = 16'h3f2f;
    FD1P3AX rom_addr_i0_i10 (.D(n1311[6]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(n1311[5]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    LUT4 i19_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n13975), .C(cnt_wr_color_data[5]), 
         .D(cnt_wr_color_data[4]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i19_3_lut_4_lut.init = 16'h78f0;
    LUT4 i922_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14098), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i922_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i118_4_lut (.A(n11704), .B(length_num_flag), .C(\cnt_length_num[4] ), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    LUT4 n1834_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14169)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_then_4_lut.init = 16'h1044;
    LUT4 n1834_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14168)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_else_4_lut.init = 16'h08f4;
    LUT4 i5070_3_lut_4_lut (.A(n14082), .B(n1[7]), .C(n1[9]), .D(n14074), 
         .Z(n5898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5070_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i7589_4_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15338)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7589_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut (.A(n14082), .B(n1[7]), .C(n1[5]), .D(n5849), 
         .Z(n11545)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    FD1P3AX rom_addr_i0_i8 (.D(n1311[4]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    LUT4 n392_bdd_4_lut (.A(n1[3]), .B(n1[5]), .C(n1[2]), .D(n1[4]), 
         .Z(n13818)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n392_bdd_4_lut.init = 16'hccef;
    FD1P3AX rom_addr_i0_i7 (.D(n1311[3]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 i901_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i901_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n14172)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14171)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    FD1P3AX rom_addr_i0_i6 (.D(n1311[2]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i886_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n14129), .C(cnt_length_num_c[3]), 
         .D(\cnt_length_num[4] ), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i886_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX rom_addr_i0_i5 (.D(n1311[1]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(n1311[0]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(n1304[1]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_98), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_rep_146_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), .C(n51), 
         .D(state[3]), .Z(sys_clk_50MHz_enable_22)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_146_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14133), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4_4_lut (.A(cnt_wr_color_data[0]), .B(n51), .C(cnt_wr_color_data[5]), 
         .D(n6), .Z(n1262)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_4_lut.init = 16'hfff7;
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n1[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n1[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    LUT4 i5975_1_lut (.A(state[2]), .Z(n6827)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i5975_1_lut.init = 16'h5555;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15341)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15340)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n14058), .D(rom_addr[0]), .Z(n1530_adj_752)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i502_2_lut_rep_279 (.A(n1[7]), .B(n1[9]), .Z(n14066)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i502_2_lut_rep_279.init = 16'heeee;
    LUT4 i153_2_lut_rep_280 (.A(state[2]), .B(temp[0]), .Z(n14067)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i153_2_lut_rep_280.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(temp[0]), .C(state[1]), .Z(n7540)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut (.A(the1_wr_done), .B(state[2]), .Z(n51)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n14067), .B(\end_x_8__N_295[6] ), 
         .C(state[1]), .D(n5991), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i865_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i865_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_23 (.A(the1_wr_done), .B(n33[10]), .Z(state1_finish_flag_N_459)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam i1_2_lut_adj_23.init = 16'h8888;
    LUT4 i850_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i850_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut (.A(n14082), .B(n7538), .C(n6_adj_753), .D(state[1]), 
         .Z(show_char_data_8__N_275[5])) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    defparam i1_4_lut.init = 16'hdccc;
    LUT4 i843_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i843_2_lut.init = 16'h6666;
    CCU2D add_625_3 (.A0(\cnt_length_num[4] ), .B0(n1715), .C0(ascii_num[1]), 
          .D0(GND_net), .A1(\cnt_length_num[4] ), .B1(n1715), .C1(ascii_num[2]), 
          .D1(GND_net), .CIN(n10266), .COUT(n10267), .S0(n1311[1]), 
          .S1(n1311[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_625_3.INIT0 = 16'he1e1;
    defparam add_625_3.INIT1 = 16'he1e1;
    defparam add_625_3.INJECT1_0 = "NO";
    defparam add_625_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n39), .B(n5851), .C(n14066), .D(n1[5]), .Z(n6_adj_753)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0504;
    LUT4 i5023_3_lut (.A(n10410), .B(\end_x_8__N_295[5] ), .C(n6809), 
         .Z(n5851)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5023_3_lut.init = 16'hc5c5;
    LUT4 i2_3_lut (.A(n1[3]), .B(n1[1]), .C(n1[2]), .Z(n10410)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i5959_3_lut (.A(n1[2]), .B(n1[4]), .C(n1[3]), .Z(n6809)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i5959_3_lut.init = 16'hcece;
    LUT4 i498_2_lut_rep_287 (.A(n1[4]), .B(n1[5]), .Z(n14074)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i498_2_lut_rep_287.init = 16'heeee;
    LUT4 i7874_4_lut_4_lut (.A(n1[4]), .B(n1[5]), .C(n14082), .D(n10410), 
         .Z(n2826)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i7874_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i2_3_lut_rep_290 (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), 
         .C(cnt_wr_color_data[3]), .Z(n14077)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_290.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[4]), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hff80;
    LUT4 i6689_4_lut (.A(n14067), .B(n33[10]), .C(state[1]), .D(n39), 
         .Z(n7538)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    defparam i6689_4_lut.init = 16'h0aca;
    LUT4 i959_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), .Z(n1304[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i959_2_lut.init = 16'h6666;
    LUT4 i997_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[24:58])
    defparam i997_1_lut.init = 16'h5555;
    CCU2D add_625_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt_length_num[4] ), .B1(n1715), .C1(ascii_num[0]), .D1(GND_net), 
          .COUT(n10266), .S1(n1311[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_625_1.INIT0 = 16'hF000;
    defparam add_625_1.INIT1 = 16'h6969;
    defparam add_625_1.INJECT1_0 = "NO";
    defparam add_625_1.INJECT1_1 = "NO";
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n14067), .B(\end_x_8__N_295[7] ), 
         .C(state[1]), .D(n5991), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_24 (.A(n47), .B(n7540), .C(n33[10]), .D(n5898), 
         .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_24.init = 16'hcecc;
    LUT4 i2037_2_lut (.A(state_c[0]), .B(\state_3__N_368[1] ), .Z(n2848)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2037_2_lut.init = 16'h2222;
    LUT4 i2040_4_lut (.A(state[1]), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state_c[0]), .Z(n2851)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2040_4_lut.init = 16'hce0a;
    LUT4 i2042_4_lut (.A(state[2]), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(state[1]), .Z(n2853)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2042_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut_adj_25 (.A(state[1]), .B(n39), .Z(n47)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_2_lut_adj_25.init = 16'h2222;
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n6827), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_26 (.A(n1[9]), .B(n7540), .C(n47), .D(n4), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hfcec;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13968), .D(n15330), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7683_2_lut_rep_185_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13972)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7683_2_lut_rep_185_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13958), 
         .C(rom_addr[4]), .D(n15333), .Z(n1820)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_137_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n13924)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_137_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 n12000_bdd_3_lut_12811_3_lut_3_lut (.A(rom_addr[3]), .B(n14080), 
         .C(rom_addr[4]), .Z(n13320)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12000_bdd_3_lut_12811_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_adj_27 (.A(n33[10]), .B(n13981), .C(n1[5]), .D(n1[4]), 
         .Z(n4)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(69[16:34])
    defparam i1_4_lut_adj_27.init = 16'habaa;
    LUT4 i11256_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14049), .C(rom_addr[4]), 
         .D(n15333), .Z(n11870)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11256_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11400_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12014)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11400_4_lut_4_lut.init = 16'h7340;
    LUT4 i11954_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14018), .Z(n11873)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11954_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2_2_lut_rep_229_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14016)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_2_lut_rep_229_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14001), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 i7407_2_lut_rep_170_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13957)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7407_2_lut_rep_170_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13963), 
         .C(rom_addr[4]), .D(n15329), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_165_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13952)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_165_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13960), 
         .C(rom_addr[4]), .D(n15333), .Z(n1883)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_212_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13999)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_212_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i4_4_lut_adj_28 (.A(n1[14]), .B(n1[13]), .C(n1[15]), .D(n6_adj_754), 
         .Z(n39)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_28.init = 16'hfffe;
    LUT4 i11042_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11654)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11042_2_lut_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14035), .D(n13974), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i3793_2_lut_rep_223_2_lut (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n14010)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i3793_2_lut_rep_223_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n15329), .Z(n94_adj_755)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n2912_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15333), .C(rom_addr[4]), 
         .D(n13968), .Z(n13638)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2912_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n14004), .Z(n380_adj_756)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_757), 
         .C(rom_addr[4]), .D(n14004), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_242_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14029)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_242_3_lut_3_lut.init = 16'hfdfd;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n4_adj_758), 
         .C(n13999), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    PFUMX i13293 (.BLUT(n14171), .ALUT(n14172), .C0(rom_addr[3]), .Z(n14173));
    PFUMX i14035 (.BLUT(n15337), .ALUT(n15338), .C0(rom_addr[1]), .Z(n15339));
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n6293), 
         .C(n13944), .D(rom_addr[0]), .Z(n2428)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_5_i508_4_lut_4_lut (.A(rom_addr[6]), .B(n14026), 
         .C(n2684), .D(n14107), .Z(n508)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i508_4_lut_4_lut.init = 16'hd850;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11535), 
         .C(n5836), .D(n158), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i1_2_lut_rep_162_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13949)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_162_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i7731_3_lut_3_lut (.A(rom_addr[6]), .B(n10578), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7731_3_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n6411)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_adj_29 (.A(n1[12]), .B(n1[11]), .Z(n6_adj_754)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_29.init = 16'heeee;
    LUT4 i7635_2_lut_rep_174_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13961)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7635_2_lut_rep_174_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8851), 
         .C(rom_addr[4]), .D(n14013), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n13959), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_759)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i5763_2_lut_rep_211_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13998)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5763_2_lut_rep_211_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i7765_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14090), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n158)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7765_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i5778_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n6619)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5778_3_lut_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n15329), .C(rom_addr[4]), .D(n14013), .Z(n1723)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11535), 
         .C(n4664), .D(n13954), .Z(n828_adj_760)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 n1699_bdd_2_lut_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n13792)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1699_bdd_2_lut_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_140_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13927)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_140_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i7754_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n859)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7754_3_lut_4_lut_4_lut.init = 16'h888c;
    LUT4 i11222_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11658), .C(rom_addr[4]), 
         .D(n15333), .Z(n11836)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11222_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7769_2_lut_rep_144_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(n14107), .D(rom_addr[0]), .Z(n13931)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7769_2_lut_rep_144_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7426_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14025), 
         .D(n14063), .Z(n125)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7426_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_161_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n14090), .D(rom_addr[5]), .Z(n13948)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_161_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i7848_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14041), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n2237)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7848_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i2525_4_lut_4_lut (.A(rom_addr[4]), .B(n14105), .C(rom_addr[5]), 
         .D(n13927), .Z(n3336)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2525_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n6263)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_160_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n13947)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_160_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i2598_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14062), .C(rom_addr[5]), 
         .D(n14105), .Z(n5836)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2598_3_lut_4_lut_4_lut.init = 16'hf353;
    LUT4 i1_2_lut_rep_175_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13962)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_175_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14101), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i11146_2_lut_rep_250_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14037)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11146_2_lut_rep_250_2_lut.init = 16'h4444;
    LUT4 n1293_bdd_2_lut_13150_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14107), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13352)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1293_bdd_2_lut_13150_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 n1676_bdd_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1676_adj_761), 
         .C(n3928), .D(rom_addr[3]), .Z(n13255)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1676_bdd_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(n6650), .C(rom_addr[0]), 
         .Z(n10299)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_152_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13939)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_152_3_lut_3_lut.init = 16'h4040;
    LUT4 i11281_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n13972), 
         .D(n708), .Z(n11895)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11281_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11166_2_lut_rep_233_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14020)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11166_2_lut_rep_233_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_141_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14107), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n13928)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_141_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i7744_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n14130), .D(rom_addr[4]), .Z(n2172)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7744_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i5785_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14004), 
         .D(n14035), .Z(n6626)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5785_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n11570)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n13931), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7527_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15335), 
         .D(n14057), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7527_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n3880), 
         .C(n14058), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_762), 
         .C(n14141), .D(n13961), .Z(n1723_adj_763)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 i7556_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14063), 
         .D(n14023), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7556_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46), 
         .C(n13953), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i1_2_lut_rep_142_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13929)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_142_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n13924), 
         .C(rom_addr[0]), .D(n46_adj_764), .Z(n62_adj_765)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n14068), .D(rom_addr[5]), .Z(n13951)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_164_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 i7544_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14018), .C(rom_addr[3]), 
         .D(n14006), .Z(n158_adj_766)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7544_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i7592_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13983), .C(rom_addr[3]), 
         .D(n14013), .Z(n1565_adj_767)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7592_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_768), 
         .C(rom_addr[4]), .D(n13966), .Z(n380_adj_769)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i7778_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14022), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n1596_adj_770)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7778_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i12082_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1084), .C(n1076), 
         .D(rom_addr[4]), .Z(n1085)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12082_3_lut_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_172_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n13959)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_172_3_lut_3_lut.init = 16'h4040;
    LUT4 i2255_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n13962), 
         .D(n14042), .Z(n3066)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2255_4_lut_4_lut.init = 16'hc0e2;
    LUT4 i11049_2_lut_rep_221_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14008)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11049_2_lut_rep_221_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14090), 
         .C(n14068), .D(rom_addr[7]), .Z(n10576)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfff;
    LUT4 i903_2_lut_rep_311 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14098)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i903_2_lut_rep_311.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_30 (.A(rom_addr[3]), .B(rom_addr[5]), 
         .C(n14107), .D(rom_addr[4]), .Z(n6404)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_30.init = 16'h1000;
    LUT4 i910_2_lut_rep_188_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n13975)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i910_2_lut_rep_188_3_lut.init = 16'h8080;
    LUT4 i915_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i915_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_274_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14061)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_274_3_lut_3_lut.init = 16'h1010;
    LUT4 i908_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i908_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_adj_31 (.A(state[1]), .B(the1_wr_done), .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_2_lut_adj_31.init = 16'h8888;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13963), .D(n13990), .Z(n1851_adj_771)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_166_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13953)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_166_3_lut_3_lut_3_lut.init = 16'hdfdf;
    PFUMX i13291 (.BLUT(n14168), .ALUT(n14169), .C0(rom_addr[3]), .Z(n14170));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_32 (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n1181)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_32.init = 16'h4000;
    LUT4 i1_2_lut_rep_167_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13954)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_167_3_lut_4_lut_4_lut.init = 16'h0b00;
    LUT4 i7466_2_lut_rep_235_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n14022)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7466_2_lut_rep_235_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(n14027), 
         .D(rom_addr[4]), .Z(n11548)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i4487_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14053), .C(rom_addr[4]), 
         .D(n14105), .Z(n5298)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i4487_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i867_2_lut_rep_342 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n14129)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i867_2_lut_rep_342.init = 16'h8888;
    LUT4 i879_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i879_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i12208_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723_adj_763), 
         .Z(n6674)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12208_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12240_3_lut_3_lut (.A(rom_addr[7]), .B(n10460), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12240_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2133_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6038), 
         .D(n13951), .Z(n2944)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2133_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i11553_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n12056), .Z(n12167)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11553_4_lut_4_lut.init = 16'h7340;
    LUT4 i11091_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n11704)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i11091_2_lut_3_lut.init = 16'h8080;
    LUT4 i11427_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12041)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11427_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i872_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i872_2_lut_3_lut.init = 16'h7878;
    LUT4 i7589_4_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15337)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7589_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0414;
    LUT4 i5155_4_lut_4_lut (.A(rom_addr[3]), .B(n11610), .C(rom_addr[5]), 
         .D(n6263), .Z(n5993)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5155_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i7590_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14159)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7590_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i7975_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n14102), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7975_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i7590_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14158)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7590_4_lut_4_lut_else_4_lut.init = 16'h0045;
    LUT4 i1_2_lut_rep_346 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14133)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_346.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_264_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14051)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_264_3_lut.init = 16'hbfbf;
    LUT4 i12434_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_98)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12434_2_lut_3_lut.init = 16'h0404;
    LUT4 i12370_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1262), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_43)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12370_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 temp_7__N_424_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(state[3]), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_424_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i5978_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1262), .D(cnt_rom_prepare[1]), .Z(n6830)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i5978_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 i1_2_lut_rep_155_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13942)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_155_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i11789_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n15329), .Z(n12403)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11789_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_33 (.A(state[2]), .B(state[1]), .Z(sys_clk_50MHz_enable_69)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 i7700_2_lut_rep_168_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13955)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7700_2_lut_rep_168_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_354 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14141)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_354.init = 16'h4444;
    LUT4 n1969_bdd_4_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13463)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1969_bdd_4_lut_3_lut_4_lut.init = 16'h400f;
    LUT4 i7609_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n13916), 
         .D(n12237), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7609_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7387_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12187), .Z(n4094_adj_772)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7387_4_lut_4_lut.init = 16'h5140;
    LUT4 i7886_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11527), 
         .D(n13022), .Z(n4094_adj_773)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7886_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_adj_34 (.A(n11545), .B(n7538), .C(n47), .D(n1[9]), 
         .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    defparam i1_4_lut_adj_34.init = 16'hfcec;
    FD1S3JX state_FSM_i3 (.D(n2848), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2851), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2853), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_98), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n14035(n14035), .n11570(n11570), 
            .n13948(n13948), .n1211(n1211), .n46(n46), .n301(n301), 
            .n11895(n11895), .n14105(n14105), .n15329(n15329), .n1403(n1403), 
            .n286(n286), .n317(n317), .n796(n796), .n13927(n13927), 
            .n14004(n14004), .n14049(n14049), .n14107(n14107), .n14057(n14057), 
            .n14068(n14068), .n1148(n1148), .n158(n158_adj_766), .n2141(n2141), 
            .n2172(n2172), .n1820(n1820), .n1851(n1851), .n1530(n1530_adj_752), 
            .n4094(n4094), .rom_q({rom_q}), .n828(n828_adj_760), .n4094_adj_1(n4094_adj_773), 
            .n4094_adj_2(n4094_adj_772), .n380(n380_adj_759), .n6626(n6626), 
            .n12041(n12041), .n62(n62), .n12167(n12167), .n1530_adj_3(n1530), 
            .n379(n379), .n11658(n11658), .n46_adj_4(n46_adj_764), .n12014(n12014), 
            .n13972(n13972), .n1643(n1643), .n828_adj_5(n828), .n1101(n1101), 
            .n14037(n14037), .n12187(n12187), .n4(n4_adj_768), .n1529(n1529), 
            .n6038(n6038), .n14016(n14016), .n15339(n15339), .n509(n509), 
            .n510(n510), .n13961(n13961), .n12056(n12056), .n14001(n14001), 
            .n2395(n2395), .n15333(n15333), .n1676(n1676), .n13024(n13024), 
            .n13966(n13966), .n14029(n14029), .n2332(n2332), .n14006(n14006), 
            .n15330(n15330), .n6674(n6674), .n14053(n14053), .n12423(n12423), 
            .n14013(n14013), .n3880(n3880), .n13929(n13929), .n13974(n13974), 
            .n14042(n14042), .n14160(n14160), .n15335(n15335), .n1181(n1181), 
            .n14058(n14058), .n14027(n14027), .n13947(n13947), .n1149(n1149), 
            .n2621(n2621), .n13916(n13916), .n14062(n14062), .n14061(n14061), 
            .n13968(n13968), .n14108(n14108), .n13949(n13949), .n270(n270), 
            .n14018(n14018), .n6293(n6293), .n13999(n13999), .n236(n236), 
            .n14102(n14102), .n14063(n14063), .n270_adj_6(n270_adj_757), 
            .n14090(n14090), .n2684(n2684), .n14041(n14041), .n14025(n14025), 
            .n364(n364), .n708(n708), .n10576(n10576), .n10578(n10578), 
            .n14080(n14080), .n13998(n13998), .n14130(n14130), .n14170(n14170), 
            .n1228(n1228), .n13924(n13924), .n13463(n13463), .n11535(n11535), 
            .n13990(n13990), .n13957(n13957), .n1676_adj_7(n1676_adj_761), 
            .n1661(n1661), .n14101(n14101), .n891(n891), .n1534(n1534), 
            .n13944(n13944), .n11870(n11870), .n11527(n11527), .n3069(n3069), 
            .n13962(n13962), .n2944(n2944), .n13958(n13958), .n11548(n11548), 
            .n1405(n1405), .n14020(n14020), .n1085(n1085), .n13022(n13022), 
            .n13939(n13939), .n1565(n1565), .n2025(n2025), .n13928(n13928), 
            .n6411(n6411), .n13926(n13926), .n13915(n13915), .n1851_adj_8(n1851_adj_771), 
            .n11610(n11610), .n14022(n14022), .n1596(n1596), .n4_adj_9(n4_adj_758), 
            .n13952(n13952), .n2364(n2364), .n14173(n14173), .n1467(n1467), 
            .n13953(n13953), .n13942(n13942), .n380_adj_10(n380_adj_769), 
            .n3336(n3336), .n10460(n10460), .n62_adj_11(n62_adj_765), 
            .n5993(n5993), .n892(n892), .n94(n94), .n126(n126), .n127(n127), 
            .n2428(n2428), .n2237(n2237), .n2300(n2300), .n125(n125), 
            .n12237(n12237), .n6404(n6404), .n3066(n3066), .n11654(n11654), 
            .n13023(n13023), .n859(n859), .n13960(n13960), .n1436(n1436), 
            .n13959(n13959), .n13352(n13352), .n14026(n14026), .n13963(n13963), 
            .n4_adj_12(n4_adj_762), .n1883(n1883), .n14023(n14023), .n6640(n6640), 
            .n6619(n6619), .n13320(n13320), .n1723(n1723), .n14010(n14010), 
            .n308(n308), .n1755(n1755), .n13955(n13955), .n6263(n6263), 
            .n13983(n13983), .n3928(n3928), .n8851(n8851), .n380_adj_13(n380_adj_756), 
            .n1069(n1069), .n1172(n1172), .n158_adj_14(n158), .n13255(n13255), 
            .n13792(n13792), .n10299(n10299), .n1076(n1076), .n14008(n14008), 
            .n4664(n4664), .n6650(n6650), .n11836(n11836), .n5298(n5298), 
            .n1565_adj_15(n1565_adj_767), .n1596_adj_16(n1596_adj_770), 
            .n94_adj_17(n94_adj_755), .n12403(n12403), .n13638(n13638), 
            .n11873(n11873)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n14035, n11570, n13948, n1211, n46, n301, 
            n11895, n14105, n15329, n1403, n286, n317, n796, n13927, 
            n14004, n14049, n14107, n14057, n14068, n1148, n158, 
            n2141, n2172, n1820, n1851, n1530, n4094, rom_q, n828, 
            n4094_adj_1, n4094_adj_2, n380, n6626, n12041, n62, 
            n12167, n1530_adj_3, n379, n11658, n46_adj_4, n12014, 
            n13972, n1643, n828_adj_5, n1101, n14037, n12187, n4, 
            n1529, n6038, n14016, n15339, n509, n510, n13961, 
            n12056, n14001, n2395, n15333, n1676, n13024, n13966, 
            n14029, n2332, n14006, n15330, n6674, n14053, n12423, 
            n14013, n3880, n13929, n13974, n14042, n14160, n15335, 
            n1181, n14058, n14027, n13947, n1149, n2621, n13916, 
            n14062, n14061, n13968, n14108, n13949, n270, n14018, 
            n6293, n13999, n236, n14102, n14063, n270_adj_6, n14090, 
            n2684, n14041, n14025, n364, n708, n10576, n10578, 
            n14080, n13998, n14130, n14170, n1228, n13924, n13463, 
            n11535, n13990, n13957, n1676_adj_7, n1661, n14101, 
            n891, n1534, n13944, n11870, n11527, n3069, n13962, 
            n2944, n13958, n11548, n1405, n14020, n1085, n13022, 
            n13939, n1565, n2025, n13928, n6411, n13926, n13915, 
            n1851_adj_8, n11610, n14022, n1596, n4_adj_9, n13952, 
            n2364, n14173, n1467, n13953, n13942, n380_adj_10, n3336, 
            n10460, n62_adj_11, n5993, n892, n94, n126, n127, 
            n2428, n2237, n2300, n125, n12237, n6404, n3066, n11654, 
            n13023, n859, n13960, n1436, n13959, n13352, n14026, 
            n13963, n4_adj_12, n1883, n14023, n6640, n6619, n13320, 
            n1723, n14010, n308, n1755, n13955, n6263, n13983, 
            n3928, n8851, n380_adj_13, n1069, n1172, n158_adj_14, 
            n13255, n13792, n10299, n1076, n14008, n4664, n6650, 
            n11836, n5298, n1565_adj_15, n1596_adj_16, n94_adj_17, 
            n12403, n13638, n11873) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n14035;
    input n11570;
    input n13948;
    output n1211;
    output n46;
    output n301;
    input n11895;
    output n14105;
    output n15329;
    input n1403;
    input n286;
    input n317;
    output n796;
    input n13927;
    output n14004;
    output n14049;
    output n14107;
    output n14057;
    output n14068;
    input n1148;
    input n158;
    input n2141;
    input n2172;
    input n1820;
    input n1851;
    input n1530;
    input n4094;
    output [7:0]rom_q;
    input n828;
    input n4094_adj_1;
    input n4094_adj_2;
    input n380;
    input n6626;
    input n12041;
    input n62;
    input n12167;
    input n1530_adj_3;
    output n379;
    output n11658;
    output n46_adj_4;
    input n12014;
    input n13972;
    output n1643;
    input n828_adj_5;
    output n1101;
    input n14037;
    output n12187;
    output n4;
    output n1529;
    output n6038;
    input n14016;
    input n15339;
    input n509;
    output n510;
    input n13961;
    output n12056;
    output n14001;
    output n2395;
    output n15333;
    output n1676;
    output n13024;
    output n13966;
    input n14029;
    output n2332;
    output n14006;
    output n15330;
    input n6674;
    output n14053;
    input n12423;
    output n14013;
    output n3880;
    input n13929;
    output n13974;
    output n14042;
    input n14160;
    output n15335;
    input n1181;
    output n14058;
    output n14027;
    input n13947;
    input n1149;
    input n2621;
    output n13916;
    output n14062;
    input n14061;
    output n13968;
    input n14108;
    input n13949;
    output n270;
    output n14018;
    output n6293;
    input n13999;
    input n236;
    output n14102;
    output n14063;
    output n270_adj_6;
    output n14090;
    output n2684;
    output n14041;
    output n14025;
    output n364;
    output n708;
    input n10576;
    output n10578;
    output n14080;
    input n13998;
    output n14130;
    input n14170;
    input n1228;
    input n13924;
    input n13463;
    output n11535;
    output n13990;
    input n13957;
    output n1676_adj_7;
    output n1661;
    output n14101;
    input n891;
    input n1534;
    output n13944;
    input n11870;
    output n11527;
    output n3069;
    input n13962;
    input n2944;
    output n13958;
    input n11548;
    output n1405;
    input n14020;
    input n1085;
    output n13022;
    input n13939;
    output n1565;
    output n2025;
    input n13928;
    input n6411;
    output n13926;
    input n13915;
    input n1851_adj_8;
    output n11610;
    input n14022;
    input n1596;
    output n4_adj_9;
    input n13952;
    input n2364;
    input n14173;
    input n1467;
    input n13953;
    input n13942;
    input n380_adj_10;
    input n3336;
    output n10460;
    input n62_adj_11;
    input n5993;
    input n892;
    input n94;
    input n126;
    output n127;
    input n2428;
    input n2237;
    input n2300;
    input n125;
    output n12237;
    input n6404;
    input n3066;
    input n11654;
    output n13023;
    input n859;
    output n13960;
    input n1436;
    input n13959;
    input n13352;
    output n14026;
    output n13963;
    output n4_adj_12;
    input n1883;
    output n14023;
    input n6640;
    input n6619;
    input n13320;
    input n1723;
    input n14010;
    output n308;
    input n1755;
    input n13955;
    input n6263;
    output n13983;
    output n3928;
    output n8851;
    input n380_adj_13;
    output n1069;
    output n1172;
    input n158_adj_14;
    input n13255;
    input n13792;
    input n10299;
    output n1076;
    input n14008;
    output n4664;
    output n6650;
    input n11836;
    input n5298;
    input n1565_adj_15;
    input n1596_adj_16;
    input n94_adj_17;
    input n12403;
    input n13638;
    input n11873;
    
    
    wire n14134, n589, n14245, n14246, n14247, n5195, n13635, 
        n13636, n13093, n13919, n13094, n11882, n11883, n11884, 
        n1276, n12055, n1086, n12054, n11891, n11892, n11893, 
        n13596, n13595, n13597, n13593, n13594, n62_c, n11894, 
        n11896, n11835, n14161, n14162, n14163, n13416, n14099, 
        n14078, n1483, n1499, n1451, n11897, n11898, n11899, n13091, 
        n14109, n13092, n13554, n12273, n1533, n13571, n13911, 
        n13572, n13494, n3460, n1278, n1549, n13935, n428, n684, 
        n12308, n13076, n13073, n13077, n61, n13075, n13074, n14096, 
        n14119, n731, n12341, n1789, n2044, n12044, n14242, n14243, 
        n14244, n11900, n11901, n11902, n13956, n1691, n2236, 
        n11903, n11904, n11905, n13553, n13551, n1017, n506, n13552, 
        n14238, n14239, n14240, n11909, n11910, n11911, n1403_adj_543, 
        n12242, n11912, n11913, n11914, n13965, n860, n12305, 
        n255, n15343, n15344, n15345, n11915, n11916, n11917, 
        n14235, n14236, n14237, n12853, n2538, n2555, n12521, 
        n14155, n14156, n14157, n11918, n11919, n11920, n12008, 
        n1228_c, n1243, n12020, n11924, n11925, n11926, n2348, 
        n11930, n11931, n11932, n11933, n11934, n11935, n2523, 
        n2554, n2555_adj_544, n12197, n12198, n12200, n13357, n12196, 
        n12199, n14011, n14218, n14232, n14233, n14234, n11828, 
        n2429, n3067, n12186, n2301, n3009, n12185, n11939, n11940, 
        n11941, n14229, n14230, n14231, n14149, n13976, n12024, 
        n11978, n11942, n11943, n11944, n14226, n14227, n14228, 
        n1002, n13550, n1117, n1149_c, n11948, n11949, n11950, 
        n1835, n11958, n1309, n12241, n11957, n11959, n11842, 
        n11843, n11844, n189, n190, n11664, n2173, n11966, n11967, 
        n11968, n13640, n11841, n12157, n11969, n11970, n11971, 
        n14036, n1852, n11975, n11976, n11977, n12383, n6656, 
        n12156, n1514, n1531, n11979, n11980, n14222, n14223, 
        n14224, n13511, n13506, n12255, n11987, n11988, n11989, 
        n924, n11542, n956, n12164, n827, n11763, n829, n12171, 
        n11993, n11994, n11995, n11996, n11997, n11998, n12085, 
        n12086, n12087, n12116, n12117, n12118, n12147, n12148, 
        n12149, n2047, n12002, n12003, n12004, n12045, n12046, 
        n12047, n12081, n12082, n12083, n12084, n364_c, n381, 
        n12114, n12115, n11974, n318, n12145, n12146, n13509, 
        n13508, n13510, n12160, n12161, n12163, n12042, n12043, 
        n12005, n12006, n12007, n14152, n14153, n14154, n63, n14219, 
        n14220, n14221, n12073, n12074, n12075, n12076, n12077, 
        n12078, n2268, n2299, n2300_c, n12112, n12113, n12310, 
        n12316, n12151, n12143, n12144, n12154, n12155, n14046, 
        n205, n12158, n12159, n12162, n12165, n12166, n12169, 
        n12168, n12170, n12206, n12207, n12208, n2396, n747, n2588, 
        n2109, n1514_adj_548, n1531_adj_550, n12222, n3069_c, n3070, 
        n12385, n1692, n12215, n3069_adj_551, n3070_adj_552, n908, 
        n12194, n3069_adj_554, n3070_adj_555, n731_adj_556, n526, 
        n12011, n12012, n12013, n526_adj_557, n13133, n12015, n12016, 
        n5068, n11871, n908_adj_558, n986, n2283, n2298, n12409, 
        n12079, n12080, n12096, n12097, n12108, n12408, n2300_adj_559, 
        n12102, n12103, n12111, n6621, n1181_c, n1212, n1213, 
        n2009, n11837, n2009_adj_560, n2010, n15332, n2025_c, n12049, 
        n2444, n14017, n859_c, n860_adj_561, n14095, n892_c, n1038, 
        n1054, n14150, n14151, n13072, n1867, n971, n2444_adj_562, 
        n1931, n12402, n812, n829_adj_564, n12034, n1451_adj_565, 
        n364_adj_566, n13920, n12021, n12022, n251, n205_adj_567, 
        n13790, n12201, n506_adj_568, n2459, n11860, n2298_adj_569, 
        n1851_adj_570, n5928, n13642, n13643, n12277, n12291, n12150, 
        n1466, n475, n12299, n12300, n11999, n2475, n12018, n510_c, 
        n1676_c, n2426, n205_adj_571, n14007, n12039, n1564, n460, 
        n668, n893, n11758, n1021, n1435, n12029, n589_adj_572, 
        n604, n1913, n4703, n12394, n12152, n12153, n507, n11754, 
        n4694, n12393, n11960, n1882, n1883_c, n1243_adj_574, n1914, 
        n13405, n1658, n12036, n61_adj_575, n13302, n14028, n12390, 
        n4880, n8825, n2490, n1914_adj_576, n13971, n12030, n12031, 
        n381_adj_577, n12059, n2348_adj_578, n2444_adj_579, n1084, 
        n12397, n2009_adj_580, n2010_adj_581, n1435_adj_582, n1659, 
        n764, n12062, n956_adj_583, n1019, n12064, n14038, n1820_adj_584, 
        n6655, n1723_c, n2522, n1529_adj_585, n1530_adj_586, n124, 
        n1595, n3274, n5729, n2077, n13351, n12126, n12138, n1770, 
        n1468, n12068, n2108, n1149_adj_588, n12377, n1597, n12037, 
        n12100, n2040, n1196, n1915, n12092, n12093, n12106, n14031, 
        n1786, n14012, n13304, n2078, n1676_adj_589, n12375, n11852, 
        n12035, n2009_adj_590, n1979, n12407, n12134, n12119, n12120, 
        n12135, n12121, n12122, n12136, n12405, n1466_adj_591, n12400, 
        n1851_adj_592, n12295, n12131, n12132, n12141, n12176, n14045, 
        n2620, n13462, n12038, n12040, n12335, n12345, n12348, 
        n12358, n12179, n12180, n2044_adj_593, n12190, n12191, n12193, 
        n2365, n2428_c, n12204, n2141_adj_594, n2173_adj_595, n13946, 
        n3948, n1978, n12211, n12212, n12214, n12216, n12217, 
        n12220, n301_adj_596, n14033, n12233, n12234, n12236, n1707, 
        n1789_adj_597, n12123, n13363, n12137, n109, n221, n12048, 
        n12050, n604_adj_598, n13417, n12422, n13789, n8357, n12023, 
        n12265, n13912, n766, n251_adj_599, n1549_adj_600, n12297, 
        n12298, n12817, n4665, n12182, n13737, n12935, n12359, 
        n12360, n12361, n14249, n14248, n557, n476, n14252, n14251, 
        n14255, n14254, n13690, n2589, n15327, n14146, n14147, 
        n14148, n1755_c, n13683, n1244, n1275, n14114, n14092, 
        n12262, n12263, n12931, n11851, n14019, n13938, n5732, 
        n491, n507_adj_601, n2009_adj_602, n13346, n11928, n63_adj_603, 
        n12057, n13277, n78, n13918, n14167, n12311, n2283_adj_604, 
        n12286, n2333, n12245, n12246, n12934, n2427, n12094, 
        n12095, n12107, n2283_adj_605, n11861, n5393, n2492, n14126, 
        n2428_adj_606, n14094, n2396_adj_607, n14145, n12369, n13493, 
        n13491, n2522_adj_608, n6598, n2573, n11885, n2298_adj_609, 
        n11880, n2554_adj_610, n2460, n13492, n1483_adj_612, n12376, 
        n6602, n13567, n12090, n12091, n12105, n1466_adj_613, n11564, 
        n190_adj_614, n253, n12058, n3174, n12063, n11953, n12065, 
        n1946, n1947, n620, n1947_adj_616, n1707_adj_617, n1723_adj_618, 
        n1787, n14190, n14097, n14123, n1692_adj_619, n14024, n13989, 
        n13736, n14060, n954, n12066, n1597_adj_620, n1660, n12069, 
        n604_adj_621, n12362, n12088, n13279, n12104, n11962, n1915_adj_622, 
        n12071, n14110, n890, n13353, n12072, n1308, n1309_adj_623, 
        n12355, n13221, n12852, n445, n508, n1117_adj_624, n14143, 
        n14144, n986_adj_625, n12354, n270_c, n2205, n2237_c, n12353, 
        n12025, n1404, n12098, n12352, n2040_adj_626, n11838, n557_adj_627, 
        n428_adj_628, n12350, n526_adj_629, n12349, n14088, n14014, 
        n620_adj_631, n15334, n2267, n11879, n14212, n14213, n14214, 
        n14140, n61_adj_632, n428_adj_633, n443, n13684, n13997, 
        n1085_c, n1054_adj_634, n12017, n12019, n13490, n1275_adj_635, 
        n13253, n14115, n684_adj_636, n12340, n828_adj_637, n12099, 
        n13985, n797, n14050, n11964, n13274, n13735, n15331, 
        n14093, n12342, n220, n13275, n1243_adj_638, n12336, n12338, 
        n2573_adj_640, n12332, n12331, n635, n5419, n13018, n2556, 
        n13019, n14005, n12329, n12322, n12937, n3070_adj_641, n316, 
        n12324, n11945, n11946, n11947, n12363, n2685, n14003, 
        n891_c, n285, n12323, n12820, n428_adj_642, n12330, n1212_adj_643, 
        n12321, n2109_adj_644, n1403_adj_645, n220_adj_646, n12320, 
        n3070_adj_647, n2685_adj_648, n572, n397, n6617, n604_adj_649, 
        n12351, n12364, n13996, n653, n13641, n12303, n12392, 
        n12395, n12398, n12127, n14030, n653_adj_650, n1914_adj_651, 
        n12296, n14069, n2317, n12292, n2298_adj_653, n12401, n12404, 
        n12130, n4_adj_654, n1597_adj_655, n1660_adj_656, n12288, 
        n220_adj_657, n12287, n1676_adj_658, n1724, n12000, n13321, 
        n1785, n1786_adj_659, n14176, n1852_adj_660, n1915_adj_661, 
        n12133, n10577, n1691_adj_662, n1692_adj_663, n14175, n12175, 
        n1659_adj_664, n14179, n12177, n12178, n13465, n13466, n14178, 
        n1435_adj_665, n11877, n125_c, n12276, n1530_adj_666, n1499_adj_668, 
        n11878, n11881, n12189, n2365_adj_669, n11887, n11936, n12009, 
        n11890, n6599, n14182, n13644, n1739, n1946_adj_670, n14181, 
        n13348, n13349, n11908, n6596, n2492_adj_671, n2555_adj_672, 
        n13464, n14184, n14056, n11963, n14186, n14185, n13350, 
        n14193, n13358, n13020, n2491, n2411, n2427_adj_673, n13362, 
        n2364_c, n14138, n2555_adj_674, n12205, n5743, n13937, n637, 
        n12053, n12209, n14189, n14188, n13323, n14135, n1084_adj_676, 
        n14192, n14191, n2365_adj_677, n2428_adj_678, n1659_adj_679, 
        n2492_adj_680, n14195, n1053, n2110, n14194, n12815, n14198, 
        n2396_adj_681, n14197, n924_adj_682, n987, n14201, n14200, 
        n11862, n12219, n2110_adj_684, n2174, n2045, n14113, n4768, 
        n12399, n11872, n13021, n2522_adj_685, n12225, n12226, n12232, 
        n11937, n11973, n12227, n12228, n12229, n12230, n124_adj_686, 
        n12849, n11688, n11526, n444, n12314, n12243, n12244, 
        n13415, n699, n1341, n13418, n13419, n1596_c, n2108_adj_687, 
        n2621_adj_688, n2684_adj_689, n12253, n12254, n12256, n14209, 
        n14210, n14211, n12258, n12259, n2380, n13257, n12260, 
        n12261, n12109, n13306, n12110, n574, n13573, n12283, 
        n124_adj_691, n12270, n12271, n508_adj_692, n12060, n12275, 
        n14187, n13950, n12061, n1883_adj_693, n12280, n12281, n12289, 
        n12290, n12406, n1038_adj_694, n13685, n1786_adj_695, n2237_adj_696, 
        n13420, n14256, n13410, n2491_adj_697, n12235, n12218, n12221, 
        n5414, n12848, n11853, n2685_adj_698, n12213, n6810, n12188, 
        n12192, n12850, n12851, n12309, n12315, n12203, n13970, 
        n12318, n12333, n12334, n12343, n12344, n12346, n12347, 
        n12356, n12357, n12010, n14253, n1467_c, n14177, n13992, 
        n12368, n12370, n11839, n11840, n12378, n12379, n12380, 
        n12381, n12382, n1883_adj_701, n5934, n11965, n11875, n380_adj_702, 
        n12317, n2173_adj_703, n13411, n14034, n2205_adj_705, n14086, 
        n1292, n12304, n12313, n444_adj_706, n445_adj_707, n955, 
        n11539, n6632, n1867_adj_708, n1883_adj_709, n11938, n3451, 
        n635_adj_711, n1101_adj_713, n1117_adj_714, n125_adj_715, n14241, 
        n2299_adj_716, n13406, n13404, n13407, n14180, n14166, n2173_adj_718, 
        n12374, n14202, n14250, n6686, n13355, n13135, n13402, 
        n1210, n716, n732, n6660, n13223, n1020, n14196, n13134, 
        n14089, n126_adj_724, n14183, n4441, n1436_c, n11876, n12202, 
        n2268_adj_728, n12051, n12052, n12325, n13795, n13645, n12142, 
        n2523_adj_729, n13095, n12140, n13325, n12139, n2554_adj_730, 
        n2523_adj_731, n844, n11972, n13356, n13354, n476_adj_733, 
        n1467_adj_735, n604_adj_736, n1898, n14132, n526_adj_737, 
        n542, n13507, n6593, n557_adj_738, n1565_adj_739, n13222, 
        n1914_adj_742, n13925, n13993, n12339, n1628, n13347, n13324, 
        n13322, n1228_adj_743, n13566, n14117, n12391, n12285, n13793, 
        n4247, n14164, n13305, n13303, n541, n4711, n12396, n12302, 
        n30, n12312, n13278, n13276, n13943, n12932, n13256, n13254, 
        n11874, n13794, n13791, n12818, n14165, n13637, n12936, 
        n12933, n475_adj_748, n12816, n12819, n13639;
    
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14035), 
         .C(rom_addr[3]), .D(n14134), .Z(n589)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i13342 (.BLUT(n14245), .ALUT(n14246), .C0(rom_addr[0]), .Z(n14247));
    PFUMX i13060 (.BLUT(n5195), .ALUT(n13635), .C0(rom_addr[6]), .Z(n13636));
    PFUMX i12633 (.BLUT(n13093), .ALUT(n13919), .C0(rom_addr[5]), .Z(n13094));
    PFUMX i11270 (.BLUT(n11882), .ALUT(n11883), .C0(rom_addr[5]), .Z(n11884));
    LUT4 i11441_4_lut (.A(rom_addr[5]), .B(n1276), .C(rom_addr[6]), .D(n11570), 
         .Z(n12055)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11441_4_lut.init = 16'hcac0;
    LUT4 i11440_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13948), 
         .Z(n12054)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11440_4_lut.init = 16'h0aca;
    PFUMX i11279 (.BLUT(n11891), .ALUT(n11892), .C0(rom_addr[5]), .Z(n11893));
    PFUMX i13037 (.BLUT(n13596), .ALUT(n13595), .C0(rom_addr[6]), .Z(n13597));
    PFUMX i13035 (.BLUT(n1211), .ALUT(n13593), .C0(rom_addr[4]), .Z(n13594));
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46), .B(n301), .C(rom_addr[4]), 
         .Z(n62_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    PFUMX i11282 (.BLUT(n11894), .ALUT(n11895), .C0(rom_addr[5]), .Z(n11896));
    LUT4 i11221_3_lut_4_lut_4_lut (.A(n14105), .B(rom_addr[3]), .C(n15329), 
         .D(rom_addr[4]), .Z(n11835)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i11221_3_lut_4_lut_4_lut.init = 16'hfcd1;
    PFUMX i13287 (.BLUT(n14161), .ALUT(n14162), .C0(rom_addr[0]), .Z(n14163));
    LUT4 n4486_bdd_2_lut_12888_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13416)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam n4486_bdd_2_lut_12888_3_lut_4_lut.init = 16'hf1f0;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14099), .B(n14078), 
         .C(rom_addr[4]), .D(n1483), .Z(n1499)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5813_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5813_4_lut_4_lut.init = 16'h8505;
    PFUMX i11285 (.BLUT(n11897), .ALUT(n11898), .C0(rom_addr[5]), .Z(n11899));
    PFUMX i12631 (.BLUT(n13091), .ALUT(n1403), .C0(n14109), .Z(n13092));
    LUT4 i11660_3_lut (.A(n13554), .B(n12273), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11660_3_lut.init = 16'hcaca;
    L6MUX21 i13016 (.D0(n13571), .D1(n13911), .SD(rom_addr[6]), .Z(n13572));
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13494), 
         .C(rom_addr[7]), .D(n3460), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    PFUMX i13014 (.BLUT(n1549), .ALUT(n13935), .C0(rom_addr[4]), .Z(n13571));
    LUT4 i11269_3_lut (.A(n428), .B(n684), .C(rom_addr[4]), .Z(n11883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11269_3_lut.init = 16'hcaca;
    PFUMX i11694 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12308));
    L6MUX21 i12617 (.D0(n13076), .D1(n13073), .SD(rom_addr[6]), .Z(n13077));
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    PFUMX i12615 (.BLUT(n13075), .ALUT(n13074), .C0(n14096), .Z(n13076));
    LUT4 i11727_3_lut_4_lut (.A(rom_addr[1]), .B(n14119), .C(rom_addr[4]), 
         .D(n731), .Z(n12341)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11727_3_lut_4_lut.init = 16'hf101;
    LUT4 i11430_3_lut (.A(n1789), .B(n2044), .C(rom_addr[8]), .Z(n12044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11430_3_lut.init = 16'hcaca;
    PFUMX i13340 (.BLUT(n14242), .ALUT(n14243), .C0(rom_addr[4]), .Z(n14244));
    PFUMX i11288 (.BLUT(n11900), .ALUT(n11901), .C0(rom_addr[5]), .Z(n11902));
    LUT4 i1_2_lut_rep_169_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13956)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_169_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14245)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14099), .B(n14078), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11291 (.BLUT(n11903), .ALUT(n11904), .C0(rom_addr[5]), .Z(n11905));
    L6MUX21 i13000 (.D0(n13553), .D1(n13551), .SD(rom_addr[6]), .Z(n13554));
    LUT4 i11268_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n11882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11268_3_lut.init = 16'hcaca;
    PFUMX i12998 (.BLUT(n13552), .ALUT(n13919), .C0(rom_addr[5]), .Z(n13553));
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    PFUMX i13337 (.BLUT(n14238), .ALUT(n14239), .C0(rom_addr[0]), .Z(n14240));
    LUT4 i12333_2_lut_rep_322 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14109)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12333_2_lut_rep_322.init = 16'hdddd;
    PFUMX i11297 (.BLUT(n11909), .ALUT(n11910), .C0(rom_addr[5]), .Z(n11911));
    LUT4 i11628_3_lut_4_lut (.A(rom_addr[0]), .B(n13927), .C(rom_addr[5]), 
         .D(n1403_adj_543), .Z(n12242)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11628_3_lut_4_lut.init = 16'hf101;
    PFUMX i11300 (.BLUT(n11912), .ALUT(n11913), .C0(rom_addr[5]), .Z(n11914));
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n13965), .B(n14004), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 i12244_3_lut (.A(n12305), .B(n13597), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12244_3_lut.init = 16'hcaca;
    PFUMX i14039 (.BLUT(n15343), .ALUT(n15344), .C0(rom_addr[0]), .Z(n15345));
    PFUMX i11303 (.BLUT(n11915), .ALUT(n11916), .C0(rom_addr[5]), .Z(n11917));
    PFUMX i13335 (.BLUT(n14235), .ALUT(n14236), .C0(rom_addr[2]), .Z(n14237));
    LUT4 i12125_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n12853), 
         .D(n2538), .Z(n2555)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12125_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7955_2_lut_rep_262_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14049)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7955_2_lut_rep_262_3_lut.init = 16'h8080;
    LUT4 i12320_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12521)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12320_2_lut.init = 16'h9999;
    PFUMX i13283 (.BLUT(n14155), .ALUT(n14156), .C0(rom_addr[2]), .Z(n14157));
    PFUMX i11306 (.BLUT(n11918), .ALUT(n11919), .C0(rom_addr[5]), .Z(n11920));
    LUT4 i11394_3_lut_4_lut (.A(rom_addr[0]), .B(n14107), .C(rom_addr[3]), 
         .D(n15329), .Z(n12008)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11394_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11874_3_lut (.A(n1228_c), .B(n1243), .C(rom_addr[4]), .Z(n12020)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11874_3_lut.init = 16'hcaca;
    PFUMX i11312 (.BLUT(n11924), .ALUT(n11925), .C0(rom_addr[5]), .Z(n11926));
    LUT4 address_11__I_0_Mux_2_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14057), 
         .C(rom_addr[3]), .D(n14134), .Z(n2348)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2348_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i11318 (.BLUT(n11930), .ALUT(n11931), .C0(rom_addr[5]), .Z(n11932));
    L6MUX21 i11321 (.D0(n11933), .D1(n11934), .SD(rom_addr[5]), .Z(n11935));
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_adj_544)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11586_3_lut (.A(n12197), .B(n12198), .C(rom_addr[7]), .Z(n12200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11586_3_lut.init = 16'hcaca;
    LUT4 i11585_3_lut (.A(n13357), .B(n12196), .C(rom_addr[7]), .Z(n12199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11585_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_224_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14011)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_224_3_lut.init = 16'h8080;
    LUT4 rom_addr_0__bdd_4_lut_13328 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14218)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13328.init = 16'h0da3;
    PFUMX i13333 (.BLUT(n14232), .ALUT(n14233), .C0(n14068), .Z(n14234));
    LUT4 i12392_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n11828)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12392_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i11572_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3067), 
         .Z(n12186)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11572_4_lut.init = 16'hca0a;
    LUT4 i11571_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3009), 
         .Z(n12185)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11571_4_lut.init = 16'hc0ca;
    PFUMX i11327 (.BLUT(n11939), .ALUT(n11940), .C0(rom_addr[5]), .Z(n11941));
    PFUMX i13331 (.BLUT(n14229), .ALUT(n14230), .C0(rom_addr[0]), .Z(n14231));
    LUT4 i11293_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n14149)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11293_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i11410_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n12024)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11410_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11364_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n14218), .Z(n11978)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11364_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11330 (.D0(n11942), .D1(n11943), .SD(rom_addr[5]), .Z(n11944));
    PFUMX i13329 (.BLUT(n14226), .ALUT(n14227), .C0(rom_addr[0]), .Z(n14228));
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    PFUMX i12996 (.BLUT(n13919), .ALUT(n13550), .C0(rom_addr[5]), .Z(n13551));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11336 (.BLUT(n11948), .ALUT(n11949), .C0(rom_addr[5]), .Z(n11950));
    LUT4 i11344_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n1835), .Z(n11958)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11344_3_lut_4_lut.init = 16'hf101;
    LUT4 i11627_3_lut_4_lut (.A(rom_addr[0]), .B(n13927), .C(rom_addr[5]), 
         .D(n1309), .Z(n12241)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11627_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11345 (.BLUT(n11957), .ALUT(n11958), .C0(rom_addr[5]), .Z(n11959));
    LUT4 i11230_3_lut (.A(n11842), .B(n11843), .C(rom_addr[7]), .Z(n11844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11230_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11051_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11664)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11051_2_lut.init = 16'heeee;
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11354 (.BLUT(n11966), .ALUT(n11967), .C0(rom_addr[5]), .Z(n11968));
    LUT4 i11543_3_lut (.A(n13640), .B(n11841), .C(rom_addr[7]), .Z(n12157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11543_3_lut.init = 16'hcaca;
    PFUMX i11357 (.BLUT(n11969), .ALUT(n11970), .C0(rom_addr[5]), .Z(n11971));
    LUT4 i7710_2_lut_rep_249_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14036)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7710_2_lut_rep_249_3_lut_4_lut.init = 16'h0880;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11363 (.BLUT(n11975), .ALUT(n11976), .C0(rom_addr[5]), .Z(n11977));
    LUT4 i11542_3_lut (.A(n12383), .B(n6656), .C(rom_addr[7]), .Z(n12156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11542_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14109), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11366 (.BLUT(n11978), .ALUT(n11979), .C0(rom_addr[5]), .Z(n11980));
    PFUMX i13326 (.BLUT(n14222), .ALUT(n14223), .C0(rom_addr[0]), .Z(n14224));
    PFUMX i12969 (.BLUT(n13511), .ALUT(n13506), .C0(rom_addr[5]), .Z(n12255));
    PFUMX i11375 (.BLUT(n11987), .ALUT(n11988), .C0(rom_addr[5]), .Z(n11989));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924), .ALUT(n11542), .C0(rom_addr[5]), 
          .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12164), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n11763), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12171), .ALUT(n4094_adj_1), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11381 (.BLUT(n11993), .ALUT(n11994), .C0(rom_addr[5]), .Z(n11995));
    PFUMX i11384 (.BLUT(n11996), .ALUT(n11997), .C0(rom_addr[5]), .Z(n11998));
    L6MUX21 i11473 (.D0(n12085), .D1(n12086), .SD(rom_addr[10]), .Z(n12087));
    L6MUX21 i11504 (.D0(n12116), .D1(n12117), .SD(rom_addr[10]), .Z(n12118));
    L6MUX21 i11535 (.D0(n12147), .D1(n12148), .SD(rom_addr[10]), .Z(n12149));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11390 (.BLUT(n12002), .ALUT(n12003), .C0(rom_addr[5]), .Z(n12004));
    L6MUX21 i11433 (.D0(n12045), .D1(n12046), .SD(rom_addr[10]), .Z(n12047));
    L6MUX21 i11471 (.D0(n12081), .D1(n12082), .SD(rom_addr[9]), .Z(n12085));
    L6MUX21 i11472 (.D0(n12083), .D1(n12084), .SD(rom_addr[9]), .Z(n12086));
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380), .C0(n14109), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11503 (.BLUT(n12114), .ALUT(n12115), .C0(rom_addr[9]), .Z(n12117));
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n11974), .ALUT(n6626), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11534 (.BLUT(n12145), .ALUT(n12146), .C0(rom_addr[9]), .Z(n12148));
    PFUMX i12967 (.BLUT(n13509), .ALUT(n13508), .C0(rom_addr[6]), .Z(n13510));
    L6MUX21 i11549 (.D0(n12160), .D1(n12161), .SD(rom_addr[9]), .Z(n12163));
    PFUMX i11431 (.BLUT(n12041), .ALUT(n12042), .C0(rom_addr[9]), .Z(n12045));
    PFUMX i11432 (.BLUT(n12043), .ALUT(n12044), .C0(rom_addr[9]), .Z(n12046));
    PFUMX i11393 (.BLUT(n12005), .ALUT(n12006), .C0(rom_addr[5]), .Z(n12007));
    PFUMX i13281 (.BLUT(n14152), .ALUT(n14153), .C0(rom_addr[0]), .Z(n14154));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n11763), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13324 (.BLUT(n14219), .ALUT(n14220), .C0(rom_addr[1]), .Z(n14221));
    PFUMX i11467 (.BLUT(n12073), .ALUT(n12074), .C0(rom_addr[8]), .Z(n12081));
    PFUMX i11468 (.BLUT(n12075), .ALUT(n12076), .C0(rom_addr[8]), .Z(n12082));
    PFUMX i11469 (.BLUT(n12077), .ALUT(n12078), .C0(rom_addr[8]), .Z(n12083));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11502 (.BLUT(n12112), .ALUT(n12113), .C0(rom_addr[9]), .Z(n12116));
    LUT4 i11537_3_lut (.A(n12310), .B(n12316), .C(rom_addr[7]), .Z(n12151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11537_3_lut.init = 16'hcaca;
    PFUMX i11533 (.BLUT(n12143), .ALUT(n12144), .C0(rom_addr[9]), .Z(n12147));
    PFUMX i11546 (.BLUT(n12154), .ALUT(n12155), .C0(rom_addr[8]), .Z(n12160));
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n14107), 
         .C(rom_addr[3]), .D(n14046), .Z(n205)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    PFUMX i11548 (.BLUT(n12158), .ALUT(n12159), .C0(rom_addr[9]), .Z(n12162));
    L6MUX21 i11555 (.D0(n12165), .D1(n12166), .SD(rom_addr[9]), .Z(n12169));
    PFUMX i11556 (.BLUT(n12167), .ALUT(n12168), .C0(rom_addr[9]), .Z(n12170));
    PFUMX i11594 (.BLUT(n12206), .ALUT(n12207), .C0(rom_addr[8]), .Z(n12208));
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 i11389_3_lut_4_lut (.A(rom_addr[0]), .B(n14011), .C(rom_addr[4]), 
         .D(n747), .Z(n12003)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11389_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11361_3_lut_4_lut (.A(rom_addr[0]), .B(n14011), .C(rom_addr[4]), 
         .D(n2588), .Z(n11975)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11361_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1691)) /* synthesis lut_function=(A (B (D))+!A (B (C (D))+!B !(D))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hc811;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_548), .ALUT(n1530_adj_3), 
          .C0(n14109), .Z(n1531_adj_550)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12222), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11771_3_lut_4_lut (.A(rom_addr[0]), .B(n14011), .C(rom_addr[4]), 
         .D(n379), .Z(n12385)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11771_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14011), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n11658)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12215), .ALUT(n3069_adj_551), 
          .C0(rom_addr[9]), .Z(n3070_adj_552)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n908)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A !(D))) */ ;
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h77a8;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n46_adj_4)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3188;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12194), .ALUT(n3069_adj_554), 
          .C0(rom_addr[9]), .Z(n3070_adj_555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731_adj_556)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A !(D))) */ ;
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h778a;
    PFUMX i11399 (.BLUT(n12011), .ALUT(n12012), .C0(rom_addr[5]), .Z(n12013));
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_557)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 n4264_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13133)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n4264_bdd_3_lut_4_lut_4_lut.init = 16'h2006;
    PFUMX i11402 (.BLUT(n12014), .ALUT(n12015), .C0(rom_addr[5]), .Z(n12016));
    LUT4 i11257_4_lut (.A(n5068), .B(n13972), .C(rom_addr[4]), .D(n14068), 
         .Z(n11871)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11257_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n908_adj_558)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut.init = 16'h2048;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 i11795_3_lut (.A(n2283), .B(n2298), .C(rom_addr[4]), .Z(n12409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11795_3_lut.init = 16'hcaca;
    PFUMX i11470 (.BLUT(n12079), .ALUT(n12080), .C0(rom_addr[8]), .Z(n12084));
    L6MUX21 i11494 (.D0(n12096), .D1(n12097), .SD(rom_addr[7]), .Z(n12108));
    LUT4 i12121_3_lut (.A(n12408), .B(n12409), .C(rom_addr[5]), .Z(n2300_adj_559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12121_3_lut.init = 16'hcaca;
    L6MUX21 i11497 (.D0(n12102), .D1(n12103), .SD(rom_addr[7]), .Z(n12111));
    LUT4 i5780_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6621)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5780_4_lut_4_lut_4_lut.init = 16'h242c;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181_c), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11223_3_lut_4_lut (.A(n14049), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009), .Z(n11837)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11223_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14049), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_560), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11435_3_lut_4_lut (.A(n15332), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n12049)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11435_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n2444)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut.init = 16'h1108;
    LUT4 i11356_3_lut_4_lut (.A(n15332), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14017), .Z(n11970)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11356_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859_c), .ALUT(n860_adj_561), 
          .C0(n14095), .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n15332), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13279 (.BLUT(n14149), .ALUT(n14150), .C0(rom_addr[1]), .Z(n14151));
    PFUMX i12613 (.BLUT(n13919), .ALUT(n13072), .C0(rom_addr[5]), .Z(n13073));
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1867)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h6544;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444_adj_562)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    PFUMX i11547 (.BLUT(n12156), .ALUT(n12157), .C0(rom_addr[8]), .Z(n12161));
    LUT4 i11788_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n12402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11788_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_5), .C0(n14109), 
          .Z(n829_adj_564)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11552 (.BLUT(n11844), .ALUT(n12034), .C0(rom_addr[8]), .Z(n12166));
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1451_adj_565)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h2442;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n364_adj_566)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h4241;
    LUT4 i12376_2_lut_rep_133_3_lut_4_lut (.A(rom_addr[1]), .B(n14037), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n13920)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12376_2_lut_rep_133_3_lut_4_lut.init = 16'hf7ff;
    PFUMX i11573 (.BLUT(n12185), .ALUT(n12186), .C0(rom_addr[8]), .Z(n12187));
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    PFUMX i11408 (.BLUT(n12020), .ALUT(n12021), .C0(rom_addr[5]), .Z(n12022));
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n251)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h4808;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_567)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 n1657_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13790)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1657_bdd_3_lut_4_lut_4_lut.init = 16'h0409;
    PFUMX i11587 (.BLUT(n12199), .ALUT(n12200), .C0(rom_addr[8]), .Z(n12201));
    LUT4 i7439_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7439_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506_adj_568)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 i11246_3_lut (.A(n2444), .B(n2459), .C(rom_addr[4]), .Z(n11860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11246_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n14037), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n6038)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i7603_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_569)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7603_4_lut_4_lut.init = 16'hf8f6;
    LUT4 i7406_2_lut_4_lut_4_lut (.A(n13976), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14016), .Z(n1851_adj_570)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7406_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i5171_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n5928)) /* synthesis lut_function=(A+(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5171_4_lut_4_lut.init = 16'hebba;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 n13642_bdd_3_lut (.A(n13642), .B(n15339), .C(rom_addr[5]), .Z(n13643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13642_bdd_3_lut.init = 16'hcaca;
    LUT4 i11536_3_lut (.A(n12277), .B(n12291), .C(rom_addr[7]), .Z(n12150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11536_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14035), 
         .C(rom_addr[3]), .D(n14134), .Z(n475)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut.init = 16'hc5c0;
    L6MUX21 i11687 (.D0(n12299), .D1(n12300), .SD(rom_addr[7]), .Z(n2044));
    LUT4 i11385_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n11999)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11385_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 i11404_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12018)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11404_3_lut_4_lut_4_lut.init = 16'h7402;
    PFUMX i11551 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n12165));
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_571)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 i11425_3_lut_4_lut (.A(n14007), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n12039)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11425_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860), .ALUT(n893), .C0(n11758), 
          .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 i11415_3_lut_4_lut (.A(n14007), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435), .Z(n12029)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11415_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11328 (.BLUT(n589_adj_572), .ALUT(n604), .C0(rom_addr[4]), 
          .Z(n11942));
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 i11780_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4703), 
         .Z(n12394)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11780_4_lut.init = 16'hc0ca;
    LUT4 i11545_3_lut (.A(n12152), .B(n12153), .C(rom_addr[8]), .Z(n12159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11545_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n11754), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11779_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n4694), 
         .Z(n12393)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11779_4_lut.init = 16'hc0ca;
    LUT4 i11346_3_lut_4_lut (.A(n14007), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13961), .Z(n11960)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11346_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14007), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 n1251_bdd_3_lut_12738_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13075)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1251_bdd_3_lut_12738_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_574)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 n549_bdd_4_lut_13127_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13405)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_13127_4_lut.init = 16'h9080;
    LUT4 i11422_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), .C(rom_addr[4]), 
         .D(n1658), .Z(n12036)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11422_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61_adj_575)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut.init = 16'h87fe;
    PFUMX i11442 (.BLUT(n12054), .ALUT(n12055), .C0(rom_addr[7]), .Z(n12056));
    LUT4 n2235_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), .C(rom_addr[4]), 
         .D(n2426), .Z(n13302)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2235_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i11776_4_lut (.A(rom_addr[0]), .B(n14001), .C(rom_addr[4]), .D(n14028), 
         .Z(n12390)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11776_4_lut.init = 16'hcac0;
    LUT4 i4069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n4880)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4069_3_lut_4_lut_4_lut_4_lut.init = 16'hf6d6;
    LUT4 i5754_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8825)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5754_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_576)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7450_2_lut_rep_184_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13971)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7450_2_lut_rep_184_4_lut_4_lut.init = 16'h2900;
    PFUMX i11417 (.BLUT(n12029), .ALUT(n12030), .C0(rom_addr[5]), .Z(n12031));
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut.init = 16'h0803;
    L6MUX21 i11445 (.D0(n11932), .D1(n381_adj_577), .SD(rom_addr[6]), 
            .Z(n12059));
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348_adj_578)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_579)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2444_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i11783_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), .C(rom_addr[4]), 
         .D(n1084), .Z(n12397)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11783_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), 
         .C(rom_addr[4]), .D(n2009_adj_580), .Z(n2010_adj_581)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_582), .B(n15333), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    L6MUX21 i11448 (.D0(n11950), .D1(n764), .SD(rom_addr[6]), .Z(n12062));
    PFUMX i11450 (.BLUT(n956_adj_583), .ALUT(n1019), .C0(rom_addr[6]), 
          .Z(n12064));
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), 
         .C(rom_addr[4]), .D(n14038), .Z(n1820_adj_584)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    PFUMX i5815 (.BLUT(n6655), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n6656));
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14016), 
         .C(rom_addr[4]), .D(n1529_adj_585), .Z(n1530_adj_586)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 n2552_bdd_3_lut_12848_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13024)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;
    defparam n2552_bdd_3_lut_12848_4_lut_4_lut.init = 16'hf7c0;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 i2463_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n3274)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2463_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i4909_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5729)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4909_3_lut_4_lut_4_lut_4_lut.init = 16'hbffe;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 i11524_3_lut (.A(n13351), .B(n12126), .C(rom_addr[7]), .Z(n12138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11524_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_179_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13966)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_179_4_lut_4_lut_4_lut.init = 16'h0180;
    L6MUX21 i11454 (.D0(n1468), .D1(n1531_adj_550), .SD(rom_addr[6]), 
            .Z(n12068));
    LUT4 address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut.init = 16'h8004;
    L6MUX21 i11482 (.D0(n12013), .D1(n1149_adj_588), .SD(rom_addr[6]), 
            .Z(n12096));
    LUT4 i11763_3_lut (.A(n2077), .B(n1529_adj_585), .C(rom_addr[4]), 
         .Z(n12377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11763_3_lut.init = 16'hcaca;
    L6MUX21 i11486 (.D0(n1597), .D1(n12037), .SD(rom_addr[6]), .Z(n12100));
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    L6MUX21 i11488 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n12102));
    L6MUX21 i11492 (.D0(n12092), .D1(n12093), .SD(rom_addr[7]), .Z(n12106));
    LUT4 n1403_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13091)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1403_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 i11353_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[4]), 
         .D(n1643), .Z(n11967)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11353_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 n1676_bdd_3_lut_12990_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[5]), 
         .D(n14012), .Z(n13304)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1676_bdd_3_lut_12990_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14031), 
         .C(rom_addr[4]), .D(n14029), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i11761_3_lut (.A(n1451), .B(n1676_adj_589), .C(rom_addr[4]), 
         .Z(n12375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11761_3_lut.init = 16'hcaca;
    LUT4 i11238_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[4]), 
         .D(n2348), .Z(n11852)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11238_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11423 (.BLUT(n12035), .ALUT(n12036), .C0(rom_addr[5]), .Z(n12037));
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_590)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut.init = 16'h7882;
    L6MUX21 i11520 (.D0(n1979), .D1(n12407), .SD(rom_addr[6]), .Z(n12134));
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2332)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut.init = 16'h0982;
    L6MUX21 i11521 (.D0(n12119), .D1(n12120), .SD(rom_addr[7]), .Z(n12135));
    PFUMX i11522 (.BLUT(n12121), .ALUT(n12122), .C0(rom_addr[7]), .Z(n12136));
    LUT4 i11791_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[4]), 
         .D(n2009_adj_590), .Z(n12405)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11791_3_lut_4_lut.init = 16'hf202;
    LUT4 i11786_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[4]), 
         .D(n1466_adj_591), .Z(n12400)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11786_3_lut_4_lut.init = 16'hf202;
    LUT4 i11681_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[5]), 
         .D(n1851_adj_592), .Z(n12295)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11681_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11527 (.D0(n12131), .D1(n12132), .SD(rom_addr[7]), .Z(n12141));
    LUT4 i11562_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[5]), 
         .D(n1914_adj_576), .Z(n12176)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11562_3_lut_4_lut.init = 16'hf202;
    LUT4 n2109_bdd_3_lut_4_lut (.A(n14037), .B(n14045), .C(rom_addr[5]), 
         .D(n2620), .Z(n13462)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2109_bdd_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11426 (.BLUT(n12038), .ALUT(n12039), .C0(rom_addr[5]), .Z(n12040));
    L6MUX21 i11538 (.D0(n12335), .D1(n12345), .SD(rom_addr[7]), .Z(n12152));
    L6MUX21 i11539 (.D0(n12348), .D1(n12358), .SD(rom_addr[7]), .Z(n12153));
    L6MUX21 i11567 (.D0(n12179), .D1(n12180), .SD(rom_addr[7]), .Z(n2044_adj_593));
    L6MUX21 i11579 (.D0(n12190), .D1(n12191), .SD(rom_addr[7]), .Z(n12193));
    L6MUX21 i11590 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n12204));
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n14037), .B(n14045), 
         .C(rom_addr[5]), .D(n2141_adj_594), .Z(n2173_adj_595)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 i7412_2_lut_rep_159_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13946)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7412_2_lut_rep_159_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_548)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i7447_4_lut_4_lut (.A(n14031), .B(rom_addr[4]), .C(n3948), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7447_4_lut_4_lut.init = 16'h7400;
    L6MUX21 i11600 (.D0(n12211), .D1(n12212), .SD(rom_addr[7]), .Z(n12214));
    L6MUX21 i11606 (.D0(n12216), .D1(n12217), .SD(rom_addr[7]), .Z(n12220));
    LUT4 i11317_3_lut_4_lut (.A(n14006), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_596), .Z(n11931)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11317_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n15330), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14033), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11622 (.D0(n12233), .D1(n12234), .SD(rom_addr[7]), .Z(n12236));
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n6674), .C0(n11828), 
          .Z(n1789_adj_597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11523_3_lut (.A(n12123), .B(n13363), .C(rom_addr[7]), .Z(n12137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11523_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n15330), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11436 (.BLUT(n12048), .ALUT(n12049), .C0(rom_addr[5]), .Z(n12050));
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_598)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 i11335_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n684), .Z(n11949)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11335_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 i11304_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n668), .Z(n11918)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11304_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n205_adj_571), .Z(n507)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_c)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut.init = 16'h8809;
    LUT4 n4486_bdd_2_lut_13031_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13417)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n4486_bdd_2_lut_13031_4_lut_4_lut.init = 16'h6100;
    LUT4 i11859_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n12422)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11859_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    LUT4 n1657_bdd_3_lut_13186_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13789)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1657_bdd_3_lut_13186_4_lut_4_lut.init = 16'h2c41;
    PFUMX i9677 (.BLUT(n12422), .ALUT(n12423), .C0(rom_addr[5]), .Z(n8357));
    LUT4 i11409_4_lut_4_lut (.A(n14013), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n12023)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i11409_4_lut_4_lut.init = 16'hdfd0;
    L6MUX21 i11653 (.D0(n12265), .D1(n13912), .SD(rom_addr[7]), .Z(n766));
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251_adj_599)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut.init = 16'h40b0;
    LUT4 i7486_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549_adj_600)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7486_2_lut_4_lut_4_lut.init = 16'h4900;
    PFUMX i11686 (.BLUT(n12297), .ALUT(n12298), .C0(rom_addr[6]), .Z(n12300));
    LUT4 n2521_bdd_2_lut_13178_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12817)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2521_bdd_2_lut_13178_4_lut_4_lut.init = 16'h1800;
    LUT4 i3854_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4665)) /* synthesis lut_function=(A (B+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3854_3_lut_4_lut_4_lut.init = 16'hd8fe;
    LUT4 i3069_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n3880)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3069_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 n12245_bdd_2_lut_13216_4_lut (.A(n12182), .B(n13737), .C(rom_addr[6]), 
         .D(rom_addr[7]), .Z(n12935)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n12245_bdd_2_lut_13216_4_lut.init = 16'hca00;
    L6MUX21 i11747 (.D0(n12359), .D1(n12360), .SD(rom_addr[6]), .Z(n12361));
    LUT4 i11347_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14249)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11347_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i11347_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14248)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11347_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557), .B(n1211), .C(rom_addr[4]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 i11292_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14252)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11292_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 i11292_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14251)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11292_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i11904_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n11979)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11904_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14255)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 i12279_3_lut (.A(n12137), .B(n12138), .C(rom_addr[8]), .Z(n12144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12279_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14254)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13690), .C(n2589), 
         .D(rom_addr[6]), .Z(n15327)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    PFUMX i13277 (.BLUT(n14146), .ALUT(n14147), .C0(rom_addr[2]), .Z(n14148));
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14013), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n15329), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 n6385_bdd_4_lut (.A(n13929), .B(rom_addr[7]), .C(n14016), .D(rom_addr[5]), 
         .Z(n13683)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(((D)+!C)+!B))) */ ;
    defparam n6385_bdd_4_lut.init = 16'h771d;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275), .C0(rom_addr[5]), 
          .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n1293_bdd_4_lut (.A(n13974), .B(n14114), .C(n14092), .D(rom_addr[4]), 
         .Z(n13690)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut.init = 16'h30aa;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_560)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14013), .B(rom_addr[3]), 
         .C(n14049), .D(rom_addr[4]), .Z(n1403_adj_543)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 n12255_bdd_3_lut_12525 (.A(n12262), .B(n12263), .C(rom_addr[7]), 
         .Z(n12931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12255_bdd_3_lut_12525.init = 16'hcaca;
    LUT4 i11237_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n2332), .Z(n11851)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11237_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), 
         .C(rom_addr[4]), .D(n14019), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i4912_3_lut (.A(n13938), .B(n5729), .C(rom_addr[5]), .Z(n5732)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4912_3_lut.init = 16'hc5c5;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507_adj_601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 i11355_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n2009_adj_602), .Z(n11969)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11355_3_lut_4_lut.init = 16'hf202;
    LUT4 i11314_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n13346), .Z(n11928)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11314_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11443 (.D0(n63_adj_603), .D1(n11926), .SD(rom_addr[6]), .Z(n12057));
    LUT4 n668_bdd_3_lut_13196_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n668), .Z(n13277)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n668_bdd_3_lut_13196_4_lut.init = 16'hf202;
    LUT4 i11310_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n78), .Z(n11924)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11310_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_131_4_lut (.A(rom_addr[0]), 
         .B(n13976), .C(rom_addr[4]), .D(n13966), .Z(n13918)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_131_4_lut.init = 16'hf202;
    LUT4 i11697_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n14167), .Z(n12311)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11697_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11672_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), .C(rom_addr[4]), 
         .D(n2283_adj_604), .Z(n12286)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11672_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 n12245_bdd_3_lut_13215 (.A(n12245), .B(n12246), .C(rom_addr[7]), 
         .Z(n12934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12245_bdd_3_lut_13215.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i11362_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(rom_addr[4]), 
         .D(n14119), .Z(n11976)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11362_3_lut_4_lut.init = 16'hf202;
    LUT4 i11493_3_lut (.A(n12094), .B(n12095), .C(rom_addr[7]), .Z(n12107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11493_3_lut.init = 16'hcaca;
    LUT4 i11247_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(rom_addr[4]), 
         .D(n2283_adj_605), .Z(n11861)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11247_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11794_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(rom_addr[4]), 
         .D(n2588), .Z(n12408)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11794_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11299_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(rom_addr[4]), 
         .D(n14036), .Z(n11913)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11299_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11301_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(rom_addr[4]), 
         .D(n2522), .Z(n11915)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11301_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), 
         .C(n5393), .D(n2283), .Z(n2492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 i5969_3_lut_4_lut (.A(rom_addr[0]), .B(n14042), .C(n14126), .D(n2426), 
         .Z(n2428_adj_606)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5969_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14094), 
         .D(rom_addr[4]), .Z(n11542)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_607)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12076_3_lut (.A(n14160), .B(n14145), .C(rom_addr[5]), .Z(n12369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12076_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_357 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15330)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_357.init = 16'h1818;
    L6MUX21 i12952 (.D0(n13493), .D1(n13491), .SD(rom_addr[6]), .Z(n13494));
    LUT4 i11302_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2522_adj_608), .Z(n11916)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11302_3_lut_4_lut.init = 16'hf808;
    LUT4 i5757_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[5]), 
         .D(n2522_adj_608), .Z(n6598)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5757_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11280_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2573), .Z(n11894)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11280_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11271_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n14078), .Z(n11885)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11271_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_362 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15335)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_362.init = 16'h1c1c;
    LUT4 i11266_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2298_adj_609), .Z(n11880)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11266_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_610)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n2444_adj_562), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12950 (.BLUT(n1181), .ALUT(n13492), .C0(rom_addr[5]), .Z(n13493));
    LUT4 i11762_3_lut_4_lut (.A(n14013), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_612), .Z(n12376)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11762_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_608)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 n6602_bdd_4_lut (.A(n6602), .B(rom_addr[4]), .C(n13567), .D(rom_addr[0]), 
         .Z(n13911)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n6602_bdd_4_lut.init = 16'hf011;
    LUT4 i11491_3_lut (.A(n12090), .B(n12091), .C(rom_addr[7]), .Z(n12105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11491_3_lut.init = 16'hcaca;
    LUT4 i11289_3_lut_4_lut (.A(rom_addr[0]), .B(n14058), .C(rom_addr[4]), 
         .D(n2588), .Z(n11903)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11289_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11416_3_lut_4_lut (.A(rom_addr[0]), .B(n14058), .C(rom_addr[4]), 
         .D(n1466_adj_613), .Z(n12030)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11416_3_lut_4_lut.init = 16'hf202;
    LUT4 n6345_bdd_4_lut (.A(n14027), .B(n13947), .C(n11564), .D(rom_addr[6]), 
         .Z(n13912)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6345_bdd_4_lut.init = 16'hf088;
    LUT4 i11284_3_lut_4_lut (.A(rom_addr[0]), .B(n14058), .C(rom_addr[4]), 
         .D(n2444_adj_579), .Z(n11898)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11284_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11444 (.BLUT(n190_adj_614), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12058));
    LUT4 n6385_bdd_4_lut_13101 (.A(n13929), .B(rom_addr[6]), .C(rom_addr[0]), 
         .D(n3174), .Z(n13506)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;
    defparam n6385_bdd_4_lut_13101.init = 16'hec20;
    L6MUX21 i11449 (.D0(n829_adj_564), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12063));
    PFUMX i11451 (.BLUT(n11953), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12065));
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14013), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14058), 
         .C(n4880), .D(rom_addr[5]), .Z(n1947_adj_616)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14013), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_617), .Z(n1723_adj_618)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14058), 
         .C(rom_addr[5]), .D(n1786), .Z(n1787)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i7673_2_lut_rep_129_4_lut (.A(n14190), .B(n2621), .C(n14097), 
         .D(n14123), .Z(n13916)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7673_2_lut_rep_129_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14058), 
         .C(rom_addr[5]), .D(n14031), .Z(n1692_adj_619)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 n1243_bdd_4_lut (.A(n14024), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13989), .Z(n13736)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut.init = 16'h3a0a;
    LUT4 i11283_3_lut_4_lut (.A(rom_addr[0]), .B(n14060), .C(rom_addr[4]), 
         .D(n2426), .Z(n11897)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11283_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    L6MUX21 i11452 (.D0(n1213), .D1(n11959), .SD(rom_addr[6]), .Z(n12066));
    PFUMX i11455 (.BLUT(n1597_adj_620), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n12069));
    LUT4 i11275_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14153)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11275_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i11748_3_lut (.A(n301), .B(n604_adj_621), .C(rom_addr[4]), .Z(n12362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11748_3_lut.init = 16'hcaca;
    LUT4 i11490_3_lut (.A(n12088), .B(n13279), .C(rom_addr[7]), .Z(n12104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11490_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14062), 
         .C(rom_addr[4]), .D(n14061), .Z(n2620)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut.init = 16'h5808;
    PFUMX i11457 (.BLUT(n11962), .ALUT(n1915_adj_622), .C0(rom_addr[6]), 
          .Z(n12071));
    LUT4 i4660_2_lut_rep_323 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14110)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4660_2_lut_rep_323.init = 16'h8888;
    LUT4 i11392_3_lut_4_lut (.A(rom_addr[0]), .B(n14062), .C(rom_addr[4]), 
         .D(n890), .Z(n12006)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11392_3_lut_4_lut.init = 16'hf808;
    LUT4 n1293_bdd_3_lut_13072_4_lut (.A(rom_addr[0]), .B(n14062), .C(rom_addr[4]), 
         .D(n14038), .Z(n13353)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1293_bdd_3_lut_13072_4_lut.init = 16'h8f80;
    L6MUX21 i11458 (.D0(n11968), .D1(n11971), .SD(rom_addr[6]), .Z(n12072));
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n14062), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309_adj_623)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf808;
    LUT4 i11278_3_lut_4_lut (.A(rom_addr[0]), .B(n14062), .C(rom_addr[4]), 
         .D(n684), .Z(n11892)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11278_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11741_3_lut_4_lut (.A(rom_addr[0]), .B(n14062), .C(rom_addr[4]), 
         .D(n1002), .Z(n12355)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11741_3_lut_4_lut.init = 16'h8f80;
    LUT4 n205_bdd_3_lut_12729 (.A(n205_adj_571), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n13221)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n205_bdd_3_lut_12729.init = 16'h2020;
    L6MUX21 i11476 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12090));
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14068), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n12852)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    PFUMX i11477 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n12091));
    LUT4 n1962_bdd_3_lut_13135_4_lut (.A(n14035), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13968), .Z(n13552)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1962_bdd_3_lut_13135_4_lut.init = 16'h8f80;
    PFUMX i12494 (.BLUT(n14024), .ALUT(n12852), .C0(n14108), .Z(n12853));
    L6MUX21 i11478 (.D0(n11989), .D1(n11995), .SD(rom_addr[6]), .Z(n12092));
    LUT4 i7587_4_lut (.A(rom_addr[0]), .B(n13976), .C(n13949), .D(rom_addr[4]), 
         .Z(n1117_adj_624)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7587_4_lut.init = 16'h0a22;
    L6MUX21 i11479 (.D0(n11998), .D1(n12004), .SD(rom_addr[6]), .Z(n12093));
    LUT4 rom_addr_2__bdd_4_lut_13619 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14167)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13619.init = 16'h98d1;
    L6MUX21 i11480 (.D0(n829), .D1(n12007), .SD(rom_addr[6]), .Z(n12094));
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n14035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13972), .Z(n1309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13275 (.BLUT(n14143), .ALUT(n14144), .C0(rom_addr[1]), .Z(n14145));
    LUT4 i11991_3_lut (.A(n971), .B(n986_adj_625), .C(rom_addr[4]), .Z(n12354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11991_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n13989), 
         .C(rom_addr[5]), .D(n2205), .Z(n2237_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i11483 (.D0(n12016), .D1(n12022), .SD(rom_addr[6]), .Z(n12097));
    LUT4 i11739_3_lut (.A(n2009_adj_602), .B(n954), .C(rom_addr[4]), .Z(n12353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11739_3_lut.init = 16'hcaca;
    PFUMX i11484 (.BLUT(n12025), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12098));
    LUT4 i11738_3_lut (.A(n908), .B(n205_adj_571), .C(rom_addr[4]), .Z(n12352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11738_3_lut.init = 16'hcaca;
    LUT4 i11499_3_lut (.A(n12106), .B(n12107), .C(rom_addr[8]), .Z(n12113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11499_3_lut.init = 16'hcaca;
    LUT4 i11224_3_lut_4_lut (.A(n14114), .B(n14134), .C(rom_addr[4]), 
         .D(n2040_adj_626), .Z(n11838)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11224_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 i11736_3_lut (.A(n557_adj_627), .B(n428_adj_628), .C(rom_addr[4]), 
         .Z(n12350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11736_3_lut.init = 16'hcaca;
    LUT4 i11735_3_lut (.A(n526_adj_629), .B(n205_adj_571), .C(rom_addr[4]), 
         .Z(n12349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11735_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n14088), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14014), .Z(n270)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_631)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    LUT4 i11265_3_lut_4_lut (.A(rom_addr[1]), .B(n15334), .C(rom_addr[4]), 
         .D(n2267), .Z(n11879)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11265_3_lut_4_lut.init = 16'hf101;
    PFUMX i13320 (.BLUT(n14212), .ALUT(n14213), .C0(rom_addr[1]), .Z(n14214));
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14140), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14018), .Z(n61_adj_632)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    PFUMX i11320 (.BLUT(n428_adj_633), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n11934));
    LUT4 n6385_bdd_3_lut_4_lut_4_lut (.A(n14068), .B(rom_addr[7]), .C(n6293), 
         .D(n13999), .Z(n13684)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n6385_bdd_3_lut_4_lut_4_lut.init = 16'hfc74;
    LUT4 i7662_4_lut (.A(rom_addr[0]), .B(n13997), .C(n14031), .D(rom_addr[4]), 
         .Z(n1085_c)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7662_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14019), 
         .C(rom_addr[4]), .D(n13989), .Z(n1054_adj_634)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 i11996_3_lut (.A(n12017), .B(n12018), .C(rom_addr[4]), .Z(n12019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11996_3_lut.init = 16'hcaca;
    PFUMX i12948 (.BLUT(n13490), .ALUT(n1275_adj_635), .C0(rom_addr[5]), 
          .Z(n13491));
    LUT4 n1739_bdd_4_lut (.A(n2426), .B(n3948), .C(rom_addr[0]), .D(rom_addr[4]), 
         .Z(n13253)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n1739_bdd_4_lut.init = 16'haac0;
    LUT4 i11726_4_lut_4_lut (.A(n14115), .B(rom_addr[4]), .C(n5068), .D(n684_adj_636), 
         .Z(n12340)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11726_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    L6MUX21 i11485 (.D0(n12031), .D1(n1531), .SD(rom_addr[6]), .Z(n12099));
    LUT4 i7585_4_lut (.A(n13985), .B(rom_addr[4]), .C(n14105), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7585_4_lut.init = 16'hc088;
    LUT4 i11350_3_lut (.A(n15333), .B(n14050), .C(rom_addr[3]), .Z(n11964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11350_3_lut.init = 16'hcaca;
    LUT4 n220_bdd_3_lut_12771 (.A(n236), .B(n491), .C(rom_addr[4]), .Z(n13274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n220_bdd_3_lut_12771.init = 16'hcaca;
    LUT4 n1243_bdd_2_lut_4_lut (.A(rom_addr[2]), .B(n14068), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n13735)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_2_lut_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_358 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15331)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_358.init = 16'he8e8;
    LUT4 i11728_4_lut (.A(n15334), .B(n13956), .C(rom_addr[4]), .D(n14093), 
         .Z(n12342)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11728_4_lut.init = 16'hcac0;
    LUT4 n220_bdd_3_lut (.A(n220), .B(n205_adj_571), .C(rom_addr[4]), 
         .Z(n13275)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14013), .Z(n1676_adj_589)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n1243_adj_638)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut.init = 16'h4f40;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[2]), .B(n14110), .C(rom_addr[5]), 
         .D(n14102), .Z(n11564)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i11722_3_lut (.A(n270_adj_6), .B(n428_adj_628), .C(rom_addr[4]), 
         .Z(n12336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11722_3_lut.init = 16'hcaca;
    LUT4 i12161_3_lut (.A(n12336), .B(n14240), .C(rom_addr[5]), .Z(n12338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12161_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_640)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    L6MUX21 i11489 (.D0(n12040), .D1(n12050), .SD(rom_addr[6]), .Z(n12103));
    LUT4 i11718_3_lut (.A(n620_adj_631), .B(n205), .C(rom_addr[4]), .Z(n12332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11718_3_lut.init = 16'hcaca;
    LUT4 i11717_3_lut (.A(n491), .B(n604_adj_598), .C(rom_addr[4]), .Z(n12331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11717_3_lut.init = 16'hcaca;
    PFUMX i11329 (.BLUT(n620), .ALUT(n635), .C0(rom_addr[4]), .Z(n11943));
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14068), 
         .B(rom_addr[5]), .C(n14057), .D(n14090), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_359 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15332)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_359.init = 16'h3838;
    LUT4 i4608_3_lut_4_lut_4_lut (.A(n14068), .B(n13949), .C(rom_addr[5]), 
         .D(n14090), .Z(n5419)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4608_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 n13018_bdd_3_lut (.A(n13018), .B(n2556), .C(rom_addr[7]), .Z(n13019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13018_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 i11715_3_lut (.A(n526), .B(n14005), .C(rom_addr[4]), .Z(n12329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11715_3_lut.init = 16'hcaca;
    L6MUX21 i11506 (.D0(n190), .D1(n12322), .SD(rom_addr[6]), .Z(n12120));
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12937), .B(n3070_adj_555), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12047), .B(n3070_adj_641), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 i11710_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11710_3_lut.init = 16'hcaca;
    PFUMX i11333 (.BLUT(n11945), .ALUT(n11946), .C0(rom_addr[4]), .Z(n11947));
    LUT4 i11749_3_lut_4_lut (.A(n14105), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12363)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11749_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12201), .B(n2685), .C(rom_addr[9]), 
         .D(n14123), .Z(n3070_adj_641)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(n14105), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14003), .Z(n891_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'hf606;
    LUT4 i11709_3_lut (.A(n270_adj_6), .B(n285), .C(rom_addr[4]), .Z(n12323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11709_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2685_3_lut (.A(n12820), .B(n2684), .C(rom_addr[6]), 
         .Z(n2685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2685_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(n14041), .Z(n2684)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i11716_3_lut_4_lut (.A(n14105), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428_adj_642), .Z(n12330)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11716_3_lut_4_lut.init = 16'hf909;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14105), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11658), .Z(n1212_adj_643)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14105), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i11707_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n12321)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11707_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut (.A(rom_addr[0]), .B(n14068), 
         .C(rom_addr[4]), .D(n2108), .Z(n2109_adj_644)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n13927), 
         .C(rom_addr[5]), .D(n1403_adj_645), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    LUT4 i11706_3_lut (.A(n205), .B(n220_adj_646), .C(rom_addr[4]), .Z(n12320)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11706_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12087), .B(n3070_adj_647), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12208), .B(n2685_adj_648), 
         .C(rom_addr[9]), .D(n14123), .Z(n3070_adj_647)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n11977), .B(n14247), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685_adj_648)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12118), .B(n3070_adj_552), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_266_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14053)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_266_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(n15333), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    PFUMX i11319 (.BLUT(n397), .ALUT(n6617), .C0(rom_addr[4]), .Z(n11933));
    LUT4 address_11__I_0_Mux_0_i428_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14007), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(n14025), .D(rom_addr[3]), .Z(n604_adj_649)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'hf077;
    L6MUX21 i11509 (.D0(n12351), .D1(n12364), .SD(rom_addr[6]), .Z(n12123));
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(n13996), .D(rom_addr[3]), .Z(n653)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 n1785_bdd_3_lut_13238_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(n14063), .D(rom_addr[3]), .Z(n13641)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1785_bdd_3_lut_13238_3_lut_4_lut.init = 16'h77f0;
    LUT4 i11689_3_lut (.A(n46_adj_4), .B(n61_adj_575), .C(rom_addr[4]), 
         .Z(n12303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11689_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15335), .Z(n986_adj_625)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14035), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11512 (.D0(n12392), .D1(n12395), .SD(rom_addr[6]), .Z(n12126));
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n2009_adj_602)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11513 (.D0(n12398), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12127));
    LUT4 i12204_3_lut (.A(n2010_adj_581), .B(n14244), .C(rom_addr[5]), 
         .Z(n12298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12204_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14030), .Z(n653_adj_650)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12094_3_lut (.A(n1883_c), .B(n1914_adj_651), .C(rom_addr[5]), 
         .Z(n12296)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12094_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_360 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15333)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_360.init = 16'h8383;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(n14069), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n364)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'hf202;
    LUT4 i11678_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n12292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11678_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n14099), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14007), .Z(n1483)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(n14069), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14057), .Z(n2298_adj_653)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11516 (.D0(n12401), .D1(n12404), .SD(rom_addr[6]), .Z(n12130));
    LUT4 i1_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n4_adj_654)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'ha2a2;
    PFUMX i11517 (.BLUT(n1597_adj_655), .ALUT(n1660_adj_656), .C0(rom_addr[6]), 
          .Z(n12131));
    LUT4 i11674_3_lut (.A(n428_adj_628), .B(n251_adj_599), .C(rom_addr[4]), 
         .Z(n12288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11674_3_lut.init = 16'hcaca;
    LUT4 i11673_3_lut (.A(n205_adj_567), .B(n220_adj_657), .C(rom_addr[4]), 
         .Z(n12287)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11673_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), 
         .C(rom_addr[3]), .D(n708), .Z(n1676_adj_658)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'hf202;
    PFUMX i11518 (.BLUT(n1724), .ALUT(n1787), .C0(rom_addr[6]), .Z(n12132));
    LUT4 n12000_bdd_3_lut (.A(n12000), .B(n11999), .C(rom_addr[4]), .Z(n13321)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n12000_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 i11274_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14176)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11274_3_lut_4_lut_then_4_lut.init = 16'h744c;
    PFUMX i11519 (.BLUT(n1852_adj_660), .ALUT(n1915_adj_661), .C0(rom_addr[6]), 
          .Z(n12133));
    PFUMX i9967 (.BLUT(n10576), .ALUT(n10577), .C0(rom_addr[8]), .Z(n10578));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_589), .B(n1691_adj_662), 
         .C(rom_addr[4]), .Z(n1692_adj_663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 i11331_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), .C(rom_addr[3]), 
         .D(n14080), .Z(n11945)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11331_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11274_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14175)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11274_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), 
         .C(rom_addr[3]), .D(n14035), .Z(n604_adj_621)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX i11565 (.BLUT(n12175), .ALUT(n12176), .C0(rom_addr[6]), .Z(n12179));
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n13998), .Z(n1659_adj_664)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14179)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    PFUMX i11566 (.BLUT(n12177), .ALUT(n12178), .C0(rom_addr[6]), .Z(n12180));
    PFUMX i12922 (.BLUT(n13465), .ALUT(n13462), .C0(rom_addr[6]), .Z(n13466));
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14178)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h2002;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), 
         .C(rom_addr[3]), .D(n15330), .Z(n1435_adj_665)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n14130), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14049), .Z(n1243)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut (.A(n14130), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14063), .Z(n2283)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11263_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), .C(rom_addr[4]), 
         .D(n13946), .Z(n11877)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11263_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), 
         .C(rom_addr[3]), .D(n15335), .Z(n2009_adj_580)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i12100_3_lut (.A(n14170), .B(n125_c), .C(rom_addr[5]), .Z(n12276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12100_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_560), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499_adj_668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    L6MUX21 i11575 (.D0(n11878), .D1(n11881), .SD(rom_addr[6]), .Z(n12189));
    PFUMX i11576 (.BLUT(n2365_adj_669), .ALUT(n11887), .C0(rom_addr[6]), 
          .Z(n12190));
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 i11322_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n11936)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11322_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i11395_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), .C(rom_addr[3]), 
         .D(n13996), .Z(n12009)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11395_3_lut_4_lut.init = 16'hf808;
    PFUMX i11577 (.BLUT(n11890), .ALUT(n6599), .C0(rom_addr[6]), .Z(n12191));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), 
         .C(rom_addr[3]), .D(n15333), .Z(n1707_adj_617)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14182)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    LUT4 n1212_bdd_3_lut_13241_4_lut (.A(rom_addr[0]), .B(n13924), .C(rom_addr[5]), 
         .D(n1212_adj_643), .Z(n13644)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n1212_bdd_3_lut_13241_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14092), 
         .C(rom_addr[3]), .D(n14050), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 i11352_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), .C(rom_addr[4]), 
         .D(n1946_adj_670), .Z(n11966)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11352_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14181)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    LUT4 n12387_bdd_3_lut_13159 (.A(n14237), .B(n13348), .C(rom_addr[5]), 
         .Z(n13349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12387_bdd_3_lut_13159.init = 16'hcaca;
    L6MUX21 i11582 (.D0(n11899), .D1(n11905), .SD(rom_addr[6]), .Z(n12196));
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), 
         .C(rom_addr[3]), .D(n15330), .Z(n589_adj_572)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), 
         .C(rom_addr[3]), .D(n15329), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    PFUMX i11583 (.BLUT(n11908), .ALUT(n2428_adj_606), .C0(rom_addr[6]), 
          .Z(n12197));
    LUT4 i5755_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), .C(rom_addr[3]), 
         .D(n8825), .Z(n6596)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5755_3_lut_4_lut.init = 16'h08f8;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_671), .ALUT(n2555_adj_672), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12920 (.BLUT(n13463), .ALUT(n14049), .C0(rom_addr[4]), .Z(n13464));
    LUT4 rom_addr_1__bdd_4_lut_13383 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14184)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13383.init = 16'h6144;
    LUT4 i11349_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), .C(rom_addr[3]), 
         .D(n14056), .Z(n11963)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11349_3_lut_4_lut.init = 16'hf808;
    LUT4 i11342_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14186)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i11342_then_3_lut.init = 16'h3838;
    L6MUX21 i11584 (.D0(n11914), .D1(n11917), .SD(rom_addr[6]), .Z(n12198));
    LUT4 i11342_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14185)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i11342_else_3_lut.init = 16'h0484;
    LUT4 rom_addr_0__bdd_4_lut_13168 (.A(rom_addr[0]), .B(n5928), .C(n4665), 
         .D(rom_addr[5]), .Z(n13350)) /* synthesis lut_function=(!((B (C+(D))+!B !((D)+!C))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_13168.init = 16'h220a;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), 
         .C(rom_addr[3]), .D(n15333), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11332_3_lut_4_lut (.A(rom_addr[0]), .B(n14134), .C(rom_addr[3]), 
         .D(n14004), .Z(n11946)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11332_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut (.A(n13974), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(n14114), .Z(n2141_adj_594)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut.init = 16'h0aca;
    LUT4 n12385_bdd_3_lut_13483 (.A(n12385), .B(n14193), .C(rom_addr[6]), 
         .Z(n13358)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n12385_bdd_3_lut_13483.init = 16'hacac;
    LUT4 n2174_bdd_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), .C(rom_addr[6]), 
         .D(n13929), .Z(n13020)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam n2174_bdd_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11535)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 n13361_bdd_3_lut (.A(n14221), .B(n14224), .C(rom_addr[6]), .Z(n13362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13361_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n13990), .B(n13957), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 i4899_3_lut_rep_151_4_lut (.A(rom_addr[2]), .B(n14138), .C(rom_addr[4]), 
         .D(n14042), .Z(n13938)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4899_3_lut_rep_151_4_lut.init = 16'h04f4;
    LUT4 i4582_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n5393)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4582_2_lut.init = 16'hbbbb;
    PFUMX i11591 (.BLUT(n2492), .ALUT(n2555_adj_674), .C0(rom_addr[6]), 
          .Z(n12205));
    LUT4 i4923_3_lut_4_lut (.A(rom_addr[2]), .B(n14138), .C(rom_addr[4]), 
         .D(n14061), .Z(n5743)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4923_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7428_2_lut_4_lut (.A(n13968), .B(n13937), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7428_2_lut_4_lut.init = 16'hca00;
    L6MUX21 i11595 (.D0(n12053), .D1(n2173), .SD(rom_addr[6]), .Z(n12209));
    LUT4 i5821_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14189)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5821_4_lut_then_4_lut.init = 16'h0e01;
    LUT4 i5821_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14188)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5821_4_lut_else_4_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut (.A(n15334), .B(n14102), 
         .C(rom_addr[4]), .D(n14063), .Z(n1676_adj_7)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut.init = 16'h8f80;
    LUT4 n1181_bdd_3_lut_13165_4_lut (.A(n15334), .B(n14102), .C(rom_addr[4]), 
         .D(n1196), .Z(n13323)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1181_bdd_3_lut_13165_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14135), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15330), .Z(n1084_adj_676)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_651)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11758_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14192)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B ((D)+!C))+!A)) */ ;
    defparam i11758_then_4_lut.init = 16'h08a0;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n14014), .Z(n1017)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11758_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14191)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam i11758_else_4_lut.init = 16'h2e68;
    PFUMX i11597 (.BLUT(n2365_adj_677), .ALUT(n2428_adj_678), .C0(rom_addr[6]), 
          .Z(n12211));
    LUT4 i7716_4_lut (.A(n11570), .B(rom_addr[6]), .C(n1659_adj_679), 
         .D(rom_addr[5]), .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7716_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14107), 
         .C(rom_addr[3]), .D(n15329), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2556_bdd_4_lut_13059 (.A(n14234), .B(n5732), .C(rom_addr[0]), 
         .D(rom_addr[6]), .Z(n13018)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam n2556_bdd_4_lut_13059.init = 16'h3050;
    PFUMX i11598 (.BLUT(n2492_adj_680), .ALUT(n2555), .C0(rom_addr[6]), 
          .Z(n12212));
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14195)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(n15332), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11602 (.BLUT(n2110), .ALUT(n2173_adj_595), .C0(rom_addr[6]), 
          .Z(n12216));
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14144)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14194)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 n2596_bdd_3_lut_12939_4_lut (.A(rom_addr[0]), .B(n14107), .C(rom_addr[3]), 
         .D(n14046), .Z(n12815)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n2596_bdd_3_lut_12939_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14198)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_then_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13938), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_681)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11603 (.BLUT(n2237_c), .ALUT(n2300_adj_559), .C0(rom_addr[6]), 
          .Z(n12217));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14197)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668), .B(n924_adj_682), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n13938), 
         .C(rom_addr[5]), .D(n2396_adj_607), .Z(n2428_adj_678)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11337_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14050), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14201)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11337_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 i11337_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14050), .C(rom_addr[3]), 
         .Z(n14200)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11337_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n15333), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11877_3_lut (.A(n6621), .B(n891), .C(rom_addr[5]), .Z(n860_adj_561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11877_3_lut.init = 16'hcaca;
    L6MUX21 i11605 (.D0(n11862), .D1(n2555_adj_544), .SD(rom_addr[6]), 
            .Z(n12219));
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n14018), .Z(n428_adj_633)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_684), 
          .C0(n14097), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n14035), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n15329), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 i7381_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7381_2_lut_4_lut.init = 16'hca00;
    LUT4 i7760_4_lut_4_lut (.A(n13944), .B(rom_addr[5]), .C(n5743), .D(rom_addr[0]), 
         .Z(n2492_adj_671)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7760_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(n14014), .D(rom_addr[3]), .Z(n2459)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11401_4_lut (.A(n14113), .B(n14134), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12015)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11401_4_lut.init = 16'hfaca;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n13944), .B(n3274), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_669)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 i11785_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14105), .C(rom_addr[4]), 
         .D(n4768), .Z(n12399)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11785_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(n15333), .D(rom_addr[3]), .Z(n2040_adj_626)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i12069_3_lut (.A(n11870), .B(n11871), .C(rom_addr[5]), .Z(n11872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12069_3_lut.init = 16'hcaca;
    LUT4 n2174_bdd_3_lut (.A(n2174), .B(n13020), .C(rom_addr[7]), .Z(n13021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2174_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(n15330), .D(rom_addr[3]), .Z(n2522_adj_685)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    L6MUX21 i11618 (.D0(n12225), .D1(n12226), .SD(rom_addr[6]), .Z(n12232));
    LUT4 i11323_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), .C(n15329), 
         .D(rom_addr[3]), .Z(n11937)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11323_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11359_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), .C(n14046), 
         .D(rom_addr[3]), .Z(n11973)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11359_3_lut_3_lut_4_lut.init = 16'h11f0;
    L6MUX21 i11619 (.D0(n12227), .D1(n12228), .SD(rom_addr[6]), .Z(n12233));
    L6MUX21 i11620 (.D0(n12229), .D1(n12230), .SD(rom_addr[6]), .Z(n12234));
    PFUMX i11631 (.BLUT(n12241), .ALUT(n12242), .C0(rom_addr[6]), .Z(n12245));
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14030), .Z(n124_adj_686)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    LUT4 n11928_bdd_3_lut_12873 (.A(n908_adj_558), .B(n205_adj_571), .C(rom_addr[4]), 
         .Z(n12849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n11928_bdd_3_lut_12873.init = 16'hcaca;
    LUT4 i4_4_lut (.A(n11688), .B(n11526), .C(rom_addr[0]), .D(rom_addr[7]), 
         .Z(n11527)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i11075_2_lut (.A(rom_addr[5]), .B(rom_addr[6]), .Z(n11688)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11075_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n14053), .B(rom_addr[8]), .C(n14061), .D(rom_addr[4]), 
         .Z(n11526)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h3022;
    LUT4 i12089_3_lut (.A(n14157), .B(n444), .C(rom_addr[5]), .Z(n12314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12089_3_lut.init = 16'hcaca;
    L6MUX21 i11632 (.D0(n12243), .D1(n12244), .SD(rom_addr[6]), .Z(n12246));
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(n14063), .D(rom_addr[3]), .Z(n1435_adj_582)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 n2283_bdd_3_lut_13030 (.A(n2283_adj_605), .B(n2298_adj_653), .C(rom_addr[4]), 
         .Z(n13415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2283_bdd_3_lut_13030.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5068), .B(n15335), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 i12324_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5068)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12324_2_lut.init = 16'h9999;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14035), .B(n13919), .C(rom_addr[5]), 
         .D(n14110), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 n13418_bdd_3_lut (.A(n13418), .B(n13415), .C(rom_addr[5]), .Z(n13419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13418_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n13998), 
         .C(rom_addr[4]), .D(n14038), .Z(n1596_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(n15335), .D(rom_addr[3]), .Z(n2108_adj_687)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i7835_4_lut (.A(n2621_adj_688), .B(n14123), .C(n2684_adj_689), 
         .D(rom_addr[6]), .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7835_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n13962), .Z(n2621_adj_688)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14018), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n15330), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11642 (.D0(n12253), .D1(n12254), .SD(rom_addr[6]), .Z(n12256));
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n14035), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11466_3_lut (.A(n12071), .B(n12072), .C(rom_addr[7]), .Z(n12080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11466_3_lut.init = 16'hcaca;
    PFUMX i13318 (.BLUT(n14209), .ALUT(n14210), .C0(rom_addr[1]), .Z(n14211));
    L6MUX21 i11648 (.D0(n12258), .D1(n12259), .SD(rom_addr[6]), .Z(n12262));
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n15331), .Z(n1691_adj_662)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n2380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11465_3_lut (.A(n12069), .B(n13257), .C(rom_addr[7]), .Z(n12079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11465_3_lut.init = 16'hcaca;
    L6MUX21 i11649 (.D0(n12260), .D1(n12261), .SD(rom_addr[6]), .Z(n12263));
    LUT4 i12882_then_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14210)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i12882_then_4_lut.init = 16'he010;
    LUT4 i11495_3_lut (.A(n12098), .B(n12099), .C(rom_addr[7]), .Z(n12109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11495_3_lut.init = 16'hcaca;
    LUT4 i11496_3_lut (.A(n12100), .B(n13306), .C(rom_addr[7]), .Z(n12110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11496_3_lut.init = 16'hcaca;
    PFUMX i11651 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12265));
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(n14102), .B(rom_addr[2]), 
         .C(n14025), .D(rom_addr[3]), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i12882_else_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14209)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i12882_else_4_lut.init = 16'h0032;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n14004), .Z(n1466_adj_613)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 i11670_3_lut (.A(n13573), .B(n12283), .C(rom_addr[7]), .Z(n1789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11670_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), 
         .C(rom_addr[4]), .D(n124_adj_691), .Z(n125_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11659 (.D0(n12270), .D1(n12271), .SD(rom_addr[6]), .Z(n12273));
    LUT4 i11446_3_lut (.A(n11935), .B(n508_adj_692), .C(rom_addr[6]), 
         .Z(n12060)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11446_3_lut.init = 16'hcaca;
    PFUMX i11663 (.BLUT(n12275), .ALUT(n12276), .C0(rom_addr[6]), .Z(n12277));
    LUT4 i4569_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n14213)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4569_3_lut_4_lut_then_4_lut.init = 16'h7fff;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n14187), .B(n507_adj_601), 
         .C(rom_addr[5]), .Z(n508_adj_692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n15329), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 rom_addr_6__bdd_3_lut_13104_4_lut (.A(n15329), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13950), .Z(n13635)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_3_lut_13104_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n13996), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 i11447_3_lut (.A(n11941), .B(n11944), .C(rom_addr[6]), .Z(n12061)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11447_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n14102), .B(n14078), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_693)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14105), 
         .C(rom_addr[3]), .D(n15332), .Z(n2283_adj_604)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11669 (.D0(n12280), .D1(n12281), .SD(rom_addr[6]), .Z(n12283));
    L6MUX21 i11677 (.D0(n12289), .D1(n12290), .SD(rom_addr[6]), .Z(n12291));
    LUT4 i11792_3_lut_4_lut (.A(n14102), .B(n14078), .C(rom_addr[4]), 
         .D(n2040), .Z(n12406)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11792_3_lut_4_lut.init = 16'hf404;
    LUT4 i4569_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n14212)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4569_3_lut_4_lut_else_4_lut.init = 16'hfffe;
    LUT4 i11881_3_lut (.A(n1038_adj_694), .B(n1053), .C(rom_addr[4]), 
         .Z(n12011)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11881_3_lut.init = 16'hcaca;
    PFUMX i11685 (.BLUT(n12295), .ALUT(n12296), .C0(rom_addr[6]), .Z(n12299));
    LUT4 i7380_4_lut (.A(rom_addr[0]), .B(n2944), .C(n13685), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7380_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), 
         .C(rom_addr[4]), .D(n13958), .Z(n1786_adj_695)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i7405_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13958)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i7405_2_lut_rep_171_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i12891 (.BLUT(n2237_adj_696), .ALUT(n13419), .C0(rom_addr[6]), 
          .Z(n13420));
    LUT4 i12386_2_lut_rep_281 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14068)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12386_2_lut_rep_281.init = 16'h1111;
    LUT4 i7654_2_lut_rep_181_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13968)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7654_2_lut_rep_181_3_lut_4_lut.init = 16'h0010;
    LUT4 i12123_3_lut (.A(n14228), .B(n14256), .C(rom_addr[5]), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12123_3_lut.init = 16'hcaca;
    LUT4 n13409_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13944), .C(rom_addr[5]), 
         .D(n14211), .Z(n13410)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n13409_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491_adj_697), 
         .C(rom_addr[5]), .Z(n2492_adj_680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i11621_3_lut (.A(n13466), .B(n12232), .C(rom_addr[7]), .Z(n12235)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11621_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n11548), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12889 (.BLUT(n13417), .ALUT(n13416), .C0(rom_addr[4]), .Z(n13418));
    LUT4 i12127_3_lut (.A(n12292), .B(n14231), .C(rom_addr[5]), .Z(n2365_adj_677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12127_3_lut.init = 16'hcaca;
    LUT4 i11607_3_lut (.A(n12218), .B(n12219), .C(rom_addr[7]), .Z(n12221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11607_3_lut.init = 16'hcaca;
    LUT4 n5419_bdd_4_lut (.A(n5419), .B(rom_addr[0]), .C(n5414), .D(n14096), 
         .Z(n12848)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B ((D)+!C)))) */ ;
    defparam n5419_bdd_4_lut.init = 16'h440c;
    LUT4 i11604_3_lut (.A(n11853), .B(n2427), .C(rom_addr[6]), .Z(n12218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11604_3_lut.init = 16'hcaca;
    LUT4 i12266_4_lut (.A(n2573_adj_640), .B(n15327), .C(rom_addr[6]), 
         .D(n14096), .Z(n2685_adj_698)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12266_4_lut.init = 16'hccca;
    LUT4 i11599_3_lut (.A(n12209), .B(n13420), .C(rom_addr[7]), .Z(n12213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11599_3_lut.init = 16'hcaca;
    LUT4 i7495_4_lut (.A(rom_addr[0]), .B(n14060), .C(n14042), .D(n6810), 
         .Z(n2237_adj_696)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7495_4_lut.init = 16'h0a88;
    LUT4 i5960_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6810)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5960_2_lut.init = 16'heeee;
    LUT4 i12420_2_lut_rep_148_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13935)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12420_2_lut_rep_148_3_lut_4_lut.init = 16'h0001;
    LUT4 i11578_3_lut (.A(n12188), .B(n12189), .C(rom_addr[7]), .Z(n12192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11578_3_lut.init = 16'hcaca;
    LUT4 n12850_bdd_3_lut (.A(n12850), .B(n12848), .C(rom_addr[6]), .Z(n12851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12850_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i11696 (.D0(n12308), .D1(n12309), .SD(rom_addr[6]), .Z(n12310));
    PFUMX i11702 (.BLUT(n12314), .ALUT(n12315), .C0(rom_addr[6]), .Z(n12316));
    LUT4 i1_2_lut_rep_189_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13976)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_189_3_lut.init = 16'hfefe;
    LUT4 i12407_2_lut_rep_275_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14062)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12407_2_lut_rep_275_3_lut.init = 16'h1010;
    LUT4 i11589_3_lut (.A(n2237_adj_696), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12203)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11589_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n13970), .B(n14014), .C(rom_addr[5]), 
         .D(n14020), .Z(n2555_adj_672)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    LUT4 n13464_bdd_3_lut_13767 (.A(n13464), .B(n2109), .C(rom_addr[5]), 
         .Z(n13465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13464_bdd_3_lut_13767.init = 16'hcaca;
    L6MUX21 i11704 (.D0(n11884), .D1(n11893), .SD(rom_addr[6]), .Z(n12318));
    L6MUX21 i11721 (.D0(n12333), .D1(n12334), .SD(rom_addr[6]), .Z(n12335));
    L6MUX21 i11731 (.D0(n12343), .D1(n12344), .SD(rom_addr[6]), .Z(n12345));
    L6MUX21 i11734 (.D0(n12346), .D1(n12347), .SD(rom_addr[6]), .Z(n12348));
    L6MUX21 i11744 (.D0(n12356), .D1(n12357), .SD(rom_addr[6]), .Z(n12358));
    PFUMX i11396 (.BLUT(n12008), .ALUT(n12009), .C0(rom_addr[4]), .Z(n12010));
    LUT4 i12136_3_lut (.A(n14253), .B(n14151), .C(rom_addr[5]), .Z(n11908)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12136_3_lut.init = 16'hcaca;
    PFUMX i11745 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), .Z(n12359));
    PFUMX i12578 (.BLUT(n13021), .ALUT(n13019), .C0(rom_addr[8]), .Z(n13022));
    LUT4 i11481_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n8357), 
         .Z(n12095)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11481_4_lut.init = 16'hca0a;
    LUT4 i7623_2_lut_rep_216_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14003)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7623_2_lut_rep_216_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n15329), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_565), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 i12141_3_lut (.A(n14177), .B(n14154), .C(rom_addr[5]), .Z(n11890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12141_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_205_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n13992)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_rep_205_4_lut.init = 16'heffe;
    PFUMX i11756 (.BLUT(n12368), .ALUT(n12369), .C0(rom_addr[6]), .Z(n12370));
    LUT4 i11568_4_lut (.A(n14135), .B(n11570), .C(rom_addr[5]), .D(n13939), 
         .Z(n12182)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11568_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14143)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549_adj_600), .ALUT(n1564), 
          .C0(rom_addr[4]), .Z(n1565)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11564_4_lut (.A(n13961), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12178)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11564_4_lut.init = 16'haaca;
    LUT4 i11563_3_lut (.A(n1914_adj_576), .B(n13918), .C(rom_addr[5]), 
         .Z(n12177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11563_3_lut.init = 16'hcaca;
    LUT4 i12457_2_lut_rep_163_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13950)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12457_2_lut_rep_163_2_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n13944), 
         .C(n13928), .D(rom_addr[6]), .Z(n2110_adj_684)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    L6MUX21 i11227 (.D0(n11839), .D1(n11840), .SD(rom_addr[6]), .Z(n11841));
    L6MUX21 i11228 (.D0(n11902), .D1(n11911), .SD(rom_addr[6]), .Z(n11842));
    LUT4 i1_4_lut_adj_18 (.A(n13927), .B(rom_addr[7]), .C(n6411), .D(rom_addr[5]), 
         .Z(n10577)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hcfee;
    LUT4 rom_addr_6__bdd_3_lut_12926_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14220)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;
    defparam rom_addr_6__bdd_3_lut_12926_then_4_lut.init = 16'h4808;
    L6MUX21 i11766 (.D0(n12378), .D1(n12379), .SD(rom_addr[6]), .Z(n12380));
    L6MUX21 i11769 (.D0(n12381), .D1(n12382), .SD(rom_addr[6]), .Z(n12383));
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n14135), .B(n13961), .C(rom_addr[4]), 
         .D(n14078), .Z(n1403_adj_645)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_701), .B(n1786), 
         .C(rom_addr[5]), .Z(n1915_adj_661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7565_4_lut (.A(rom_addr[0]), .B(n14031), .C(n5934), .D(rom_addr[5]), 
         .Z(n1852_adj_660)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7565_4_lut.init = 16'ha022;
    LUT4 i7633_2_lut_rep_139_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14090), .D(rom_addr[0]), .Z(n13926)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7633_2_lut_rep_139_3_lut_3_lut_4_lut.init = 16'h0100;
    PFUMX i11351 (.BLUT(n11963), .ALUT(n11964), .C0(rom_addr[4]), .Z(n11965));
    LUT4 i11703_4_lut (.A(n11875), .B(n380_adj_702), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12317)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11703_4_lut.init = 16'hca0a;
    PFUMX i11574 (.BLUT(n11872), .ALUT(n2173_adj_703), .C0(rom_addr[6]), 
          .Z(n12188));
    PFUMX i12884 (.BLUT(n13410), .ALUT(n13915), .C0(rom_addr[6]), .Z(n13411));
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14069), .B(n13966), .C(rom_addr[4]), 
         .D(n14119), .Z(n380_adj_702)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i11561_3_lut_4_lut (.A(rom_addr[0]), .B(n13944), .C(rom_addr[5]), 
         .D(n1851_adj_8), .Z(n12175)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11561_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n15329), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14034), .Z(n2205_adj_705)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11048_3_lut_4_lut (.A(n15333), .B(rom_addr[3]), .C(n14086), 
         .D(n1676), .Z(n6655)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11048_3_lut_4_lut.init = 16'hefe0;
    LUT4 i12428_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n11754)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12428_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut_adj_19 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n11610)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i1_2_lut_rep_254_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n14041)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_254_3_lut.init = 16'hfefe;
    LUT4 i11407_4_lut (.A(n13968), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12021)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11407_4_lut.init = 16'hca0a;
    L6MUX21 i11505 (.D0(n12304), .D1(n12313), .SD(rom_addr[6]), .Z(n12119));
    L6MUX21 i11474 (.D0(n63), .D1(n11980), .SD(rom_addr[6]), .Z(n12088));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_616), 
          .C0(n14096), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15345), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445_adj_707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14090), .D(rom_addr[5]), .Z(n6293)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'hfffe;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    LUT4 i7817_4_lut (.A(n11896), .B(n14123), .C(n2684_adj_689), .D(rom_addr[6]), 
         .Z(n3069_adj_554)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7817_4_lut.init = 16'hc088;
    LUT4 i7675_2_lut_rep_187_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13974)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7675_2_lut_rep_187_3_lut_4_lut.init = 16'h1000;
    LUT4 i12221_3_lut (.A(n445_adj_707), .B(n12338), .C(rom_addr[6]), 
         .Z(n12122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12221_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n11535), .D(rom_addr[2]), .Z(n11539)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h1000;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15333), .B(n14004), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 i11580_3_lut (.A(n12192), .B(n12193), .C(rom_addr[8]), .Z(n12194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11580_3_lut.init = 16'hcaca;
    LUT4 i5829_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6632)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5829_2_lut.init = 16'h6666;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_708), .ALUT(n1883_adj_709), 
          .C0(n14096), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11275_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14152)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11275_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i12024_3_lut (.A(n11936), .B(n11937), .C(rom_addr[4]), .Z(n11938)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12024_3_lut.init = 16'hcaca;
    LUT4 i2649_3_lut_4_lut (.A(n14022), .B(n13999), .C(rom_addr[6]), .D(n3451), 
         .Z(n3460)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2649_3_lut_4_lut.init = 16'hefe0;
    LUT4 i12318_2_lut_rep_282 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14069)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12318_2_lut_rep_282.init = 16'h9999;
    LUT4 n1340_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14029), .C(rom_addr[4]), 
         .D(n14019), .Z(n13550)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596), .C0(n11763), 
          .Z(n1597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12168_3_lut (.A(n12023), .B(n12024), .C(rom_addr[5]), .Z(n12025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12168_3_lut.init = 16'hcaca;
    LUT4 i11938_3_lut (.A(n14184), .B(n635_adj_711), .C(rom_addr[4]), 
         .Z(n11910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11938_3_lut.init = 16'hcaca;
    LUT4 n2286_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684_adj_636)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2286_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_638), .B(n1228), .C(rom_addr[4]), 
         .Z(n13490)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4_adj_9)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut.init = 16'h9090;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_713), .ALUT(n1117_adj_714), 
          .C0(n14096), .Z(n1149_adj_588)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2198_3_lut_4_lut (.A(rom_addr[5]), .B(n13952), .C(rom_addr[6]), 
         .D(n6293), .Z(n3009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2198_3_lut_4_lut.init = 16'h7f70;
    LUT4 i11601_3_lut (.A(n12213), .B(n12214), .C(rom_addr[8]), .Z(n12215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11601_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_681), 
          .C0(n14096), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7670_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n14110), 
         .D(rom_addr[2]), .Z(n125_adj_715)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7670_2_lut_3_lut_4_lut.init = 16'h9000;
    LUT4 i12038_3_lut (.A(n14241), .B(n2298_adj_569), .C(rom_addr[4]), 
         .Z(n2299_adj_716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12038_3_lut.init = 16'hcaca;
    L6MUX21 i12880 (.D0(n13406), .D1(n13404), .SD(rom_addr[5]), .Z(n13407));
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(rom_addr[0]), .B(n13952), 
         .C(rom_addr[5]), .D(n14180), .Z(n2173_adj_703)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348_adj_578), .ALUT(n2364), 
          .C0(n14109), .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n14166), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(rom_addr[0]), .B(n13952), 
         .C(rom_addr[5]), .D(n14173), .Z(n2173_adj_718)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11760_3_lut_4_lut (.A(rom_addr[0]), .B(n14029), .C(rom_addr[4]), 
         .D(n1435_adj_582), .Z(n12374)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11760_3_lut_4_lut.init = 16'hf101;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n11763), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12878 (.BLUT(n13405), .ALUT(n14107), .C0(rom_addr[3]), .Z(n13406));
    LUT4 i11290_3_lut (.A(n2283_adj_604), .B(n2298_adj_653), .C(rom_addr[4]), 
         .Z(n11904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11290_3_lut.init = 16'hcaca;
    PFUMX i13312 (.BLUT(n14200), .ALUT(n14201), .C0(n14135), .Z(n14202));
    LUT4 i12180_3_lut (.A(n11960), .B(n14250), .C(rom_addr[5]), .Z(n11962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12180_3_lut.init = 16'hcaca;
    LUT4 i11661_3_lut_4_lut (.A(rom_addr[1]), .B(n13953), .C(rom_addr[5]), 
         .D(n62_c), .Z(n12275)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11661_3_lut_4_lut.init = 16'hf202;
    LUT4 rom_addr_6__bdd_3_lut_12926_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14219)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam rom_addr_6__bdd_3_lut_12926_else_4_lut.init = 16'h2622;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428_adj_642)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 n2109_bdd_4_lut_13153_4_lut (.A(n14105), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n6686), .Z(n13355)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam n2109_bdd_4_lut_13153_4_lut.init = 16'h4474;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565), .B(n1596_c), .C(rom_addr[5]), 
         .Z(n1597_adj_620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i12185_3_lut (.A(n14202), .B(n13135), .C(rom_addr[5]), .Z(n11953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12185_3_lut.init = 16'hcaca;
    PFUMX i12876 (.BLUT(n14003), .ALUT(n13402), .C0(rom_addr[4]), .Z(n13404));
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n11947), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i11608_3_lut (.A(n12220), .B(n12221), .C(rom_addr[8]), .Z(n12222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11608_3_lut.init = 16'hcaca;
    LUT4 i7461_4_lut (.A(rom_addr[0]), .B(n13942), .C(n13992), .D(rom_addr[5]), 
         .Z(n190_adj_614)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7461_4_lut.init = 16'h0a22;
    PFUMX i13310 (.BLUT(n14197), .ALUT(n14198), .C0(rom_addr[4]), .Z(n924_adj_682));
    LUT4 i4890_2_lut_rep_210_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13997)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4890_2_lut_rep_210_3_lut.init = 16'hf9f9;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n13492)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n14096), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i5819_4_lut_4_lut (.A(n14105), .B(rom_addr[3]), .C(n14014), .D(n11664), 
         .Z(n6660)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5819_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11272_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14147)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i11272_3_lut_then_4_lut.init = 16'hccc4;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_566), .ALUT(n380_adj_10), 
          .C0(n14109), .Z(n381_adj_577)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12252_3_lut (.A(n13223), .B(n12851), .C(rom_addr[7]), .Z(n12034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12252_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3336), .Z(n10460)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_632), .ALUT(n62_adj_11), 
          .C0(n11763), .Z(n63_adj_603)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7433_4_lut (.A(rom_addr[0]), .B(n5993), .C(n13920), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7433_4_lut.init = 16'h0a22;
    LUT4 i11272_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14146)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i11272_3_lut_else_4_lut.init = 16'h0103;
    PFUMX i13308 (.BLUT(n14194), .ALUT(n14195), .C0(rom_addr[2]), .Z(n14196));
    LUT4 n4264_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13134)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n4264_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 i12242_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12242_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_628), .B(n684), .C(rom_addr[4]), 
         .Z(n444_adj_706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i11754_3_lut_4_lut (.A(rom_addr[0]), .B(n13927), .C(rom_addr[5]), 
         .D(n1309_adj_623), .Z(n12368)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11754_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n14089), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11380_3_lut (.A(n475), .B(n205_adj_571), .C(rom_addr[4]), .Z(n11994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11380_3_lut.init = 16'hcaca;
    LUT4 i11229_4_lut (.A(n11920), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14214), 
         .Z(n11843)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11229_4_lut.init = 16'h0aca;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n14089), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i5105_4_lut (.A(n14078), .B(n14031), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n5934)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5105_4_lut.init = 16'h3530;
    LUT4 i11691_4_lut (.A(n14196), .B(n126_adj_724), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12305)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11691_4_lut.init = 16'hcac0;
    LUT4 i11705_3_lut (.A(n12317), .B(n12318), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11705_3_lut.init = 16'hcaca;
    LUT4 i11683_3_lut (.A(n14183), .B(n1978), .C(rom_addr[5]), .Z(n12297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11683_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237), .ALUT(n2300), .C0(rom_addr[6]), 
          .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11434_4_lut (.A(n14038), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4441), 
         .Z(n12048)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11434_4_lut.init = 16'h0aca;
    LUT4 i7599_2_lut_rep_291 (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n14078)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7599_2_lut_rep_291.init = 16'h8888;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_714)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    PFUMX i13306 (.BLUT(n14191), .ALUT(n14192), .C0(rom_addr[3]), .Z(n14193));
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n13976), 
         .C(rom_addr[4]), .D(n1435_adj_665), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 i11262_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(n1691), .Z(n11876)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11262_3_lut_4_lut.init = 16'hf808;
    LUT4 i12213_3_lut (.A(n13407), .B(n2173_adj_718), .C(rom_addr[6]), 
         .Z(n12202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12213_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(n2444_adj_579), .Z(n2268_adj_728)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i11623_3_lut (.A(n12235), .B(n12236), .C(rom_addr[8]), .Z(n12237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11623_3_lut.init = 16'hcaca;
    LUT4 i11437_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(n1211), .Z(n12051)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11437_3_lut_4_lut.init = 16'hf808;
    LUT4 i11593_3_lut (.A(n12204), .B(n12205), .C(rom_addr[7]), .Z(n12207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11593_3_lut.init = 16'hcaca;
    LUT4 i11424_4_lut (.A(n6632), .B(n13971), .C(rom_addr[4]), .D(n14134), 
         .Z(n12038)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11424_4_lut.init = 16'hcac0;
    LUT4 i7680_2_lut_rep_247_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14034)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i7680_2_lut_rep_247_3_lut_4_lut.init = 16'h8008;
    PFUMX i11439 (.BLUT(n12051), .ALUT(n12052), .C0(rom_addr[5]), .Z(n12053));
    LUT4 i7737_2_lut_rep_246_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14033)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7737_2_lut_rep_246_3_lut.init = 16'h8080;
    LUT4 i11507_3_lut (.A(n12325), .B(n13795), .C(rom_addr[6]), .Z(n12121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11507_3_lut.init = 16'hcaca;
    PFUMX i13304 (.BLUT(n14188), .ALUT(n14189), .C0(rom_addr[0]), .Z(n14190));
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283), .B(n2490), .C(rom_addr[4]), 
         .Z(n2491_adj_697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i3478_3_lut_rep_293 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3478_3_lut_rep_293.init = 16'hcaca;
    LUT4 i11293_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14150)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11293_3_lut_4_lut_then_4_lut.init = 16'h0401;
    PFUMX i2256 (.BLUT(n6404), .ALUT(n3066), .C0(rom_addr[6]), .Z(n3067));
    LUT4 i12270_3_lut (.A(n12202), .B(n12203), .C(rom_addr[7]), .Z(n12206)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12270_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n14030), .B(n5068), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220_adj_657)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i11554_3_lut (.A(n1789_adj_597), .B(n2044_adj_593), .C(rom_addr[8]), 
         .Z(n12168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11554_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924_adj_682), .B(n955), .C(rom_addr[5]), 
         .Z(n956_adj_583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    LUT4 i7340_2_lut_rep_299 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n14086)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7340_2_lut_rep_299.init = 16'heeee;
    LUT4 i12276_3_lut (.A(n12150), .B(n12151), .C(rom_addr[8]), .Z(n12158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12276_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14105), .B(rom_addr[4]), 
         .C(n14024), .D(n11654), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11541_3_lut (.A(n12370), .B(n12380), .C(rom_addr[7]), .Z(n12155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11541_3_lut.init = 16'hcaca;
    LUT4 i5842_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n6686)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i5842_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i11540_3_lut (.A(n12361), .B(n13645), .C(rom_addr[7]), .Z(n12154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11540_3_lut.init = 16'hcaca;
    LUT4 i11529_3_lut (.A(n12135), .B(n12136), .C(rom_addr[8]), .Z(n12143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11529_3_lut.init = 16'hcaca;
    LUT4 i11528_3_lut (.A(n12133), .B(n12134), .C(rom_addr[7]), .Z(n12142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11528_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14014), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_685), .Z(n2523_adj_729)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 i12364_2_lut_rep_301 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14088)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12364_2_lut_rep_301.init = 16'h7777;
    LUT4 i11526_3_lut (.A(n13095), .B(n12130), .C(rom_addr[7]), .Z(n12140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11526_3_lut.init = 16'hcaca;
    LUT4 i11525_3_lut (.A(n12127), .B(n13325), .C(rom_addr[7]), .Z(n12139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11525_3_lut.init = 16'hcaca;
    LUT4 n2552_bdd_2_lut_13114_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13023)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_13114_3_lut_4_lut.init = 16'h0007;
    LUT4 i11532_3_lut (.A(n12141), .B(n12142), .C(rom_addr[8]), .Z(n12146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11532_3_lut.init = 16'hcaca;
    LUT4 i12282_3_lut (.A(n12104), .B(n12105), .C(rom_addr[8]), .Z(n12112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12282_3_lut.init = 16'hcaca;
    LUT4 n915_bdd_3_lut_13123_4_lut (.A(rom_addr[0]), .B(n14107), .C(rom_addr[3]), 
         .D(n14056), .Z(n13402)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_3_lut_13123_4_lut.init = 16'hf404;
    LUT4 i12437_2_lut_rep_302 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14089)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12437_2_lut_rep_302.init = 16'hdddd;
    LUT4 i12417_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11758)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12417_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i13302 (.BLUT(n14185), .ALUT(n14186), .C0(rom_addr[1]), .Z(n14187));
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14004), .B(n14050), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_303 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14090)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_303.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14107), 
         .C(rom_addr[3]), .D(n14035), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 i11464_3_lut (.A(n13077), .B(n12068), .C(rom_addr[7]), .Z(n12078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11464_3_lut.init = 16'hcaca;
    LUT4 i11463_3_lut (.A(n12065), .B(n12066), .C(rom_addr[7]), .Z(n12077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11463_3_lut.init = 16'hcaca;
    PFUMX i11611 (.BLUT(n2205_adj_705), .ALUT(n2236), .C0(rom_addr[5]), 
          .Z(n12225));
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283), .B(n2298_adj_653), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i7497_4_lut (.A(rom_addr[0]), .B(n14005), .C(n14058), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7497_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14033), .B(n15331), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_730)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i11462_3_lut (.A(n12063), .B(n12064), .C(rom_addr[7]), .Z(n12076)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11462_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_157_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13944)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_2_lut_rep_157_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i11461_3_lut (.A(n12061), .B(n12062), .C(rom_addr[7]), .Z(n12075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11461_3_lut.init = 16'hcaca;
    PFUMX i11612 (.BLUT(n2268_adj_728), .ALUT(n2299_adj_716), .C0(rom_addr[5]), 
          .Z(n12226));
    LUT4 i7501_4_lut (.A(rom_addr[0]), .B(n13976), .C(n4441), .D(rom_addr[4]), 
         .Z(n2523_adj_731)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7501_4_lut.init = 16'h0a22;
    LUT4 i12130_3_lut (.A(n2523_adj_731), .B(n2554_adj_730), .C(rom_addr[5]), 
         .Z(n2555_adj_674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12130_3_lut.init = 16'hcaca;
    LUT4 i11460_3_lut (.A(n12059), .B(n12060), .C(rom_addr[7]), .Z(n12074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11460_3_lut.init = 16'hcaca;
    LUT4 i11459_3_lut (.A(n12057), .B(n12058), .C(rom_addr[7]), .Z(n12073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11459_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n14107), 
         .C(rom_addr[3]), .D(n14004), .Z(n684)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    PFUMX i11613 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12227));
    LUT4 i11890_3_lut (.A(n844), .B(n859), .C(rom_addr[4]), .Z(n12005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11890_3_lut.init = 16'hcaca;
    LUT4 i12288_3_lut (.A(n1278), .B(n1533), .C(rom_addr[8]), .Z(n12043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12288_3_lut.init = 16'hcaca;
    LUT4 i11428_3_lut (.A(n766), .B(n1021), .C(rom_addr[8]), .Z(n12042)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11428_3_lut.init = 16'hcaca;
    LUT4 i11892_3_lut (.A(n11972), .B(n11973), .C(rom_addr[4]), .Z(n11974)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11892_3_lut.init = 16'hcaca;
    LUT4 i12292_3_lut (.A(n12139), .B(n12140), .C(rom_addr[8]), .Z(n12145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12292_3_lut.init = 16'hcaca;
    LUT4 i7481_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14105), .Z(n1181_c)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i7481_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    PFUMX i12843 (.BLUT(n13362), .ALUT(n13358), .C0(rom_addr[5]), .Z(n13363));
    LUT4 i11501_3_lut (.A(n12110), .B(n12111), .C(rom_addr[8]), .Z(n12115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11501_3_lut.init = 16'hcaca;
    LUT4 i11500_3_lut (.A(n12108), .B(n12109), .C(rom_addr[8]), .Z(n12114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11500_3_lut.init = 16'hcaca;
    LUT4 i11930_3_lut_4_lut (.A(rom_addr[0]), .B(n14031), .C(rom_addr[4]), 
         .D(n270_c), .Z(n11930)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11930_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11614 (.BLUT(n6660), .ALUT(n2427_adj_673), .C0(rom_addr[5]), 
          .Z(n12228));
    LUT4 i5849_2_lut_rep_305 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14092)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5849_2_lut_rep_305.init = 16'h6666;
    PFUMX i11615 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12229));
    LUT4 i11388_3_lut (.A(n1101), .B(n731_adj_556), .C(rom_addr[4]), .Z(n12002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11388_3_lut.init = 16'hcaca;
    PFUMX i11616 (.BLUT(n2523_adj_729), .ALUT(n2554_adj_610), .C0(rom_addr[5]), 
          .Z(n12230));
    LUT4 i7408_2_lut_rep_173_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13960)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7408_2_lut_rep_173_3_lut_4_lut.init = 16'hf9f0;
    L6MUX21 i12839 (.D0(n13356), .D1(n13354), .SD(rom_addr[6]), .Z(n13357));
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), 
         .Z(n476_adj_733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12174_3_lut (.A(n476_adj_733), .B(n14163), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12174_3_lut.init = 16'hcaca;
    LUT4 i11383_3_lut (.A(n684_adj_636), .B(n699), .C(rom_addr[4]), .Z(n11997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11383_3_lut.init = 16'hcaca;
    PFUMX i11629 (.BLUT(n1436), .ALUT(n1467_adj_735), .C0(rom_addr[5]), 
          .Z(n12243));
    PFUMX i12837 (.BLUT(n13355), .ALUT(n2109_adj_644), .C0(rom_addr[5]), 
          .Z(n13356));
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n14063), .B(n14088), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466_adj_591)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    LUT4 i11898_3_lut (.A(n589), .B(n604_adj_736), .C(rom_addr[4]), .Z(n11993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11898_3_lut.init = 16'hcaca;
    LUT4 i11557_3_lut (.A(n12169), .B(n12170), .C(rom_addr[10]), .Z(n12171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11557_3_lut.init = 16'hcaca;
    LUT4 i7818_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n13959), .D(rom_addr[2]), .Z(n2684_adj_689)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7818_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_627)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    PFUMX i12835 (.BLUT(n13353), .ALUT(n13352), .C0(rom_addr[5]), .Z(n13354));
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14132), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_701)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14132), 
         .C(rom_addr[4]), .D(n526_adj_737), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    PFUMX i11630 (.BLUT(n1499), .ALUT(n1530_adj_586), .C0(rom_addr[5]), 
          .Z(n12244));
    LUT4 i7637_2_lut_rep_276_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14063)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7637_2_lut_rep_276_3_lut.init = 16'h1010;
    LUT4 i3646_2_lut_rep_273_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14060)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3646_2_lut_rep_273_3_lut.init = 16'h6060;
    LUT4 n13510_bdd_3_lut (.A(n13510), .B(n13507), .C(rom_addr[4]), .Z(n13511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13510_bdd_3_lut.init = 16'hcaca;
    LUT4 n1340_bdd_3_lut_12786_4_lut_4_lut (.A(rom_addr[0]), .B(n2573), 
         .C(rom_addr[4]), .D(n14016), .Z(n13093)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1340_bdd_3_lut_12786_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n6593), 
         .C(rom_addr[4]), .D(n14011), .Z(n1467_adj_735)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14063), 
         .C(rom_addr[3]), .D(n14134), .Z(n379)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12841_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14223)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i12841_then_4_lut.init = 16'h272b;
    LUT4 i11550_3_lut (.A(n12162), .B(n12163), .C(rom_addr[10]), .Z(n12164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11550_3_lut.init = 16'hcaca;
    LUT4 i5769_2_lut_rep_244_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14031)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5769_2_lut_rep_244_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2025_3_lut_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 rom_addr_6__bdd_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13509)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam rom_addr_6__bdd_2_lut_3_lut_4_lut.init = 16'hf0e1;
    LUT4 i11374_3_lut (.A(n557_adj_738), .B(n526_adj_737), .C(rom_addr[4]), 
         .Z(n11988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11374_3_lut.init = 16'hcaca;
    LUT4 i5758_3_lut_4_lut (.A(n14014), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6598), .Z(n6599)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5758_3_lut_4_lut.init = 16'hf808;
    LUT4 i3675_3_lut_rep_218_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14005)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i3675_3_lut_rep_218_4_lut_3_lut.init = 16'h9e9e;
    PFUMX i11639 (.BLUT(n1692), .ALUT(n1723_adj_618), .C0(rom_addr[5]), 
          .Z(n12253));
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15333), 
         .C(rom_addr[3]), .D(n14134), .Z(n1435)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i12492 (.BLUT(n12849), .ALUT(n11928), .C0(rom_addr[5]), .Z(n12850));
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13968), 
         .C(rom_addr[4]), .D(n14016), .Z(n1275_adj_635)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12154_3_lut_4_lut (.A(n14028), .B(n11535), .C(rom_addr[5]), 
         .D(n1565_adj_739), .Z(n1597_adj_655)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12154_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i11382_3_lut_4_lut (.A(n14050), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_650), .Z(n11996)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11382_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12833 (.BLUT(n13350), .ALUT(n13349), .C0(rom_addr[6]), .Z(n13351));
    PFUMX i11640 (.BLUT(n1755_c), .ALUT(n1786_adj_695), .C0(rom_addr[5]), 
          .Z(n12254));
    LUT4 i12841_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14222)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C+!(D)))) */ ;
    defparam i12841_else_4_lut.init = 16'h0f28;
    LUT4 n205_bdd_3_lut_12807_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n14107), .D(n14110), .Z(n13222)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n205_bdd_3_lut_12807_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_239_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14026)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_239_3_lut_3_lut.init = 16'h4040;
    PFUMX i11644 (.BLUT(n1820_adj_584), .ALUT(n1851_adj_570), .C0(rom_addr[5]), 
          .Z(n12258));
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n13962), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7677_2_lut_rep_183_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13970)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7677_2_lut_rep_183_3_lut_4_lut.init = 16'h0080;
    LUT4 i7488_2_lut_rep_176_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13963)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7488_2_lut_rep_176_3_lut_4_lut.init = 16'h0090;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14056), 
         .C(rom_addr[3]), .D(n14134), .Z(n124_adj_691)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n549_bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13567)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n549_bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 i7451_2_lut_rep_258_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14045)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7451_2_lut_rep_258_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[6]), .Z(n4_adj_12)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h9990;
    PFUMX i11645 (.BLUT(n1883), .ALUT(n1914_adj_742), .C0(rom_addr[5]), 
          .Z(n12259));
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14080), 
         .C(rom_addr[3]), .D(n14092), .Z(n1101_adj_713)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 rom_addr_0__bdd_4_lut_13339 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_adj_596)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13339.init = 16'hb124;
    LUT4 i5801_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14227)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5801_3_lut_4_lut_then_4_lut.init = 16'h4691;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_138_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n13968), .C(rom_addr[4]), .D(n14011), .Z(n13925)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_138_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7572_2_lut_rep_198_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13985)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7572_2_lut_rep_198_3_lut_3_lut.init = 16'h1414;
    LUT4 i7399_2_lut_rep_206_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13993)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7399_2_lut_rep_206_3_lut.init = 16'hf6f6;
    LUT4 i11725_3_lut_4_lut (.A(n14050), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653), .Z(n12339)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11725_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7520_2_lut_rep_236_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14023)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7520_2_lut_rep_236_3_lut_3_lut.init = 16'h7d7d;
    PFUMX i11646 (.BLUT(n1947), .ALUT(n11938), .C0(rom_addr[5]), .Z(n12260));
    LUT4 i11287_3_lut (.A(n506_adj_568), .B(n428), .C(rom_addr[4]), .Z(n11901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11287_3_lut.init = 16'hcaca;
    LUT4 i7935_2_lut_rep_353 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14140)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7935_2_lut_rep_353.init = 16'hdddd;
    LUT4 i7936_2_lut_rep_203_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n13990)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7936_2_lut_rep_203_3_lut.init = 16'hd0d0;
    LUT4 i7922_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n708)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7922_2_lut_3_lut.init = 16'h0d0d;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6640), 
         .C(rom_addr[5]), .D(n12010), .Z(n1660_adj_656)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    PFUMX i13299 (.BLUT(n14181), .ALUT(n14182), .C0(rom_addr[0]), .Z(n14183));
    LUT4 i11286_3_lut (.A(n526_adj_557), .B(n205), .C(rom_addr[4]), .Z(n11900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11286_3_lut.init = 16'hcaca;
    PFUMX i11647 (.BLUT(n2010), .ALUT(n6596), .C0(rom_addr[5]), .Z(n12261));
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n708), 
         .C(rom_addr[3]), .D(n14134), .Z(n716)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1927_2_lut_rep_348 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14135)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1927_2_lut_rep_348.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n11965), 
         .C(rom_addr[5]), .D(n14138), .Z(n1660)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7396_2_lut_rep_220_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14007)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7396_2_lut_rep_220_3_lut.init = 16'h9090;
    LUT4 i5801_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14226)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5801_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 i11421_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14138), .C(rom_addr[4]), 
         .D(n13998), .Z(n12035)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11421_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14138), 
         .C(rom_addr[4]), .D(n14016), .Z(n1628)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557_adj_738)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hd003;
    LUT4 i11059_2_lut_rep_327 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14114)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11059_2_lut_rep_327.init = 16'heeee;
    PFUMX i11656 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12270));
    LUT4 n1340_bdd_4_lut_12930 (.A(n13961), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n15330), .Z(n13072)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_12930.init = 16'haca0;
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n14134), .B(n14035), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11657 (.BLUT(n1499_adj_668), .ALUT(n1530_adj_666), .C0(rom_addr[5]), 
          .Z(n12271));
    PFUMX i13297 (.BLUT(n14178), .ALUT(n14179), .C0(rom_addr[0]), .Z(n14180));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14246)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0521;
    LUT4 i7393_2_lut_rep_306 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14093)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7393_2_lut_rep_306.init = 16'h4444;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14119), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_592)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5850_2_lut_rep_328 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14115)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5850_2_lut_rep_328.init = 16'h6666;
    LUT4 i4365_2_lut_rep_351 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14138)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4365_2_lut_rep_351.init = 16'h8888;
    PFUMX i12831 (.BLUT(n13347), .ALUT(n13346), .C0(rom_addr[4]), .Z(n13348));
    L6MUX21 i12816 (.D0(n13324), .D1(n13322), .SD(rom_addr[6]), .Z(n13325));
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_693), .B(n1914), 
         .C(rom_addr[5]), .Z(n1915_adj_622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 i11916_3_lut (.A(n1228_adj_743), .B(n1243_adj_574), .C(rom_addr[4]), 
         .Z(n11957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11916_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    PFUMX i12814 (.BLUT(n1181), .ALUT(n13323), .C0(rom_addr[5]), .Z(n13324));
    PFUMX i13295 (.BLUT(n14175), .ALUT(n14176), .C0(rom_addr[3]), .Z(n14177));
    LUT4 n1659_bdd_4_lut (.A(n1659_adj_664), .B(rom_addr[6]), .C(rom_addr[0]), 
         .D(n13924), .Z(n13566)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1659_bdd_4_lut.init = 16'h888b;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14156)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 i7506_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n46)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7506_4_lut_4_lut.init = 16'h3d00;
    LUT4 i11334_3_lut (.A(n6619), .B(n668), .C(rom_addr[4]), .Z(n11948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11334_3_lut.init = 16'hcaca;
    LUT4 i3380_3_lut_3_lut_rep_330 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n14117)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3380_3_lut_3_lut_rep_330.init = 16'hd3d3;
    LUT4 n1251_bdd_4_lut (.A(n13919), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n15330), .Z(n13074)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut.init = 16'hb888;
    LUT4 i5776_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n6617)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5776_3_lut_4_lut_4_lut.init = 16'hd388;
    LUT4 i7650_2_lut_rep_232_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14019)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7650_2_lut_rep_232_3_lut_4_lut.init = 16'h0060;
    PFUMX i12812 (.BLUT(n13321), .ALUT(n13320), .C0(rom_addr[5]), .Z(n13322));
    PFUMX i11666 (.BLUT(n1692_adj_663), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12280));
    LUT4 i11777_3_lut_4_lut (.A(n14010), .B(n14094), .C(rom_addr[4]), 
         .D(n13346), .Z(n12391)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11777_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    PFUMX i11667 (.BLUT(n1755), .ALUT(n1786_adj_659), .C0(rom_addr[5]), 
          .Z(n12281));
    LUT4 i5794_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5794_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i11675 (.BLUT(n12285), .ALUT(n12286), .C0(rom_addr[5]), .Z(n12289));
    LUT4 n1699_bdd_3_lut_13206_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13793)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1699_bdd_3_lut_13206_4_lut_4_lut.init = 16'h6202;
    LUT4 i7477_2_lut_rep_269_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14056)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7477_2_lut_rep_269_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n13955), .D(n4247), .Z(n924)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_214_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14001)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_214_3_lut.init = 16'h1e1e;
    PFUMX i11676 (.BLUT(n12287), .ALUT(n12288), .C0(rom_addr[5]), .Z(n12290));
    LUT4 i2640_4_lut_4_lut (.A(rom_addr[2]), .B(n11610), .C(rom_addr[5]), 
         .D(n6263), .Z(n3451)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2640_4_lut_4_lut.init = 16'hfd0d;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n1228_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i12431_2_lut_rep_132_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14022), .Z(n13919)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12431_2_lut_rep_132_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i11369_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14164)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11369_else_4_lut.init = 16'h081e;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_609)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 i7583_2_lut_rep_196_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13983)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7583_2_lut_rep_196_3_lut_3_lut.init = 16'h5454;
    LUT4 i7689_2_lut_rep_307 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14094)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7689_2_lut_rep_307.init = 16'h2222;
    LUT4 i3117_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n3928)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3117_3_lut_3_lut.init = 16'h7474;
    LUT4 i11679_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14230)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i11679_4_lut_then_4_lut.init = 16'ha9c8;
    L6MUX21 i12797 (.D0(n13305), .D1(n13303), .SD(rom_addr[6]), .Z(n13306));
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_248_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14035)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_248_4_lut_3_lut.init = 16'h2424;
    LUT4 i7468_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7468_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14119), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_739)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 rom_addr_6__bdd_3_lut_12966_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[6]), 
         .C(rom_addr[0]), .D(n14022), .Z(n13507)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_3_lut_12966_4_lut_4_lut.init = 16'h0008;
    LUT4 i11782_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4711), 
         .D(n14030), .Z(n12396)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11782_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n8851)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    LUT4 i7828_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n13993), 
         .D(rom_addr[3]), .Z(n3174)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7828_4_lut_4_lut.init = 16'hd100;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n12521), .Z(n1883_adj_709)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_642), .B(n14005), 
         .C(rom_addr[4]), .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    PFUMX i12795 (.BLUT(n1676_adj_658), .ALUT(n13304), .C0(n14096), .Z(n13305));
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_217_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14004)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_217_4_lut_3_lut.init = 16'h4242;
    LUT4 i11679_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14229)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11679_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14024), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11671_3_lut_4_lut (.A(rom_addr[0]), .B(n14029), .C(rom_addr[4]), 
         .D(n14019), .Z(n12285)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11671_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_742)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14069), .D(n14049), .Z(n1483_adj_612)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_629)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i11358_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n11972)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11358_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2298)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut_4_lut.init = 16'h1009;
    PFUMX i11690 (.BLUT(n12302), .ALUT(n12303), .C0(rom_addr[5]), .Z(n12304));
    LUT4 i11373_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n14117), .Z(n11987)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11373_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11298_4_lut_4_lut (.A(rom_addr[2]), .B(n4_adj_654), .C(rom_addr[4]), 
         .D(n2444_adj_579), .Z(n11912)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11298_4_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14063), .D(n14094), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14030), 
         .C(rom_addr[3]), .D(n14099), .Z(n731)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11695 (.BLUT(n11539), .ALUT(n380_adj_13), .C0(rom_addr[5]), 
          .Z(n12309));
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14155)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 i11326_3_lut (.A(n557), .B(n572), .C(rom_addr[4]), .Z(n11940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11326_3_lut.init = 16'hcaca;
    PFUMX i11699 (.BLUT(n12311), .ALUT(n12312), .C0(rom_addr[5]), .Z(n12313));
    LUT4 i4884_3_lut_4_lut_4_lut_then_4_lut (.A(n14016), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14233)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4884_3_lut_4_lut_4_lut_then_4_lut.init = 16'hcf5c;
    LUT4 i11325_4_lut (.A(n14115), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n11939)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11325_4_lut.init = 16'hcac0;
    PFUMX i11708 (.BLUT(n12320), .ALUT(n12321), .C0(rom_addr[5]), .Z(n12322));
    LUT4 i7790_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7790_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i4884_3_lut_4_lut_4_lut_else_4_lut (.A(n14016), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n14232)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4884_3_lut_4_lut_4_lut_else_4_lut.init = 16'hf7f7;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_259_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14046)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_259_3_lut.init = 16'hc2c2;
    PFUMX i11711 (.BLUT(n12323), .ALUT(n12324), .C0(rom_addr[5]), .Z(n12325));
    LUT4 i5848_2_lut_rep_361 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15334)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5848_2_lut_rep_361.init = 16'h6666;
    PFUMX i11719 (.BLUT(n12329), .ALUT(n12330), .C0(rom_addr[5]), .Z(n12333));
    LUT4 i11688_3_lut_4_lut (.A(rom_addr[1]), .B(n14078), .C(rom_addr[4]), 
         .D(n30), .Z(n12302)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11688_3_lut_4_lut.init = 16'hf808;
    LUT4 i7570_4_lut (.A(n14063), .B(rom_addr[4]), .C(n15331), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7570_4_lut.init = 16'hc088;
    LUT4 i12367_2_lut_rep_308 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14095)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12367_2_lut_rep_308.init = 16'hbbbb;
    LUT4 i12234_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12234_3_lut_4_lut.init = 16'hf4b0;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n14004), .Z(n428_adj_628)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), 
         .C(rom_addr[3]), .D(n14035), .Z(n220)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 i12359_2_lut_rep_309 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14096)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12359_2_lut_rep_309.init = 16'heeee;
    LUT4 i12152_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_619), 
         .D(n1676_c), .Z(n1724)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12152_3_lut_4_lut.init = 16'hf1e0;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    LUT4 i13236_then_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14236)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D))+!B (C+(D)))) */ ;
    defparam i13236_then_4_lut.init = 16'hf130;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    LUT4 i11311_3_lut_4_lut (.A(n14069), .B(n14078), .C(rom_addr[4]), 
         .D(n205_adj_571), .Z(n11925)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11311_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12793 (.BLUT(n13971), .ALUT(n13302), .C0(rom_addr[5]), .Z(n13303));
    LUT4 i12390_2_lut_rep_310 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14097)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12390_2_lut_rep_310.init = 16'heeee;
    LUT4 i7638_2_lut_rep_226_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14013)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7638_2_lut_rep_226_3_lut.init = 16'hfefe;
    LUT4 i7719_2_lut_rep_326_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14113)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7719_2_lut_rep_326_3_lut.init = 16'h0808;
    L6MUX21 i12776 (.D0(n13278), .D1(n13276), .SD(rom_addr[6]), .Z(n13279));
    PFUMX i12774 (.BLUT(n158_adj_14), .ALUT(n13277), .C0(rom_addr[5]), 
          .Z(n13278));
    PFUMX i11720 (.BLUT(n12331), .ALUT(n12332), .C0(rom_addr[5]), .Z(n12334));
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12149), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_150_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13937)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_150_3_lut_3_lut_4_lut.init = 16'h0080;
    PFUMX i12772 (.BLUT(n13275), .ALUT(n13274), .C0(rom_addr[5]), .Z(n13276));
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635_adj_711)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h400c;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i12143_3_lut (.A(n11885), .B(n14148), .C(rom_addr[5]), .Z(n11887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12143_3_lut.init = 16'hcaca;
    LUT4 i7503_2_lut_rep_332 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14119)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7503_2_lut_rep_332.init = 16'heeee;
    LUT4 i11701_3_lut (.A(n476), .B(n507_adj_601), .C(rom_addr[5]), .Z(n12315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11701_3_lut.init = 16'hcaca;
    LUT4 i12410_2_lut_rep_251_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14038)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12410_2_lut_rep_251_3_lut.init = 16'h0101;
    LUT4 n13572_bdd_3_lut (.A(n13572), .B(n13566), .C(rom_addr[5]), .Z(n13573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13572_bdd_3_lut.init = 16'hcaca;
    PFUMX i11729 (.BLUT(n12339), .ALUT(n12340), .C0(rom_addr[5]), .Z(n12343));
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n14029), 
         .C(n13943), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    PFUMX i11730 (.BLUT(n12341), .ALUT(n12342), .C0(rom_addr[5]), .Z(n12344));
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n14069), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14049), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 n12255_bdd_3_lut_14010 (.A(n12255), .B(n12256), .C(rom_addr[7]), 
         .Z(n12932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12255_bdd_3_lut_14010.init = 16'hcaca;
    PFUMX i11732 (.BLUT(n797), .ALUT(n828_adj_637), .C0(rom_addr[5]), 
          .Z(n12346));
    LUT4 i7678_2_lut_rep_312 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14099)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7678_2_lut_rep_312.init = 16'heeee;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    L6MUX21 i12756 (.D0(n13256), .D1(n13254), .SD(rom_addr[6]), .Z(n13257));
    LUT4 i12405_2_lut_rep_336 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14123)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12405_2_lut_rep_336.init = 16'h1111;
    PFUMX i12754 (.BLUT(n13255), .ALUT(n13963), .C0(rom_addr[5]), .Z(n13256));
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_231_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14018)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_231_3_lut.init = 16'hc1c1;
    PFUMX i11733 (.BLUT(n12019), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n12347));
    LUT4 i3900_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4711)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3900_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i7738_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13411), 
         .Z(n3069_adj_551)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7738_2_lut_3_lut.init = 16'h1010;
    LUT4 i7705_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_698), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7705_2_lut_3_lut.init = 16'h1010;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054_adj_634), .ALUT(n1085_c), 
          .C0(rom_addr[5]), .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i5752_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6593)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5752_4_lut_4_lut_4_lut.init = 16'he303;
    PFUMX i11737 (.BLUT(n12349), .ALUT(n12350), .C0(rom_addr[5]), .Z(n12351));
    LUT4 i11260_3_lut_4_lut (.A(rom_addr[1]), .B(n14119), .C(rom_addr[4]), 
         .D(n301_adj_596), .Z(n11874)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11260_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11398_3_lut (.A(n1069), .B(n1084_adj_676), .C(rom_addr[4]), 
         .Z(n12012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11398_3_lut.init = 16'hcaca;
    LUT4 i5968_2_lut_rep_339 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n14126)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5968_2_lut_rep_339.init = 16'h8888;
    LUT4 i12044_3_lut_4_lut (.A(n14080), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108_adj_687), .Z(n12052)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12044_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i5789_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14162)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5789_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_736)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut.init = 16'h6470;
    LUT4 i11149_1_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n11763)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11149_1_lut_2_lut.init = 16'h7777;
    LUT4 i5789_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14161)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5789_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 i7679_2_lut_rep_237_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14024)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7679_2_lut_rep_237_3_lut_4_lut.init = 16'he000;
    PFUMX i11742 (.BLUT(n12352), .ALUT(n12353), .C0(rom_addr[5]), .Z(n12356));
    L6MUX21 i13191 (.D0(n13794), .D1(n13791), .SD(rom_addr[5]), .Z(n13795));
    LUT4 n1030_bdd_3_lut_13050_4_lut (.A(rom_addr[0]), .B(n14101), .C(rom_addr[3]), 
         .D(n14004), .Z(n13347)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1030_bdd_3_lut_13050_4_lut.init = 16'hf202;
    LUT4 i7401_2_lut_rep_219_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14006)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7401_2_lut_rep_219_3_lut.init = 16'he0e0;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i11305_4_lut (.A(n684), .B(rom_addr[1]), .C(rom_addr[4]), .D(n14132), 
         .Z(n11919)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11305_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_263_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14050)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_263_3_lut.init = 16'h3e3e;
    PFUMX i13189 (.BLUT(n13793), .ALUT(n13792), .C0(rom_addr[4]), .Z(n13794));
    PFUMX i13187 (.BLUT(n13790), .ALUT(n13789), .C0(rom_addr[4]), .Z(n13791));
    PFUMX i12752 (.BLUT(n1739), .ALUT(n13253), .C0(rom_addr[5]), .Z(n13254));
    PFUMX i11743 (.BLUT(n12354), .ALUT(n12355), .C0(rom_addr[5]), .Z(n12357));
    LUT4 i7621_2_lut_rep_320 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14107)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7621_2_lut_rep_320.init = 16'h2222;
    LUT4 i1_2_lut_rep_240_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .Z(n14027)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_240_3_lut.init = 16'h0202;
    LUT4 i13236_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14235)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam i13236_else_4_lut.init = 16'he704;
    LUT4 i11403_3_lut_4_lut (.A(rom_addr[0]), .B(n14101), .C(rom_addr[3]), 
         .D(n15335), .Z(n12017)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11403_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7557_2_lut_rep_314 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14101)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7557_2_lut_rep_314.init = 16'hbbbb;
    PFUMX i11746 (.BLUT(n1117_adj_624), .ALUT(n10299), .C0(rom_addr[5]), 
          .Z(n12360));
    LUT4 i4989_2_lut_rep_343 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14130)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4989_2_lut_rep_343.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2283_adj_605)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h6003;
    LUT4 i11378_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15344)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11378_then_4_lut.init = 16'h5924;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1946_adj_670)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut.init = 16'h6909;
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 i3883_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3883_3_lut_3_lut.init = 16'hcbcb;
    LUT4 i12355_2_lut_rep_202_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13989)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12355_2_lut_rep_202_3_lut.init = 16'h0909;
    LUT4 i7471_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7471_2_lut_3_lut.init = 16'h9090;
    LUT4 n1030_bdd_3_lut_12830_4_lut (.A(rom_addr[0]), .B(n14101), .C(rom_addr[3]), 
         .D(n14050), .Z(n13346)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1030_bdd_3_lut_12830_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_rep_225_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14012)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_225_3_lut_4_lut.init = 16'h6000;
    LUT4 i7554_2_lut_rep_243_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14030)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7554_2_lut_rep_243_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14130), .B(n14138), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 i12396_2_lut_rep_345 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14132)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12396_2_lut_rep_345.init = 16'h4444;
    LUT4 i1_2_lut_rep_315 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14102)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_315.init = 16'h8888;
    LUT4 n2521_bdd_3_lut_13179_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12818)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2521_bdd_3_lut_13179_4_lut_4_lut.init = 16'h6803;
    PFUMX i13289 (.BLUT(n14164), .ALUT(n14165), .C0(rom_addr[0]), .Z(n14166));
    LUT4 n2912_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13637)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2912_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11039_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n270_adj_6)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11039_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    LUT4 i11378_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15343)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11378_else_4_lut.init = 16'h5092;
    PFUMX i11750 (.BLUT(n12362), .ALUT(n12363), .C0(rom_addr[5]), .Z(n12364));
    PFUMX i12730 (.BLUT(n13222), .ALUT(n13221), .C0(rom_addr[6]), .Z(n13223));
    LUT4 i7397_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_585)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7397_4_lut_4_lut.init = 16'hc700;
    LUT4 i7910_2_lut_rep_347 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14134)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7910_2_lut_rep_347.init = 16'h8888;
    PFUMX i13145 (.BLUT(n13736), .ALUT(n13735), .C0(rom_addr[5]), .Z(n13737));
    LUT4 i11369_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14165)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i11369_then_4_lut.init = 16'h214a;
    LUT4 i11723_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14239)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam i11723_3_lut_then_4_lut.init = 16'h403a;
    LUT4 i3984_3_lut_rep_241_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14028)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3984_3_lut_rep_241_4_lut_3_lut.init = 16'h6262;
    LUT4 i7961_2_lut_rep_270_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14057)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7961_2_lut_rep_270_3_lut.init = 16'h2020;
    LUT4 i3892_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4703)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i3892_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i11723_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14238)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A !(B (C (D))))) */ ;
    defparam i11723_3_lut_else_4_lut.init = 16'h482a;
    LUT4 i3436_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4247)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3436_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i7656_2_lut_rep_238_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14025)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7656_2_lut_rep_238_3_lut.init = 16'h0202;
    LUT4 n221_bdd_3_lut_13354 (.A(n221), .B(n13594), .C(rom_addr[5]), 
         .Z(n13595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_13354.init = 16'hcaca;
    LUT4 i4603_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5414)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4603_3_lut_3_lut_4_lut_3_lut.init = 16'hdbdb;
    L6MUX21 i12530 (.D0(n12936), .D1(n12933), .SD(rom_addr[9]), .Z(n12937));
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i7688_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14008), .Z(n5195)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7688_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i7714_2_lut_rep_230_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14017)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7714_2_lut_rep_230_3_lut_4_lut.init = 16'h7000;
    LUT4 i7640_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n14110), 
         .D(rom_addr[2]), .Z(n1659_adj_679)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7640_2_lut_4_lut_4_lut.init = 16'h70c0;
    PFUMX i12528 (.BLUT(n12935), .ALUT(n12934), .C0(rom_addr[8]), .Z(n12936));
    LUT4 i4897_3_lut_rep_255_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14042)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4897_3_lut_rep_255_4_lut_3_lut.init = 16'hdede;
    LUT4 i3853_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4664)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i3853_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i1_2_lut_rep_156_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13943)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_156_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_209_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13996)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_209_3_lut.init = 16'h7c7c;
    LUT4 i7664_2_lut_rep_178_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13965)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7664_2_lut_rep_178_3_lut_4_lut.init = 16'h0008;
    LUT4 i11295_3_lut (.A(n205_adj_567), .B(n604_adj_649), .C(rom_addr[4]), 
         .Z(n11909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11295_3_lut.init = 16'hcaca;
    LUT4 n1211_bdd_3_lut_13039_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13593)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam n1211_bdd_3_lut_13039_3_lut_4_lut.init = 16'h8088;
    LUT4 i7418_2_lut_rep_227_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14014)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7418_2_lut_rep_227_3_lut.init = 16'hf8f8;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i11386_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12000)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11386_3_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 i11277_3_lut (.A(n506), .B(n475_adj_748), .C(rom_addr[4]), .Z(n11891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11277_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220_adj_646)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 i5809_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n6650)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i5809_3_lut_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14030), 
         .C(rom_addr[3]), .D(n14134), .Z(n526_adj_737)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12526 (.BLUT(n12932), .ALUT(n12931), .C0(rom_addr[8]), .Z(n12933));
    PFUMX i11225 (.BLUT(n11835), .ALUT(n11836), .C0(rom_addr[5]), .Z(n11839));
    LUT4 i3957_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n4768)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i3957_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_356 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15329)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_356.init = 16'h8181;
    LUT4 n636_bdd_4_lut (.A(n13925), .B(n5298), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n13596)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n636_bdd_4_lut.init = 16'haa30;
    LUT4 i7906_2_lut_rep_318 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14105)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7906_2_lut_rep_318.init = 16'heeee;
    LUT4 rom_addr_0__bdd_4_lut_13359 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14241)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam rom_addr_0__bdd_4_lut_13359.init = 16'h80c2;
    LUT4 rom_addr_6__bdd_3_lut_12980_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13508)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam rom_addr_6__bdd_3_lut_12980_4_lut_4_lut_4_lut.init = 16'h01a0;
    LUT4 i4060_3_lut_rep_271_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14058)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4060_3_lut_rep_271_4_lut_3_lut.init = 16'hd6d6;
    LUT4 i5761_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n6602)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i5761_3_lut_3_lut_3_lut.init = 16'h5e5e;
    LUT4 i3630_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n4441)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i3630_3_lut_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i13348 (.BLUT(n14254), .ALUT(n14255), .C0(rom_addr[0]), .Z(n14256));
    PFUMX i13102 (.BLUT(n13684), .ALUT(n13683), .C0(rom_addr[6]), .Z(n13685));
    PFUMX i13346 (.BLUT(n14251), .ALUT(n14252), .C0(rom_addr[0]), .Z(n14253));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_708)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    PFUMX i11226 (.BLUT(n11837), .ALUT(n11838), .C0(rom_addr[5]), .Z(n11840));
    PFUMX i13344 (.BLUT(n14248), .ALUT(n14249), .C0(rom_addr[0]), .Z(n14250));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n475_adj_748)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut.init = 16'h3130;
    PFUMX i12467 (.BLUT(n12815), .ALUT(n14038), .C0(rom_addr[4]), .Z(n12816));
    LUT4 i11698_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n124_adj_686), .C(rom_addr[4]), 
         .D(n14011), .Z(n12312)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11698_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11764 (.BLUT(n12374), .ALUT(n12375), .C0(rom_addr[5]), .Z(n12378));
    PFUMX i12668 (.BLUT(n13134), .ALUT(n13133), .C0(rom_addr[4]), .Z(n13135));
    L6MUX21 i12471 (.D0(n12819), .D1(n12816), .SD(rom_addr[5]), .Z(n12820));
    PFUMX i11765 (.BLUT(n12376), .ALUT(n12377), .C0(rom_addr[5]), .Z(n12379));
    PFUMX i11767 (.BLUT(n1565_adj_15), .ALUT(n1596_adj_16), .C0(rom_addr[5]), 
          .Z(n12381));
    PFUMX i11768 (.BLUT(n1628), .ALUT(n1659), .C0(rom_addr[5]), .Z(n12382));
    PFUMX i13068 (.BLUT(n13644), .ALUT(n13643), .C0(rom_addr[6]), .Z(n13645));
    PFUMX i11778 (.BLUT(n12390), .ALUT(n12391), .C0(rom_addr[5]), .Z(n12392));
    PFUMX i12469 (.BLUT(n12818), .ALUT(n12817), .C0(rom_addr[4]), .Z(n12819));
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    PFUMX i11781 (.BLUT(n12393), .ALUT(n12394), .C0(rom_addr[5]), .Z(n12395));
    PFUMX i11239 (.BLUT(n11851), .ALUT(n11852), .C0(rom_addr[5]), .Z(n11853));
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_743)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    PFUMX i11784 (.BLUT(n12396), .ALUT(n12397), .C0(rom_addr[5]), .Z(n12398));
    PFUMX i13066 (.BLUT(n1785), .ALUT(n13641), .C0(rom_addr[4]), .Z(n13642));
    PFUMX i11248 (.BLUT(n11860), .ALUT(n11861), .C0(rom_addr[5]), .Z(n11862));
    PFUMX i11787 (.BLUT(n12399), .ALUT(n12400), .C0(rom_addr[5]), .Z(n12401));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_adj_17), .ALUT(n125_adj_715), 
          .C0(rom_addr[5]), .Z(n126_adj_724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i13064 (.D0(n13639), .D1(n13636), .SD(rom_addr[5]), .Z(n13640));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14243)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hac51;
    PFUMX i11790 (.BLUT(n12402), .ALUT(n12403), .C0(rom_addr[5]), .Z(n12404));
    PFUMX i13062 (.BLUT(n13638), .ALUT(n13637), .C0(rom_addr[6]), .Z(n13639));
    PFUMX i11793 (.BLUT(n12405), .ALUT(n12406), .C0(rom_addr[5]), .Z(n12407));
    PFUMX i11261 (.BLUT(n11873), .ALUT(n11874), .C0(rom_addr[5]), .Z(n11875));
    L6MUX21 i12635 (.D0(n13094), .D1(n13092), .SD(rom_addr[6]), .Z(n13095));
    LUT4 i7519_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_694)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i7519_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i3137_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n3948)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i3137_3_lut_4_lut_3_lut.init = 16'h4848;
    PFUMX i11264 (.BLUT(n11876), .ALUT(n11877), .C0(rom_addr[5]), .Z(n11878));
    PFUMX i11267 (.BLUT(n11879), .ALUT(n11880), .C0(rom_addr[5]), .Z(n11881));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14242)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'ha800;
    
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
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_25[1] , lcd_dc_c_8, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , init_data, show_char_data, \state[5] , 
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
    input \state[5] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input \state[2] ;
    input \state[4] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95, n13767, n13768;
    
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
    LUT4 state_2__bdd_4_lut_13386 (.A(\state[1] ), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[2]), .D(cnt_rom_prepare[1]), .Z(n13767)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut_13386.init = 16'haaea;
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n13768)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
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
    PFUMX i13169 (.BLUT(n13768), .ALUT(n13767), .C0(\state[5] ), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (ascii_num, sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_368[1] , n5, \end_x_8__N_295[3] , \end_x_8__N_295[7] , 
            \end_y_8__N_313[4] , n1246, \end_x_8__N_295[6] , \end_x_8__N_295[5] , 
            \end_x_8__N_295[4] , sys_clk_50MHz_enable_19, \state[3] ) /* synthesis syn_module_defined=1 */ ;
    output [6:0]ascii_num;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_368[1] ;
    input n5;
    output \end_x_8__N_295[3] ;
    output \end_x_8__N_295[7] ;
    output \end_y_8__N_313[4] ;
    input n1246;
    output \end_x_8__N_295[6] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    input sys_clk_50MHz_enable_19;
    input \state[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [6:0]ascii_num_6__N_515;
    
    wire n5906, n17, show_char_flag_N_540, n13922, n10333;
    wire [8:0]start_y_8__N_531;
    
    wire n11561, n2770, n11560, n10616, n54, cnt_ascii_num_4__N_514, 
        n6817;
    wire [1:0]n1;
    
    wire n7, n11668;
    wire [31:0]n225;
    
    wire n43, n11680, n996, n14065, n14072, n12, n14073;
    wire [3:0]n1428;
    
    wire n14070, n14076, n11598, n14064, n7_adj_541, n13980, n8_adj_542, 
        n13978, n1051, n24, n11648, n2818, sys_clk_50MHz_enable_96;
    
    FD1P3AX ascii_num_i0_i2 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i0 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i0.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i1 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_x__i1 (.D(n17), .CK(sys_clk_50MHz), .CD(n5906), .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_79 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[10] 95[32])
    defparam show_char_flag_79.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(n10333), .CK(sys_clk_50MHz), .CD(n13922), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n1246), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(228[10] 253[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(n2770), .CK(sys_clk_50MHz), .CD(n11561), .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(n11560), .CK(sys_clk_50MHz), .CD(n13922), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(n10616), .CK(sys_clk_50MHz), .CD(n5906), .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i1 (.D(n6817), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_514), 
            .Q(n54));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i6.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i5 (.D(ascii_num_6__N_515[5]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i5.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i4 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n1[1]), .SP(sys_clk_50MHz_enable_19), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i3 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i3.GSR = "ENABLED";
    LUT4 i12373_4_lut (.A(n7), .B(n11668), .C(\state[5] ), .D(n225[1]), 
         .Z(n11561)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam i12373_4_lut.init = 16'hffdf;
    LUT4 i2_4_lut (.A(n43), .B(n11680), .C(n225[2]), .D(n225[6]), .Z(n7)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam i2_4_lut.init = 16'h0002;
    LUT4 i11067_2_lut (.A(n225[5]), .B(n225[4]), .Z(n11680)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11067_2_lut.init = 16'heeee;
    LUT4 i11055_2_lut (.A(n225[3]), .B(n54), .Z(n11668)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11055_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n996), .B(n11668), .C(n14065), .D(n14072), .Z(n11560)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut.init = 16'h1110;
    LUT4 i1_4_lut_adj_10 (.A(n225[1]), .B(n12), .C(n14073), .D(n11680), 
         .Z(n10616)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_10.init = 16'h5054;
    LUT4 i1_4_lut_adj_11 (.A(n225[6]), .B(n225[8]), .C(n225[7]), .D(n1428[1]), 
         .Z(n12)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_11.init = 16'hfbfa;
    LUT4 reduce_or_627_i1_2_lut (.A(n225[6]), .B(n54), .Z(ascii_num_6__N_515[5])) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_627_i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(n225[8]), .B(n225[6]), .Z(ascii_num_6__N_515[4])) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i944_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(85[17:28])
    defparam i944_2_lut.init = 16'h6666;
    LUT4 i12330_2_lut_rep_135 (.A(start_y_8__N_531[4]), .B(\state[5] ), 
         .Z(n13922)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12330_2_lut_rep_135.init = 16'h7777;
    LUT4 i5077_2_lut_3_lut (.A(start_y_8__N_531[4]), .B(\state[5] ), .C(n54), 
         .Z(n5906)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i5077_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i2_3_lut_4_lut (.A(n14070), .B(n14076), .C(n11598), .D(n225[7]), 
         .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n14073), .B(n14072), .C(n225[9]), .D(n54), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i473_2_lut_rep_277 (.A(n225[8]), .B(n225[7]), .Z(n14064)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i473_2_lut_rep_277.init = 16'heeee;
    LUT4 i1960_4_lut_4_lut (.A(n225[8]), .B(n225[7]), .C(n14070), .D(n225[11]), 
         .Z(n2770)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i1960_4_lut_4_lut.init = 16'h3332;
    LUT4 i475_2_lut_rep_278 (.A(n225[6]), .B(n225[5]), .Z(n14065)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i475_2_lut_rep_278.init = 16'heeee;
    LUT4 i471_2_lut_rep_283 (.A(n225[10]), .B(n225[9]), .Z(n14070)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i471_2_lut_rep_283.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n225[10]), .B(n225[9]), .C(n225[5]), 
         .D(n225[6]), .Z(n7_adj_541)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_710_i2_3_lut_3_lut (.A(n225[10]), .B(n225[9]), .C(n225[11]), 
         .Z(n1428[1])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam mux_710_i2_3_lut_3_lut.init = 16'h3232;
    LUT4 i1_2_lut_rep_285 (.A(n225[4]), .B(n225[7]), .Z(n14072)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_285.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_12 (.A(n225[4]), .B(n225[7]), .C(n225[8]), 
         .D(n225[6]), .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_12.init = 16'hfffe;
    LUT4 i2_3_lut_rep_193_4_lut (.A(n225[4]), .B(n225[7]), .C(n225[9]), 
         .D(n14073), .Z(n13980)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_193_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_13 (.A(n225[4]), .B(n225[7]), .C(n225[11]), 
         .D(n14076), .Z(ascii_num_6__N_515[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_13.init = 16'hfffe;
    LUT4 i1_2_lut_rep_286 (.A(n225[2]), .B(n225[3]), .Z(n14073)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_2_lut_rep_286.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(n225[2]), .B(n225[3]), .C(n225[5]), .D(n54), 
         .Z(n8_adj_542)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_289 (.A(n225[6]), .B(n225[1]), .Z(n14076)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_289.init = 16'heeee;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(n225[6]), .B(n225[1]), .C(n225[9]), 
         .D(n225[10]), .Z(n13978)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n225[6]), .B(n225[1]), .C(n13980), .D(n225[10]), 
         .Z(ascii_num_6__N_515[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(n7_adj_541), .B(n1051), .C(n225[11]), .D(n14064), 
         .Z(n10333)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i489_4_lut (.A(n225[4]), .B(n54), .C(n996), .D(n225[3]), .Z(n1051)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i489_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(n225[10]), .B(n13980), .C(n225[1]), 
         .D(n225[8]), .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'hfffe;
    LUT4 i12357_4_lut (.A(n225[1]), .B(n225[2]), .C(n225[3]), .D(n24), 
         .Z(n17)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i12357_4_lut.init = 16'hbabb;
    LUT4 i1_4_lut_adj_15 (.A(n225[4]), .B(n225[5]), .C(n225[6]), .D(n11648), 
         .Z(n24)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i1_4_lut_adj_15.init = 16'hbabb;
    LUT4 i11036_4_lut (.A(n225[8]), .B(n225[7]), .C(n2818), .D(n225[9]), 
         .Z(n11648)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i11036_4_lut.init = 16'hdddc;
    LUT4 i2007_2_lut (.A(n225[10]), .B(n225[11]), .Z(n2818)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(199[9] 221[16])
    defparam i2007_2_lut.init = 16'h4444;
    LUT4 i479_2_lut (.A(n225[2]), .B(n225[1]), .Z(n996)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i479_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_16 (.A(n14072), .B(n13978), .C(n8_adj_542), .D(n11598), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_4_lut_adj_16.init = 16'hfffe;
    LUT4 i1_2_lut_adj_17 (.A(n225[8]), .B(n225[11]), .Z(n11598)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam i1_2_lut_adj_17.init = 16'heeee;
    LUT4 i19_2_lut_rep_355 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_96)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i19_2_lut_rep_355.init = 16'h8888;
    LUT4 i5966_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n54), .Z(n6817)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i5966_2_lut_3_lut.init = 16'h7070;
    LUT4 i12342_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[13:24])
    defparam i12342_2_lut.init = 16'h4444;
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n225[11]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_514));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n225[10]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n225[9]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n225[8]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n225[7]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n225[6]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n225[5]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n225[4]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n225[3]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n225[2]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n225[1]), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n54), .SP(sys_clk_50MHz_enable_96), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    
endmodule
