// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 21:45:51 2025
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
    
    wire sys_clk_50MHz_enable_51, sys_clk_50MHz_enable_66;
    wire [5:0]state_adj_786;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    
    wire n14;
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_791;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_801;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_17, n1430, n5, n8593, n15024, sys_clk_50MHz_enable_56, 
        sys_clk_50MHz_enable_52, n13785, n6867;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .cnt_sclk({cnt_sclk[3:2], Open_0, Open_1}), .sys_clk_50MHz_enable_17(sys_clk_50MHz_enable_17), 
            .lcd_cs_c(lcd_cs_c), .\state[2] (state[2]), .lcd_sclk_c(lcd_sclk_c), 
            .lcd_mosi_c(lcd_mosi_c), .\state_3__N_25[1] (state_3__N_25[1]), 
            .\data[7] (data[7]), .n1430(n1430), .\data[0] (data[0]), .\data[1] (data[1]), 
            .n13785(n13785), .\data[4] (data[4]), .\data[2] (data[2]), 
            .\data[3] (data[3]), .\data[5] (data[5]), .\data[6] (data[6])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
    ROM128X1A mux_290_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_290_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_290_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_290_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_290_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2E */ ;
    defparam mux_290_Mux_5.initval = 128'h000000000000000003C3038607107E2E;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_290_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_290_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 m1_lut (.Z(n15024)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VHI i2 (.Z(VCC_net));
    LUT4 i715_2_lut (.A(wr_done), .B(state_adj_786[4]), .Z(sys_clk_50MHz_enable_66)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i715_2_lut.init = 16'hbbbb;
    LUT4 i716_4_lut (.A(state_adj_791[2]), .B(length_num_flag), .C(n8593), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_51)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i716_4_lut.init = 16'hceee;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n13785), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_17)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    LUT4 i722_4_lut_rep_320 (.A(state_adj_786[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_801[0]), .D(cnt1_adj_801[1]), .Z(sys_clk_50MHz_enable_52)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i722_4_lut_rep_320.init = 16'hceee;
    LUT4 i2004_2_lut_4_lut (.A(state_adj_786[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_801[0]), .D(cnt1_adj_801[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2004_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i1_2_lut_rep_324 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_56)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_324.init = 16'h2222;
    LUT4 i2011_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i2011_2_lut_3_lut.init = 16'hd2d2;
    lcd_init lcd_init_inst (.sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_66(sys_clk_50MHz_enable_66), 
            .n1430(n1430), .init_data({init_data}), .state({state_adj_786[5], 
            Open_2, Open_3, state_adj_786[2], Open_4, Open_5}), .cnt_s2_num({cnt_s2_num}), 
            .wr_done(wr_done), .n15024(n15024), .lcd_rst_c(lcd_rst_c), 
            .GND_net(GND_net), .\state[4] (state_adj_786[4]), .\init_data_8__N_240[5] (init_data_8__N_240[5]), 
            .\init_data_8__N_240[4] (init_data_8__N_240[4]), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .\init_data_8__N_240[2] (init_data_8__N_240[2]), .n6867(n6867)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    lcd_show_char lcd_show_char_inst (.sys_clk_50MHz(sys_clk_50MHz), .cnt_length_num({Open_6, 
            Open_7, Open_8, Open_9, cnt_length_num[0]}), .n14(n14), 
            .cnt_rom_prepare({cnt_rom_prepare}), .length_num_flag(length_num_flag), 
            .wr_done(wr_done), .show_char_data({show_char_data}), .state({Open_10, 
            state_adj_791[2:1], Open_11}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .sys_clk_50MHz_enable_51(sys_clk_50MHz_enable_51), .\cnt_length_num[4] (cnt_length_num[4]), 
            .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), .\end_x_8__N_295[7] (end_x_8__N_295[7]), 
            .\state[3] (state_adj_791[3]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\end_x_8__N_295[4] (end_x_8__N_295[4]), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .\end_x_8__N_295[3] (end_x_8__N_295[3]), .n8593(n8593), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_y_8__N_313[5] (end_y_8__N_313[5]), .GND_net(GND_net), 
            .\ascii_num[6] (ascii_num[6]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[1] (ascii_num[1]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[0] (ascii_num[0])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .\state[2] (state_adj_786[2]), .\state[4] (state_adj_786[4]), 
            .\state[1] (state_adj_791[1]), .cnt_rom_prepare({cnt_rom_prepare}), 
            .init_data({init_data}), .show_char_data({show_char_data}), 
            .\state[5] (state_adj_786[5])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    show_string_number_ctrl show_string_number_ctrl_inst (.\ascii_num[4] (ascii_num[4]), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_786[5]), 
            .cnt1({cnt1_adj_801}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\ascii_num[0] (ascii_num[0]), .\ascii_num[3] (ascii_num[3]), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .n6867(n6867), .\end_y_8__N_313[5] (end_y_8__N_313[5]), 
            .\end_x_8__N_295[7] (end_x_8__N_295[7]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\ascii_num[2] (ascii_num[2]), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_x_8__N_295[4] (end_x_8__N_295[4]), .\ascii_num[1] (ascii_num[1]), 
            .\ascii_num[6] (ascii_num[6]), .sys_clk_50MHz_enable_52(sys_clk_50MHz_enable_52), 
            .\state[3] (state_adj_791[3]), .\end_x_8__N_295[3] (end_x_8__N_295[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, cnt_sclk, sys_clk_50MHz_enable_17, 
            lcd_cs_c, \state[2] , lcd_sclk_c, lcd_mosi_c, \state_3__N_25[1] , 
            \data[7] , n1430, \data[0] , \data[1] , n13785, \data[4] , 
            \data[2] , \data[3] , \data[5] , \data[6] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output [3:0]cnt_sclk;
    input sys_clk_50MHz_enable_17;
    output lcd_cs_c;
    output \state[2] ;
    output lcd_sclk_c;
    output lcd_mosi_c;
    input \state_3__N_25[1] ;
    input \data[7] ;
    output n1430;
    input \data[0] ;
    input \data[1] ;
    output n13785;
    input \data[4] ;
    input \data[2] ;
    input \data[3] ;
    input \data[5] ;
    input \data[6] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]state_3__N_33;
    
    wire n1, n13696;
    wire [3:0]n100;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6874;
    wire [4:0]n25;
    wire [3:0]cnt_sclk_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]n15;
    
    wire n2865, n2864, n2853, sclk_N_53, n13779, sys_clk_50MHz_enable_49, 
        n1562;
    wire [3:0]state_3__N_29;
    
    wire n6, n2872, mosi_N_56, n11523, mosi_N_55, n13677, n5919, 
        n5920, n11502, n13, n14, mosi_N_65, mosi_N_63, mosi_N_59, 
        mosi_N_61, mosi_N_62, mosi_N_64, mosi_N_60, mosi_N_58, n2849, 
        sys_clk_50MHz_enable_83, sys_clk_50MHz_enable_67, n11520, n5945, 
        n11512;
    wire [15:0]n120;
    
    wire n11480;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_17), .CD(n13696), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_17), .CD(n13696), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_684__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6874), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_684__i4.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n13696), 
            .Q(cnt_sclk_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_17), .CD(n13696), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2865), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2864), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2853), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    LUT4 i9419_2_lut_rep_274 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n13779)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9419_2_lut_rep_274.init = 16'h8888;
    LUT4 i9430_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9430_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i9423_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9423_2_lut_3_lut.init = 16'h7878;
    LUT4 i9416_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9416_2_lut.init = 16'h6666;
    FD1P3AX mosi_100 (.D(n1562), .SP(sys_clk_50MHz_enable_49), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i2054_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2865)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2054_2_lut.init = 16'h2222;
    LUT4 i2053_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2864)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2053_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i12129_4_lut (.A(cnt_sclk_c[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk_c[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12129_4_lut.init = 16'h0200;
    PFUMX mosi_I_1 (.BLUT(n2872), .ALUT(mosi_N_56), .C0(n11523), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    LUT4 state_3__N_21_I_0_2_lut_rep_172 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n13677)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_172.init = 16'h2222;
    LUT4 i5090_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n5919), .Z(n5920)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5090_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2043_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2853)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2043_3_lut_4_lut.init = 16'h2f22;
    LUT4 i737_1_lut (.A(wr_done), .Z(n1430)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i737_1_lut.init = 16'h5555;
    LUT4 i9437_3_lut_4_lut (.A(cnt_delay[2]), .B(n13779), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9437_3_lut_4_lut.init = 16'h7f80;
    LUT4 i9414_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9414_1_lut.init = 16'h5555;
    LUT4 i12116_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n11502), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_49)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12116_4_lut.init = 16'hfbfa;
    LUT4 i10883_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n11502)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i10883_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7169_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1562)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7169_2_lut.init = 16'h2222;
    LUT4 i2039_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n2849)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2039_4_lut.init = 16'hcac0;
    LUT4 i32_2_lut_rep_140_4_lut (.A(n13785), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_83)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_140_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n13696), .C(state[1]), .Z(sys_clk_50MHz_enable_67)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i11967_4_lut_4_lut (.A(n13677), .B(n11520), .C(n5920), .D(n2849), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i11967_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i5116_3_lut (.A(n5945), .B(\data[4] ), .C(mosi_N_60), .Z(n2872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5116_3_lut.init = 16'hcaca;
    LUT4 i5115_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n5945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5115_3_lut.init = 16'hcaca;
    LUT4 i10900_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n11520)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i10900_2_lut.init = 16'h1111;
    LUT4 i12226_4_lut (.A(n13677), .B(mosi_N_58), .C(mosi_N_59), .D(n11512), 
         .Z(n11523)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12226_4_lut.init = 16'hfffe;
    LUT4 i10892_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n11512)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i10892_3_lut.init = 16'h0101;
    LUT4 i5089_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n5919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5089_3_lut.init = 16'hcaca;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_67), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i12177_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n11480), .D(cnt_delay[2]), 
         .Z(n6874)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12177_4_lut.init = 16'hfffb;
    LUT4 i10861_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n11480)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10861_2_lut.init = 16'heeee;
    LUT4 i837_3_lut_4_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i837_3_lut_4_lut.init = 16'h7f80;
    LUT4 i830_2_lut_3_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i830_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_280 (.A(cnt_sclk_c[0]), .B(cnt_sclk_c[1]), .Z(n13785)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_280.init = 16'heeee;
    LUT4 i12132_3_lut_rep_191_4_lut (.A(cnt_sclk_c[0]), .B(cnt_sclk_c[1]), 
         .C(cnt_sclk[3]), .D(cnt_sclk[2]), .Z(n13696)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i12132_3_lut_rep_191_4_lut.init = 16'h0100;
    LUT4 i2014_2_lut (.A(cnt_sclk_c[0]), .B(sys_clk_50MHz_enable_17), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2014_2_lut.init = 16'h6666;
    LUT4 i823_2_lut (.A(cnt_sclk_c[1]), .B(cnt_sclk_c[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i823_2_lut.init = 16'h6666;
    FD1S3IX cnt_delay_684__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6874), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_684__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_684__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6874), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_684__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_684__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6874), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_684__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n120[14]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n120[12]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n120[10]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n120[8]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n120[6]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n120[4]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n120[2]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_83), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_684__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6874), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_684__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (sys_clk_50MHz, sys_clk_50MHz_enable_66, n1430, init_data, 
            state, cnt_s2_num, wr_done, n15024, lcd_rst_c, GND_net, 
            \state[4] , \init_data_8__N_240[5] , \init_data_8__N_240[4] , 
            \init_data_8__N_240[0] , \init_data_8__N_240[2] , n6867) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_66;
    input n1430;
    output [8:0]init_data;
    output [5:0]state;
    output [6:0]cnt_s2_num;
    input wr_done;
    input n15024;
    output lcd_rst_c;
    input GND_net;
    output \state[4] ;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[0] ;
    input \init_data_8__N_240[2] ;
    output n6867;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1434;
    wire [17:0]n357;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272;
    wire [8:0]init_data_8__N_97;
    
    wire n13778;
    wire [6:0]n24;
    
    wire n13947, n13948, n13949, sys_clk_50MHz_enable_27;
    wire [6:0]n159;
    
    wire n13852, sys_clk_50MHz_enable_30;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274, lcd_rst_high_flag, n13944, n13945, n13946, 
        n10049;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n10050;
    wire [5:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire cnt_150ms_22__N_221, n14103, n14100, n13938, n13939, n13940, 
        n40, n13616, n13, n3;
    wire [5:0]state_5__N_168;
    
    wire n2878, n11389, n11376, n10;
    wire [5:0]state_5__N_174;
    
    wire n2881;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n61, n11294, n10_adj_771, n11271, n30, n15, n15022, n12143, 
        n15004, n6548, n11468, n13690, n13634, n13353, n13929, 
        n13930, n6571, n13931, n13354, n13355, n13639, n11476, 
        n17, n22, n13_adj_772, n11496, n41, n13840, n13702, n13382, 
        n13801, n8699, n13620, n13440, n4, n13438, n13615, n2883, 
        n13805, n52, n12599;
    wire [5:0]state_5__N_186;
    
    wire n2885, n15021, n15020, n14101, n2838, n12131, n11273, 
        n4_adj_773, n11470, n11196, n11318, n12137, n13770, n15_adj_774, 
        n12136, n12985, n30_adj_775, n12130, n2887, n6871, lcd_rst_high_flag_N_270, 
        n13679, n13739, n13067, n6576, n11374, n11384, n11466, 
        n68, n49, n11300, n13804, n16, n13802, n11268, n11369, 
        n6, n11375, n11498, n10_adj_776, n10048, n10036, n10037, 
        n10047, n11416, n12132, n12138, n10046, n14099, n30_adj_777, 
        n13352, n10038, n10039, n10035, n10041, n10033, n10040, 
        n10056, n10034, n10055, n10054, n10053, n10052, n10051;
    
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1430), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    LUT4 i711_1_lut_rep_273 (.A(state[2]), .Z(n13778)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i711_1_lut_rep_273.init = 16'h5555;
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n13778), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    PFUMX i13061 (.BLUT(n13947), .ALUT(n13948), .C0(cnt_s2_num[2]), .Z(n13949));
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    LUT4 i2016_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2016_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i712_2_lut_rep_183_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_27)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i712_2_lut_rep_183_2_lut.init = 16'hdddd;
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n13852), .SP(sys_clk_50MHz_enable_27), .CD(n13778), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_66), .CD(n1434), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n15024), .SP(sys_clk_50MHz_enable_30), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1430), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n15024), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    PFUMX i13059 (.BLUT(n13944), .ALUT(n13945), .C0(cnt_s4_num[3]), .Z(n13946));
    CCU2D cnt_150ms_686_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10049), .COUT(n10050), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_9.INJECT1_1 = "NO";
    LUT4 i12242_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12242_3_lut.init = 16'h0101;
    PFUMX i13146 (.BLUT(n14103), .ALUT(n14100), .C0(state[2]), .Z(init_data_8__N_97[7]));
    PFUMX i13055 (.BLUT(n13938), .ALUT(n13939), .C0(cnt_s4_num[3]), .Z(n13940));
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    PFUMX i68 (.BLUT(n40), .ALUT(n13616), .C0(state[2]), .Z(init_data_8__N_97[8]));
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    PFUMX i29 (.BLUT(n13), .ALUT(n3), .C0(state[2]), .Z(init_data_8__N_97[1]));
    LUT4 i2067_2_lut (.A(state_c[0]), .B(state_5__N_168[0]), .Z(n2878)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2067_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n11389), .B(n11376), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut.init = 16'hffef;
    LUT4 i4_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i2070_4_lut (.A(state_c[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state_c[0]), .Z(n2881)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2070_4_lut.init = 16'hb3a0;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    LUT4 mux_290_Mux_3_i61_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n61)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam mux_290_Mux_3_i61_4_lut_4_lut_4_lut.init = 16'h0210;
    LUT4 i1_4_lut_adj_23 (.A(cnt_150ms[5]), .B(n11294), .C(n10_adj_771), 
         .D(n11271), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_23.init = 16'hfffd;
    LUT4 i260_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_30)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 mux_290_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_290_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    LUT4 mux_290_Mux_3_i15_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_290_Mux_3_i15_4_lut_4_lut.init = 16'h08e0;
    LUT4 n12596_bdd_4_lut (.A(n15022), .B(n12143), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n15004)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n12596_bdd_4_lut.init = 16'h00ca;
    LUT4 i2_4_lut (.A(cnt_150ms[13]), .B(n6548), .C(n11468), .D(n13690), 
         .Z(n11294)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 n11383_bdd_4_lut_12870 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(n13634), 
         .D(cnt_s4_num[0]), .Z(n13353)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+!(D))))) */ ;
    defparam n11383_bdd_4_lut_12870.init = 16'h0900;
    PFUMX i13049 (.BLUT(n13929), .ALUT(n13930), .C0(n6571), .Z(n13931));
    LUT4 i4_4_lut_adj_24 (.A(cnt_150ms[8]), .B(cnt_150ms[6]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[11]), .Z(n10_adj_771)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_24.init = 16'hfffb;
    LUT4 n13354_bdd_2_lut (.A(n13354), .B(n6571), .Z(n13355)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n13354_bdd_2_lut.init = 16'heeee;
    LUT4 i10849_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n11468)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10849_2_lut.init = 16'h8888;
    LUT4 i887_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n13639), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i887_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_4_lut_adj_25 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n11476), 
         .D(cnt_150ms[18]), .Z(n11271)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i2_4_lut_adj_25.init = 16'hffdf;
    LUT4 i11_4_lut (.A(n17), .B(n22), .C(cnt_s4_num[4]), .D(cnt_s4_num[13]), 
         .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i11_4_lut.init = 16'h0008;
    LUT4 i5_3_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[11]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i10_4_lut (.A(n13_adj_772), .B(n11496), .C(cnt_s4_num[15]), .D(cnt_s4_num[12]), 
         .Z(n22)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i10_4_lut.init = 16'h0200;
    LUT4 i10857_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n11476)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10857_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[14]), .Z(n13_adj_772)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i10877_4_lut (.A(cnt_s4_num[16]), .B(cnt_s4_num[7]), .C(n41), 
         .D(n13840), .Z(n11496)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10877_4_lut.init = 16'hfffe;
    LUT4 n2850_bdd_4_lut (.A(n13702), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n13382)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n2850_bdd_4_lut.init = 16'h31cf;
    LUT4 i7870_2_lut_rep_115_4_lut (.A(n13801), .B(n8699), .C(cnt_s4_num[10]), 
         .D(cnt_s4_num[0]), .Z(n13620)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7870_2_lut_rep_115_4_lut.init = 16'hfffe;
    LUT4 cnt_s2_num_5__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13440)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut.init = 16'ha088;
    LUT4 i1_2_lut_4_lut (.A(n13801), .B(n8699), .C(cnt_s4_num[10]), .D(cnt_s4_num[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 cnt_s2_num_0__bdd_4_lut_12942 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13438)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_12942.init = 16'h1020;
    LUT4 n13438_bdd_4_lut (.A(n13438), .B(cnt_s2_num[4]), .C(n13440), 
         .D(cnt_s2_num[5]), .Z(n13615)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n13438_bdd_4_lut.init = 16'h22f0;
    LUT4 i2072_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state_c[1]), .Z(n2883)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2072_4_lut.init = 16'h3b0a;
    LUT4 n8725_bdd_4_lut_12905 (.A(n13620), .B(n13805), .C(n52), .D(\state[4] ), 
         .Z(n12599)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam n8725_bdd_4_lut_12905.init = 16'hdc00;
    LUT4 i852_2_lut_rep_347 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n13852)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i852_2_lut_rep_347.init = 16'h6666;
    LUT4 i2074_4_lut (.A(state_c[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n2885)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2074_4_lut.init = 16'heca0;
    LUT4 n12143_bdd_3_lut_then_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n15021)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n12143_bdd_3_lut_then_4_lut.init = 16'h48a9;
    LUT4 n12143_bdd_3_lut_else_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .Z(n15020)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n12143_bdd_3_lut_else_4_lut.init = 16'h0808;
    LUT4 n165_bdd_2_lut_13148_3_lut (.A(n14101), .B(n6571), .C(\state[4] ), 
         .Z(n14103)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n165_bdd_2_lut_13148_3_lut.init = 16'he0e0;
    LUT4 i714_1_lut (.A(\state[4] ), .Z(n1434)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i714_1_lut.init = 16'h5555;
    PFUMX i11511 (.BLUT(n2838), .ALUT(n61), .C0(cnt_s2_num[4]), .Z(n12131));
    LUT4 i1_4_lut_adj_26 (.A(cnt_150ms[16]), .B(n11273), .C(n4_adj_773), 
         .D(n11470), .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_26.init = 16'hfdff;
    PFUMX i11517 (.BLUT(n11196), .ALUT(n11318), .C0(cnt_s2_num[4]), .Z(n12137));
    LUT4 i3_4_lut (.A(cnt_150ms[14]), .B(cnt_150ms[5]), .C(cnt_150ms[6]), 
         .D(n11271), .Z(n11273)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i873_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n13770), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i873_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i11516 (.BLUT(n15_adj_774), .ALUT(n30), .C0(cnt_s2_num[4]), 
          .Z(n12136));
    LUT4 cnt_s2_num_2__bdd_4_lut_12728 (.A(cnt_s2_num[4]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n12985)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_12728.init = 16'h1640;
    LUT4 n12985_bdd_2_lut (.A(n12985), .B(cnt_s2_num[2]), .Z(n12143)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n12985_bdd_2_lut.init = 16'h2222;
    LUT4 i10851_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11470)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10851_2_lut.init = 16'h8888;
    PFUMX i11510 (.BLUT(n15), .ALUT(n30_adj_775), .C0(cnt_s2_num[4]), 
          .Z(n12130));
    LUT4 i2076_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state_c[3]), .Z(n2887)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2076_4_lut.init = 16'h3b0a;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6871), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i880_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n13679), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i880_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i12126_4_lut (.A(cnt_s2_num[5]), .B(n13739), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12126_4_lut.init = 16'h1000;
    LUT4 cnt_s4_num_3__bdd_4_lut_12867 (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[0]), .Z(n13067)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (D)+!B !(C+(D))))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut_12867.init = 16'h6423;
    LUT4 i5_3_lut_rep_185 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .Z(n13690)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i5_3_lut_rep_185.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_27 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n6576), .Z(n4_adj_773)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_28 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n11374), .Z(n11376)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut_adj_28.init = 16'hfffe;
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_66), 
            .CD(n1434), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    LUT4 init_data_8__I_0_i6_4_lut (.A(n13946), .B(\init_data_8__N_240[5] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n11384), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i12222_3_lut (.A(n13634), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .Z(n11466)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i12222_3_lut.init = 16'h4141;
    LUT4 init_data_8__I_0_i1_3_lut (.A(init_data_8__N_231[0]), .B(\init_data_8__N_240[0] ), 
         .C(state[2]), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i7159_3_lut (.A(n68), .B(\state[4] ), .C(n13805), .Z(init_data_8__N_231[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7159_3_lut.init = 16'hc8c8;
    LUT4 i2_4_lut_adj_29 (.A(cnt_s4_num[3]), .B(n4), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n49)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i2_4_lut_adj_29.init = 16'h4048;
    LUT4 i87_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n68)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i87_4_lut.init = 16'h05c1;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n13355), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(\state[4] ), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_30 (.A(cnt_s4_num[0]), .B(n11300), .C(n13804), .D(cnt_s4_num[3]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_adj_30.init = 16'ha088;
    LUT4 i1_4_lut_adj_31 (.A(n13840), .B(cnt_s4_num[10]), .C(n13801), 
         .D(n8699), .Z(n11300)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_adj_31.init = 16'h0002;
    LUT4 i69_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n52)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i69_3_lut.init = 16'h1818;
    LUT4 i3_4_lut_adj_32 (.A(n13802), .B(n13801), .C(n41), .D(n11268), 
         .Z(n6571)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i3_4_lut_adj_32.init = 16'hfffe;
    LUT4 i1_2_lut_adj_33 (.A(cnt_s4_num[10]), .B(n11369), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 i4_4_lut_adj_34 (.A(cnt_s4_num[4]), .B(cnt_s4_num[13]), .C(cnt_s4_num[17]), 
         .D(n6), .Z(n11268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i4_4_lut_adj_34.init = 16'hfffe;
    LUT4 i1_2_lut_adj_35 (.A(cnt_s4_num[12]), .B(cnt_s4_num[16]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_35.init = 16'heeee;
    LUT4 i3_4_lut_adj_36 (.A(cnt_s4_num[6]), .B(cnt_s4_num[5]), .C(cnt_s4_num[8]), 
         .D(cnt_s4_num[9]), .Z(n11369)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i3_4_lut_adj_36.init = 16'hfffe;
    LUT4 i6017_1_lut (.A(state_c[0]), .Z(n6871)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6017_1_lut.init = 16'h5555;
    LUT4 i12114_4_lut (.A(n11389), .B(n11375), .C(cnt_150ms[6]), .D(cnt_150ms[3]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12114_4_lut.init = 16'h0100;
    LUT4 i3_4_lut_adj_37 (.A(cnt_150ms[5]), .B(n11498), .C(cnt_150ms[22]), 
         .D(n11374), .Z(n11375)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i3_4_lut_adj_37.init = 16'hff7f;
    LUT4 i10879_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[2]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n11498)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10879_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n11389)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_38 (.A(cnt_150ms[18]), .B(n6576), .C(cnt_150ms[9]), 
         .D(n6548), .Z(n11374)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_38.init = 16'hffdf;
    LUT4 i5_3_lut_adj_39 (.A(cnt_150ms[11]), .B(n10_adj_776), .C(cnt_150ms[13]), 
         .Z(n6576)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i5_3_lut_adj_39.init = 16'hfdfd;
    LUT4 i4_4_lut_adj_40 (.A(cnt_150ms[21]), .B(cnt_150ms[19]), .C(cnt_150ms[12]), 
         .D(cnt_150ms[8]), .Z(n10_adj_776)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_40.init = 16'hfbff;
    LUT4 i3_4_lut_adj_41 (.A(cnt_150ms[15]), .B(cnt_150ms[10]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n6548)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_41.init = 16'hffef;
    CCU2D cnt_150ms_686_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10048), .COUT(n10049), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_7.INJECT1_1 = "NO";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10036), .COUT(n10037), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(cnt_s4_num[2]), 
         .Z(n13930)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_else_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[2]), .Z(n13929)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_else_3_lut.init = 16'h2202;
    CCU2D cnt_150ms_686_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10047), .COUT(n10048), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_5.INJECT1_1 = "NO";
    LUT4 i854_2_lut_rep_265 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n13770)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i854_2_lut_rep_265.init = 16'h8888;
    LUT4 i861_2_lut_rep_174_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n13679)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i861_2_lut_rep_174_3_lut.init = 16'h8080;
    LUT4 i859_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i859_2_lut_3_lut.init = 16'h7878;
    LUT4 i2028_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n2838)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2028_3_lut_4_lut.init = 16'h7088;
    LUT4 i868_2_lut_rep_134_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n13639)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i868_2_lut_rep_134_3_lut_4_lut.init = 16'h8000;
    LUT4 i866_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i866_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7291_3_lut (.A(n13067), .B(\state[4] ), .C(n13805), .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7291_3_lut.init = 16'hc8c8;
    LUT4 i1_4_lut_adj_42 (.A(\state[4] ), .B(n6571), .C(n13931), .D(n16), 
         .Z(n13)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_adj_42.init = 16'haaa8;
    LUT4 i1_4_lut_adj_43 (.A(\state[4] ), .B(n11416), .C(n13940), .D(n49), 
         .Z(n40)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_4_lut_adj_43.init = 16'haaa2;
    PFUMX i12262 (.BLUT(n12599), .ALUT(n15004), .C0(state[2]), .Z(init_data_8__N_97[6]));
    LUT4 i3_4_lut_then_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(n6571), 
         .D(cnt_s4_num[2]), .Z(n13939)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i3_4_lut_then_4_lut.init = 16'hfafe;
    LUT4 i3_4_lut_else_4_lut (.A(n13634), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .D(n6571), .Z(n13938)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i3_4_lut_else_4_lut.init = 16'hff04;
    L6MUX21 i11512 (.D0(n12130), .D1(n12131), .SD(cnt_s2_num[5]), .Z(n12132));
    LUT4 n6571_bdd_4_lut_13554 (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[1]), .Z(n14101)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam n6571_bdd_4_lut_13554.init = 16'hc040;
    L6MUX21 i11518 (.D0(n12136), .D1(n12137), .SD(cnt_s2_num[5]), .Z(n12138));
    CCU2D cnt_150ms_686_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10046), .COUT(n10047), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_3.INJECT1_1 = "NO";
    LUT4 n14099_bdd_2_lut (.A(n14099), .B(cnt_s2_num[6]), .Z(n14100)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14099_bdd_2_lut.init = 16'h2222;
    CCU2D cnt_150ms_686_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10046), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_686_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_686_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_1.INJECT1_1 = "NO";
    LUT4 n13615_bdd_4_lut (.A(n13615), .B(n30_adj_777), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n14099)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam n13615_bdd_4_lut.init = 16'hacaa;
    LUT4 i6013_1_lut (.A(state[5]), .Z(n6867)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6013_1_lut.init = 16'h5555;
    LUT4 mux_290_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_774)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_290_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i1_2_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n11318)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11196)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 i1_2_lut_rep_335 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n13840)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_335.init = 16'hdddd;
    LUT4 i10798_2_lut_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[3]), 
         .Z(n11416)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i10798_2_lut_3_lut.init = 16'hfdfd;
    LUT4 mux_290_Mux_3_i30_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n30_adj_775)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam mux_290_Mux_3_i30_4_lut_4_lut_4_lut.init = 16'hd0c0;
    LUT4 i7208_2_lut_rep_197_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n13702)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7208_2_lut_rep_197_2_lut.init = 16'h4444;
    LUT4 mux_290_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_777)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_290_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    FD1S3IX cnt_150ms_686__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i22.GSR = "ENABLED";
    PFUMX i13696 (.BLUT(n15020), .ALUT(n15021), .C0(cnt_s2_num[1]), .Z(n15022));
    LUT4 i1_4_lut_then_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(n6571), .Z(n13945)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_then_4_lut.init = 16'hffcd;
    LUT4 i1_4_lut_else_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(n6571), .Z(n13944)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_else_4_lut.init = 16'hffb3;
    LUT4 i1_2_lut_rep_296 (.A(cnt_s4_num[7]), .B(cnt_s4_num[11]), .Z(n13801)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_rep_296.init = 16'heeee;
    LUT4 i2_3_lut_rep_129_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[11]), 
         .C(cnt_s4_num[10]), .D(n8699), .Z(n13634)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i2_3_lut_rep_129_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_297 (.A(cnt_s4_num[14]), .B(cnt_s4_num[15]), .Z(n13802)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_rep_297.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[15]), .C(n11369), 
         .D(n11268), .Z(n8699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_299 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n13804)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_2_lut_rep_299.init = 16'h8888;
    LUT4 i1_3_lut_rep_300 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6571), .Z(n13805)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_3_lut_rep_300.init = 16'hff80;
    LUT4 n11383_bdd_3_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6571), .Z(n13352)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam n11383_bdd_3_lut_4_lut.init = 16'hccc4;
    LUT4 n13383_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n13382), 
         .D(n13949), .Z(n13616)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n13383_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7180_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12132), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7180_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12138), .Z(n3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_44 (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(n11466), 
         .D(n13805), .Z(n11384)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_adj_44.init = 16'hff40;
    LUT4 n2850_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n13948)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2850_bdd_3_lut_4_lut_then_4_lut.init = 16'hf3fb;
    LUT4 i2_2_lut_rep_234_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n13739)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_234_3_lut_4_lut.init = 16'hfbff;
    FD1S3IX cnt_150ms_686__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i1.GSR = "ENABLED";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10038), .COUT(n10039), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10035), .COUT(n10036), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10041), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10033), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    LUT4 n2850_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n13947)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2850_bdd_3_lut_4_lut_else_4_lut.init = 16'hb7f2;
    PFUMX i12820 (.BLUT(n13353), .ALUT(n13352), .C0(cnt_s4_num[3]), .Z(n13354));
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10040), .COUT(n10041), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10056), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_23.INJECT1_1 = "NO";
    FD1S3AY state_FSM_i5 (.D(n2878), .CK(sys_clk_50MHz), .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2881), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2883), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2885), .CK(sys_clk_50MHz), .Q(state_c[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2887), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_686__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686__i0.GSR = "ENABLED";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10039), .COUT(n10040), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10034), .COUT(n10035), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10055), .COUT(n10056), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10054), .COUT(n10055), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_19.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10033), .COUT(n10034), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10053), .COUT(n10054), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_17.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10037), .COUT(n10038), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10052), .COUT(n10053), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10051), .COUT(n10052), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_686_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10050), .COUT(n10051), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_686_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_686_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_686_add_4_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (sys_clk_50MHz, cnt_length_num, n14, cnt_rom_prepare, 
            length_num_flag, wr_done, show_char_data, state, \state_3__N_368[1] , 
            sys_clk_50MHz_enable_51, \cnt_length_num[4] , sys_clk_50MHz_enable_56, 
            \end_x_8__N_295[7] , \state[3] , \end_x_8__N_295[6] , \end_x_8__N_295[4] , 
            \end_y_8__N_313[4] , \end_x_8__N_295[3] , n8593, \end_x_8__N_295[5] , 
            \end_y_8__N_313[5] , GND_net, \ascii_num[6] , \ascii_num[3] , 
            \ascii_num[4] , \ascii_num[1] , \ascii_num[2] , \ascii_num[0] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output [4:0]cnt_length_num;
    input n14;
    output [2:0]cnt_rom_prepare;
    output length_num_flag;
    input wr_done;
    output [8:0]show_char_data;
    output [3:0]state;
    input \state_3__N_368[1] ;
    input sys_clk_50MHz_enable_51;
    output \cnt_length_num[4] ;
    input sys_clk_50MHz_enable_56;
    input \end_x_8__N_295[7] ;
    output \state[3] ;
    input \end_x_8__N_295[6] ;
    input \end_x_8__N_295[4] ;
    input \end_y_8__N_313[4] ;
    input \end_x_8__N_295[3] ;
    output n8593;
    input \end_x_8__N_295[5] ;
    input \end_y_8__N_313[5] ;
    input GND_net;
    input \ascii_num[6] ;
    input \ascii_num[3] ;
    input \ascii_num[4] ;
    input \ascii_num[1] ;
    input \ascii_num[2] ;
    input \ascii_num[0] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [15:0]n429;
    
    wire cnt_set_windows_3__N_384;
    wire [15:0]n33;
    wire [3:0]state_3__N_376;
    wire [2:0]n12;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_439;
    wire [5:0]n21;
    
    wire sys_clk_50MHz_enable_47;
    wire [5:0]n422;
    
    wire the1_wr_done;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_68;
    wire [7:0]temp_7__N_345;
    
    wire length_num_flag_N_462, sys_clk_50MHz_enable_48;
    wire [8:0]show_char_data_8__N_275;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire n13795, n13789, n10348, n1565, n2395, n1596, n11438, 
        n13625, n13721, n6866, n13619, n1101, n1149, n13728, n11325, 
        n13681, n11327, n13654, n13633, n15006, n13755, n1148, 
        n13858, n13859, n125, n6662, n13667, n380;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2895;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n1772;
    wire [3:0]state_3__N_372;
    
    wire n2898, n2900;
    wire [2:0]n132;
    
    wire n891, n1228, n236;
    wire [4:0]n365;
    
    wire n12829, n796, n13735, n828, n1211, n13675, n1530, n2901;
    wire [8:0]show_char_data_8__N_449;
    
    wire n11527, n13718, n13856, n13855, n13857, n13781, n13635, 
        n11486, n13473, sys_clk_50MHz_enable_105, n1366;
    wire [6:0]n1358;
    
    wire n13824, n13644, n2875, n1643, n1530_adj_757, n5954, n13775, 
        n13774;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n2903, n5948, n6850, n13689, n13758, n11330, n11266, 
        n5906, n13783, n13782, n3, n13680, n13660, n5944;
    wire [4:0]n1351;
    
    wire n11378, n6870, n722, n13665, n1834, n13684, n1275, n11372, 
        n11283, n11460, n1314, n15008, n15009, n15010, n10, n13741, 
        n13706, n158, n6868, n13842, n1436, n13813, n6079, n13740, 
        n379, n380_adj_758, n11310, n4720, n828_adj_759, n6, n3936, 
        n1467, n8697, n1403, n6080, n13786, n10078, n46, n13662, 
        n62, n13658, n2300, n13676, n13656, n1851, n10045, n13814, 
        n2172, n13629, n13757, n348, n13652, n364, n13750, n380_adj_760, 
        n13672, n13636, n13694, n13707, n126, n11566, n13653, 
        n2428, n5894, n892, n10350, n1534, n10044, n13798, n15007, 
        n13678, n1851_adj_761, n13790, n13002, n13831, n11446, n13421, 
        n13692, n6675, n3000, n859, n10312, n12933, n509, n1661, 
        n1723, n6718, n1405, n1278, n11958, n510, n127, n12162, 
        n13830, n13836, n13021, n13648, n13848, n94, n270, n286, 
        n13630, n12569, n13372, n11442, n13844, n12118, n3069, 
        n12030, n4094, n13631, n13641, n3122, n1529, n13845, n11819, 
        n3069_adj_762, n11974, n4094_adj_763, n13659, n11344, n14830, 
        n4094_adj_764, n13655, n10043, n1723_adj_765, n13752, n12145, 
        n11392, n6036, n13284, n13669, n1820, n13744, n13647, 
        n13349, n308, n301, n317, n270_adj_766, n11969, n1676, 
        n94_adj_767, n1172, n2025, n11768, n1755, n13815, n13664, 
        n2332, n2364, n6668, n4, n2141, n2140, n13666, n11638, 
        n12727, n12726, n15003, n46_adj_768, n62_adj_769, n10042, 
        n13135, n13646, n1069, n13833, n1084, n13761, n13732, 
        n1565_adj_770;
    
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n429[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1S3AX the1_wr_done_177 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_177.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n429[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n429[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n429[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1S3AX length_num_flag_183 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_183.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n429[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n429[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n429[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13795), 
         .C(n13789), .D(rom_addr[7]), .Z(n10348)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfff;
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n429[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i10820_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11438)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10820_2_lut_2_lut.init = 16'hdddd;
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n429[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n429[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n429[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    LUT4 i7600_2_lut_rep_120_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13795), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13625)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7600_2_lut_rep_120_3_lut_4_lut_4_lut.init = 16'h0020;
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n429[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n429[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n429[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n429[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    LUT4 i10944_2_lut_rep_216_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n13721)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10944_2_lut_rep_216_2_lut.init = 16'h4444;
    LUT4 i6012_1_lut (.A(n33[10]), .Z(n6866)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i6012_1_lut.init = 16'h5555;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n13619), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_223_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n13728)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_223_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n11325), .C(rom_addr[3]), 
         .D(n13681), .Z(n11327)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_48), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_149_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13654)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_149_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i7543_2_lut_rep_128_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n13633)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7543_2_lut_rep_128_3_lut_4_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i7397_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15006), 
         .D(n13755), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7397_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut (.A(state[2]), .B(state[1]), .Z(sys_clk_50MHz_enable_48)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i13003 (.BLUT(n13858), .ALUT(n13859), .C0(rom_addr[3]), .Z(n125));
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n11325), 
         .C(n6662), .D(n13667), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i2084_2_lut (.A(state_c[0]), .B(\state_3__N_368[1] ), .Z(n2895)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2084_2_lut.init = 16'h2222;
    LUT4 i1020_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1772)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1020_2_lut.init = 16'h8888;
    LUT4 i2087_4_lut (.A(state[1]), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state_c[0]), .Z(n2898)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2087_4_lut.init = 16'hce0a;
    LUT4 i2089_4_lut (.A(state[2]), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(state[1]), .Z(n2900)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2089_4_lut.init = 16'hce0a;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_51), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_51), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    LUT4 i7314_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7314_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i10801_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10801_3_lut_4_lut_4_lut_4_lut.init = 16'h4203;
    LUT4 i10811_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n236)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10811_3_lut_4_lut_4_lut_4_lut.init = 16'h180c;
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(\cnt_length_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    LUT4 n2203_bdd_2_lut_12403_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n12829)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2203_bdd_2_lut_12403_4_lut_4_lut_4_lut.init = 16'h0151;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n13735), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n13675), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n2901), .ALUT(show_char_data_8__N_449[5]), 
          .C0(n11527), .Z(show_char_data_8__N_275[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;
    LUT4 i988_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n13718), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i988_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7428_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13856)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7428_4_lut_4_lut_then_4_lut.init = 16'h0004;
    PFUMX i13001 (.BLUT(n13855), .ALUT(n13856), .C0(rom_addr[3]), .Z(n13857));
    LUT4 i153_2_lut_rep_276 (.A(state[2]), .B(temp[0]), .Z(n13781)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i153_2_lut_rep_276.init = 16'h2222;
    LUT4 i1_2_lut_rep_130_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13635)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_130_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    LUT4 i118_4_lut (.A(n11486), .B(length_num_flag), .C(\cnt_length_num[4] ), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    LUT4 n442_bdd_4_lut (.A(n429[3]), .B(n429[5]), .C(n429[2]), .D(n429[4]), 
         .Z(n13473)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n442_bdd_4_lut.init = 16'hccef;
    FD1P3AX rom_addr_i0_i11 (.D(n1366), .SP(sys_clk_50MHz_enable_105), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i10 (.D(n1358[6]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    LUT4 i7178_4_lut_4_lut (.A(n13824), .B(n13644), .C(state[1]), .D(n2875), 
         .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i7178_4_lut_4_lut.init = 16'h3f2f;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n13675), .D(rom_addr[0]), .Z(n1530_adj_757)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n13781), .B(\end_x_8__N_295[7] ), 
         .C(state[1]), .D(n5954), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i2_3_lut_rep_135_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), .C(n13774), 
         .D(\state[3] ), .Z(sys_clk_50MHz_enable_47)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_135_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n13781), .B(\end_x_8__N_295[6] ), 
         .C(state[1]), .D(n5954), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13775), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n13781), .B(n2903), .C(state[1]), 
         .D(n13644), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i2092_4_lut (.A(\end_x_8__N_295[4] ), .B(\end_y_8__N_313[4] ), 
         .C(n13824), .D(n5948), .Z(n2903)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2092_4_lut.init = 16'hc0ca;
    LUT4 show_char_data_8__I_0_i3_3_lut_4_lut (.A(state[2]), .B(temp[0]), 
         .C(state[1]), .D(show_char_data_8__N_449[2]), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 state_3__N_365_I_0_195_2_lut (.A(state[1]), .B(the1_wr_done), .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam state_3__N_365_I_0_195_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n6850), .B(n13689), .C(n13758), .D(\end_x_8__N_295[3] ), 
         .Z(n11330)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_4_lut.init = 16'h3230;
    LUT4 i5998_3_lut (.A(n429[2]), .B(n429[4]), .C(n429[3]), .Z(n6850)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i5998_3_lut.init = 16'hcece;
    LUT4 i2_3_lut (.A(n429[3]), .B(n429[1]), .C(n429[2]), .Z(n11266)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n13781), .B(n5906), .C(state[1]), 
         .D(n13644), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    FD1P3AX rom_addr_i0_i9 (.D(n1358[5]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    LUT4 i5077_4_lut (.A(n13783), .B(n429[9]), .C(n13689), .D(n11266), 
         .Z(n5906)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5077_4_lut.init = 16'hcecf;
    LUT4 i960_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i960_2_lut.init = 16'h6666;
    FD1P3AX rom_addr_i0_i8 (.D(n1358[4]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(state[2]), .B(temp[0]), 
         .C(state[1]), .D(show_char_data_8__N_449[3]), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hf202;
    LUT4 i558_2_lut_rep_277 (.A(n429[6]), .B(n429[8]), .Z(n13782)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i558_2_lut_rep_277.init = 16'heeee;
    LUT4 i2015_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_51), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2015_2_lut.init = 16'h6666;
    LUT4 i1056_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[24:58])
    defparam i1056_1_lut.init = 16'h5555;
    FD1P3AX rom_addr_i0_i7 (.D(n1358[3]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 i7746_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8593)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7746_2_lut.init = 16'heeee;
    FD1P3AX rom_addr_i0_i6 (.D(n1358[2]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(n1358[1]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    LUT4 i2013_2_lut_4_lut (.A(\state[3] ), .B(n13774), .C(n13680), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2013_2_lut_4_lut.init = 16'h10ef;
    LUT4 i1_2_lut_rep_155_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13660)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_155_3_lut_3_lut.init = 16'h4040;
    LUT4 i5114_3_lut_4_lut (.A(n13782), .B(n429[7]), .C(n429[9]), .D(n13783), 
         .Z(n5944)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5114_3_lut_4_lut.init = 16'hf1f0;
    FD1P3AX rom_addr_i0_i4 (.D(n1358[0]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(n1351[1]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n13782), .B(n429[7]), .C(n429[4]), .D(n429[5]), 
         .Z(n11378)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n13781), .B(n5944), .C(state[1]), 
         .D(n13644), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    LUT4 n13473_bdd_2_lut_3_lut (.A(n429[6]), .B(n429[8]), .C(n13473), 
         .Z(n5948)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n13473_bdd_2_lut_3_lut.init = 16'hfefe;
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n6870), 
            .Q(\state[3] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i562_2_lut_rep_139 (.A(n33[10]), .B(n722), .Z(n13644)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i562_2_lut_rep_139.init = 16'hbbbb;
    LUT4 i2095_4_lut_4_lut (.A(n33[10]), .B(n722), .C(n429[9]), .D(n11330), 
         .Z(show_char_data_8__N_449[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2095_4_lut_4_lut.init = 16'hccc8;
    LUT4 i2137_4_lut_4_lut (.A(n33[10]), .B(n722), .C(n429[9]), .D(n11378), 
         .Z(show_char_data_8__N_449[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i2137_4_lut_4_lut.init = 16'hc8cc;
    LUT4 i5124_2_lut_3_lut_4_lut (.A(n33[10]), .B(n722), .C(n5948), .D(n13824), 
         .Z(n5954)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5124_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i12224_2_lut_3_lut (.A(n33[10]), .B(n722), .C(state[1]), .Z(n11527)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12224_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_184_3_lut (.A(n429[6]), .B(n429[8]), .C(n429[7]), 
         .Z(n13689)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_184_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_160_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13665)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_160_3_lut_4_lut_4_lut.init = 16'h0b00;
    LUT4 i7427_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n13684), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7427_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i909_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i909_3_lut.init = 16'h6a6a;
    LUT4 i902_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i902_2_lut.init = 16'h6666;
    LUT4 i556_2_lut_rep_278 (.A(n429[4]), .B(n429[5]), .Z(n13783)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i556_2_lut_rep_278.init = 16'heeee;
    LUT4 i7712_4_lut_4_lut (.A(n429[4]), .B(n429[5]), .C(n13782), .D(n11266), 
         .Z(n2875)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i7712_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i1_3_lut_rep_253 (.A(n429[5]), .B(n6850), .C(n11266), .Z(n13758)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_rep_253.init = 16'habab;
    LUT4 i1_3_lut_4_lut (.A(n429[5]), .B(n6850), .C(n11266), .D(\end_x_8__N_295[5] ), 
         .Z(n11372)) /* synthesis lut_function=(A+(B (D)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut.init = 16'hefab;
    LUT4 i7263_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13859)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7263_4_lut_4_lut_then_4_lut.init = 16'h0004;
    LUT4 i3_4_lut (.A(n11283), .B(cnt_wr_color_data[5]), .C(cnt_wr_color_data[4]), 
         .D(n11460), .Z(n1314)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i924_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i924_2_lut.init = 16'h6666;
    LUT4 i7428_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13855)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7428_4_lut_4_lut_else_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_adj_20 (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), 
         .C(cnt_wr_color_data[3]), .Z(n11283)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_20.init = 16'h8080;
    PFUMX i13688 (.BLUT(n15008), .ALUT(n15009), .C0(rom_addr[4]), .Z(n15010));
    LUT4 i1018_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1351[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1018_2_lut.init = 16'h6666;
    LUT4 i5_3_lut (.A(n11283), .B(n10), .C(cnt_wr_color_data[5]), .Z(length_num_flag_N_462)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5_3_lut.init = 16'h0808;
    LUT4 i6016_1_lut (.A(state[2]), .Z(n6870)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6016_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(cnt_wr_color_data[4]), .B(state[2]), .C(cnt_wr_color_data[0]), 
         .D(the1_wr_done), .Z(n10)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i7385_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13741), .C(rom_addr[3]), 
         .D(n13706), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7385_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i2090_4_lut (.A(n11372), .B(\end_y_8__N_313[5] ), .C(n13824), 
         .D(n13782), .Z(n2901)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2090_4_lut.init = 16'hc0ca;
    LUT4 i76_2_lut_rep_269 (.A(state[2]), .B(the1_wr_done), .Z(n13774)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i76_2_lut_rep_269.init = 16'h8888;
    LUT4 i10841_2_lut_3_lut (.A(state[2]), .B(the1_wr_done), .C(cnt_wr_color_data[0]), 
         .Z(n11460)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i10841_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_270 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n13775)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_270.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_175_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n13680)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_175_3_lut.init = 16'hbfbf;
    LUT4 i12219_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_105)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12219_2_lut_3_lut.init = 16'h0404;
    LUT4 temp_7__N_424_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(\state[3] ), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_424_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i12148_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1314), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_68)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12148_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i6014_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1314), .D(cnt_rom_prepare[1]), .Z(n6868)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6014_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 i7812_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n13842), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7812_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(n13813), .Z(n6079)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n13740), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_758)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11310), 
         .C(n4720), .D(n13665), .Z(n828_adj_759)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 i560_2_lut_rep_319 (.A(n429[7]), .B(n429[9]), .Z(n13824)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i560_2_lut_rep_319.init = 16'heeee;
    LUT4 i12136_4_lut (.A(n429[15]), .B(n429[11]), .C(n429[13]), .D(n6), 
         .Z(n722)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12136_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_21 (.A(n429[12]), .B(n429[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_21.init = 16'heeee;
    LUT4 i7263_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13858)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7263_4_lut_4_lut_else_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n3936), 
         .C(n13675), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15009)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8697), 
         .C(rom_addr[4]), .D(n13684), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13813), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n6080)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i2_3_lut_4_lut_4_lut_adj_22 (.A(rom_addr[5]), .B(n13786), .C(rom_addr[0]), 
         .D(n13681), .Z(n10078)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_adj_22.init = 16'h4000;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46), 
         .C(n13662), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i7223_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13667), 
         .D(n13658), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7223_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13676), .D(n13656), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15008)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut_else_4_lut.init = 16'h0400;
    CCU2D add_677_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10045), 
          .S0(n1366));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_677_cout.INIT0 = 16'h0000;
    defparam add_677_cout.INIT1 = 16'h0000;
    defparam add_677_cout.INJECT1_0 = "NO";
    defparam add_677_cout.INJECT1_1 = "NO";
    LUT4 i7575_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13814), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n2172)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7575_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_68), .CD(n6868), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_124_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13789), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n13629)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_124_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    FD1S3IX state1_finish_flag_179 (.D(the1_wr_done), .CK(sys_clk_50MHz), 
            .CD(n6866), .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_179.GSR = "ENABLED";
    LUT4 i2091_3_lut_4_lut_4_lut (.A(state[1]), .B(n722), .C(temp[0]), 
         .D(state[2]), .Z(show_char_data_8__N_449[5])) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2091_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i3849_2_lut_rep_252_2_lut (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n13757)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i3849_2_lut_rep_252_2_lut.init = 16'h4444;
    LUT4 i7568_2_lut_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n348)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7568_2_lut_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_147_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n13795), .D(rom_addr[5]), .Z(n13652)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_147_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n13750), .Z(n380_adj_760)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_167_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13672)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_167_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i7539_2_lut_rep_131_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13636)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7539_2_lut_rep_131_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n13694), 
         .C(n13707), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 i12196_2_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(rom_addr[3]), 
         .Z(n11566)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12196_2_lut_3_lut_3_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n13653), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11310), 
         .C(n5894), .D(n13625), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7607_3_lut_3_lut (.A(rom_addr[6]), .B(n10350), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7607_3_lut_3_lut.init = 16'h0202;
    CCU2D add_677_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10044), .COUT(n10045), .S0(n1358[5]), .S1(n1358[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_677_7.INIT0 = 16'hf000;
    defparam add_677_7.INIT1 = 16'h0555;
    defparam add_677_7.INJECT1_0 = "NO";
    defparam add_677_7.INJECT1_1 = "NO";
    LUT4 i962_2_lut_rep_293 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n13798)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i962_2_lut_rep_293.init = 16'h8888;
    LUT4 i7368_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15007), 
         .D(n13678), .Z(n1851_adj_761)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7368_4_lut_4_lut.init = 16'h5140;
    LUT4 n12111_bdd_3_lut_12530_3_lut_3_lut (.A(rom_addr[3]), .B(n13790), 
         .C(rom_addr[4]), .Z(n13002)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12111_bdd_3_lut_12530_3_lut_3_lut.init = 16'h0404;
    LUT4 i969_2_lut_rep_213_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n13718)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i969_2_lut_rep_213_3_lut.init = 16'h8080;
    LUT4 n2040_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(n13831), 
         .D(n11446), .Z(n13421)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2040_bdd_4_lut_4_lut.init = 16'h0400;
    LUT4 i5834_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13750), 
         .D(n13692), .Z(n6675)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5834_4_lut_4_lut.init = 16'h7340;
    LUT4 i967_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i967_2_lut_3_lut.init = 16'h7878;
    LUT4 i974_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i974_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2189_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6079), 
         .D(n13629), .Z(n3000)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2189_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i7589_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n859)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7589_3_lut_4_lut_4_lut.init = 16'h888c;
    LUT4 i12018_3_lut_3_lut (.A(rom_addr[7]), .B(n10312), .C(n12933), 
         .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12018_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11987_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n6718)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11987_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11338_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278), .Z(n11958)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11338_4_lut_4_lut.init = 16'h7340;
    LUT4 i11542_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12162)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11542_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i926_2_lut_rep_325 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n13830)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i926_2_lut_rep_325.init = 16'h8888;
    LUT4 i938_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i938_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i10867_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n11486)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i10867_2_lut_3_lut.init = 16'h8080;
    LUT4 i931_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i931_2_lut_3_lut.init = 16'h7878;
    LUT4 n1628_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(n13836), .Z(n13021)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1628_bdd_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_143_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13648)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_143_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13658), .D(n13848), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), 
         .C(rom_addr[4]), .D(n13750), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12236_2_lut_rep_125_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(n13813), .Z(n13630)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12236_2_lut_rep_125_3_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 n109_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n12569), 
         .D(n1834), .Z(n13372)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n109_bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i11498_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11442), .C(rom_addr[4]), 
         .D(n13844), .Z(n12118)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11498_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7443_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12030), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7443_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i2311_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n13631), 
         .D(n13641), .Z(n3122)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2311_4_lut_4_lut.init = 16'hc0e2;
    LUT4 i11199_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n13845), .Z(n11819)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11199_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7226_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069_adj_762), 
         .D(n11974), .Z(n4094_adj_763)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7226_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n13659)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_154_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i7723_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11344), 
         .D(n14830), .Z(n4094_adj_764)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7723_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_150_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13655)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_150_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    CCU2D add_677_5 (.A0(\ascii_num[3] ), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(\cnt_length_num[4] ), .A1(\ascii_num[4] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n10043), .COUT(n10044), .S0(n1358[3]), 
          .S1(n1358[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_677_5.INIT0 = 16'h556a;
    defparam add_677_5.INIT1 = 16'hfaaa;
    defparam add_677_5.INJECT1_0 = "NO";
    defparam add_677_5.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n13845), .C(rom_addr[4]), .D(n13684), .Z(n1723_adj_765)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 i11525_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13752), .C(rom_addr[4]), 
         .D(n13844), .Z(n12145)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11525_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5198_4_lut_4_lut (.A(rom_addr[3]), .B(n11392), .C(rom_addr[5]), 
         .D(n13654), .Z(n6036)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5198_4_lut_4_lut.init = 16'hfd0d;
    LUT4 n2968_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n13844), .C(rom_addr[4]), 
         .D(n13658), .Z(n13284)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2968_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13669), 
         .C(rom_addr[4]), .D(n13844), .Z(n1820)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n1293_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n13744), 
         .D(n13647), .Z(n13349)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1293_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i11820_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_766), .C(rom_addr[4]), 
         .D(n13741), .Z(n11969)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11820_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n13845), .Z(n94_adj_767)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11148_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n11768)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11148_4_lut_4_lut.init = 16'h7340;
    LUT4 i945_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n13830), .C(cnt_length_num_c[3]), 
         .D(\cnt_length_num[4] ), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i945_3_lut_4_lut.init = 16'h7f80;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13676), 
         .C(rom_addr[4]), .D(n13845), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i2146_1_lut_rep_310 (.A(rom_addr[5]), .Z(n13815)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2146_1_lut_rep_310.init = 16'h5555;
    LUT4 i1_2_lut_rep_235_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n13740)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_235_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_157_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13662)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_157_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_159_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13664)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_159_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n13658), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i5827_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n6668)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5827_3_lut_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i1_2_lut_rep_202_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13707)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_202_3_lut_3_lut.init = 16'hfdfd;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13692), .D(n13647), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i11018_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n2140), 
         .D(n13666), .Z(n11638)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11018_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n12727_bdd_4_lut (.A(n12727), .B(n12726), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n15003)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n12727_bdd_4_lut.init = 16'h00ca;
    FD1S3JX state_FSM_i3 (.D(n2895), .CK(sys_clk_50MHz), .PD(\state[3] ), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n13655), 
         .C(rom_addr[0]), .D(n46_adj_768), .Z(n62_adj_769)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    CCU2D add_677_3 (.A0(\cnt_length_num[4] ), .B0(n1772), .C0(\ascii_num[1] ), 
          .D0(GND_net), .A1(\cnt_length_num[4] ), .B1(n1772), .C1(\ascii_num[2] ), 
          .D1(GND_net), .CIN(n10042), .COUT(n10043), .S0(n1358[1]), 
          .S1(n1358[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_677_3.INIT0 = 16'he1e1;
    defparam add_677_3.INIT1 = 16'he1e1;
    defparam add_677_3.INJECT1_0 = "NO";
    defparam add_677_3.INJECT1_1 = "NO";
    CCU2D add_677_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt_length_num[4] ), .B1(n1772), .C1(\ascii_num[0] ), .D1(GND_net), 
          .COUT(n10042), .S1(n1358[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_677_1.INIT0 = 16'hF000;
    defparam add_677_1.INIT1 = 16'h6969;
    defparam add_677_1.INJECT1_0 = "NO";
    defparam add_677_1.INJECT1_1 = "NO";
    LUT4 n2109_bdd_2_lut_12653_2_lut (.A(rom_addr[5]), .B(n15010), .Z(n13135)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2109_bdd_2_lut_12653_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_141_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13795), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13646)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_141_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    FD1S3AX state_FSM_i2 (.D(n2898), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2900), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_105), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n13833), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i981_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n13798), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i981_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7305_2_lut_rep_256_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n13761)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7305_2_lut_rep_256_2_lut.init = 16'hdddd;
    LUT4 i7430_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13732), .C(rom_addr[3]), 
         .D(n13684), .Z(n1565_adj_770)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7430_4_lut_4_lut_4_lut.init = 16'h4045;
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_105), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n1211(n1211), .n1403(n1403), 
            .n13284(n13284), .n1148(n1148), .n13692(n13692), .n380(n380_adj_760), 
            .n158(n158), .n2141(n2141), .n2172(n2172), .n1820(n1820), 
            .n1851(n1851_adj_761), .n286(n286), .n317(n317), .n1530(n1530), 
            .n13848(n13848), .n11768(n11768), .n13647(n13647), .n13659(n13659), 
            .n13653(n13653), .n828(n828_adj_759), .n2025(n2025), .n380_adj_1(n380_adj_758), 
            .n6675(n6675), .n62(n62), .n13845(n13845), .n4094(n4094), 
            .rom_q({rom_q}), .n4094_adj_2(n4094_adj_764), .n125(n125), 
            .n4094_adj_3(n4094_adj_763), .n1530_adj_4(n1530_adj_757), .n12162(n12162), 
            .n1565(n1565), .n828_adj_5(n828), .n11958(n11958), .n380_adj_6(n380), 
            .n13761(n13761), .n13707(n13707), .n270(n270_adj_766), .n62_adj_7(n62_adj_769), 
            .n1228(n1228), .n1101(n1101), .n1643(n1643), .n13741(n13741), 
            .n379(n379), .n8697(n8697), .n1529(n1529), .n13735(n13735), 
            .n11974(n11974), .n6668(n6668), .n11819(n11819), .n2332(n2332), 
            .n3936(n3936), .n796(n796), .n2395(n2395), .n13669(n13669), 
            .n509(n509), .n510(n510), .n13667(n13667), .n4720(n4720), 
            .n13706(n13706), .n13740(n13740), .n13752(n13752), .n3069(n3069), 
            .n1676(n1676), .n12727(n12727), .n6718(n6718), .n46(n46_adj_768), 
            .n46_adj_8(n46), .n301(n301), .n13836(n13836), .n13672(n13672), 
            .n13641(n13641), .n348(n348), .n1278(n1278), .n13757(n13757), 
            .n13684(n13684), .n1069(n1069), .n13349(n13349), .n5894(n5894), 
            .n13681(n13681), .n11310(n11310), .n15007(n15007), .n1149(n1149), 
            .n13750(n13750), .n13675(n13675), .n270_adj_9(n270), .n13789(n13789), 
            .n13831(n13831), .n13790(n13790), .n2140(n2140), .n236(n236), 
            .n13844(n13844), .n1275(n1275), .n13664(n13664), .n13842(n13842), 
            .n13656(n13656), .n13648(n13648), .n1661(n1661), .n13135(n13135), 
            .n891(n891), .n13658(n13658), .n13655(n13655), .n13814(n13814), 
            .n12145(n12145), .n11344(n11344), .n13646(n13646), .n4(n4), 
            .n3069_adj_10(n3069_adj_762), .n13631(n13631), .n13635(n13635), 
            .n10348(n10348), .n10350(n10350), .n11438(n11438), .n10078(n10078), 
            .n1405(n1405), .n13676(n13676), .n13833(n13833), .n15006(n15006), 
            .n13721(n13721), .n11392(n11392), .n11446(n11446), .n1851_adj_11(n1851), 
            .n6080(n6080), .n12726(n12726), .n1596(n1596), .n10312(n10312), 
            .n6036(n6036), .n13630(n13630), .n892(n892), .n13728(n13728), 
            .n2364(n2364), .n11566(n11566), .n1467(n1467), .n13660(n13660), 
            .n13652(n13652), .n1834(n1834), .n94(n94), .n126(n126), 
            .n127(n127), .n2428(n2428), .n2300(n2300), .n3122(n3122), 
            .n11969(n11969), .n15003(n15003), .n364(n364), .n1436(n1436), 
            .n3000(n3000), .n11327(n11327), .n1534(n1534), .n12030(n12030), 
            .n13755(n13755), .n13678(n13678), .n13744(n13744), .n13795(n13795), 
            .n13636(n13636), .n14830(n14830), .n13786(n13786), .n12118(n12118), 
            .n13654(n13654), .n6662(n6662), .n308(n308), .n1172(n1172), 
            .n13732(n13732), .n1723(n1723_adj_765), .n13666(n13666), .n13021(n13021), 
            .n1755(n1755), .n859(n859), .n1084(n1084), .n13857(n13857), 
            .n13813(n13813), .n13002(n13002), .n13619(n13619), .n11325(n11325), 
            .n94_adj_12(n94_adj_767), .n11638(n11638), .n13694(n13694), 
            .n1565_adj_13(n1565_adj_770), .n12933(n12933), .n13815(n13815), 
            .n11442(n11442), .n12569(n12569), .n13421(n13421), .n1723_adj_14(n1723), 
            .n13633(n13633), .n13372(n13372), .n12829(n12829)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n1211, n1403, n13284, n1148, n13692, 
            n380, n158, n2141, n2172, n1820, n1851, n286, n317, 
            n1530, n13848, n11768, n13647, n13659, n13653, n828, 
            n2025, n380_adj_1, n6675, n62, n13845, n4094, rom_q, 
            n4094_adj_2, n125, n4094_adj_3, n1530_adj_4, n12162, n1565, 
            n828_adj_5, n11958, n380_adj_6, n13761, n13707, n270, 
            n62_adj_7, n1228, n1101, n1643, n13741, n379, n8697, 
            n1529, n13735, n11974, n6668, n11819, n2332, n3936, 
            n796, n2395, n13669, n509, n510, n13667, n4720, n13706, 
            n13740, n13752, n3069, n1676, n12727, n6718, n46, 
            n46_adj_8, n301, n13836, n13672, n13641, n348, n1278, 
            n13757, n13684, n1069, n13349, n5894, n13681, n11310, 
            n15007, n1149, n13750, n13675, n270_adj_9, n13789, n13831, 
            n13790, n2140, n236, n13844, n1275, n13664, n13842, 
            n13656, n13648, n1661, n13135, n891, n13658, n13655, 
            n13814, n12145, n11344, n13646, n4, n3069_adj_10, n13631, 
            n13635, n10348, n10350, n11438, n10078, n1405, n13676, 
            n13833, n15006, n13721, n11392, n11446, n1851_adj_11, 
            n6080, n12726, n1596, n10312, n6036, n13630, n892, 
            n13728, n2364, n11566, n1467, n13660, n13652, n1834, 
            n94, n126, n127, n2428, n2300, n3122, n11969, n15003, 
            n364, n1436, n3000, n11327, n1534, n12030, n13755, 
            n13678, n13744, n13795, n13636, n14830, n13786, n12118, 
            n13654, n6662, n308, n1172, n13732, n1723, n13666, 
            n13021, n1755, n859, n1084, n13857, n13813, n13002, 
            n13619, n11325, n94_adj_12, n11638, n13694, n1565_adj_13, 
            n12933, n13815, n11442, n12569, n13421, n1723_adj_14, 
            n13633, n13372, n12829) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n1211;
    input n1403;
    input n13284;
    input n1148;
    output n13692;
    input n380;
    input n158;
    input n2141;
    input n2172;
    input n1820;
    input n1851;
    input n286;
    input n317;
    input n1530;
    output n13848;
    input n11768;
    output n13647;
    input n13659;
    output n13653;
    input n828;
    output n2025;
    input n380_adj_1;
    input n6675;
    input n62;
    output n13845;
    input n4094;
    output [7:0]rom_q;
    input n4094_adj_2;
    input n125;
    input n4094_adj_3;
    input n1530_adj_4;
    input n12162;
    output n1565;
    input n828_adj_5;
    input n11958;
    input n380_adj_6;
    input n13761;
    input n13707;
    output n270;
    input n62_adj_7;
    input n1228;
    output n1101;
    output n1643;
    output n13741;
    output n379;
    output n8697;
    output n1529;
    output n13735;
    output n11974;
    input n6668;
    input n11819;
    output n2332;
    output n3936;
    output n796;
    output n2395;
    output n13669;
    input n509;
    output n510;
    output n13667;
    output n4720;
    output n13706;
    input n13740;
    output n13752;
    output n3069;
    output n1676;
    output n12727;
    input n6718;
    output n46;
    output n46_adj_8;
    output n301;
    output n13836;
    input n13672;
    output n13641;
    input n348;
    output n1278;
    input n13757;
    output n13684;
    output n1069;
    input n13349;
    output n5894;
    output n13681;
    output n11310;
    output n15007;
    input n1149;
    output n13750;
    output n13675;
    output n270_adj_9;
    output n13789;
    output n13831;
    output n13790;
    output n2140;
    input n236;
    output n13844;
    input n1275;
    input n13664;
    output n13842;
    output n13656;
    input n13648;
    output n1661;
    input n13135;
    input n891;
    output n13658;
    input n13655;
    output n13814;
    input n12145;
    output n11344;
    input n13646;
    input n4;
    output n3069_adj_10;
    output n13631;
    input n13635;
    input n10348;
    output n10350;
    input n11438;
    input n10078;
    output n1405;
    output n13676;
    output n13833;
    output n15006;
    input n13721;
    output n11392;
    output n11446;
    input n1851_adj_11;
    input n6080;
    output n12726;
    input n1596;
    output n10312;
    input n6036;
    input n13630;
    input n892;
    input n13728;
    input n2364;
    input n11566;
    input n1467;
    input n13660;
    input n13652;
    output n1834;
    input n94;
    input n126;
    output n127;
    input n2428;
    input n2300;
    input n3122;
    input n11969;
    input n15003;
    output n364;
    input n1436;
    input n3000;
    input n11327;
    input n1534;
    output n12030;
    output n13755;
    output n13678;
    output n13744;
    output n13795;
    input n13636;
    output n14830;
    output n13786;
    input n12118;
    input n13654;
    output n6662;
    output n308;
    output n1172;
    output n13732;
    input n1723;
    output n13666;
    input n13021;
    input n1755;
    input n859;
    input n1084;
    input n13857;
    output n13813;
    input n13002;
    output n13619;
    output n11325;
    input n94_adj_12;
    input n11638;
    output n13694;
    input n1565_adj_13;
    output n12933;
    input n13815;
    output n11442;
    output n12569;
    input n13421;
    output n1723_adj_14;
    input n13633;
    input n13372;
    input n12829;
    
    
    wire n13950, n11709, n11710, n11711, n13873, n13874, n13875, 
        n11712, n11713, n11714, n11715, n11716, n11717, n12804, 
        n12802, n12805, n11941, n11942, n11949, n13240, n12095, 
        n11946, n13315, n13314, n13316, n12048, n12054, n11945, 
        n11718, n11719, n11720, n12803, n13621, n13312, n13313, 
        n2523, n2554, n2555, n12801, n13816, n13285, n13282, n13286, 
        n11926, n11927, n11934, n11924, n11925, n11933, n13283, 
        n526, n5251, n13281, n11724, n11725, n11726, n12773, n12770, 
        n12774, n11921, n11931, n11918, n13007, n11930, n13869, 
        n13870, n13871, n1117, n1149_c, n12772, n12771, n13797, 
        n11932, n11937, n13780, n13784, n827, n11895, n11896, 
        n11903, n13211, n13208, n13212, n13249, n13247, n13250, 
        n11730, n11731, n11734, n13866, n13867, n13868, n13248, 
        n11732, n11733, n11735, n11737, n11738, n11739, n13862, 
        n13863, n13864, n11862, n11863, n11871, n11812, n13941, 
        n13942, n13943, n15011, n15012, n15013, n797, n828_c, 
        n11787, n11740, n11741, n11742, n13246, n13642, n349, 
        n11744, n11746, n11747, n11748, n11749, n11750, n11751, 
        n11860, n11861, n11870, n189, n190, n2173, n1852, n11755, 
        n11756, n11757, n1691, n11616, n11859, n11869, n11856, 
        n11857, n11868, n1196, n1210, n13333, n13847, n2283, n13819, 
        n13846, n1691_adj_542, n11758, n11759, n11760, n11743, n13685, 
        n1514, n1531, n11854, n12768, n11867, n13853, n11761, 
        n11762, n11765, n11852, n11853, n11866, n13670, n12769, 
        n11763, n11764, n11766, n13760, n4497, n11806, n11769, 
        n11770, n13237, n13238, n2444, n2268, n1278_c, n12088, 
        n12164, n12127, n11771, n11772, n11773, n12078, n1021, 
        n12163, n924, n11321, n956, n11547, n829, n11774, n11775, 
        n11778, n4004, n11776, n11777, n11779, n11784, n11785, 
        n11786, n12135, n891_c, n11788, n364_c, n381, n12101, 
        n318, n11790, n11791, n11792, n11793, n11794, n11795, 
        n61, n63, n1451, n1723_c, n11796, n11797, n11800, n11955, 
        n11798, n11799, n11801, n11962, n1117_adj_546, n11876, n11877, 
        n11878, n11907, n11908, n11909, n11938, n11939, n11940, 
        n12166, n12167, n12168, n2268_adj_547, n2299, n2300_c, n2047, 
        n12066, n12067, n12648, n13239, n13236, n620, n11872, 
        n11873, n11874, n11875, n1739, n1786, n1787, n11905, n11906, 
        n11803, n11804, n11805, n11936, n1514_adj_549, n1531_adj_551, 
        n1181, n1212, n1213, n11951, n11952, n11954, n13932, n13933, 
        n12165, n11807, n11808, n13207, n11904, n13210, n13209, 
        n859_c, n860, n11554, n892_c, n11935, n812, n829_adj_553, 
        n11950, n11953, n716, n732, n764, n11956, n11957, n11960, 
        n11959, n11961, n11999, n12000, n12001, n364_adj_554, n381_adj_556, 
        n12653, n3070, n620_adj_557, n12073, n12074, n12647, n11809, 
        n11810, n11811, n12059, n12060, n12650, n13112, n1038, 
        n1883, n1914, n1915, n6666, n12015, n3069_c, n3070_adj_558, 
        n3507, n3516, n12008, n3069_adj_559, n3070_adj_560, n61_adj_561, 
        n63_adj_563, n13094, n13499, n2444_adj_564, n1243, n13331, 
        n11984, n3069_adj_565, n1595, n475, n1017, n4759, n11704, 
        n4750, n11703, n971, n11624, n12651, n1228_adj_566, n11813, 
        n11814, n1549, n6670, n12111, n12134, n3070_adj_567, n11994, 
        n13614, n13851, n11864, n11865, n1466, n1243_adj_568, n11700, 
        n1913, n11887, n11888, n11899, n11893, n11894, n11902, 
        n13877, n205, n6419, n2283_adj_569, n1931, n124, n2426, 
        n13637, n526_adj_570, n13737, n11947, n11948, n1676_c, n13123, 
        n13998, n12835, n11342, n2283_adj_571, n2298, n766, n1021_adj_572, 
        n13705, n2396, n2109, n13865, n11830, n557, n2025_adj_573, 
        n428, n13671, n11694, n3070_adj_574, n2685, n13887, n506, 
        n526_adj_575, n11972, n11973, n668, n11691, n11818, n11820, 
        n220, n13876, n11992, n11993, n4721, n13125, n12761, n13136, 
        n189_adj_576, n2077, n12159, n12160, n12161, n11824, n11825, 
        n11826, n572, n11683, n13809, n541, n11682, n5975, n255, 
        n510_c, n78, n11670, n1770, n251, n11827, n11828, n11829, 
        n860_adj_577, n893, n11542, n507, n11538, n2040, n13754, 
        n13926, n13927, n13928, n2009, n11831, n11832, n379_adj_579, 
        n12767, n12764, n13618, n1468, n460, n1724, n13921, n12035, 
        n747, n2333, n301_c, n11674, n13720, n12831, n12832, n13878, 
        n2173_adj_580, n11833, n11834, n11835, n4824, n6699, n1149_adj_581, 
        n1597, n11891, n2141_adj_582, n2173_adj_583, n1915_adj_584, 
        n11883, n11884, n11897, n251_adj_585, n2009_adj_586, n109, 
        n1979, n13649, n11910, n11911, n11912, n11913, n2522, 
        n1676_adj_587, n2588, n11922, n11923, n11767, n11780, n11943, 
        n11789, n11802, n11944, n11980, n11981, n11983, n8665, 
        n13139, n2365, n2428_c, n11997, n11839, n11840, n11841, 
        n61_adj_590, n11842, n11843, n11844, n604, n2348, n6704, 
        n6705, n13638, n506_adj_591, n6689, n5800, n731, n908, 
        n12004, n12005, n12007, n526_adj_592, n12009, n12010, n12013, 
        n12026, n12027, n12029, n12046, n12047, n1707, n11612, 
        n1789, n12076, n12077, n12157, n12158, n13374, n13954, 
        n13953, n13923, n13924, n13925, n13957, n13956, n13725, 
        n5354, n11901, n13880, n13960, n13628, n333, n13959, n13764, 
        n270_adj_595, n11673, n13963, n13962, n13729, n13734, n1596_c, 
        n13966, n12043, n12044, n12045, n13965, n13832, n6681, 
        n1435, n11706, n1882, n1883_adj_596, n13668, n1883_adj_597, 
        n13920, n13922, n13969, n12181, n12182, n12188, n12189, 
        n2044, n13968, n635, n13972, n13971, n13975, n13974, n11695, 
        n11900, n13978, n13736, n13005, n13977, n13879, n13981, 
        n1676_adj_599, n13980, n954, n12766, n1835, n11781, n12099, 
        n13983, n13985, n13984, n13988, n13987, n13991, n13990, 
        n13994, n13993, n13997, n13996, n11655, n1755_c, n1403_adj_600, 
        n12119, n2009_adj_601, n2010, n13753, n1851_adj_602, n3330, 
        n13822, n653, n653_adj_603, n604_adj_604, n11649, n1084_c, 
        n1786_adj_605, n1658, n2490, n1914_adj_606, n1084_adj_607, 
        n2009_adj_608, n2010_adj_609, n2298_adj_610, n11647, n1628, 
        n1820_adj_611, n1529_adj_612, n1530_adj_613, n2589, n15002, 
        n13701, n1565_adj_614, n11782, n13716, n1244, n1275_c, n1276, 
        n11701, n1435_adj_615, n1436_c, n604_adj_616, n1565_adj_617, 
        n1597_adj_618, n12124, n12125, n12126, n589, n604_adj_619, 
        n11688, n15005, n364_adj_620, n11836, n2475, n13748, n205_adj_621, 
        n11693, n11699, n13712, n1946, n684, n13883, n1786_adj_623, 
        n2009_adj_624, n2078, n1692, n1676_adj_625, n1692_adj_626, 
        n11702, n13912, n1597_adj_627, n1660, n2427, n12185, n1851_adj_628, 
        n12155, n11708, n13698, n11656, n1692_adj_629, n11661, n13839, 
        n13683, n2620, n12017, n2283_adj_630, n11967, n2141_adj_631, 
        n2173_adj_632, n190_adj_633, n11729, n11880, n221, n557_adj_634, 
        n428_adj_635, n11641, n1466_adj_636, n11881, n11640, n445, 
        n508, n11882, n13882, n13610, n2267, n11631, n13976, n11633, 
        n11885, n2411, n2426_adj_638, n11629, n11783, n1404, n11889, 
        n11646, n11628, n11630, n13917, n13918, n13919, n12112, 
        n13003, n11890, n1724_adj_639, n1787_adj_640, n11892, n13973, 
        n13611, n13613, n11644, n4936, n1947, n1787_adj_641, n11619, 
        n13967, n1914_adj_642, n12156, n13018, n13756, n13699, n13019, 
        n13776, n1785, n1786_adj_643, n2108, n1692_adj_644, n13834, 
        n5124, n220_adj_645, n1659, n11642, n11651, n11914, n13886, 
        n12100, n13500, n12149, n11696, n11705, n11917, n684_adj_646, 
        n13958, n13026, n12146, n428_adj_647, n443, n11680, n13885, 
        n13027, n11668, n13905, n13029, n13719, n1085, n1054, 
        n1660_adj_648, n635_adj_649, n11689, n2040_adj_650, n12120, 
        n11650, n13952, n13955, n13033, n2492, n2555_adj_651, n14824, 
        n13889, n13964, n14825, n13913, n13914, n13915, n1724_adj_652, 
        n1435_adj_653, n1659_adj_654, n13888, n14827, n2110, n14828, 
        n12092, n12038, n12090, n12763, n13892, n13891, n1530_adj_655, 
        n1499, n1852_adj_656, n1915_adj_657, n11618, n11627, n11979, 
        n2365_adj_658, n13895, n2522_adj_659, n2459, n11636, n6648, 
        n699, n1053, n30, n476, n491, n507_adj_660, n13894, n11645, 
        n11648, n11989, n11654, n2428_adj_661, n11990, n2492_adj_662, 
        n13657, n1243_adj_663, n1244_adj_664, n11657, n11663, n11991, 
        n12053, n1117_adj_666, n2555_adj_667, n11998, n12036, n13982, 
        n12179, n12002, n11823, n2428_adj_668, n2492_adj_669, n2555_adj_670, 
        n2110_adj_671, n908_adj_672, n12034, n1692_adj_673, n428_adj_674, 
        n12032, n12031, n2237, n11838, n2491, n2427_adj_675, n13909, 
        n13910, n13911, n1867, n2364_c, n11986, n11968, n12012, 
        n844, n11975, n13817, n11671, n13898, n2444_adj_676, n11966, 
        n13897, n2025_adj_677, n253, n6321, n190_adj_678, n13733, 
        n13901, n1628_adj_679, n11339, n13900, n1403_adj_680, n12016, 
        n12024, n13810, n13691, n11617, n1038_adj_681, n1054_adj_682, 
        n6645, n13138, n1707_adj_684, n13110, n1292, n13904, n444, 
        n11752, n13113, n13114, n13906, n13907, n13908, n12018, 
        n12019, n12025, n13651, n637, n12148, n12020, n12021, 
        n1946_adj_685, n12022, n12023, n443_adj_686, n11977, n12175, 
        n1212_adj_687, n12052, n12055, n12056, n13826, n2205, n13903, 
        n397, n11679, n13841, n11625, n12057, n12058, n2110_adj_688, 
        n13961, n2110_adj_689, n12064, n12065, n12069, n12070, n12071, 
        n12072, n574, n13137, n12187, n12186, n13715, n11643, 
        n13126, n13127, n13818, n12128, n11337, n1341, n2621, 
        n2684, n10349, n13124, n12084, n12085, n12087, n1978, 
        n2396_adj_691, n11450, n6709, n12152, n12153, n12154, n11684, 
        n11690, n12117, n12093, n12094, n13821, n1483, n1499_adj_692, 
        n12108, n12109, n12110, n2236, n12121, n12122, n12123, 
        n12129, n12576, n12028, n15018, n12014, n13884, n13995, 
        n12150, n12151, n2491_adj_693, n2573, n2685_adj_694, n13115, 
        n12006, n11821, n13881, n220_adj_695, n6851, n2237_adj_696, 
        n12133, n11996, n12033, n11621, n12173, n12184, n2554_adj_697, 
        n13989, n11978, n11982, n986, n2523_adj_698, n13627, n11681, 
        n508_adj_699, n11851, n13890, n13893, n13979, n13986, n11886, 
        n1883_adj_700, n5981, n731_adj_701, n924_adj_702, n1085_adj_703, 
        n11988, n2396_adj_704, n11970, n1483_adj_705, n12091, n15019, 
        n444_adj_706, n445_adj_707, n11879, n11672, n11848, n11971, 
        n380_adj_708, n12172, n2299_adj_709, n13095, n13096, n13896, 
        n11736, n11745, n285, n13992, n11753, n11754, n1947_adj_711, 
        n13970, n1451_adj_712, n1467_c, n1867_adj_713, n1883_adj_714, 
        n1723_adj_715, n3392, n475_adj_717, n1101_adj_718, n124_adj_719, 
        n13371, n1020, n1786_adj_720, n589_adj_721, n2380, n1309, 
        n3984, n2523_adj_725, n4_adj_726, n1086, n13693, n2205_adj_727, 
        n6647, n12178, n11987, n5436, n12176, n12037, n12039, 
        n13899, n126_c, n12169, n13793, n13861, n11976, n2429, 
        n13661, n2522_adj_730, n11662, n2237_adj_731, n2301, n2317, 
        n2298_adj_733, n11626, n2554_adj_734, n13111, n11849, n2460, 
        n2573_adj_735, n11637, n316, n1002, n11675, n11850, n11308, 
        n3123, n542, n13097, n11985, n890, n13626, n13335, n3065, 
        n11620, n12301, n12089, n10069, n13376, n13028, n11929, 
        n13034, n11928, n1467_adj_738, n11898, n3230, n2045, n11639, 
        n12836, n1898, n12830, n6642, n1914_adj_739, n13498, n13624, 
        n13799, n2538, n4767, n476_adj_740, n13695, n6665, n10101, 
        n10100, n4303, n1596_adj_741, n2684_adj_742, n1228_adj_743, 
        n1243_adj_744, n14829, n14826, n604_adj_745, n13951, n15014, 
        n15015, n15016, n11347, n13022, n13020, n1076, n12577, 
        n13006, n13004, n124_adj_750, n1181_adj_751, n12932, n557_adj_752, 
        n11692, n1275_adj_754, n15017, n11728, n11727, n13375, n13373, 
        n12652, n12649, n13334, n13332;
    
    LUT4 rom_addr_6__bdd_3_lut_12702_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13950)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam rom_addr_6__bdd_3_lut_12702_else_4_lut.init = 16'h2622;
    PFUMX i11091 (.BLUT(n11709), .ALUT(n11710), .C0(rom_addr[5]), .Z(n11711));
    PFUMX i13012 (.BLUT(n13873), .ALUT(n13874), .C0(rom_addr[0]), .Z(n13875));
    PFUMX i11094 (.BLUT(n11712), .ALUT(n11713), .C0(rom_addr[5]), .Z(n11714));
    PFUMX i11097 (.BLUT(n11715), .ALUT(n11716), .C0(rom_addr[5]), .Z(n11717));
    L6MUX21 i12384 (.D0(n12804), .D1(n12802), .SD(rom_addr[6]), .Z(n12805));
    LUT4 i12055_3_lut (.A(n11941), .B(n11942), .C(rom_addr[8]), .Z(n11949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12055_3_lut.init = 16'hcaca;
    LUT4 i11326_3_lut (.A(n13240), .B(n12095), .C(rom_addr[7]), .Z(n11946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11326_3_lut.init = 16'hcaca;
    PFUMX i12790 (.BLUT(n13315), .ALUT(n13314), .C0(rom_addr[6]), .Z(n13316));
    LUT4 i11325_3_lut (.A(n12048), .B(n12054), .C(rom_addr[7]), .Z(n11945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11325_3_lut.init = 16'hcaca;
    PFUMX i11100 (.BLUT(n11718), .ALUT(n11719), .C0(rom_addr[5]), .Z(n11720));
    PFUMX i12382 (.BLUT(n12803), .ALUT(n13621), .C0(rom_addr[5]), .Z(n12804));
    PFUMX i12788 (.BLUT(n1211), .ALUT(n13312), .C0(rom_addr[4]), .Z(n13313));
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12380 (.BLUT(n12801), .ALUT(n1403), .C0(n13816), .Z(n12802));
    L6MUX21 i12763 (.D0(n13285), .D1(n13282), .SD(rom_addr[5]), .Z(n13286));
    LUT4 i11314_3_lut (.A(n11926), .B(n11927), .C(rom_addr[8]), .Z(n11934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11314_3_lut.init = 16'hcaca;
    LUT4 i11313_3_lut (.A(n11924), .B(n11925), .C(rom_addr[7]), .Z(n11933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11313_3_lut.init = 16'hcaca;
    PFUMX i12761 (.BLUT(n13284), .ALUT(n13283), .C0(rom_addr[6]), .Z(n13285));
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    PFUMX i12759 (.BLUT(n5251), .ALUT(n13281), .C0(rom_addr[6]), .Z(n13282));
    PFUMX i11106 (.BLUT(n11724), .ALUT(n11725), .C0(rom_addr[5]), .Z(n11726));
    L6MUX21 i12357 (.D0(n12773), .D1(n12770), .SD(rom_addr[6]), .Z(n12774));
    LUT4 i11311_3_lut (.A(n12805), .B(n11921), .C(rom_addr[7]), .Z(n11931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11311_3_lut.init = 16'hcaca;
    LUT4 i11310_3_lut (.A(n11918), .B(n13007), .C(rom_addr[7]), .Z(n11930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11310_3_lut.init = 16'hcaca;
    PFUMX i13009 (.BLUT(n13869), .ALUT(n13870), .C0(rom_addr[0]), .Z(n13871));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12355 (.BLUT(n12772), .ALUT(n12771), .C0(n13797), .Z(n12773));
    LUT4 i11317_3_lut (.A(n11932), .B(n11933), .C(rom_addr[8]), .Z(n11937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11317_3_lut.init = 16'hcaca;
    LUT4 i7769_2_lut_rep_275 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13780)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7769_2_lut_rep_275.init = 16'h8888;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13692), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12061_3_lut (.A(n11895), .B(n11896), .C(rom_addr[8]), .Z(n11903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12061_3_lut.init = 16'hcaca;
    LUT4 n13211_bdd_3_lut (.A(n13211), .B(n13208), .C(rom_addr[4]), .Z(n13212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13211_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i12737 (.D0(n13249), .D1(n13247), .SD(rom_addr[6]), .Z(n13250));
    PFUMX i11114 (.BLUT(n11730), .ALUT(n11731), .C0(rom_addr[5]), .Z(n11734));
    PFUMX i13007 (.BLUT(n13866), .ALUT(n13867), .C0(rom_addr[1]), .Z(n13868));
    PFUMX i12735 (.BLUT(n13248), .ALUT(n13621), .C0(rom_addr[5]), .Z(n13249));
    PFUMX i11115 (.BLUT(n11732), .ALUT(n11733), .C0(rom_addr[5]), .Z(n11735));
    PFUMX i11119 (.BLUT(n11737), .ALUT(n11738), .C0(rom_addr[5]), .Z(n11739));
    PFUMX i13005 (.BLUT(n13862), .ALUT(n13863), .C0(rom_addr[1]), .Z(n13864));
    LUT4 i11251_3_lut (.A(n11862), .B(n11863), .C(rom_addr[7]), .Z(n11871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11251_3_lut.init = 16'hcaca;
    LUT4 i11192_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1211), .Z(n11812)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11192_3_lut_4_lut.init = 16'hf808;
    PFUMX i13057 (.BLUT(n13941), .ALUT(n13942), .C0(rom_addr[0]), .Z(n13943));
    PFUMX i13690 (.BLUT(n15011), .ALUT(n15012), .C0(rom_addr[1]), .Z(n15013));
    PFUMX i11167 (.BLUT(n797), .ALUT(n828_c), .C0(rom_addr[5]), .Z(n11787));
    PFUMX i11122 (.BLUT(n11740), .ALUT(n11741), .C0(rom_addr[5]), .Z(n11742));
    PFUMX i12733 (.BLUT(n13621), .ALUT(n13246), .C0(rom_addr[5]), .Z(n13247));
    LUT4 i1_2_lut_rep_137_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13642)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_137_3_lut_4_lut.init = 16'h8000;
    PFUMX i11124 (.BLUT(n349), .ALUT(n380), .C0(rom_addr[5]), .Z(n11744));
    PFUMX i11128 (.BLUT(n11746), .ALUT(n11747), .C0(rom_addr[5]), .Z(n11748));
    PFUMX i11131 (.BLUT(n11749), .ALUT(n11750), .C0(rom_addr[5]), .Z(n11751));
    LUT4 i11250_3_lut (.A(n11860), .B(n11861), .C(rom_addr[7]), .Z(n11870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11250_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11137 (.BLUT(n11755), .ALUT(n11756), .C0(rom_addr[5]), .Z(n11757));
    LUT4 i10996_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n11616)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i10996_3_lut_4_lut.init = 16'hf808;
    LUT4 i11249_3_lut (.A(n12774), .B(n11859), .C(rom_addr[7]), .Z(n11869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11249_3_lut.init = 16'hcaca;
    LUT4 i11248_3_lut (.A(n11856), .B(n11857), .C(rom_addr[7]), .Z(n11868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11248_3_lut.init = 16'hcaca;
    LUT4 n1196_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n13333)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1196_bdd_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13847), .Z(n2283)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_314 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13819)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_314.init = 16'h2222;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13846), .Z(n1691_adj_542)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    PFUMX i11140 (.BLUT(n11758), .ALUT(n11759), .C0(rom_addr[5]), .Z(n11760));
    PFUMX i11123 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n11743));
    LUT4 i1_2_lut_rep_180_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13685)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_180_3_lut.init = 16'h8080;
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n13816), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11247_3_lut (.A(n11854), .B(n12768), .C(rom_addr[7]), .Z(n11867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11247_3_lut.init = 16'hcaca;
    LUT4 i7455_2_lut_rep_348 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13853)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7455_2_lut_rep_348.init = 16'h8888;
    PFUMX i11145 (.BLUT(n11761), .ALUT(n11762), .C0(rom_addr[5]), .Z(n11765));
    LUT4 i11246_3_lut (.A(n11852), .B(n11853), .C(rom_addr[7]), .Z(n11866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11246_3_lut.init = 16'hcaca;
    LUT4 n1340_bdd_4_lut_12691 (.A(n13670), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13848), .Z(n12769)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_12691.init = 16'haca0;
    PFUMX i11146 (.BLUT(n11763), .ALUT(n11764), .C0(rom_addr[5]), .Z(n11766));
    LUT4 i11186_4_lut (.A(n13760), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4497), 
         .Z(n11806)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11186_4_lut.init = 16'h0aca;
    PFUMX i11150 (.BLUT(n11768), .ALUT(n11769), .C0(rom_addr[5]), .Z(n11770));
    PFUMX i12724 (.BLUT(n13647), .ALUT(n13237), .C0(rom_addr[4]), .Z(n13238));
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444), .Z(n2268)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i12067_3_lut (.A(n1278_c), .B(n12088), .C(rom_addr[8]), .Z(n12164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12067_3_lut.init = 16'hcaca;
    LUT4 i11507_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13659), .C(rom_addr[6]), 
         .D(n13653), .Z(n12127)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11507_3_lut_4_lut_4_lut.init = 16'hbfba;
    PFUMX i11153 (.BLUT(n11771), .ALUT(n11772), .C0(rom_addr[5]), .Z(n11773));
    LUT4 i11543_3_lut (.A(n12078), .B(n1021), .C(rom_addr[8]), .Z(n12163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11543_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924), .ALUT(n11321), .C0(rom_addr[5]), 
          .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n11547), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11158 (.BLUT(n11774), .ALUT(n11775), .C0(rom_addr[5]), .Z(n11778));
    LUT4 i3193_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4004)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3193_3_lut_4_lut_3_lut.init = 16'h4848;
    PFUMX i11159 (.BLUT(n11776), .ALUT(n11777), .C0(rom_addr[5]), .Z(n11779));
    PFUMX i11166 (.BLUT(n11784), .ALUT(n11785), .C0(rom_addr[5]), .Z(n11786));
    PFUMX i11168 (.BLUT(n12135), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n11788));
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut.init = 16'h7870;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380_adj_1), 
          .C0(n13816), .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n12101), .ALUT(n6675), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11172 (.BLUT(n11790), .ALUT(n11791), .C0(rom_addr[5]), .Z(n11792));
    PFUMX i11175 (.BLUT(n11793), .ALUT(n11794), .C0(rom_addr[5]), .Z(n11795));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n11547), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n13845), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    PFUMX i11180 (.BLUT(n11796), .ALUT(n11797), .C0(rom_addr[5]), .Z(n11800));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n11955), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11181 (.BLUT(n11798), .ALUT(n11799), .C0(rom_addr[5]), .Z(n11801));
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n11962), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_546)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    L6MUX21 i11258 (.D0(n11876), .D1(n11877), .SD(rom_addr[10]), .Z(n11878));
    L6MUX21 i11289 (.D0(n11907), .D1(n11908), .SD(rom_addr[10]), .Z(n11909));
    L6MUX21 i11320 (.D0(n11938), .D1(n11939), .SD(rom_addr[10]), .Z(n11940));
    L6MUX21 i11548 (.D0(n12166), .D1(n12167), .SD(rom_addr[10]), .Z(n12168));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268_adj_547), .ALUT(n2299), 
          .C0(rom_addr[5]), .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_3), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n12066_bdd_3_lut_13669 (.A(n12066), .B(n12067), .C(rom_addr[7]), 
         .Z(n12648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12066_bdd_3_lut_13669.init = 16'hcaca;
    PFUMX i12726 (.BLUT(n13239), .ALUT(n13236), .C0(rom_addr[6]), .Z(n13240));
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    PFUMX i12353 (.BLUT(n13621), .ALUT(n12769), .C0(rom_addr[5]), .Z(n12770));
    L6MUX21 i11256 (.D0(n11872), .D1(n11873), .SD(rom_addr[9]), .Z(n11876));
    L6MUX21 i11257 (.D0(n11874), .D1(n11875), .SD(rom_addr[9]), .Z(n11877));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786), .C0(rom_addr[5]), 
          .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11288 (.BLUT(n11905), .ALUT(n11906), .C0(rom_addr[9]), .Z(n11908));
    PFUMX i11185 (.BLUT(n11803), .ALUT(n11804), .C0(rom_addr[5]), .Z(n11805));
    PFUMX i11319 (.BLUT(n11936), .ALUT(n11937), .C0(rom_addr[9]), .Z(n11939));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_549), .ALUT(n1530_adj_4), 
          .C0(n13816), .Z(n1531_adj_551)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11334 (.D0(n11951), .D1(n11952), .SD(rom_addr[9]), .Z(n11954));
    PFUMX i11546 (.BLUT(n12162), .ALUT(n12163), .C0(rom_addr[9]), .Z(n12166));
    PFUMX i13051 (.BLUT(n13932), .ALUT(n13933), .C0(rom_addr[1]), .Z(n1565));
    PFUMX i11547 (.BLUT(n12164), .ALUT(n12165), .C0(rom_addr[9]), .Z(n12167));
    PFUMX i11188 (.BLUT(n11806), .ALUT(n11807), .C0(rom_addr[5]), .Z(n11808));
    PFUMX i11253 (.BLUT(n11866), .ALUT(n11867), .C0(rom_addr[8]), .Z(n11873));
    PFUMX i11254 (.BLUT(n11868), .ALUT(n11869), .C0(rom_addr[8]), .Z(n11874));
    PFUMX i12705 (.BLUT(n13212), .ALUT(n13207), .C0(rom_addr[5]), .Z(n12066));
    PFUMX i11255 (.BLUT(n11870), .ALUT(n11871), .C0(rom_addr[8]), .Z(n11875));
    PFUMX i11287 (.BLUT(n11903), .ALUT(n11904), .C0(rom_addr[9]), .Z(n11907));
    PFUMX i12703 (.BLUT(n13210), .ALUT(n13209), .C0(rom_addr[6]), .Z(n13211));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859_c), .ALUT(n860), .C0(n11554), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11318 (.BLUT(n11934), .ALUT(n11935), .C0(rom_addr[9]), .Z(n11938));
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_5), .C0(n13816), 
          .Z(n829_adj_553)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11331 (.BLUT(n11945), .ALUT(n11946), .C0(rom_addr[8]), .Z(n11951));
    PFUMX i11333 (.BLUT(n11949), .ALUT(n11950), .C0(rom_addr[9]), .Z(n11953));
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n13797), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11340 (.D0(n11956), .D1(n11957), .SD(rom_addr[9]), .Z(n11960));
    PFUMX i11341 (.BLUT(n11958), .ALUT(n11959), .C0(rom_addr[9]), .Z(n11961));
    PFUMX i11381 (.BLUT(n11999), .ALUT(n12000), .C0(rom_addr[8]), .Z(n12001));
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_554), .ALUT(n380_adj_6), 
          .C0(n13816), .Z(n381_adj_556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12653), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n620_adj_557)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2423;
    LUT4 n12066_bdd_3_lut_12283 (.A(n12073), .B(n12074), .C(rom_addr[7]), 
         .Z(n12647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12066_bdd_3_lut_12283.init = 16'hcaca;
    PFUMX i11191 (.BLUT(n11809), .ALUT(n11810), .C0(rom_addr[5]), .Z(n11811));
    LUT4 n12059_bdd_3_lut_12993 (.A(n12059), .B(n12060), .C(rom_addr[7]), 
         .Z(n12650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12059_bdd_3_lut_12993.init = 16'hcaca;
    LUT4 n1699_bdd_2_lut_12843_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13112)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1699_bdd_2_lut_12843_4_lut_4_lut.init = 16'h6100;
    LUT4 i7360_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7360_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883), .B(n1914), .C(rom_addr[5]), 
         .Z(n1915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 i5825_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6666)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5825_3_lut_4_lut_4_lut.init = 16'hd838;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12015), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070_adj_558)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2705_3_lut_4_lut (.A(n13761), .B(n13707), .C(rom_addr[6]), .D(n3507), 
         .Z(n3516)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2705_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12008), .ALUT(n3069_adj_559), 
          .C0(rom_addr[9]), .Z(n3070_adj_560)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut.init = 16'hf813;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_561), .ALUT(n62_adj_7), 
          .C0(n11547), .Z(n63_adj_563)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n2100_bdd_3_lut_12618_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13094)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2100_bdd_3_lut_12618_3_lut_4_lut_4_lut.init = 16'hc807;
    LUT4 rom_addr_0__bdd_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13499)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_4_lut_4_lut_4_lut.init = 16'h0809;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444_adj_564)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364_c)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 n1228_bdd_3_lut (.A(n1228), .B(n1243), .C(rom_addr[4]), .Z(n13331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1228_bdd_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n11984), .ALUT(n3069_adj_565), 
          .C0(rom_addr[9]), .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 rom_addr_6__bdd_3_lut_12716_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13209)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_6__bdd_3_lut_12716_4_lut_4_lut_4_lut.init = 16'h4042;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n475)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n61)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    LUT4 i11084_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4759), 
         .Z(n11704)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11084_4_lut.init = 16'hc0ca;
    LUT4 i11083_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n4750), 
         .Z(n11703)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11083_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 i3686_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4497)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3686_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 n12059_bdd_2_lut_12994 (.A(n11624), .B(rom_addr[7]), .Z(n12651)) /* synthesis lut_function=(A (B)) */ ;
    defparam n12059_bdd_2_lut_12994.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1228_adj_566)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'he0e2;
    PFUMX i11194 (.BLUT(n11812), .ALUT(n11813), .C0(rom_addr[5]), .Z(n11814));
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1549)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h1012;
    LUT4 i5829_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6670)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;
    defparam i5829_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 i11491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12111)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11491_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 i11514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12134)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11514_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12168), .B(n3070_adj_567), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n11994), .B(n13614), .C(rom_addr[9]), 
         .D(n13851), .Z(n3070_adj_567)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    PFUMX i11252 (.BLUT(n11864), .ALUT(n11865), .C0(rom_addr[8]), .Z(n11872));
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 i11731_3_lut (.A(n1228_adj_566), .B(n1243_adj_568), .C(rom_addr[4]), 
         .Z(n11700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11731_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut.init = 16'h7002;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    L6MUX21 i11279 (.D0(n11887), .D1(n11888), .SD(rom_addr[7]), .Z(n11899));
    L6MUX21 i11282 (.D0(n11893), .D1(n11894), .SD(rom_addr[7]), .Z(n11902));
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13877)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 i2_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n6419)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283_adj_569)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut.init = 16'h4802;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_rep_132_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13637)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_rep_132_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_570)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n13737), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13741), .Z(n61_adj_561)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    PFUMX i11332 (.BLUT(n11947), .ALUT(n11948), .C0(rom_addr[8]), .Z(n11952));
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 n2062_bdd_3_lut_12729_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13123)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_12729_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 n6673_bdd_3_lut_12981 (.A(n13871), .B(n13998), .C(rom_addr[5]), 
         .Z(n12835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6673_bdd_3_lut_12981.init = 16'hcaca;
    LUT4 i1_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n11342)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283_adj_571)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut.init = 16'hb002;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n8697)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    LUT4 i7437_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7437_4_lut_4_lut.init = 16'hf8f6;
    PFUMX i11337 (.BLUT(n766), .ALUT(n1021_adj_572), .C0(rom_addr[8]), 
          .Z(n11957));
    LUT4 i11111_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n2283), .Z(n11731)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11111_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i11210_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n13865), .Z(n11830)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11210_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i7276_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7276_4_lut_4_lut.init = 16'h2880;
    LUT4 i10803_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n2025_adj_573)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10803_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 i11074_4_lut (.A(rom_addr[0]), .B(n13735), .C(rom_addr[4]), .D(n13671), 
         .Z(n11694)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11074_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n11878), .B(n3070_adj_574), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12001), .B(n2685), .C(rom_addr[9]), 
         .D(n13851), .Z(n3070_adj_574)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n11720), .B(n13887), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_575)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    PFUMX i11354 (.BLUT(n11972), .ALUT(n11973), .C0(rom_addr[8]), .Z(n11974));
    LUT4 i11071_3_lut (.A(n6668), .B(n668), .C(rom_addr[4]), .Z(n11691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11071_3_lut.init = 16'hcaca;
    PFUMX i11200 (.BLUT(n11818), .ALUT(n11819), .C0(rom_addr[5]), .Z(n11820));
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n13876)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h0202;
    PFUMX i11374 (.BLUT(n11992), .ALUT(n11993), .C0(rom_addr[8]), .Z(n11994));
    LUT4 i3910_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4721)) /* synthesis lut_function=(A (B+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3910_3_lut_4_lut_4_lut.init = 16'hd8fe;
    LUT4 n2332_bdd_3_lut_12732_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n2332), .Z(n13125)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_12732_4_lut.init = 16'h2f20;
    LUT4 n730_bdd_3_lut_12346_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12761)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_12346_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 i3125_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n3936)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3125_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 n1403_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n12801)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C))) */ ;
    defparam n1403_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h8101;
    LUT4 n4103_bdd_4_lut_12665_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13136)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !((D)+!C)))) */ ;
    defparam n4103_bdd_4_lut_12665_4_lut.init = 16'h4010;
    LUT4 i12071_3_lut (.A(n11930), .B(n11931), .C(rom_addr[8]), .Z(n11936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12071_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), 
         .C(rom_addr[4]), .D(n668), .Z(n189_adj_576)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2077)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut_4_lut.init = 16'h1810;
    L6MUX21 i11541 (.D0(n12159), .D1(n12160), .SD(rom_addr[7]), .Z(n12161));
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2395)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut.init = 16'h2101;
    PFUMX i11206 (.BLUT(n11824), .ALUT(n11825), .C0(rom_addr[5]), .Z(n11826));
    LUT4 i11063_3_lut (.A(n557), .B(n572), .C(rom_addr[4]), .Z(n11683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11063_3_lut.init = 16'hcaca;
    LUT4 i11062_4_lut (.A(n13809), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n11682)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11062_4_lut.init = 16'hcac0;
    LUT4 i5210_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n5975)) /* synthesis lut_function=(A+(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5210_4_lut_4_lut.init = 16'hebba;
    LUT4 i7244_2_lut_rep_164_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13669)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7244_2_lut_rep_164_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i11336 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n11956));
    LUT4 i11050_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n78), .Z(n11670)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11050_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1211_bdd_3_lut_12792_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13312)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1211_bdd_3_lut_12792_3_lut_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n11909), .B(n3070_adj_560), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    PFUMX i11209 (.BLUT(n11827), .ALUT(n11828), .C0(rom_addr[5]), .Z(n11829));
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_577), .ALUT(n893), 
          .C0(n11542), .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n11538), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_162_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13667)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_162_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), 
         .C(rom_addr[4]), .D(n13754), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i3909_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4720)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3909_3_lut_4_lut_3_lut.init = 16'hb8b8;
    PFUMX i13047 (.BLUT(n13926), .ALUT(n13927), .C0(rom_addr[3]), .Z(n13928));
    LUT4 i11095_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n2009), .Z(n11715)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11095_3_lut_4_lut.init = 16'hf202;
    LUT4 i3948_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4759)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3948_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i11212 (.BLUT(n11830), .ALUT(n11831), .C0(rom_addr[5]), .Z(n11832));
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379_adj_579)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    PFUMX i12351 (.BLUT(n12767), .ALUT(n12764), .C0(rom_addr[6]), .Z(n12768));
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n11940), .B(n3070_adj_558), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_113_4_lut (.A(rom_addr[0]), 
         .B(n13705), .C(rom_addr[4]), .D(n13667), .Z(n13618)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_113_4_lut.init = 16'hf202;
    L6MUX21 i11239 (.D0(n1468), .D1(n1531_adj_551), .SD(rom_addr[6]), 
            .Z(n11859));
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    L6MUX21 i11241 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n11861));
    LUT4 i11415_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n13921), .Z(n12035)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11415_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11054_3_lut_4_lut (.A(n13706), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_c), .Z(n11674)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11054_3_lut_4_lut.init = 16'h1f10;
    LUT4 n12831_bdd_3_lut_4_lut (.A(n13740), .B(n13720), .C(rom_addr[5]), 
         .D(n12831), .Z(n12832)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n12831_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n13740), .B(n13720), 
         .C(rom_addr[5]), .D(n13878), .Z(n2173_adj_580)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11215 (.BLUT(n11833), .ALUT(n11834), .C0(rom_addr[5]), .Z(n11835));
    LUT4 i4013_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4824)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4013_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i5858_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n6699)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5858_3_lut_3_lut_4_lut_3_lut.init = 16'h1818;
    L6MUX21 i11267 (.D0(n11760), .D1(n1149_adj_581), .SD(rom_addr[6]), 
            .Z(n11887));
    L6MUX21 i11271 (.D0(n1597), .D1(n11792), .SD(rom_addr[6]), .Z(n11891));
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n13740), .B(n13720), 
         .C(rom_addr[5]), .D(n2141_adj_582), .Z(n2173_adj_583)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11273 (.D0(n1852), .D1(n1915_adj_584), .SD(rom_addr[6]), 
            .Z(n11893));
    L6MUX21 i11277 (.D0(n11883), .D1(n11884), .SD(rom_addr[7]), .Z(n11897));
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251_adj_585)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut.init = 16'h40b0;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_586)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    L6MUX21 i11305 (.D0(n1979), .D1(n11829), .SD(rom_addr[6]), .Z(n11925));
    LUT4 i7251_2_lut_rep_144_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13649)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7251_2_lut_rep_144_4_lut_4_lut.init = 16'hff81;
    L6MUX21 i11306 (.D0(n11910), .D1(n11911), .SD(rom_addr[7]), .Z(n11926));
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_568)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    PFUMX i11307 (.BLUT(n11912), .ALUT(n11913), .C0(rom_addr[7]), .Z(n11927));
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 n1251_bdd_3_lut_12483_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12772)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1251_bdd_3_lut_12483_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_587)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'h7001;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    L6MUX21 i11312 (.D0(n11922), .D1(n11923), .SD(rom_addr[7]), .Z(n11932));
    L6MUX21 i11323 (.D0(n11767), .D1(n11780), .SD(rom_addr[7]), .Z(n11943));
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    L6MUX21 i11324 (.D0(n11789), .D1(n11802), .SD(rom_addr[7]), .Z(n11944));
    LUT4 i7472_2_lut_rep_247_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13752)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7472_2_lut_rep_247_3_lut.init = 16'h8080;
    L6MUX21 i11363 (.D0(n11980), .D1(n11981), .SD(rom_addr[7]), .Z(n11983));
    LUT4 i5803_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8665)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5803_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h0580;
    LUT4 i7513_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13139), 
         .Z(n3069)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7513_2_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    L6MUX21 i11377 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n11997));
    PFUMX i11221 (.BLUT(n11839), .ALUT(n11840), .C0(rom_addr[5]), .Z(n11841));
    LUT4 n730_bdd_3_lut_12359_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_12359_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61_adj_590)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut.init = 16'h87fe;
    L6MUX21 i11224 (.D0(n11842), .D1(n11843), .SD(rom_addr[5]), .Z(n11844));
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'he420;
    PFUMX i5864 (.BLUT(n6704), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n6705));
    LUT4 n2552_bdd_3_lut_12429_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n12727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_12429_4_lut_4_lut.init = 16'hdfc0;
    LUT4 i7287_2_lut_rep_133_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13638)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7287_2_lut_rep_133_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n506_adj_591)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h103f;
    LUT4 i5848_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n6689)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5848_3_lut_4_lut_4_lut.init = 16'h04c0;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 i4979_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n5800)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4979_3_lut_4_lut_4_lut.init = 16'h2002;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n908)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut.init = 16'h7a78;
    L6MUX21 i11387 (.D0(n12004), .D1(n12005), .SD(rom_addr[7]), .Z(n12007));
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n526_adj_592)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h787a;
    L6MUX21 i11393 (.D0(n12009), .D1(n12010), .SD(rom_addr[7]), .Z(n12013));
    L6MUX21 i11409 (.D0(n12026), .D1(n12027), .SD(rom_addr[7]), .Z(n12029));
    L6MUX21 i11428 (.D0(n12046), .D1(n12047), .SD(rom_addr[6]), .Z(n12048));
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n6718), .C0(n11612), 
          .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n46)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3188;
    L6MUX21 i11458 (.D0(n12076), .D1(n12077), .SD(rom_addr[7]), .Z(n12078));
    PFUMX i11540 (.BLUT(n12157), .ALUT(n12158), .C0(rom_addr[6]), .Z(n12160));
    LUT4 n31_bdd_3_lut (.A(n46_adj_8), .B(n301), .C(rom_addr[4]), .Z(n13374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31_bdd_3_lut.init = 16'hcaca;
    LUT4 i12553_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n13954)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i12553_then_4_lut.init = 16'h272b;
    LUT4 i12553_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n13953)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C+!(D)))) */ ;
    defparam i12553_else_4_lut.init = 16'h0f28;
    PFUMX i13045 (.BLUT(n13923), .ALUT(n13924), .C0(n13836), .Z(n13925));
    LUT4 i12549_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n13957)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i12549_then_4_lut.init = 16'hfe17;
    LUT4 i12549_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n13956)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+((D)+!C)))) */ ;
    defparam i12549_else_4_lut.init = 16'h0a10;
    LUT4 i4543_3_lut_4_lut (.A(rom_addr[1]), .B(n13725), .C(rom_addr[4]), 
         .D(n13672), .Z(n5354)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4543_3_lut_4_lut.init = 16'h7f70;
    LUT4 i11286_3_lut (.A(n11901), .B(n11902), .C(rom_addr[8]), .Z(n11906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11286_3_lut.init = 16'hcaca;
    LUT4 i11202_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n13880)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i11202_4_lut_then_4_lut.init = 16'ha9c8;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13960)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 i4954_3_lut_rep_123_4_lut (.A(rom_addr[1]), .B(n13725), .C(rom_addr[4]), 
         .D(n13641), .Z(n13628)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4954_3_lut_rep_123_4_lut.init = 16'h08f8;
    PFUMX i11222 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n11842));
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13959)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    LUT4 i11744_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[4]), 
         .D(n270_adj_595), .Z(n11673)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11744_3_lut_4_lut.init = 16'h1f10;
    LUT4 i4969_3_lut_then_4_lut (.A(n13725), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n13705), .Z(n13963)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4969_3_lut_then_4_lut.init = 16'h7f70;
    LUT4 i4969_3_lut_else_4_lut (.A(n13725), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n13641), .Z(n13962)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4969_3_lut_else_4_lut.init = 16'hf707;
    LUT4 i11170_3_lut_4_lut (.A(rom_addr[0]), .B(n13729), .C(rom_addr[4]), 
         .D(n13734), .Z(n11790)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11170_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n13729), 
         .C(rom_addr[4]), .D(n13760), .Z(n1596_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .Z(n13966)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'ha4a4;
    PFUMX i11425 (.BLUT(n12043), .ALUT(n12044), .C0(rom_addr[4]), .Z(n12045));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13965)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'ha084;
    LUT4 i11184_3_lut_4_lut (.A(n13832), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n11804)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11184_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11183_4_lut (.A(n6681), .B(n13638), .C(rom_addr[4]), .D(n13853), 
         .Z(n11803)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11183_4_lut.init = 16'hcac0;
    LUT4 i11164_3_lut_4_lut (.A(n13832), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435), .Z(n11784)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11164_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11086_3_lut_4_lut (.A(n13832), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13670), .Z(n11706)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11086_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n13832), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_adj_596)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut (.A(n13832), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13668), .Z(n1883_adj_597)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut.init = 16'hefe0;
    PFUMX i13043 (.BLUT(n13920), .ALUT(n13921), .C0(rom_addr[4]), .Z(n13922));
    LUT4 i12540_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n13969)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam i12540_then_4_lut.init = 16'h0090;
    PFUMX i11563 (.BLUT(n12181), .ALUT(n12182), .C0(rom_addr[7]), .Z(n1278));
    L6MUX21 i11570 (.D0(n12188), .D1(n12189), .SD(rom_addr[7]), .Z(n2044));
    LUT4 i12540_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n13968)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i12540_else_4_lut.init = 16'h0260;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!((B (C+!(D))+!B (D))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h0822;
    LUT4 n13541_bdd_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13972)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam n13541_bdd_4_lut_then_4_lut.init = 16'h04c1;
    LUT4 n13541_bdd_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13971)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n13541_bdd_4_lut_else_4_lut.init = 16'h4801;
    LUT4 i11012_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13975)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam i11012_3_lut_then_4_lut.init = 16'h403a;
    LUT4 i11012_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13974)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A !(B (C (D))))) */ ;
    defparam i11012_3_lut_else_4_lut.init = 16'h482a;
    LUT4 i11075_3_lut_4_lut (.A(n13757), .B(n13819), .C(rom_addr[4]), 
         .D(n13921), .Z(n11695)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11075_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11285_3_lut (.A(n11899), .B(n11900), .C(rom_addr[8]), .Z(n11905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11285_3_lut.init = 16'hcaca;
    LUT4 i11015_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13978)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11015_4_lut_then_3_lut.init = 16'h4040;
    LUT4 n1196_bdd_3_lut_12924_4_lut (.A(rom_addr[0]), .B(n13736), .C(rom_addr[4]), 
         .D(n1196), .Z(n13005)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1196_bdd_3_lut_12924_4_lut.init = 16'h8f80;
    LUT4 i11015_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n13977)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11015_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i11202_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n13879)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11202_4_lut_else_4_lut.init = 16'h8888;
    LUT4 i12489_then_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n13981)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12489_then_4_lut.init = 16'h0004;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n13737), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13832), .Z(n1676_adj_599)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12489_else_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n13980)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i12489_else_4_lut.init = 16'h0812;
    PFUMX i12349 (.BLUT(n796), .ALUT(n954), .C0(rom_addr[4]), .Z(n12766));
    LUT4 i11161_4_lut_4_lut (.A(n13684), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n11781)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i11161_4_lut_4_lut.init = 16'hdfd0;
    LUT4 i11479_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n12099)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11479_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 rom_addr_0__bdd_4_lut_13228 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13983)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13228.init = 16'h0da3;
    LUT4 n12883_bdd_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13985)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+(D))))) */ ;
    defparam n12883_bdd_3_lut_then_4_lut.init = 16'h046d;
    LUT4 n12883_bdd_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13984)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam n12883_bdd_3_lut_else_4_lut.init = 16'h20b4;
    LUT4 i11032_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13988)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11032_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 i11032_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13987)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11032_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i11087_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13991)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11087_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n4004), .Z(n1786)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i11087_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13990)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11087_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13994)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13993)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i12406_then_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n13997)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i12406_then_4_lut.init = 16'h0084;
    LUT4 i12406_else_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n13996)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i12406_else_4_lut.init = 16'h8300;
    LUT4 i11035_4_lut (.A(n2444), .B(n13761), .C(rom_addr[4]), .D(n13720), 
         .Z(n11655)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11035_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n13684), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13845), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n13684), .B(rom_addr[3]), 
         .C(n13752), .D(rom_addr[4]), .Z(n1403_adj_600)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 i11499_3_lut_4_lut (.A(n13752), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_586), .Z(n12119)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11499_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n13752), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_601), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i7245_2_lut_4_lut_4_lut (.A(n13705), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13753), .Z(n1851_adj_602)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7245_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i2519_3_lut_4_lut_4_lut (.A(n13705), .B(rom_addr[4]), .C(n13725), 
         .D(rom_addr[1]), .Z(n3330)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2519_3_lut_4_lut_4_lut.init = 16'h7444;
    LUT4 i11154_3_lut_4_lut (.A(n13822), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653), .Z(n11774)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11154_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_187_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13692)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_187_4_lut_3_lut.init = 16'h2424;
    LUT4 i11126_3_lut_4_lut (.A(n13822), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_603), .Z(n11746)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11126_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11029_3_lut (.A(n301), .B(n604_adj_604), .C(rom_addr[4]), .Z(n11649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11029_3_lut.init = 16'hcaca;
    LUT4 i11139_3_lut (.A(n1069), .B(n1084_c), .C(rom_addr[4]), .Z(n11759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11139_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_554)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n2426), .Z(n1786_adj_605)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 i11171_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), .C(rom_addr[4]), 
         .D(n1658), .Z(n11791)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11171_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_606)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11093_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), .C(rom_addr[4]), 
         .D(n1084_adj_607), .Z(n11713)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11093_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n2009_adj_608), .Z(n2010_adj_609)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 i11027_3_lut (.A(n2283), .B(n2298_adj_610), .C(rom_addr[4]), 
         .Z(n11647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11027_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n13734), .Z(n1628)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n13760), .Z(n1820_adj_611)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n13753), 
         .C(rom_addr[4]), .D(n1529_adj_612), .Z(n1530_adj_613)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13349), .C(n2589), 
         .D(rom_addr[6]), .Z(n15002)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 i2654_3_lut_4_lut (.A(rom_addr[2]), .B(n13761), .C(rom_addr[5]), 
         .D(n13701), .Z(n5894)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2654_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_614)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11162_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n11782)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11162_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n13672), 
         .C(n13716), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_c), .C0(rom_addr[5]), 
          .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11104_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n13983), .Z(n11724)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11104_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11081_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), .C(rom_addr[4]), 
         .D(n1835), .Z(n11701)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11081_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n13705), 
         .C(rom_addr[4]), .D(n1435_adj_615), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n13706), .Z(n604_adj_616)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 i11110_3_lut_4_lut (.A(rom_addr[0]), .B(n13672), .C(rom_addr[4]), 
         .D(n13754), .Z(n11730)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11110_3_lut_4_lut.init = 16'hf202;
    LUT4 i11933_3_lut_4_lut (.A(n13671), .B(n11310), .C(rom_addr[5]), 
         .D(n1565_adj_617), .Z(n1597_adj_618)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11933_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11506 (.BLUT(n12124), .ALUT(n12125), .C0(rom_addr[4]), .Z(n12126));
    PFUMX i11068 (.BLUT(n589), .ALUT(n604_adj_619), .C0(rom_addr[4]), 
          .Z(n11688));
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n15005), .Z(n364_adj_620)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut.init = 16'h4f40;
    LUT4 n1293_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), .C(rom_addr[3]), 
         .D(n13692), .Z(n13237)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1293_bdd_3_lut_4_lut.init = 16'hf404;
    LUT4 i11216_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(rom_addr[4]), 
         .D(n2588), .Z(n11836)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11216_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11504_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), .C(rom_addr[3]), 
         .D(n13845), .Z(n12124)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11504_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A+!(B (D)+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut.init = 16'h4410;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n13748), .Z(n205_adj_621)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_352 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15007)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_352.init = 16'h1c1c;
    L6MUX21 i11233 (.D0(n11693), .D1(n764), .SD(rom_addr[6]), .Z(n11853));
    L6MUX21 i11234 (.D0(n829_adj_553), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n11854));
    PFUMX i11236 (.BLUT(n11699), .ALUT(n1149), .C0(rom_addr[6]), .Z(n11856));
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n13712), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n13750), .Z(n684)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    LUT4 i5850_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13883)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5850_3_lut_4_lut_then_4_lut.init = 16'h5285;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_623)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i11207_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[4]), 
         .D(n2009_adj_624), .Z(n11827)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11207_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13764), 
         .C(rom_addr[4]), .D(n13672), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13764), 
         .C(rom_addr[5]), .D(n13736), .Z(n1692)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h2a20;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), 
         .C(rom_addr[5]), .D(n1676_adj_625), .Z(n1692_adj_626)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11237 (.D0(n1213), .D1(n11702), .SD(rom_addr[6]), .Z(n11857));
    LUT4 i11190_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[4]), 
         .D(n13912), .Z(n11810)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11190_3_lut_4_lut.init = 16'hf202;
    PFUMX i11240 (.BLUT(n1597_adj_627), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n11860));
    LUT4 i11090_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[4]), 
         .D(n1643), .Z(n11710)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11090_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i11565_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[5]), 
         .D(n1914_adj_606), .Z(n12185)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11565_3_lut_4_lut.init = 16'hf202;
    LUT4 i11535_3_lut_4_lut (.A(rom_addr[0]), .B(n13764), .C(rom_addr[5]), 
         .D(n1851_adj_628), .Z(n12155)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11535_3_lut_4_lut.init = 16'hf202;
    PFUMX i11242 (.BLUT(n11708), .ALUT(n1915), .C0(rom_addr[6]), .Z(n11862));
    LUT4 i11036_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(rom_addr[4]), 
         .D(n13698), .Z(n11656)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11036_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13764), 
         .C(rom_addr[5]), .D(n13675), .Z(n1692_adj_629)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 i11041_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(rom_addr[4]), 
         .D(n2522), .Z(n11661)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11041_3_lut_4_lut.init = 16'hf202;
    LUT4 i11397_3_lut_4_lut (.A(n13839), .B(n13683), .C(rom_addr[5]), 
         .D(n2620), .Z(n12017)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11397_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11347_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(rom_addr[4]), 
         .D(n2283_adj_630), .Z(n11967)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11347_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n13839), .B(n13683), 
         .C(rom_addr[5]), .D(n2141_adj_631), .Z(n2173_adj_632)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11243 (.D0(n11711), .D1(n11717), .SD(rom_addr[6]), .Z(n11863));
    PFUMX i11260 (.BLUT(n190_adj_633), .ALUT(n11729), .C0(rom_addr[6]), 
          .Z(n11880));
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n13848), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n13848), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13685), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11021_3_lut (.A(n557_adj_634), .B(n428_adj_635), .C(rom_addr[4]), 
         .Z(n11641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11021_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_15 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11310)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'h8888;
    LUT4 i11165_3_lut_4_lut (.A(rom_addr[0]), .B(n13675), .C(rom_addr[4]), 
         .D(n1466_adj_636), .Z(n11785)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11165_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11261 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n11881));
    LUT4 i11020_3_lut (.A(n526), .B(n13637), .C(rom_addr[4]), .Z(n11640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11020_3_lut.init = 16'hcaca;
    PFUMX i11262 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n11882));
    LUT4 i5850_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13882)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5850_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 n2552_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), .C(rom_addr[3]), 
         .D(n13748), .Z(n13610)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n13845), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_595)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    L6MUX21 i11263 (.D0(n11739), .D1(n11742), .SD(rom_addr[6]), .Z(n11883));
    L6MUX21 i11264 (.D0(n11748), .D1(n11751), .SD(rom_addr[6]), .Z(n11884));
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n13681), 
         .C(rom_addr[3]), .D(n15005), .Z(n2298_adj_610)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11011_3_lut (.A(n270_adj_9), .B(n428_adj_635), .C(rom_addr[4]), 
         .Z(n11631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11011_3_lut.init = 16'hcaca;
    LUT4 i11940_3_lut (.A(n11631), .B(n13976), .C(rom_addr[5]), .Z(n11633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11940_3_lut.init = 16'hcaca;
    L6MUX21 i11265 (.D0(n829), .D1(n11757), .SD(rom_addr[6]), .Z(n11885));
    L6MUX21 i11268 (.D0(n11770), .D1(n11773), .SD(rom_addr[6]), .Z(n11888));
    LUT4 i11009_3_lut (.A(n2411), .B(n2426_adj_638), .C(rom_addr[4]), 
         .Z(n11629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11009_3_lut.init = 16'hcaca;
    PFUMX i11269 (.BLUT(n11783), .ALUT(n1404), .C0(rom_addr[6]), .Z(n11889));
    LUT4 i11026_3_lut_4_lut (.A(rom_addr[0]), .B(n13675), .C(rom_addr[4]), 
         .D(n2588), .Z(n11646)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11026_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11927_3_lut (.A(n11628), .B(n11629), .C(rom_addr[5]), .Z(n11630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11927_3_lut.init = 16'hcaca;
    PFUMX i13041 (.BLUT(n13917), .ALUT(n13918), .C0(rom_addr[2]), .Z(n13919));
    LUT4 n12111_bdd_3_lut_12920 (.A(n12111), .B(n12112), .C(rom_addr[4]), 
         .Z(n13003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12111_bdd_3_lut_12920.init = 16'hcaca;
    L6MUX21 i11270 (.D0(n11786), .D1(n1531), .SD(rom_addr[6]), .Z(n11890));
    PFUMX i11272 (.BLUT(n1724_adj_639), .ALUT(n1787_adj_640), .C0(rom_addr[6]), 
          .Z(n11892));
    LUT4 n13612_bdd_3_lut (.A(n13973), .B(n13611), .C(rom_addr[5]), .Z(n13613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13612_bdd_3_lut.init = 16'hcaca;
    LUT4 i11024_3_lut_4_lut (.A(rom_addr[0]), .B(n13675), .C(rom_addr[4]), 
         .D(n2444), .Z(n11644)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11024_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7290_2_lut_rep_350 (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n15005)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7290_2_lut_rep_350.init = 16'h4141;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n13675), 
         .C(n4936), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n13675), 
         .C(rom_addr[5]), .D(n1786_adj_623), .Z(n1787_adj_641)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i10999_3_lut (.A(n506), .B(n475), .C(rom_addr[4]), .Z(n11619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i10999_3_lut.init = 16'hcaca;
    L6MUX21 i11274 (.D0(n11805), .D1(n11808), .SD(rom_addr[6]), .Z(n11894));
    L6MUX21 i11291 (.D0(n190), .D1(n11835), .SD(rom_addr[6]), .Z(n11911));
    LUT4 i11983_3_lut (.A(n2010_adj_609), .B(n13967), .C(rom_addr[5]), 
         .Z(n12158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11983_3_lut.init = 16'hcaca;
    LUT4 i11872_3_lut (.A(n1883_adj_596), .B(n1914_adj_642), .C(rom_addr[5]), 
         .Z(n12156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11872_3_lut.init = 16'hcaca;
    LUT4 n1243_bdd_4_lut_12542 (.A(n13789), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n13018)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam n1243_bdd_4_lut_12542.init = 16'h8008;
    LUT4 n1243_bdd_4_lut_12927 (.A(n13756), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13699), .Z(n13019)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut_12927.init = 16'h3a0a;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n13831), 
         .C(rom_addr[3]), .D(n13692), .Z(n604_adj_604)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    LUT4 i11099_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(rom_addr[4]), 
         .D(n13776), .Z(n11719)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11099_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n13789), 
         .C(rom_addr[4]), .D(n13735), .Z(n891_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11654_3_lut_4_lut (.A(n13790), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n11813)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11654_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_587), .B(n1691_adj_542), 
         .C(rom_addr[4]), .Z(n1692_adj_644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n13834), .B(n5124), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220_adj_645)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i12104_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5124)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12104_2_lut.init = 16'h9999;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n13729), .Z(n1659)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    L6MUX21 i11294 (.D0(n11642), .D1(n11651), .SD(rom_addr[6]), .Z(n11914));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13886)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 i11480_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), .C(n13748), 
         .D(rom_addr[3]), .Z(n12100)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11480_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11875_3_lut (.A(n13500), .B(n1659), .C(rom_addr[5]), .Z(n12149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11875_3_lut.init = 16'hcaca;
    L6MUX21 i11297 (.D0(n11696), .D1(n11705), .SD(rom_addr[6]), .Z(n11917));
    L6MUX21 i11298 (.D0(n11714), .D1(n1149_c), .SD(rom_addr[6]), .Z(n11918));
    LUT4 i11155_4_lut_4_lut (.A(n13809), .B(rom_addr[4]), .C(n5124), .D(n684_adj_646), 
         .Z(n11775)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11155_4_lut_4_lut.init = 16'h7340;
    LUT4 n13025_bdd_3_lut (.A(n13958), .B(n13922), .C(rom_addr[5]), .Z(n13026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13025_bdd_3_lut.init = 16'hcaca;
    LUT4 i11526_4_lut (.A(n5124), .B(n2140), .C(rom_addr[4]), .D(n13789), 
         .Z(n12146)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11526_4_lut.init = 16'hcac0;
    PFUMX i11060 (.BLUT(n428_adj_647), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n11680));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n13885)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 rom_addr_0__bdd_4_lut_12916 (.A(rom_addr[0]), .B(n4721), .C(n5975), 
         .D(rom_addr[5]), .Z(n13027)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_12916.init = 16'h0a22;
    LUT4 n11668_bdd_3_lut (.A(n11668), .B(n13905), .C(rom_addr[6]), .Z(n13029)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n11668_bdd_3_lut.init = 16'hacac;
    LUT4 i7497_4_lut (.A(rom_addr[0]), .B(n13719), .C(n13764), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7497_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n13754), 
         .C(rom_addr[4]), .D(n13699), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    L6MUX21 i11301 (.D0(n11811), .D1(n11820), .SD(rom_addr[6]), .Z(n11921));
    PFUMX i11302 (.BLUT(n1597_adj_618), .ALUT(n1660_adj_648), .C0(rom_addr[6]), 
          .Z(n11922));
    LUT4 i11142_3_lut_4_lut (.A(n13784), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n11762)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11142_3_lut_4_lut.init = 16'hf909;
    PFUMX i11069 (.BLUT(n620), .ALUT(n635_adj_649), .C0(rom_addr[4]), 
          .Z(n11689));
    LUT4 i11500_3_lut (.A(n2025_adj_573), .B(n2040_adj_650), .C(rom_addr[4]), 
         .Z(n12120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11500_3_lut.init = 16'hcaca;
    LUT4 i11030_3_lut_4_lut (.A(n13784), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n11650)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11030_3_lut_4_lut.init = 16'h6f60;
    LUT4 n13032_bdd_3_lut (.A(n13952), .B(n13955), .C(rom_addr[6]), .Z(n13033)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13032_bdd_3_lut.init = 16'hcaca;
    LUT4 n13964_bdd_3_lut_13593 (.A(n2492), .B(n2555_adj_651), .C(rom_addr[6]), 
         .Z(n14824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13964_bdd_3_lut_13593.init = 16'hcaca;
    LUT4 i11431_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n13889)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B+(C)))) */ ;
    defparam i11431_then_4_lut.init = 16'h2129;
    LUT4 n13964_bdd_4_lut_13594 (.A(n13964), .B(n13868), .C(rom_addr[0]), 
         .D(rom_addr[6]), .Z(n14825)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B (C)))) */ ;
    defparam n13964_bdd_4_lut_13594.init = 16'h5030;
    PFUMX i13039 (.BLUT(n13913), .ALUT(n13914), .C0(rom_addr[0]), .Z(n13915));
    PFUMX i11303 (.BLUT(n1724_adj_652), .ALUT(n1787_adj_641), .C0(rom_addr[6]), 
          .Z(n11923));
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n13675), 
         .C(rom_addr[5]), .D(n1786_adj_605), .Z(n1787_adj_640)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_653), .B(n13844), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659_adj_654)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 i11431_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n13888)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11431_else_4_lut.init = 16'h8888;
    LUT4 n2110_bdd_4_lut_13586 (.A(rom_addr[5]), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n13659), .Z(n14827)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13586.init = 16'h8400;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_642)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 n2110_bdd_4_lut_13597 (.A(n2110), .B(n2078), .C(rom_addr[5]), 
         .D(rom_addr[6]), .Z(n14828)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13597.init = 16'haaac;
    LUT4 i11189_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13784), .C(rom_addr[4]), 
         .D(n4824), .Z(n11809)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11189_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13844), .D(rom_addr[3]), .Z(n2040_adj_650)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11472_3_lut (.A(n2077), .B(n1529_adj_612), .C(rom_addr[4]), 
         .Z(n12092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11472_3_lut.init = 16'hcaca;
    LUT4 i11418_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), .C(n13845), 
         .D(rom_addr[3]), .Z(n12038)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11418_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11470_3_lut (.A(n1451), .B(n1676_adj_587), .C(rom_addr[4]), 
         .Z(n12090)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11470_3_lut.init = 16'hcaca;
    PFUMX i12347 (.BLUT(n668), .ALUT(n12761), .C0(rom_addr[4]), .Z(n12763));
    LUT4 i11014_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13892)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11014_3_lut_4_lut_then_4_lut.init = 16'h744c;
    LUT4 i11014_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n13891)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11014_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_601), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13712), .D(rom_addr[3]), .Z(n1017)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i11304 (.BLUT(n1852_adj_656), .ALUT(n1915_adj_657), .C0(rom_addr[6]), 
          .Z(n11924));
    L6MUX21 i11359 (.D0(n11618), .D1(n11627), .SD(rom_addr[6]), .Z(n11979));
    PFUMX i11360 (.BLUT(n2365_adj_658), .ALUT(n11630), .C0(rom_addr[6]), 
          .Z(n11980));
    LUT4 address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13706), .D(rom_addr[3]), .Z(n2426_adj_638)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11484_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13895)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i11484_then_4_lut.init = 16'h214a;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13848), .D(rom_addr[3]), .Z(n2522_adj_659)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13712), .D(rom_addr[3]), .Z(n2459)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11361 (.BLUT(n11636), .ALUT(n6648), .C0(rom_addr[6]), .Z(n11981));
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5124), .B(n15007), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(n13847), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11204_3_lut_4_lut (.A(rom_addr[1]), .B(n13780), .C(rom_addr[4]), 
         .D(n30), .Z(n11824)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11204_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557), .B(n1211), .C(rom_addr[4]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 i11484_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13894)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11484_else_4_lut.init = 16'h081e;
    L6MUX21 i11369 (.D0(n11645), .D1(n11648), .SD(rom_addr[6]), .Z(n11989));
    PFUMX i11370 (.BLUT(n11654), .ALUT(n2428_adj_661), .C0(rom_addr[6]), 
          .Z(n11990));
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), 
         .C(n13816), .D(n2283_adj_569), .Z(n2492_adj_662)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 rom_addr_6__bdd_3_lut_12781_4_lut (.A(n13845), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13657), .Z(n13281)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_6__bdd_3_lut_12781_4_lut.init = 16'hefe0;
    LUT4 i11130_3_lut_4_lut (.A(rom_addr[0]), .B(n13685), .C(rom_addr[4]), 
         .D(n747), .Z(n11750)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11130_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_663), 
         .C(rom_addr[4]), .Z(n1244_adj_664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    L6MUX21 i11371 (.D0(n11657), .D1(n11663), .SD(rom_addr[6]), .Z(n11991));
    LUT4 i11897_3_lut (.A(n1244_adj_664), .B(n1275), .C(rom_addr[5]), 
         .Z(n12053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11897_3_lut.init = 16'hcaca;
    LUT4 i7425_4_lut (.A(rom_addr[0]), .B(n13705), .C(n13664), .D(rom_addr[4]), 
         .Z(n1117_adj_666)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7425_4_lut.init = 16'h0a22;
    PFUMX i11378 (.BLUT(n2492_adj_662), .ALUT(n2555_adj_667), .C0(rom_addr[6]), 
          .Z(n11998));
    LUT4 i11098_3_lut_4_lut (.A(rom_addr[0]), .B(n13685), .C(rom_addr[4]), 
         .D(n2588), .Z(n11718)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11098_3_lut_4_lut.init = 16'hf808;
    LUT4 i11559_4_lut (.A(n12036), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13982), 
         .Z(n12179)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11559_4_lut.init = 16'hca0a;
    L6MUX21 i11382 (.D0(n11814), .D1(n2173), .SD(rom_addr[6]), .Z(n12002));
    PFUMX i11384 (.BLUT(n11823), .ALUT(n2428_adj_668), .C0(rom_addr[6]), 
          .Z(n12004));
    PFUMX i11385 (.BLUT(n2492_adj_669), .ALUT(n2555_adj_670), .C0(rom_addr[6]), 
          .Z(n12005));
    LUT4 i11048_3_lut_4_lut (.A(rom_addr[0]), .B(n13685), .C(rom_addr[4]), 
         .D(n379), .Z(n11668)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11048_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11389 (.BLUT(n2110_adj_671), .ALUT(n2173_adj_632), .C0(rom_addr[6]), 
          .Z(n12009));
    LUT4 i11414_3_lut (.A(n908_adj_672), .B(n13637), .C(rom_addr[4]), 
         .Z(n12034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11414_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n13685), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_673)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 i11412_3_lut (.A(n428_adj_674), .B(n684), .C(rom_addr[4]), .Z(n12032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11412_3_lut.init = 16'hcaca;
    LUT4 i11411_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n12031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11411_3_lut.init = 16'hcaca;
    PFUMX i11390 (.BLUT(n2237), .ALUT(n11838), .C0(rom_addr[6]), .Z(n12010));
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_243_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13748)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_243_3_lut.init = 16'hc2c2;
    PFUMX i13036 (.BLUT(n13909), .ALUT(n13910), .C0(rom_addr[1]), .Z(n13911));
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283_adj_569), .B(n2298_adj_610), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i11208_3_lut_4_lut (.A(n13842), .B(n13780), .C(rom_addr[4]), 
         .D(n2040), .Z(n11828)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11208_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n13842), .B(n13780), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n13656), .B(n13668), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 i11366_4_lut (.A(n684), .B(rom_addr[1]), .C(rom_addr[4]), .D(n13725), 
         .Z(n11986)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11366_4_lut.init = 16'hca0a;
    L6MUX21 i11392 (.D0(n11968), .D1(n2555), .SD(rom_addr[6]), .Z(n12012));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13692), .Z(n844)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 i11355_3_lut (.A(n205), .B(n604_adj_616), .C(rom_addr[4]), .Z(n11975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11355_3_lut.init = 16'hcaca;
    LUT4 i11051_3_lut_4_lut (.A(n13817), .B(n13780), .C(rom_addr[4]), 
         .D(n13637), .Z(n11671)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11051_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13898)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_adj_607)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13848), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11346_3_lut (.A(n2444_adj_676), .B(n2459), .C(rom_addr[4]), 
         .Z(n11966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11346_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13897)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 i11187_3_lut_4_lut (.A(n13847), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_adj_677), .Z(n11807)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11187_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13844), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12045), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i7300_4_lut (.A(rom_addr[0]), .B(n13648), .C(n6321), .D(rom_addr[5]), 
         .Z(n190_adj_678)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7300_4_lut.init = 16'h0a22;
    LUT4 i11505_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), .C(rom_addr[3]), 
         .D(n13733), .Z(n12125)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11505_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13901)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_then_4_lut.init = 16'h0040;
    LUT4 i7552_4_lut (.A(n1628_adj_679), .B(rom_addr[6]), .C(n11339), 
         .D(rom_addr[5]), .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7552_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13900)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n13836), .B(n13670), .C(rom_addr[4]), 
         .D(n13780), .Z(n1403_adj_680)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    PFUMX i11404 (.BLUT(n12016), .ALUT(n12017), .C0(rom_addr[6]), .Z(n12024));
    LUT4 i6005_3_lut_4_lut (.A(rom_addr[0]), .B(n13641), .C(n13810), .D(n2426), 
         .Z(n2428_adj_661)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6005_3_lut_4_lut.init = 16'hf202;
    LUT4 i11096_3_lut_4_lut (.A(n13847), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13691), .Z(n11716)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11096_3_lut_4_lut.init = 16'h8f80;
    LUT4 i10997_3_lut_4_lut (.A(rom_addr[0]), .B(n13664), .C(rom_addr[4]), 
         .D(n13649), .Z(n11617)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i10997_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n13847), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038_adj_681), .Z(n1054_adj_682)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5804_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), .C(rom_addr[3]), 
         .D(n8665), .Z(n6645)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5804_3_lut_4_lut.init = 16'h08f8;
    PFUMX i12646 (.BLUT(n13138), .ALUT(n13135), .C0(rom_addr[6]), .Z(n13139));
    LUT4 i11661_3_lut (.A(n6670), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11661_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13844), .Z(n1707_adj_684)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 n2298_bdd_3_lut_12842 (.A(n2298_adj_610), .B(n2283_adj_630), .C(rom_addr[4]), 
         .Z(n13110)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2298_bdd_3_lut_12842.init = 16'hacac;
    LUT4 i11152_4_lut (.A(n13658), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n11772)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11152_4_lut.init = 16'hca0a;
    LUT4 i11039_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13904)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i11039_then_4_lut.init = 16'h203a;
    LUT4 i11844_3_lut (.A(n13864), .B(n444), .C(rom_addr[5]), .Z(n11752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11844_3_lut.init = 16'hcaca;
    LUT4 n13113_bdd_3_lut (.A(n13113), .B(n13110), .C(rom_addr[5]), .Z(n13114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13113_bdd_3_lut.init = 16'hcaca;
    PFUMX i13034 (.BLUT(n13906), .ALUT(n13907), .C0(rom_addr[1]), .Z(n13908));
    L6MUX21 i11405 (.D0(n12018), .D1(n12019), .SD(rom_addr[6]), .Z(n12025));
    LUT4 i7265_2_lut_4_lut (.A(n13658), .B(n13651), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7265_2_lut_4_lut.init = 16'hca00;
    LUT4 i11528_3_lut_4_lut (.A(rom_addr[0]), .B(n13655), .C(rom_addr[5]), 
         .D(n1565_adj_614), .Z(n12148)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11528_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11406 (.D0(n12020), .D1(n12021), .SD(rom_addr[6]), .Z(n12026));
    LUT4 i11089_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), .C(rom_addr[4]), 
         .D(n1946_adj_685), .Z(n11709)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11089_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11407 (.D0(n12022), .D1(n12023), .SD(rom_addr[6]), .Z(n12027));
    LUT4 i7336_4_lut (.A(rom_addr[0]), .B(n443_adj_686), .C(n13675), .D(rom_addr[4]), 
         .Z(n2268_adj_547)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7336_4_lut.init = 16'h0a22;
    L6MUX21 i11555 (.D0(n11795), .D1(n11977), .SD(rom_addr[6]), .Z(n12175));
    LUT4 i11432_3_lut_4_lut (.A(rom_addr[0]), .B(n13655), .C(rom_addr[5]), 
         .D(n1212_adj_687), .Z(n12052)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11432_3_lut_4_lut.init = 16'hf101;
    PFUMX i11434 (.BLUT(n12052), .ALUT(n12053), .C0(rom_addr[6]), .Z(n12054));
    PFUMX i11439 (.BLUT(n12055), .ALUT(n12056), .C0(rom_addr[6]), .Z(n12059));
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n13844), .B(n13750), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n13814), .B(n13826), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 i11039_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13903)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11039_else_4_lut.init = 16'h8868;
    PFUMX i11059 (.BLUT(n397), .ALUT(n6666), .C0(rom_addr[4]), .Z(n11679));
    LUT4 i11005_3_lut_4_lut (.A(rom_addr[1]), .B(n13841), .C(rom_addr[4]), 
         .D(n2267), .Z(n11625)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11005_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i11440 (.D0(n12057), .D1(n12058), .SD(rom_addr[6]), .Z(n12060));
    LUT4 i11858_3_lut (.A(n12145), .B(n12146), .C(rom_addr[5]), .Z(n2110_adj_688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11858_3_lut.init = 16'hcaca;
    LUT4 i11860_3_lut (.A(n13919), .B(n13961), .C(rom_addr[5]), .Z(n2110_adj_689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11860_3_lut.init = 16'hcaca;
    L6MUX21 i11447 (.D0(n12064), .D1(n12065), .SD(rom_addr[6]), .Z(n12067));
    L6MUX21 i11453 (.D0(n12069), .D1(n12070), .SD(rom_addr[6]), .Z(n12073));
    L6MUX21 i11454 (.D0(n12071), .D1(n12072), .SD(rom_addr[6]), .Z(n12074));
    PFUMX i11456 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12076));
    PFUMX i12644 (.BLUT(n13136), .ALUT(n13848), .C0(rom_addr[3]), .Z(n13137));
    LUT4 i11567_4_lut (.A(n13670), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12187)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11567_4_lut.init = 16'haaca;
    LUT4 i11566_3_lut (.A(n1914_adj_606), .B(n13618), .C(rom_addr[5]), 
         .Z(n12186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11566_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13845), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i11023_3_lut_4_lut (.A(rom_addr[0]), .B(n13715), .C(rom_addr[4]), 
         .D(n2426), .Z(n11643)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11023_3_lut_4_lut.init = 16'hf808;
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n13928), .C(rom_addr[6]), .D(n11342), 
         .Z(n11344)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i11424_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), .C(rom_addr[3]), 
         .D(n13750), .Z(n12044)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11424_3_lut_4_lut.init = 16'hf808;
    PFUMX i12637 (.BLUT(n13126), .ALUT(n2427), .C0(rom_addr[6]), .Z(n13127));
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13907)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 i11508_4_lut (.A(n13646), .B(n13818), .C(rom_addr[6]), .D(n4), 
         .Z(n12128)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i11508_4_lut.init = 16'h3afa;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n13692), .B(n13621), .C(rom_addr[5]), 
         .D(n11337), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 i7672_4_lut (.A(n2621), .B(n13851), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_10)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7672_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n13631), .Z(n2621)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut (.A(n13635), .B(rom_addr[7]), .C(n6419), .D(rom_addr[5]), 
         .Z(n10349)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 n13125_bdd_3_lut (.A(n13125), .B(n13124), .C(rom_addr[5]), .Z(n13126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13125_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13906)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 i7592_4_lut_4_lut (.A(n13653), .B(rom_addr[5]), .C(n5800), .D(rom_addr[0]), 
         .Z(n2492)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7592_4_lut_4_lut.init = 16'h7400;
    L6MUX21 i11467 (.D0(n12084), .D1(n12085), .SD(rom_addr[6]), .Z(n12087));
    LUT4 i7284_4_lut_4_lut (.A(n13764), .B(rom_addr[4]), .C(n4004), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7284_4_lut_4_lut.init = 16'h7400;
    PFUMX i9733 (.BLUT(n10348), .ALUT(n10349), .C0(rom_addr[8]), .Z(n10350));
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13628), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_691)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11280_3_lut (.A(n11889), .B(n11890), .C(rom_addr[7]), .Z(n11900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11280_3_lut.init = 16'hcaca;
    LUT4 i11281_3_lut (.A(n11891), .B(n11892), .C(rom_addr[7]), .Z(n11901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11281_3_lut.init = 16'hcaca;
    LUT4 i5887_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6681)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5887_2_lut.init = 16'h6666;
    LUT4 i5868_4_lut_4_lut (.A(n13784), .B(rom_addr[3]), .C(n13712), .D(n11450), 
         .Z(n6709)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5868_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11534_3_lut (.A(n12152), .B(n12153), .C(rom_addr[7]), .Z(n12154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11534_3_lut.init = 16'hcaca;
    LUT4 i11232_3_lut (.A(n11684), .B(n11690), .C(rom_addr[6]), .Z(n11852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11232_3_lut.init = 16'hcaca;
    LUT4 i11903_3_lut (.A(n13943), .B(n2109), .C(rom_addr[5]), .Z(n12016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11903_3_lut.init = 16'hcaca;
    LUT4 i11033_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13910)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11033_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 i11033_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n13909)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11033_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n13784), .B(rom_addr[4]), 
         .C(n13756), .D(n11438), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11497_3_lut_4_lut_4_lut (.A(n13784), .B(rom_addr[3]), .C(n13845), 
         .D(rom_addr[4]), .Z(n12117)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i11497_3_lut_4_lut_4_lut.init = 16'hfcd1;
    L6MUX21 i11475 (.D0(n12093), .D1(n12094), .SD(rom_addr[6]), .Z(n12095));
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n10078), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n13821), .B(n13780), 
         .C(rom_addr[4]), .D(n1483), .Z(n1499_adj_692)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12635 (.BLUT(n13123), .ALUT(n13676), .C0(rom_addr[4]), .Z(n13124));
    LUT4 i12121_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11554)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12121_2_lut.init = 16'hbbbb;
    L6MUX21 i11490 (.D0(n12108), .D1(n12109), .SD(rom_addr[6]), .Z(n12110));
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n13821), .B(n13780), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n13653), .B(n3330), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_658)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    L6MUX21 i11503 (.D0(n12121), .D1(n12122), .SD(rom_addr[6]), .Z(n12123));
    PFUMX i11509 (.BLUT(n12127), .ALUT(n12128), .C0(rom_addr[7]), .Z(n12129));
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n13789), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n12576)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    PFUMX i11532 (.BLUT(n12148), .ALUT(n12149), .C0(rom_addr[6]), .Z(n12152));
    LUT4 i11408_3_lut (.A(n12024), .B(n12025), .C(rom_addr[7]), .Z(n12028)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11408_3_lut.init = 16'hcaca;
    LUT4 i11487_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15018)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11487_then_4_lut.init = 16'h5924;
    LUT4 i11394_3_lut (.A(n13127), .B(n12012), .C(rom_addr[7]), .Z(n12014)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11394_3_lut.init = 16'hcaca;
    LUT4 i11909_3_lut (.A(n13884), .B(n13995), .C(rom_addr[5]), .Z(n2110_adj_671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11909_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13834), .Z(n653_adj_603)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11533 (.D0(n12150), .D1(n12151), .SD(rom_addr[6]), .Z(n12153));
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491_adj_693), 
         .C(rom_addr[5]), .Z(n2492_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13750), .Z(n428_adj_635)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 rom_addr_2__bdd_4_lut_13113 (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13912)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam rom_addr_2__bdd_4_lut_13113.init = 16'h7004;
    LUT4 i12045_4_lut (.A(n2573), .B(n15002), .C(rom_addr[6]), .D(n13797), 
         .Z(n2685_adj_694)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12045_4_lut.init = 16'hccca;
    PFUMX i11539 (.BLUT(n12155), .ALUT(n12156), .C0(rom_addr[6]), .Z(n12159));
    LUT4 i11386_3_lut (.A(n12002), .B(n13115), .C(rom_addr[7]), .Z(n12006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11386_3_lut.init = 16'hcaca;
    LUT4 i11217_3_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n15012)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i11217_3_lut_then_4_lut.init = 16'h1240;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(n13733), .D(rom_addr[3]), .Z(n653)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15006), .Z(n2009)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11913_3_lut (.A(n11821), .B(n13881), .C(rom_addr[5]), .Z(n11823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11913_3_lut.init = 16'hcaca;
    LUT4 i5838_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13914)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5838_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(n13844), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13692), .Z(n220_adj_695)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 i7334_4_lut (.A(rom_addr[0]), .B(n13715), .C(n13641), .D(n6851), 
         .Z(n2237_adj_696)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7334_4_lut.init = 16'h0a88;
    LUT4 i5999_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5999_2_lut.init = 16'heeee;
    LUT4 i11513_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), .C(rom_addr[3]), 
         .D(n15007), .Z(n12133)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11513_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7750_2_lut_rep_279 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13784)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7750_2_lut_rep_279.init = 16'heeee;
    LUT4 i5838_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13913)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5838_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(n13832), .D(rom_addr[3]), .Z(n428_adj_674)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i11376_3_lut (.A(n2237_adj_696), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n11996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11376_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(n15006), .D(rom_addr[3]), .Z(n1243_adj_663)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h77f0;
    L6MUX21 i11553 (.D0(n12033), .D1(n11621), .SD(rom_addr[6]), .Z(n12173));
    PFUMX i11568 (.BLUT(n12184), .ALUT(n12185), .C0(rom_addr[6]), .Z(n12188));
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n13685), .B(n13846), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_697)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i11921_3_lut (.A(n13989), .B(n13911), .C(rom_addr[5]), .Z(n11654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11921_3_lut.init = 16'hcaca;
    PFUMX i13032 (.BLUT(n13903), .ALUT(n13904), .C0(rom_addr[0]), .Z(n13905));
    LUT4 i11362_3_lut (.A(n11978), .B(n11979), .C(rom_addr[7]), .Z(n11982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11362_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15007), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7340_4_lut (.A(rom_addr[0]), .B(n13705), .C(n4497), .D(rom_addr[4]), 
         .Z(n2523_adj_698)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7340_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n13627), .B(n13712), .C(rom_addr[5]), 
         .D(n13721), .Z(n2555_adj_651)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    LUT4 i11231_3_lut (.A(n11681), .B(n508_adj_699), .C(rom_addr[6]), 
         .Z(n11851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11231_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n13890), .B(n507_adj_660), 
         .C(rom_addr[5]), .Z(n508_adj_699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    PFUMX i11569 (.BLUT(n12186), .ALUT(n12187), .C0(rom_addr[6]), .Z(n12189));
    LUT4 i11925_3_lut (.A(n13893), .B(n13979), .C(rom_addr[5]), .Z(n11636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11925_3_lut.init = 16'hcaca;
    LUT4 i11266_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13986), 
         .Z(n11886)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11266_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_700), .B(n1786_adj_623), 
         .C(rom_addr[5]), .Z(n1915_adj_657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7406_4_lut (.A(rom_addr[0]), .B(n13764), .C(n5981), .D(rom_addr[5]), 
         .Z(n1852_adj_656)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7406_4_lut.init = 16'ha022;
    LUT4 i11156_3_lut_4_lut (.A(rom_addr[1]), .B(n13776), .C(rom_addr[4]), 
         .D(n731_adj_701), .Z(n11776)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11156_3_lut_4_lut.init = 16'hf101;
    LUT4 i11916_3_lut (.A(n2523_adj_698), .B(n2554_adj_697), .C(rom_addr[5]), 
         .Z(n2555_adj_667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11916_3_lut.init = 16'hcaca;
    LUT4 n12763_bdd_3_lut (.A(n12763), .B(n924_adj_702), .C(rom_addr[5]), 
         .Z(n12764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12763_bdd_3_lut.init = 16'hcaca;
    PFUMX i11426 (.BLUT(n1054_adj_682), .ALUT(n1085_adj_703), .C0(rom_addr[5]), 
          .Z(n12046));
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n13776), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_628)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n13776), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_617)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_245_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13750)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_245_4_lut_3_lut.init = 16'h4242;
    PFUMX i11368 (.BLUT(n2110_adj_689), .ALUT(n2173_adj_583), .C0(rom_addr[6]), 
          .Z(n11988));
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13832), .Z(n1483)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n13628), 
         .C(rom_addr[5]), .D(n2396_adj_704), .Z(n2428_adj_668)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11358 (.BLUT(n2110_adj_688), .ALUT(n2173_adj_580), .C0(rom_addr[6]), 
          .Z(n11978));
    LUT4 rom_addr_0__bdd_4_lut_13085 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_c)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13085.init = 16'hb124;
    LUT4 i11350_3_lut_4_lut (.A(rom_addr[1]), .B(n13776), .C(rom_addr[4]), 
         .D(n301_c), .Z(n11970)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11350_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n13821), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13692), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11290 (.D0(n11826), .D1(n11832), .SD(rom_addr[6]), .Z(n11910));
    LUT4 i11471_3_lut_4_lut (.A(n13684), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_705), .Z(n12091)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11471_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15019), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445_adj_707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11259 (.D0(n63), .D1(n11726), .SD(rom_addr[6]), .Z(n11879));
    LUT4 i5815_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n13918)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i5815_4_lut_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_adj_16 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n11392)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'heeee;
    L6MUX21 i11228 (.D0(n63_adj_563), .D1(n11672), .SD(rom_addr[6]), .Z(n11848));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n13797), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11552_4_lut (.A(n11971), .B(n380_adj_708), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12172)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11552_4_lut.init = 16'hca0a;
    LUT4 i5815_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13917)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i5815_4_lut_4_lut_else_3_lut.init = 16'h4454;
    LUT4 i12000_3_lut (.A(n445_adj_707), .B(n11633), .C(rom_addr[6]), 
         .Z(n11913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12000_3_lut.init = 16'hcaca;
    PFUMX i12627 (.BLUT(n2237_adj_696), .ALUT(n13114), .C0(rom_addr[6]), 
          .Z(n13115));
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n13817), .B(n13667), .C(rom_addr[4]), 
         .D(n13776), .Z(n380_adj_708)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i12192_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n11538)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12192_3_lut.init = 16'h7f7f;
    LUT4 i11813_3_lut (.A(n2283_adj_571), .B(n2298), .C(rom_addr[4]), 
         .Z(n2299_adj_709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11813_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i190_3_lut_4_lut (.A(rom_addr[0]), .B(n13648), 
         .C(rom_addr[5]), .D(n189_adj_576), .Z(n190_adj_633)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i190_3_lut_4_lut.init = 16'hf202;
    LUT4 n13095_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13653), .C(rom_addr[5]), 
         .D(n13095), .Z(n13096)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13095_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11947_3_lut (.A(n11781), .B(n11782), .C(rom_addr[5]), .Z(n11783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11947_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n13896), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11116 (.D0(n11734), .D1(n11735), .SD(rom_addr[6]), .Z(n11736));
    L6MUX21 i11125 (.D0(n11743), .D1(n11744), .SD(rom_addr[6]), .Z(n11745));
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n13750), .B(n13822), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 n13137_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13653), .C(rom_addr[5]), 
         .D(n13137), .Z(n13138)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13137_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i10827_2_lut (.A(rom_addr[4]), .B(rom_addr[6]), .Z(n11446)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10827_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n13842), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13832), .Z(n2009_adj_624)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 i11564_3_lut_4_lut (.A(rom_addr[0]), .B(n13653), .C(rom_addr[5]), 
         .D(n1851_adj_11), .Z(n12184)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11564_3_lut_4_lut.init = 16'hf202;
    LUT4 i11959_3_lut (.A(n11706), .B(n13992), .C(rom_addr[5]), .Z(n11708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11959_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n13653), 
         .C(n6080), .D(rom_addr[6]), .Z(n2110)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    PFUMX i11134 (.BLUT(n11752), .ALUT(n11753), .C0(rom_addr[6]), .Z(n11754));
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565), .B(n1596_c), .C(rom_addr[5]), 
         .Z(n1597_adj_627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n13684), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947_adj_711)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 i11963_3_lut (.A(n13925), .B(n13970), .C(rom_addr[5]), .Z(n11699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11963_3_lut.init = 16'hcaca;
    LUT4 n2552_bdd_2_lut_12859_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n12726)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_12859_3_lut_4_lut.init = 16'h0007;
    LUT4 i11342_3_lut (.A(n11960), .B(n11961), .C(rom_addr[10]), .Z(n11962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11342_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n13845), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_712), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_713), .ALUT(n1883_adj_714), 
          .C0(n13797), .Z(n1915_adj_584)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n13684), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_684), .Z(n1723_adj_715)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11718_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n11725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11718_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596), .C0(n11547), 
          .Z(n1597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3392), .Z(n10312)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13692), .Z(n475_adj_717)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i11147 (.D0(n11765), .D1(n11766), .SD(rom_addr[6]), .Z(n11767));
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_718), .ALUT(n1117_adj_546), 
          .C0(n13797), .Z(n1149_adj_581)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n109_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13664), .C(rom_addr[4]), 
         .D(n124_adj_719), .Z(n13371)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n109_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i7270_4_lut (.A(rom_addr[0]), .B(n6036), .C(n13630), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7270_4_lut.init = 16'h0a22;
    LUT4 i11057_3_lut_then_4_lut (.A(rom_addr[0]), .B(n13833), .C(rom_addr[3]), 
         .D(n13822), .Z(n13921)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i11057_3_lut_then_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13664), 
         .C(rom_addr[4]), .D(n13669), .Z(n1786_adj_720)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13844), .Z(n1435)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i11160 (.D0(n11778), .D1(n11779), .SD(rom_addr[6]), .Z(n11780));
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n13853), 
         .C(rom_addr[3]), .D(n13692), .Z(n589_adj_721)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i11169 (.D0(n11787), .D1(n11788), .SD(rom_addr[6]), .Z(n11789));
    LUT4 i12020_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12020_3_lut.init = 16'hcaca;
    L6MUX21 i11182 (.D0(n11800), .D1(n11801), .SD(rom_addr[6]), .Z(n11802));
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_691), 
          .C0(n13797), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n1340_bdd_3_lut_12753_4_lut (.A(n13692), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13658), .Z(n13248)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_12753_4_lut.init = 16'h8f80;
    LUT4 i2581_4_lut (.A(rom_addr[1]), .B(n13635), .C(rom_addr[5]), .D(n13728), 
         .Z(n3392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2581_4_lut.init = 16'hcfca;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n13692), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2140), .Z(n1309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n13816), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11057_3_lut_else_4_lut (.A(rom_addr[0]), .B(n13833), .C(rom_addr[3]), 
         .D(n13750), .Z(n13920)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i11057_3_lut_else_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n3984), .ALUT(n1692_adj_626), 
          .C0(n11566), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n13699), 
         .C(rom_addr[5]), .D(n2205), .Z(n2237)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n11547), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n13238_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13635), .C(rom_addr[5]), 
         .D(n13238), .Z(n13239)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n13238_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_635), .B(n684), .C(rom_addr[4]), 
         .Z(n444_adj_706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n13712), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_659), .Z(n2523_adj_725)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    PFUMX i13030 (.BLUT(n13900), .ALUT(n13901), .C0(rom_addr[4]), .Z(n924_adj_702));
    LUT4 i11562_4_lut (.A(n13660), .B(n1276), .C(rom_addr[6]), .D(n4_adj_726), 
         .Z(n12182)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11562_4_lut.init = 16'hcac0;
    LUT4 i11561_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13652), 
         .Z(n12181)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11561_4_lut.init = 16'h0aca;
    LUT4 i11077_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n13822), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n13924)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11077_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n13845), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13693), .Z(n2205_adj_727)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 i5807_3_lut_4_lut (.A(n13712), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6647), .Z(n6648)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5807_3_lut_4_lut.init = 16'hf808;
    LUT4 i11077_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n13822), .C(rom_addr[3]), 
         .Z(n13923)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11077_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 i12031_3_lut (.A(n12178), .B(n12179), .C(rom_addr[7]), .Z(n1021_adj_572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12031_3_lut.init = 16'hcaca;
    LUT4 i11556_4_lut (.A(n11987), .B(rom_addr[0]), .C(rom_addr[6]), .D(n5436), 
         .Z(n12176)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11556_4_lut.init = 16'h0aca;
    LUT4 i11217_3_lut_else_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n15011)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11217_3_lut_else_4_lut.init = 16'h0814;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n1834), .Z(n333)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut.init = 16'hf202;
    LUT4 i7517_2_lut_rep_316 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13821)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7517_2_lut_rep_316.init = 16'heeee;
    LUT4 i11795_3_lut (.A(n12037), .B(n12038), .C(rom_addr[4]), .Z(n12039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11795_3_lut.init = 16'hcaca;
    LUT4 i11549_4_lut (.A(n13899), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12169)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11549_4_lut.init = 16'hcac0;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n13793), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n924_bdd_3_lut_12365 (.A(n924_adj_702), .B(n12766), .C(rom_addr[5]), 
         .Z(n12767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n924_bdd_3_lut_12365.init = 16'hcaca;
    LUT4 i11818_3_lut (.A(n13861), .B(n635), .C(rom_addr[4]), .Z(n11976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11818_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), 
         .C(rom_addr[4]), .D(n2140), .Z(n2620)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut_4_lut (.A(rom_addr[0]), .B(n13701), 
         .C(n13818), .D(rom_addr[4]), .Z(n2141_adj_631)) /* synthesis lut_function=(!(A (B+(D))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut_4_lut.init = 16'h5022;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n13793), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i5151_4_lut (.A(n13780), .B(n13764), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n5981)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5151_4_lut.init = 16'h3530;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13844), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11042_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), .C(rom_addr[4]), 
         .D(n2522_adj_730), .Z(n11662)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11042_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_731), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11554_3_lut (.A(n12172), .B(n12173), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11554_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_704)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n13817), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13752), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11671_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n11798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11671_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13741), .Z(n428_adj_647)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11537_3_lut (.A(n13875), .B(n1978), .C(rom_addr[5]), .Z(n12157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11537_3_lut.init = 16'hcaca;
    LUT4 i11006_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), .C(rom_addr[4]), 
         .D(n2298_adj_733), .Z(n11626)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11006_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_4_lut_then_4_lut (.A(rom_addr[8]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n13927)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0004;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_734)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13845), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    PFUMX i12625 (.BLUT(n13112), .ALUT(n13111), .C0(rom_addr[4]), .Z(n13113));
    PFUMX i13028 (.BLUT(n13897), .ALUT(n13898), .C0(rom_addr[2]), .Z(n13899));
    PFUMX i11229 (.BLUT(n190_adj_678), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n11849));
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[4]), .D(n13736), .Z(n1676_adj_625)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), 
         .C(rom_addr[4]), .D(n2444_adj_564), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i11017_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), .C(rom_addr[4]), 
         .D(n2573_adj_735), .Z(n11637)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11017_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n13833), 
         .C(rom_addr[3]), .D(n13692), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11179_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), .C(rom_addr[4]), 
         .D(n1002), .Z(n11799)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11179_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11230 (.D0(n11675), .D1(n381_adj_556), .SD(rom_addr[6]), 
            .Z(n11850));
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13712), .Z(n1435_adj_653)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut.init = 16'h02f2;
    PFUMX i2312 (.BLUT(n11308), .ALUT(n3122), .C0(rom_addr[6]), .Z(n3123));
    LUT4 i4125_3_lut_4_lut (.A(n13831), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13675), .Z(n4936)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4125_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11220_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n11840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11220_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13712), .Z(n397)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11219_3_lut (.A(n270_adj_9), .B(n285), .C(rom_addr[4]), .Z(n11839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11219_3_lut.init = 16'hcaca;
    LUT4 i11380_3_lut (.A(n11997), .B(n11998), .C(rom_addr[7]), .Z(n12000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11380_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n13725), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_700)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n13725), 
         .C(rom_addr[4]), .D(n526_adj_570), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    PFUMX i11348 (.BLUT(n11966), .ALUT(n11967), .C0(rom_addr[5]), .Z(n11968));
    LUT4 i11907_3_lut (.A(n11836), .B(n15013), .C(rom_addr[5]), .Z(n11838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11907_3_lut.init = 16'hcaca;
    PFUMX i11351 (.BLUT(n11969), .ALUT(n11970), .C0(rom_addr[5]), .Z(n11971));
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283_adj_569), .B(n2490), 
         .C(rom_addr[4]), .Z(n2491_adj_693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i11292_3_lut (.A(n11841), .B(n11844), .C(rom_addr[6]), .Z(n11912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11292_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_else_4_lut (.A(rom_addr[8]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n13926)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n13836), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13848), .Z(n1084_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11214_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n11834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11214_3_lut.init = 16'hcaca;
    LUT4 i11213_3_lut (.A(n205_adj_621), .B(n220), .C(rom_addr[4]), .Z(n11833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11213_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), 
         .C(rom_addr[4]), .D(n13760), .Z(n2141_adj_582)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13750), .Z(n1466_adj_636)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 i11423_3_lut_4_lut (.A(rom_addr[0]), .B(n13831), .C(rom_addr[3]), 
         .D(n13790), .Z(n12043)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11423_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11008_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), .C(rom_addr[4]), 
         .D(n13780), .Z(n11628)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11008_3_lut_4_lut.init = 16'hf808;
    PFUMX i11357 (.BLUT(n11975), .ALUT(n11976), .C0(rom_addr[5]), .Z(n11977));
    LUT4 i11436_3_lut_4_lut (.A(rom_addr[0]), .B(n13635), .C(rom_addr[5]), 
         .D(n1403_adj_600), .Z(n12056)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11436_3_lut_4_lut.init = 16'hf101;
    LUT4 i5806_3_lut_4_lut (.A(rom_addr[0]), .B(n13661), .C(rom_addr[5]), 
         .D(n2522_adj_730), .Z(n6647)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5806_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12612 (.BLUT(n13096), .ALUT(n15003), .C0(rom_addr[6]), .Z(n13097));
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13848), .Z(n2573_adj_735)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    PFUMX i11367 (.BLUT(n11985), .ALUT(n11986), .C0(rom_addr[5]), .Z(n11987));
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n13831), 
         .C(rom_addr[3]), .D(n13848), .Z(n1435_adj_615)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n13831), 
         .C(rom_addr[3]), .D(n13822), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 i11335_3_lut (.A(n11953), .B(n11954), .C(rom_addr[10]), .Z(n11955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11335_3_lut.init = 16'hcaca;
    LUT4 i11136_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), .C(rom_addr[4]), 
         .D(n890), .Z(n11756)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11136_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_adj_17 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n11337)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_adj_17.init = 16'h8888;
    PFUMX i11398 (.BLUT(n2205_adj_727), .ALUT(n2236), .C0(rom_addr[5]), 
          .Z(n12018));
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n13626), .B(n13750), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860_adj_577)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n13831), 
         .C(rom_addr[3]), .D(n15007), .Z(n2009_adj_608)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    PFUMX i11399 (.BLUT(n2268), .ALUT(n2299_adj_709), .C0(rom_addr[5]), 
          .Z(n12019));
    LUT4 i11205_3_lut (.A(n46), .B(n61_adj_590), .C(rom_addr[4]), .Z(n11825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11205_3_lut.init = 16'hcaca;
    LUT4 i12022_3_lut (.A(n12169), .B(n13316), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12022_3_lut.init = 16'hcaca;
    LUT4 i11468_3_lut (.A(n13250), .B(n12087), .C(rom_addr[7]), .Z(n12088)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11468_3_lut.init = 16'hcaca;
    PFUMX i11400 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12020));
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13335), 
         .C(rom_addr[7]), .D(n3516), .Z(n1278_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    PFUMX i11223 (.BLUT(n364_adj_620), .ALUT(n379_adj_579), .C0(rom_addr[4]), 
          .Z(n11843));
    LUT4 i11545_3_lut (.A(n12154), .B(n12161), .C(rom_addr[8]), .Z(n12165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11545_3_lut.init = 16'hcaca;
    PFUMX i11401 (.BLUT(n6709), .ALUT(n2427_adj_675), .C0(rom_addr[5]), 
          .Z(n12021));
    LUT4 i2254_3_lut_4_lut (.A(rom_addr[5]), .B(n13653), .C(rom_addr[6]), 
         .D(n6080), .Z(n3065)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2254_3_lut_4_lut.init = 16'h0efe;
    LUT4 i11000_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), .C(rom_addr[4]), 
         .D(n684), .Z(n11620)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11000_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11435_3_lut_4_lut (.A(rom_addr[0]), .B(n13635), .C(rom_addr[5]), 
         .D(n1309), .Z(n12055)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11435_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i1565_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13933)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C+!(D))+!B))) */ ;
    defparam address_11__I_0_Mux_4_i1565_then_4_lut.init = 16'h2420;
    LUT4 address_11__I_0_Mux_4_i1565_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13932)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1565_else_4_lut.init = 16'h4300;
    LUT4 i11201_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n11821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11201_3_lut.init = 16'hcaca;
    PFUMX i11402 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12022));
    LUT4 i11373_3_lut (.A(n11990), .B(n11991), .C(rom_addr[7]), .Z(n11993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11373_3_lut.init = 16'hcaca;
    LUT4 i11372_3_lut (.A(n11988), .B(n11989), .C(rom_addr[7]), .Z(n11992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11372_3_lut.init = 16'hcaca;
    PFUMX i11403 (.BLUT(n2523_adj_725), .ALUT(n2554_adj_734), .C0(rom_addr[5]), 
          .Z(n12023));
    LUT4 n2077_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13672), .C(rom_addr[4]), 
         .D(n13754), .Z(n13246)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n2077_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11198_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n11818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11198_3_lut.init = 16'hcaca;
    LUT4 i11353_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3123), 
         .Z(n11973)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11353_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n13635), 
         .C(rom_addr[5]), .D(n1403_adj_680), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    LUT4 i11352_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3065), 
         .Z(n11972)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11352_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13733), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 i12098_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12301)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12098_2_lut.init = 16'h9999;
    PFUMX i11413 (.BLUT(n12031), .ALUT(n12032), .C0(rom_addr[5]), .Z(n12033));
    LUT4 i11469_3_lut_4_lut (.A(rom_addr[0]), .B(n13672), .C(rom_addr[4]), 
         .D(n1435_adj_653), .Z(n12089)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11469_3_lut_4_lut.init = 16'hf101;
    PFUMX i11416 (.BLUT(n12034), .ALUT(n12035), .C0(rom_addr[5]), .Z(n12036));
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n15005), .Z(n364)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    PFUMX i12610 (.BLUT(n13658), .ALUT(n13094), .C0(rom_addr[4]), .Z(n13095));
    LUT4 i11557_3_lut (.A(n12175), .B(n12176), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11557_3_lut.init = 16'hcaca;
    LUT4 i11328_3_lut (.A(n13286), .B(n12123), .C(rom_addr[7]), .Z(n11948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11328_3_lut.init = 16'hcaca;
    PFUMX i11427 (.BLUT(n1117_adj_666), .ALUT(n10069), .C0(rom_addr[5]), 
          .Z(n12047));
    LUT4 i11327_3_lut (.A(n12110), .B(n6705), .C(rom_addr[7]), .Z(n11947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11327_3_lut.init = 16'hcaca;
    LUT4 i11322_3_lut (.A(n11745), .B(n11754), .C(rom_addr[7]), .Z(n11942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11322_3_lut.init = 16'hcaca;
    LUT4 i11321_3_lut (.A(n13376), .B(n11736), .C(rom_addr[7]), .Z(n11941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11321_3_lut.init = 16'hcaca;
    LUT4 i11330_3_lut (.A(n11943), .B(n11944), .C(rom_addr[8]), .Z(n11950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11330_3_lut.init = 16'hcaca;
    LUT4 i11309_3_lut (.A(n13028), .B(n11917), .C(rom_addr[7]), .Z(n11929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11309_3_lut.init = 16'hcaca;
    LUT4 i11308_3_lut (.A(n11914), .B(n13034), .C(rom_addr[7]), .Z(n11928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11308_3_lut.init = 16'hcaca;
    PFUMX i11437 (.BLUT(n1436), .ALUT(n1467_adj_738), .C0(rom_addr[5]), 
          .Z(n12057));
    LUT4 i12058_3_lut (.A(n11928), .B(n11929), .C(rom_addr[8]), .Z(n11935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12058_3_lut.init = 16'hcaca;
    PFUMX i11438 (.BLUT(n1499_adj_692), .ALUT(n1530_adj_613), .C0(rom_addr[5]), 
          .Z(n12058));
    PFUMX i13026 (.BLUT(n13894), .ALUT(n13895), .C0(rom_addr[0]), .Z(n13896));
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(rom_addr[0]), .B(n13784), 
         .C(rom_addr[3]), .D(n13712), .Z(n2380)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hf202;
    LUT4 i11278_3_lut (.A(n11885), .B(n11886), .C(rom_addr[7]), .Z(n11898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11278_3_lut.init = 16'hcaca;
    LUT4 i11177_3_lut (.A(n2009), .B(n954), .C(rom_addr[4]), .Z(n11797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11177_3_lut.init = 16'hcaca;
    LUT4 n6242_bdd_4_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3230), 
         .D(n13659), .Z(n13207)) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;
    defparam n6242_bdd_4_lut.init = 16'he4a0;
    LUT4 i11276_3_lut (.A(n11881), .B(n11882), .C(rom_addr[7]), .Z(n11896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11276_3_lut.init = 16'hcaca;
    LUT4 i11275_3_lut (.A(n11879), .B(n11880), .C(rom_addr[7]), .Z(n11895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11275_3_lut.init = 16'hcaca;
    LUT4 i11284_3_lut (.A(n11897), .B(n11898), .C(rom_addr[8]), .Z(n11904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11284_3_lut.init = 16'hcaca;
    LUT4 i10831_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11450)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10831_2_lut.init = 16'heeee;
    LUT4 i11245_3_lut (.A(n11850), .B(n11851), .C(rom_addr[7]), .Z(n11865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11245_3_lut.init = 16'hcaca;
    PFUMX i11444 (.BLUT(n1692_adj_673), .ALUT(n1723_adj_715), .C0(rom_addr[5]), 
          .Z(n12064));
    LUT4 i11244_3_lut (.A(n11848), .B(n11849), .C(rom_addr[7]), .Z(n11864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11244_3_lut.init = 16'hcaca;
    LUT4 i7219_4_lut (.A(rom_addr[0]), .B(n3000), .C(n12129), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7219_4_lut.init = 16'h0a22;
    LUT4 i7653_4_lut (.A(n11639), .B(n13851), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_565)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7653_4_lut.init = 16'hc088;
    LUT4 i11364_3_lut (.A(n11982), .B(n11983), .C(rom_addr[8]), .Z(n11984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11364_3_lut.init = 16'hcaca;
    LUT4 i7342_2_lut_rep_271 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13776)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7342_2_lut_rep_271.init = 16'heeee;
    LUT4 i11979_3_lut_4_lut (.A(n13637), .B(n13816), .C(rom_addr[6]), 
         .D(n11327), .Z(n12178)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11979_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12187_2_lut_rep_255_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13760)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12187_2_lut_rep_255_3_lut.init = 16'h0101;
    LUT4 i11388_3_lut (.A(n12006), .B(n12007), .C(rom_addr[8]), .Z(n12008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11388_3_lut.init = 16'hcaca;
    LUT4 i11176_3_lut (.A(n908), .B(n13637), .C(rom_addr[4]), .Z(n11796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11176_3_lut.init = 16'hcaca;
    PFUMX i11445 (.BLUT(n1755_c), .ALUT(n1786_adj_720), .C0(rom_addr[5]), 
          .Z(n12065));
    LUT4 i11339_3_lut (.A(n1789), .B(n2044), .C(rom_addr[8]), .Z(n11959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11339_3_lut.init = 16'hcaca;
    LUT4 i12049_3_lut (.A(n12836), .B(n11996), .C(rom_addr[7]), .Z(n11999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12049_3_lut.init = 16'hcaca;
    LUT4 i10828_3_lut_4_lut (.A(n13844), .B(rom_addr[3]), .C(n11446), 
         .D(n1676), .Z(n6704)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10828_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7220_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7220_2_lut_4_lut.init = 16'hca00;
    LUT4 i11395_3_lut (.A(n12013), .B(n12014), .C(rom_addr[8]), .Z(n12015)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11395_3_lut.init = 16'hcaca;
    LUT4 i11174_3_lut (.A(n506_adj_591), .B(n428_adj_674), .C(rom_addr[4]), 
         .Z(n11794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11174_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038_adj_681)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i11173_3_lut (.A(n526_adj_575), .B(n205_adj_621), .C(rom_addr[4]), 
         .Z(n11793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11173_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_730)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_236_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13741)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_236_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1898)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    LUT4 n1251_bdd_4_lut (.A(n13621), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n13848), .Z(n12771)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut.init = 16'hb888;
    PFUMX i11449 (.BLUT(n1820_adj_611), .ALUT(n1851_adj_602), .C0(rom_addr[5]), 
          .Z(n12069));
    LUT4 n2203_bdd_2_lut_12881_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n12830)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2203_bdd_2_lut_12881_3_lut_4_lut.init = 16'hfef0;
    LUT4 i11410_3_lut (.A(n12028), .B(n12029), .C(rom_addr[8]), .Z(n12030)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11410_3_lut.init = 16'hcaca;
    LUT4 i5801_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6642)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5801_4_lut_4_lut_4_lut.init = 16'he303;
    PFUMX i11450 (.BLUT(n1883_adj_597), .ALUT(n1914_adj_739), .C0(rom_addr[5]), 
          .Z(n12070));
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13498)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 n221_bdd_4_lut (.A(n13624), .B(n5354), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n13315)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut.init = 16'haa30;
    LUT4 i11677_3_lut (.A(n12099), .B(n12100), .C(rom_addr[4]), .Z(n12101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11677_3_lut.init = 16'hcaca;
    LUT4 i5147_2_lut_rep_230_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13735)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5147_2_lut_rep_230_3_lut.init = 16'h1e1e;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1691)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'he003;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_712)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 i7320_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n13799), .D(rom_addr[4]), .Z(n1181)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7320_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i4040_3_lut_rep_166_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13671)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4040_3_lut_rep_166_4_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 i7361_2_lut_rep_250_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n13755)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7361_2_lut_rep_250_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i7759_2_lut_rep_201_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13706)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7759_2_lut_rep_201_3_lut.init = 16'he0e0;
    LUT4 i7725_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_c)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7725_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i7521_2_lut_rep_251_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13756)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7521_2_lut_rep_251_3_lut_4_lut.init = 16'he000;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    PFUMX i11451 (.BLUT(n1947_adj_711), .ALUT(n12039), .C0(rom_addr[5]), 
          .Z(n12071));
    LUT4 n1699_bdd_2_lut_12624_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13111)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam n1699_bdd_2_lut_12624_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i11680_3_lut (.A(n12133), .B(n12134), .C(rom_addr[4]), .Z(n12135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11680_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_713)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i7327_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13676)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7327_2_lut_rep_171_3_lut_4_lut.init = 16'h0090;
    LUT4 i3956_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4767)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3956_3_lut_3_lut.init = 16'he3e3;
    LUT4 i4116_3_lut_rep_170_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13675)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4116_3_lut_rep_170_4_lut_4_lut_3_lut.init = 16'hd6d6;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475_adj_717), .C(rom_addr[4]), 
         .Z(n476_adj_740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_317 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13822)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_317.init = 16'h3e3e;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124_adj_719)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)))) */ ;
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut_4_lut.init = 16'h6040;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 i5818_2_lut_rep_259_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13764)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5818_2_lut_rep_259_3_lut.init = 16'hf6f6;
    LUT4 i11953_3_lut (.A(n476_adj_740), .B(n13915), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11953_3_lut.init = 16'hcaca;
    LUT4 i7756_2_lut_rep_190_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13695)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7756_2_lut_rep_190_3_lut.init = 16'hf6f6;
    LUT4 i11092_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4767), 
         .D(n13834), .Z(n11712)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11092_4_lut_4_lut.init = 16'h7340;
    LUT4 i7476_2_lut_rep_179_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13684)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7476_2_lut_rep_179_3_lut.init = 16'hfefe;
    PFUMX i11452 (.BLUT(n2010), .ALUT(n6645), .C0(rom_addr[5]), .Z(n12072));
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 i7288_2_lut_rep_178_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13683)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7288_2_lut_rep_178_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n557_adj_634)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i5812_2_lut_rep_224_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13729)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5812_2_lut_rep_224_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i7516_2_lut_rep_173_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13678)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7516_2_lut_rep_173_3_lut_3_lut.init = 16'h4040;
    LUT4 i11117_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n6665), .Z(n11737)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7413_2_lut_rep_239_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n13744)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7413_2_lut_rep_239_2_lut_3_lut.init = 16'h0606;
    PFUMX i11457 (.BLUT(n10101), .ALUT(n10100), .C0(rom_addr[6]), .Z(n12077));
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n13789), 
         .B(rom_addr[5]), .C(n13678), .D(n13795), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i4625_3_lut_4_lut_4_lut (.A(n13789), .B(n13716), .C(rom_addr[5]), 
         .D(n13795), .Z(n5436)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4625_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i3702_2_lut_rep_210_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13715)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3702_2_lut_rep_210_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n13636), .D(n4303), .Z(n924)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i3173_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n3984)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3173_3_lut_3_lut.init = 16'h7474;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n13631)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_126_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 n6242_bdd_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[6]), 
         .C(rom_addr[0]), .D(n13761), .Z(n13208)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6242_bdd_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i7235_2_lut_rep_327 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13832)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7235_2_lut_rep_327.init = 16'h9090;
    LUT4 rom_addr_6__bdd_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13210)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam rom_addr_6__bdd_2_lut_3_lut_4_lut.init = 16'hf0e1;
    PFUMX i11464 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12084));
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1514_adj_549)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut_4_lut.init = 16'h2290;
    LUT4 i7605_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13761), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n1596_adj_741)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7605_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n11342), 
         .D(n13789), .Z(n2684_adj_742)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 i7398_2_lut_rep_328 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13833)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7398_2_lut_rep_328.init = 16'hbbbb;
    PFUMX i11465 (.BLUT(n1499), .ALUT(n1530_adj_655), .C0(rom_addr[5]), 
          .Z(n12085));
    PFUMX i13024 (.BLUT(n13891), .ALUT(n13892), .C0(rom_addr[3]), .Z(n13893));
    PFUMX i11473 (.BLUT(n12089), .ALUT(n12090), .C0(rom_addr[5]), .Z(n12093));
    LUT4 i5843_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5843_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_196_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13701)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_196_3_lut_3_lut.init = 16'hfdfd;
    PFUMX i11474 (.BLUT(n12091), .ALUT(n12092), .C0(rom_addr[5]), .Z(n12094));
    LUT4 i11689_3_lut (.A(n1228_adj_743), .B(n1243_adj_744), .C(rom_addr[4]), 
         .Z(n11771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11689_3_lut.init = 16'hcaca;
    LUT4 i11149_4_lut (.A(n13734), .B(n13853), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n11769)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11149_4_lut.init = 16'hfaca;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    PFUMX i11489 (.BLUT(n1628), .ALUT(n1659_adj_654), .C0(rom_addr[5]), 
          .Z(n12109));
    L6MUX21 i13589 (.D0(n14829), .D1(n14826), .SD(rom_addr[8]), .Z(n14830));
    LUT4 i7538_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n13789), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7538_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    PFUMX i13587 (.BLUT(n14828), .ALUT(n14827), .C0(rom_addr[7]), .Z(n14829));
    PFUMX i13022 (.BLUT(n13888), .ALUT(n13889), .C0(rom_addr[2]), .Z(n13890));
    LUT4 i3939_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3939_3_lut_3_lut.init = 16'hcbcb;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444_adj_676)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0430;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15006), .D(n13819), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i12229_2_lut_rep_281 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n13786)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12229_2_lut_rep_281.init = 16'h1111;
    PFUMX i11501 (.BLUT(n12117), .ALUT(n12118), .C0(rom_addr[5]), .Z(n12121));
    LUT4 i11144_3_lut (.A(n620_adj_557), .B(n205_adj_621), .C(rom_addr[4]), 
         .Z(n11764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11144_3_lut.init = 16'hcaca;
    LUT4 i11143_3_lut (.A(n491), .B(n604), .C(rom_addr[4]), .Z(n11763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11143_3_lut.init = 16'hcaca;
    LUT4 i7395_2_lut_rep_329 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13834)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7395_2_lut_rep_329.init = 16'h4040;
    LUT4 i2696_4_lut_4_lut (.A(rom_addr[2]), .B(n11392), .C(rom_addr[5]), 
         .D(n13654), .Z(n3507)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2696_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i7411_4_lut (.A(n15006), .B(rom_addr[4]), .C(n13846), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7411_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n12301), .Z(n1883_adj_714)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i11502 (.BLUT(n12119), .ALUT(n12120), .C0(rom_addr[5]), .Z(n12122));
    PFUMX i13584 (.BLUT(n14825), .ALUT(n14824), .C0(rom_addr[7]), .Z(n14826));
    LUT4 i12175_2_lut_rep_330 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13725)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12175_2_lut_rep_330.init = 16'h4444;
    PFUMX i12555 (.BLUT(n13033), .ALUT(n13029), .C0(rom_addr[5]), .Z(n13034));
    LUT4 i5821_3_lut_4_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n6662)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5821_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h1414;
    LUT4 i11141_3_lut (.A(n526_adj_592), .B(n443_adj_686), .C(rom_addr[4]), 
         .Z(n11761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11141_3_lut.init = 16'hcaca;
    LUT4 i10819_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n270_adj_9)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10819_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n13817), .D(n13752), .Z(n1483_adj_705)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i7515_2_lut_rep_142_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13647)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7515_2_lut_rep_142_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(n13839), .D(rom_addr[5]), .Z(n11308)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .Z(n1228_adj_743)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_745)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut_4_lut.init = 16'h6470;
    LUT4 i7410_2_lut_rep_215_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n13720)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7410_2_lut_rep_215_2_lut.init = 16'h4444;
    PFUMX i13020 (.BLUT(n13885), .ALUT(n13886), .C0(rom_addr[0]), .Z(n13887));
    LUT4 i1986_2_lut_rep_331 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13836)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1986_2_lut_rep_331.init = 16'h6666;
    LUT4 i11696_3_lut (.A(n1038), .B(n1053), .C(rom_addr[4]), .Z(n11758)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11696_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    LUT4 address_11__I_0_Mux_1_i2078_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13942)) /* synthesis lut_function=(A (B (D))+!A !(B (C+!(D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_1_i2078_3_lut_4_lut_then_4_lut.init = 16'h8c11;
    LUT4 rom_addr_1__bdd_4_lut_13011 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13861)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13011.init = 16'h6144;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13756), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_733)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 rom_addr_6__bdd_3_lut_12702_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13951)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;
    defparam rom_addr_6__bdd_3_lut_12702_then_4_lut.init = 16'h4808;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_739)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i12551 (.BLUT(n13027), .ALUT(n13026), .C0(rom_addr[6]), .Z(n13028));
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 i1_2_lut_rep_156_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13661)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_156_3_lut_3_lut.init = 16'h4040;
    PFUMX i13692 (.BLUT(n15014), .ALUT(n15015), .C0(rom_addr[0]), .Z(n15016));
    LUT4 i7518_2_lut_rep_122_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13627)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7518_2_lut_rep_122_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i12184_2_lut_rep_346 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n13851)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12184_2_lut_rep_346.init = 16'h1111;
    LUT4 i7421_2_lut_rep_227_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13732)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7421_2_lut_rep_227_3_lut_3_lut.init = 16'h5454;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13834), 
         .C(rom_addr[3]), .D(n13821), .Z(n731_adj_701)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13863)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_4_lut.init = 16'hcc0d;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 i7475_2_lut_rep_351 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n15006)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7475_2_lut_rep_351.init = 16'h1010;
    PFUMX i11530 (.BLUT(n1692_adj_644), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12150));
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(n13817), 
         .D(rom_addr[3]), .Z(n11347)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    L6MUX21 i12547 (.D0(n13022), .D1(n13020), .SD(rom_addr[6]), .Z(n11624));
    LUT4 i7765_2_lut_rep_232_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n13737)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7765_2_lut_rep_232_2_lut.init = 16'hdddd;
    LUT4 i7780_2_lut_rep_151_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13656)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7780_2_lut_rep_151_3_lut_3_lut.init = 16'hc4c4;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n443_adj_686), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 i7766_2_lut_rep_161_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13666)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7766_2_lut_rep_161_3_lut_3_lut.init = 16'h3131;
    PFUMX i12545 (.BLUT(n13021), .ALUT(n1628_adj_679), .C0(rom_addr[5]), 
          .Z(n13022));
    LUT4 i11133_3_lut (.A(n476), .B(n507_adj_660), .C(rom_addr[5]), .Z(n11753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11133_3_lut.init = 16'hcaca;
    PFUMX i10998 (.BLUT(n11616), .ALUT(n11617), .C0(rom_addr[5]), .Z(n11618));
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13832), 
         .C(rom_addr[3]), .D(n13817), .Z(n2332)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13862)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_4_lut.init = 16'hc2c8;
    PFUMX i11531 (.BLUT(n1755), .ALUT(n1786_adj_643), .C0(rom_addr[5]), 
          .Z(n12151));
    LUT4 address_11__I_0_Mux_1_i2078_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n13941)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam address_11__I_0_Mux_1_i2078_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i7492_2_lut_rep_249_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13754)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7492_2_lut_rep_249_3_lut_4_lut.init = 16'h0060;
    LUT4 i4952_3_lut_rep_136_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13641)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4952_3_lut_rep_136_4_lut_4_lut_3_lut.init = 16'hbebe;
    LUT4 i12110_2_lut_rep_311 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13816)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12110_2_lut_rep_311.init = 16'hdddd;
    LUT4 i11492_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12112)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11492_3_lut_4_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 i7662_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n13695), 
         .D(rom_addr[3]), .Z(n3230)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7662_4_lut_4_lut.init = 16'hd100;
    PFUMX i12543 (.BLUT(n13019), .ALUT(n13018), .C0(rom_addr[5]), .Z(n13020));
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 i11700_3_lut (.A(n844), .B(n859), .C(rom_addr[4]), .Z(n11755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11700_3_lut.init = 16'hcaca;
    LUT4 i10984_2_lut_rep_334 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n13839)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10984_2_lut_rep_334.init = 16'h2222;
    LUT4 i11862_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1076), 
         .D(n1084), .Z(n1085_adj_703)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11862_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 i12213_2_lut_rep_116_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n13761), .Z(n13621)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12213_2_lut_rep_116_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i7453_2_lut_rep_176_2_lut (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n13681)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7453_2_lut_rep_176_2_lut.init = 16'h4444;
    LUT4 i5898_2_lut_rep_336 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13841)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5898_2_lut_rep_336.init = 16'h6666;
    PFUMX i13018 (.BLUT(n13882), .ALUT(n13883), .C0(rom_addr[0]), .Z(n13884));
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 i12164_2_lut_rep_284 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13789)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12164_2_lut_rep_284.init = 16'h1111;
    LUT4 n1403_bdd_3_lut (.A(n13908), .B(n13857), .C(rom_addr[5]), .Z(n13236)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1403_bdd_3_lut.init = 16'hacac;
    LUT4 i7310_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_649)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7310_2_lut_3_lut.init = 16'h9090;
    LUT4 i12140_2_lut_rep_194_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13699)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12140_2_lut_rep_194_3_lut.init = 16'h0909;
    LUT4 i1_2_lut_rep_231_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13736)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_231_3_lut.init = 16'h6060;
    LUT4 i11129_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n11749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11129_3_lut.init = 16'hcaca;
    LUT4 i11911_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n12577), 
         .D(n2538), .Z(n2555_adj_670)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11911_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n6321)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_4_lut.init = 16'heffe;
    LUT4 i11127_3_lut (.A(n684_adj_646), .B(n699), .C(rom_addr[4]), .Z(n11747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11127_3_lut.init = 16'hcaca;
    LUT4 i12171_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n11612)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12171_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i11001 (.BLUT(n11619), .ALUT(n11620), .C0(rom_addr[5]), .Z(n11621));
    LUT4 i5883_2_lut_rep_321 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13826)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5883_2_lut_rep_321.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n13819), 
         .D(rom_addr[4]), .Z(n11321)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443_adj_686)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i7594_2_lut_rep_337 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13842)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7594_2_lut_rep_337.init = 16'h8888;
    LUT4 i1_2_lut_rep_200_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13705)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_200_3_lut.init = 16'hfefe;
    LUT4 i5862_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5862_4_lut_4_lut.init = 16'h8505;
    LUT4 i7548_2_lut_rep_193_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13698)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7548_2_lut_rep_193_3_lut_4_lut.init = 16'h0880;
    L6MUX21 i12535 (.D0(n13006), .D1(n13004), .SD(rom_addr[6]), .Z(n13007));
    LUT4 i12096_2_lut_rep_312 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13817)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12096_2_lut_rep_312.init = 16'h9999;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n6642), 
         .C(rom_addr[4]), .D(n13685), .Z(n1467_adj_738)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11211_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n124_adj_750), .C(rom_addr[4]), 
         .D(n13685), .Z(n11831)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11211_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12533 (.BLUT(n1181_adj_751), .ALUT(n13005), .C0(rom_addr[5]), 
          .Z(n13006));
    LUT4 n1913_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(n13813), .D(rom_addr[2]), .Z(n12932)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1913_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i5824_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n6665)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5824_3_lut_3_lut_3_lut.init = 16'hc7c7;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15016), 
         .C(rom_addr[5]), .D(n13826), .Z(n1660)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12999 (.BLUT(n13613), .ALUT(n2684_adj_742), .C0(rom_addr[6]), 
          .Z(n13614));
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13637), 
         .C(rom_addr[4]), .D(n13661), .Z(n507)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7494_2_lut_rep_153_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13658)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7494_2_lut_rep_153_3_lut_4_lut.init = 16'h0010;
    LUT4 i7256_2_lut_rep_207_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13712)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7256_2_lut_rep_207_3_lut.init = 16'hf8f8;
    PFUMX i12531 (.BLUT(n13003), .ALUT(n13002), .C0(rom_addr[5]), .Z(n13004));
    LUT4 i11709_3_lut (.A(n589_adj_721), .B(n604_adj_745), .C(rom_addr[4]), 
         .Z(n11740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11709_3_lut.init = 16'hcaca;
    LUT4 i5817_3_lut_rep_285 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n13790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5817_3_lut_rep_285.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i11478_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15015)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i11478_then_4_lut.init = 16'h3ac2;
    LUT4 i7423_4_lut (.A(n13744), .B(rom_addr[4]), .C(n13784), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7423_4_lut.init = 16'hc088;
    LUT4 i7654_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n13740), .D(rom_addr[2]), .Z(n2684)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7654_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i11118_3_lut (.A(n557_adj_752), .B(n526_adj_570), .C(rom_addr[4]), 
         .Z(n11738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11118_3_lut.init = 16'hcaca;
    LUT4 n2968_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13283)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2968_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11072_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684), .C(rom_addr[4]), 
         .D(n13661), .Z(n11692)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11072_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n4_adj_726)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n13842), .B(rom_addr[2]), 
         .C(n15007), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11007 (.BLUT(n11625), .ALUT(n11626), .C0(rom_addr[5]), .Z(n11627));
    LUT4 i7549_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n1628_adj_679)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7549_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i11365_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n13661), .Z(n11985)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11365_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_119_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n13658), .C(rom_addr[4]), .D(n13685), .Z(n13624)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_119_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n11337), 
         .D(rom_addr[2]), .Z(n11339)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_228_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13733)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_228_3_lut.init = 16'h7c7c;
    LUT4 i7524_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2140)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7524_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1946_adj_685)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut.init = 16'h3883;
    LUT4 i7611_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(n13721), .D(rom_addr[2]), .Z(n13619)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7611_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_2_lut_adj_18 (.A(rom_addr[0]), .B(rom_addr[4]), .Z(n11325)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut_adj_18.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13681), .C(n13721), 
         .D(rom_addr[5]), .Z(n10101)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_601)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 i7236_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_612)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7236_4_lut_4_lut.init = 16'hc700;
    LUT4 rom_addr_2__bdd_4_lut_13038 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13865)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13038.init = 16'h98d1;
    PFUMX i12997 (.BLUT(n13610), .ALUT(n13760), .C0(rom_addr[4]), .Z(n13611));
    LUT4 i11113_3_lut (.A(n428_adj_635), .B(n251_adj_585), .C(rom_addr[4]), 
         .Z(n11733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11113_3_lut.init = 16'hcaca;
    LUT4 i12204_2_lut_rep_288 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n13793)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12204_2_lut_rep_288.init = 16'hdddd;
    LUT4 i7307_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam i7307_2_lut_4_lut_4_lut.init = 16'hc020;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_adj_12), .ALUT(n11347), 
          .C0(rom_addr[5]), .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12155_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11542)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12155_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i11478_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15014)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam i11478_else_4_lut.init = 16'h6802;
    LUT4 i11112_3_lut (.A(n205), .B(n220_adj_645), .C(rom_addr[4]), .Z(n11732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11112_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_146_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13651)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_146_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i11157_4_lut_4_lut (.A(rom_addr[0]), .B(n13736), .C(rom_addr[4]), 
         .D(n13642), .Z(n11777)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11157_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n13631), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4941_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13867)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4941_3_lut_4_lut_4_lut_then_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_rep_290 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n13795)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_290.init = 16'heeee;
    LUT4 n1340_bdd_3_lut_12521_4_lut_4_lut (.A(rom_addr[0]), .B(n2573_adj_735), 
         .C(rom_addr[4]), .D(n13753), .Z(n12803)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_12521_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13658), 
         .C(rom_addr[4]), .D(n13753), .Z(n1275_adj_754)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(n6699), .C(rom_addr[4]), 
         .Z(n10069)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6689), 
         .C(rom_addr[5]), .D(n12126), .Z(n1660_adj_648)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_rep_148_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_148_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7556_2_lut_rep_229_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13734)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7556_2_lut_rep_229_3_lut_3_lut.init = 16'h4040;
    LUT4 i7504_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13626)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7504_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7522_2_lut_rep_188_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13693)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7522_2_lut_rep_188_3_lut_4_lut.init = 16'h9000;
    LUT4 i7345_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n46_adj_8)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A ((C (D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7345_4_lut_4_lut_4_lut.init = 16'h0cc4;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13790), 
         .C(rom_addr[3]), .D(n13831), .Z(n1101_adj_718)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n13842), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13834), .Z(n124_adj_750)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7573_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13097), 
         .Z(n3069_adj_559)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7573_2_lut_3_lut.init = 16'h1010;
    PFUMX i11019 (.BLUT(n11637), .ALUT(n11638), .C0(rom_addr[5]), .Z(n11639));
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557_adj_752)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hd003;
    LUT4 i4941_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13866)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4941_3_lut_4_lut_4_lut_else_4_lut.init = 16'hfbfe;
    PFUMX i11022 (.BLUT(n11640), .ALUT(n11641), .C0(rom_addr[5]), .Z(n11642));
    LUT4 i12118_2_lut_rep_292 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13797)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12118_2_lut_rep_292.init = 16'heeee;
    LUT4 i11931_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_629), 
         .D(n1676_c), .Z(n1724_adj_652)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11931_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i11944_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692), 
         .D(n1676_adj_599), .Z(n1724_adj_639)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11944_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n2286_bdd_4_lut_12934_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n684_adj_646)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2286_bdd_4_lut_12934_4_lut.init = 16'hc39c;
    LUT4 i7529_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n13728), .Z(n5251)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7529_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11417_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12037)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11417_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i7544_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_694), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7544_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_189_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n13694)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_189_3_lut.init = 16'h9090;
    PFUMX i11488 (.BLUT(n1565_adj_13), .ALUT(n1596_adj_741), .C0(rom_addr[5]), 
          .Z(n12108));
    LUT4 i5832_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n13870)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5832_4_lut_then_4_lut.init = 16'h5a04;
    LUT4 i5899_2_lut_rep_326 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13831)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5899_2_lut_rep_326.init = 16'h6666;
    LUT4 i5832_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n13869)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5832_4_lut_else_4_lut.init = 16'h2020;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13873)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    PFUMX i11025 (.BLUT(n11643), .ALUT(n11644), .C0(rom_addr[5]), .Z(n11645));
    LUT4 i4149_2_lut_rep_313 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13818)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4149_2_lut_rep_313.init = 16'h2222;
    PFUMX i13016 (.BLUT(n13879), .ALUT(n13880), .C0(rom_addr[0]), .Z(n13881));
    PFUMX i12917 (.BLUT(n13499), .ALUT(n13498), .C0(rom_addr[0]), .Z(n13500));
    LUT4 i7763_2_lut_rep_294 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n13799)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7763_2_lut_rep_294.init = 16'h8888;
    LUT4 i12207_2_lut_rep_152_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13657)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i12207_2_lut_rep_152_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i1_2_lut_rep_248_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13753)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_248_3_lut.init = 16'h2020;
    LUT4 i7246_2_lut_rep_163_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13668)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7246_2_lut_rep_163_4_lut_4_lut_4_lut.init = 16'h0083;
    LUT4 i4959_2_lut_rep_214_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13719)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4959_2_lut_rep_214_3_lut.init = 16'hf9f9;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n13842), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13741), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11028 (.BLUT(n11646), .ALUT(n11647), .C0(rom_addr[5]), .Z(n11648));
    PFUMX i11031 (.BLUT(n11649), .ALUT(n11650), .C0(rom_addr[5]), .Z(n11651));
    PFUMX i12477 (.BLUT(n2684_adj_742), .ALUT(n12932), .C0(rom_addr[6]), 
          .Z(n12933));
    LUT4 i11487_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15017)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11487_else_4_lut.init = 16'h5092;
    PFUMX i13694 (.BLUT(n15017), .ALUT(n15018), .C0(rom_addr[0]), .Z(n15019));
    LUT4 n221_bdd_3_lut_12880 (.A(n221), .B(n13313), .C(rom_addr[5]), 
         .Z(n13314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_12880.init = 16'hcaca;
    LUT4 i7689_2_lut_3_lut_4_lut_4_lut (.A(n13789), .B(rom_addr[5]), .C(rom_addr[0]), 
         .D(n13728), .Z(n2237_adj_731)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7689_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_adj_677)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 i11108_3_lut (.A(n236), .B(n491), .C(rom_addr[4]), .Z(n11728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11108_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(n13814), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13834), .Z(n908_adj_672)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'hf808;
    LUT4 i7471_2_lut_rep_165_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13670)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7471_2_lut_rep_165_3_lut_4_lut.init = 16'h2000;
    PFUMX i12253 (.BLUT(n13756), .ALUT(n12576), .C0(n13815), .Z(n12577));
    PFUMX i11037 (.BLUT(n11655), .ALUT(n11656), .C0(rom_addr[5]), .Z(n11657));
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n11442)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B ((D)+!C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h8073;
    LUT4 i11107_3_lut (.A(n13637), .B(n220_adj_695), .C(rom_addr[4]), 
         .Z(n11727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11107_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n13814), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13752), .Z(n1243_adj_744)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3492_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4303)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3492_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i7551_2_lut_rep_186_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13691)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7551_2_lut_rep_186_3_lut_4_lut.init = 16'h7000;
    LUT4 i11956_3_lut (.A(n11727), .B(n11728), .C(rom_addr[5]), .Z(n11729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11956_3_lut.init = 16'hcaca;
    LUT4 i5043_2_lut_rep_304 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13809)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5043_2_lut_rep_304.init = 16'h6666;
    LUT4 n3831_bdd_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n12569)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n3831_bdd_4_lut_4_lut_4_lut.init = 16'h5590;
    LUT4 i10926_2_lut_rep_305 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13810)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10926_2_lut_rep_305.init = 16'h8888;
    LUT4 i10927_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11547)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i10927_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_rep_308 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n13813)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_308.init = 16'h8888;
    LUT4 i1_2_lut_rep_211_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13716)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_211_3_lut_4_lut.init = 16'h8000;
    LUT4 i5046_2_lut_rep_309 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n13814)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5046_2_lut_rep_309.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2283_adj_630)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h6003;
    PFUMX i13094 (.BLUT(n13996), .ALUT(n13997), .C0(rom_addr[1]), .Z(n13998));
    PFUMX i13092 (.BLUT(n13993), .ALUT(n13994), .C0(rom_addr[0]), .Z(n13995));
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i11043 (.BLUT(n11661), .ALUT(n11662), .C0(rom_addr[5]), .Z(n11663));
    PFUMX i13090 (.BLUT(n13990), .ALUT(n13991), .C0(rom_addr[0]), .Z(n13992));
    PFUMX i13088 (.BLUT(n13987), .ALUT(n13988), .C0(rom_addr[0]), .Z(n13989));
    PFUMX i12876 (.BLUT(n13670), .ALUT(n13421), .C0(n13815), .Z(n1723_adj_14));
    PFUMX i13086 (.BLUT(n13984), .ALUT(n13985), .C0(rom_addr[2]), .Z(n13986));
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13874)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    PFUMX i13083 (.BLUT(n13980), .ALUT(n13981), .C0(rom_addr[1]), .Z(n13982));
    PFUMX i13081 (.BLUT(n13977), .ALUT(n13978), .C0(rom_addr[0]), .Z(n13979));
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_339 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13844)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_339.init = 16'h8383;
    PFUMX i13079 (.BLUT(n13974), .ALUT(n13975), .C0(rom_addr[0]), .Z(n13976));
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    PFUMX i13077 (.BLUT(n13971), .ALUT(n13972), .C0(rom_addr[0]), .Z(n13973));
    PFUMX i13075 (.BLUT(n13968), .ALUT(n13969), .C0(rom_addr[2]), .Z(n13970));
    PFUMX i13073 (.BLUT(n13965), .ALUT(n13966), .C0(rom_addr[0]), .Z(n13967));
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_340 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13845)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_340.init = 16'h8181;
    PFUMX i13071 (.BLUT(n13962), .ALUT(n13963), .C0(rom_addr[5]), .Z(n13964));
    PFUMX i13069 (.BLUT(n13959), .ALUT(n13960), .C0(rom_addr[0]), .Z(n13961));
    PFUMX i13067 (.BLUT(n13956), .ALUT(n13957), .C0(rom_addr[0]), .Z(n13958));
    L6MUX21 i12840 (.D0(n13375), .D1(n13373), .SD(rom_addr[6]), .Z(n13376));
    PFUMX i13065 (.BLUT(n13953), .ALUT(n13954), .C0(rom_addr[0]), .Z(n13955));
    LUT4 i2_3_lut_4_lut (.A(n13813), .B(n13780), .C(rom_addr[5]), .D(rom_addr[0]), 
         .Z(n10100)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    PFUMX i12838 (.BLUT(n13633), .ALUT(n13374), .C0(rom_addr[5]), .Z(n13375));
    PFUMX i13063 (.BLUT(n13950), .ALUT(n13951), .C0(rom_addr[1]), .Z(n13952));
    PFUMX i11052 (.BLUT(n11670), .ALUT(n11671), .C0(rom_addr[5]), .Z(n11672));
    PFUMX i11055 (.BLUT(n11673), .ALUT(n11674), .C0(rom_addr[5]), .Z(n11675));
    PFUMX i12836 (.BLUT(n13372), .ALUT(n13371), .C0(rom_addr[5]), .Z(n13373));
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_341 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13846)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_341.init = 16'he8e8;
    PFUMX i13014 (.BLUT(n13876), .ALUT(n13877), .C0(rom_addr[2]), .Z(n13878));
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_342 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13847)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_342.init = 16'h3838;
    L6MUX21 i11061 (.D0(n11679), .D1(n11680), .SD(rom_addr[5]), .Z(n11681));
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n13784), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11442), .Z(n1212_adj_687)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_343 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13848)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_343.init = 16'h1818;
    PFUMX i11064 (.BLUT(n11682), .ALUT(n11683), .C0(rom_addr[5]), .Z(n11684));
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n1181_adj_751)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h2000;
    PFUMX i12408 (.BLUT(n12835), .ALUT(n12832), .C0(rom_addr[6]), .Z(n12836));
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n13784), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11070 (.D0(n11688), .D1(n11689), .SD(rom_addr[5]), .Z(n11690));
    PFUMX i11073 (.BLUT(n11691), .ALUT(n11692), .C0(rom_addr[5]), .Z(n11693));
    PFUMX i11076 (.BLUT(n11694), .ALUT(n11695), .C0(rom_addr[5]), .Z(n11696));
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_619)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    L6MUX21 i12288 (.D0(n12652), .D1(n12649), .SD(rom_addr[9]), .Z(n12653));
    PFUMX i12286 (.BLUT(n12651), .ALUT(n12650), .C0(rom_addr[8]), .Z(n12652));
    LUT4 i11121_3_lut (.A(n475_adj_717), .B(n13637), .C(rom_addr[4]), 
         .Z(n11741)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11121_3_lut.init = 16'hcaca;
    PFUMX i12404 (.BLUT(n12830), .ALUT(n12829), .C0(rom_addr[4]), .Z(n12831));
    PFUMX i11082 (.BLUT(n11700), .ALUT(n11701), .C0(rom_addr[5]), .Z(n11702));
    PFUMX i11085 (.BLUT(n11703), .ALUT(n11704), .C0(rom_addr[5]), .Z(n11705));
    L6MUX21 i12807 (.D0(n13334), .D1(n13332), .SD(rom_addr[6]), .Z(n13335));
    PFUMX i12805 (.BLUT(n1181_adj_751), .ALUT(n13333), .C0(rom_addr[5]), 
          .Z(n13334));
    PFUMX i12803 (.BLUT(n13331), .ALUT(n1275_adj_754), .C0(rom_addr[5]), 
          .Z(n13332));
    PFUMX i12284 (.BLUT(n12648), .ALUT(n12647), .C0(rom_addr[8]), .Z(n12649));
    
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
            \data[2] , \data[1] , \state[2] , \state[4] , \state[1] , 
            cnt_rom_prepare, init_data, show_char_data, \state[5] ) /* synthesis syn_module_defined=1 */ ;
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
    input \state[2] ;
    input \state[4] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input [8:0]init_data;
    input [8:0]show_char_data;
    input \state[5] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95, n13460, n13459;
    
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
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n13460)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n13459)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
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
    PFUMX i12896 (.BLUT(n13460), .ALUT(n13459), .C0(\state[5] ), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (\ascii_num[4] , sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_368[1] , n5, \ascii_num[0] , \ascii_num[3] , 
            \end_y_8__N_313[4] , n6867, \end_y_8__N_313[5] , \end_x_8__N_295[7] , 
            \end_x_8__N_295[6] , \ascii_num[2] , \end_x_8__N_295[5] , 
            \end_x_8__N_295[4] , \ascii_num[1] , \ascii_num[6] , sys_clk_50MHz_enable_52, 
            \state[3] , \end_x_8__N_295[3] ) /* synthesis syn_module_defined=1 */ ;
    output \ascii_num[4] ;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_368[1] ;
    input n5;
    output \ascii_num[0] ;
    output \ascii_num[3] ;
    output \end_y_8__N_313[4] ;
    input n6867;
    output \end_y_8__N_313[5] ;
    output \end_x_8__N_295[7] ;
    output \end_x_8__N_295[6] ;
    output \ascii_num[2] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    output \ascii_num[1] ;
    output \ascii_num[6] ;
    input sys_clk_50MHz_enable_52;
    input \state[3] ;
    output \end_x_8__N_295[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [6:0]ascii_num_6__N_515;
    wire [31:0]n225;
    
    wire n13643, show_char_flag_N_540;
    wire [8:0]start_y_8__N_531;
    
    wire cnt_ascii_num_4__N_514, n6864;
    wire [8:0]start_x_8__N_522;
    
    wire n13772;
    wire [4:0]n1537;
    
    wire n13617, n13771, n6, n13663, n13806, n13777;
    wire [1:0]n7;
    
    wire n13687, n13850, n11363, n13686, n10;
    wire [5:0]n1509;
    
    wire n6001, n6_adj_541, n11, n13622, n13791, n11323, n13722, 
        n13796, n11494, n6490, n5921, n13708, n13794, n13792, 
        n1098, n8581, n2868, n2821, n13769, n13803, sys_clk_50MHz_enable_103;
    
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_138_3_lut_4_lut (.A(n225[17]), .B(n225[16]), .C(n225[18]), 
         .D(n225[15]), .Z(n13643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_138_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[10] 72[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1S3AX show_char_flag_40 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(77[10] 80[32])
    defparam show_char_flag_40.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(213[10] 238[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3IX start_y__i2 (.D(start_y_8__N_531[5]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_y_8__N_313[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(213[10] 238[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i0 (.D(n6864), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_514), 
            .Q(n225[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i0.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_522[7]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_522[6]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_522[5]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_522[4]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    LUT4 mux_806_i1_4_lut (.A(n13772), .B(n1537[0]), .C(n13617), .D(n13771), 
         .Z(ascii_num_6__N_515[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam mux_806_i1_4_lut.init = 16'hc0ca;
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n13772), .B(n225[12]), .C(n225[8]), .D(n6), .Z(start_x_8__N_522[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n13663), .B(n13806), .C(n225[13]), .D(n13777), 
         .Z(start_x_8__N_522[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_50MHz_enable_52), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[10] 72[22])
    defparam cnt1__i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n13687), .B(n225[1]), .C(n225[18]), .D(n13850), 
         .Z(start_x_8__N_522[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_112_4_lut (.A(n13663), .B(n13806), .C(n225[0]), 
         .D(n11363), .Z(n13617)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_112_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_10 (.A(n225[14]), .B(n225[11]), .C(n13686), .D(n225[4]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_10.init = 16'hfffe;
    PFUMX mux_806_i3 (.BLUT(n1509[2]), .ALUT(n6001), .C0(n13617), .Z(ascii_num_6__N_515[2]));
    PFUMX i22 (.BLUT(n6_adj_541), .ALUT(n11), .C0(n13617), .Z(ascii_num_6__N_515[4]));
    LUT4 i7722_2_lut_4_lut (.A(n11363), .B(n225[0]), .C(n13622), .D(n13771), 
         .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i7722_2_lut_4_lut.init = 16'hfeff;
    LUT4 mux_806_i2_4_lut (.A(n1509[3]), .B(n13791), .C(n13617), .D(n11323), 
         .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam mux_806_i2_4_lut.init = 16'h0a3a;
    LUT4 i3_4_lut_adj_11 (.A(n13722), .B(n13796), .C(n225[8]), .D(n11494), 
         .Z(n11323)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i3_4_lut_adj_11.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n225[15]), .B(n13777), .C(n6490), .D(n225[18]), 
         .Z(start_y_8__N_531[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n13806), .B(n225[4]), .C(n225[0]), .D(n225[10]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n225[13]), .B(n225[14]), .C(n225[12]), .Z(n6490)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1003_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(70[17:28])
    defparam i1003_2_lut.init = 16'h6666;
    LUT4 mux_806_i4_4_lut (.A(n1509[3]), .B(n5921), .C(n13617), .D(n13708), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam mux_806_i4_4_lut.init = 16'h0aca;
    LUT4 i7164_2_lut (.A(cnt_ascii_num_4__N_514), .B(n225[18]), .Z(n1509[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i7164_2_lut.init = 16'h4444;
    LUT4 i544_2_lut_3_lut_4_lut (.A(n225[11]), .B(n13794), .C(n13791), 
         .D(n13792), .Z(n1098)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i544_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5091_4_lut_4_lut (.A(n225[11]), .B(n13794), .C(n13722), .D(n8581), 
         .Z(n5921)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5091_4_lut_4_lut.init = 16'h3233;
    PFUMX mux_802_i1 (.BLUT(n2868), .ALUT(n2821), .C0(n1098), .Z(n1537[0]));
    LUT4 i1_3_lut_rep_264 (.A(n225[11]), .B(n225[8]), .C(n225[7]), .Z(n13769)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_rep_264.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_12 (.A(n225[11]), .B(n225[8]), .C(n225[7]), 
         .D(n13803), .Z(start_x_8__N_522[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_12.init = 16'hfffe;
    LUT4 i540_2_lut_rep_266 (.A(n225[18]), .B(cnt_ascii_num_4__N_514), .Z(n13771)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i540_2_lut_rep_266.init = 16'heeee;
    LUT4 reduce_or_682_i5_2_lut_rep_267 (.A(n225[15]), .B(n225[17]), .Z(n13772)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_682_i5_2_lut_rep_267.init = 16'heeee;
    LUT4 i10826_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(n225[18]), 
         .D(cnt_ascii_num_4__N_514), .Z(n6_adj_541)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i10826_3_lut_4_lut.init = 16'h00f1;
    LUT4 i7741_2_lut_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(cnt_ascii_num_4__N_514), 
         .D(n225[18]), .Z(n1509[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7741_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i19_2_lut_rep_268 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_103)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(87[13:40])
    defparam i19_2_lut_rep_268.init = 16'h8888;
    LUT4 i6010_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n225[0]), 
         .Z(n6864)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(87[13:40])
    defparam i6010_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_181_3_lut (.A(n225[17]), .B(n225[16]), .C(n225[15]), 
         .Z(n13686)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_181_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_272 (.A(n225[17]), .B(n225[16]), .Z(n13777)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_272.init = 16'heeee;
    LUT4 i1_2_lut_rep_345 (.A(n225[3]), .B(n225[5]), .Z(n13850)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_345.init = 16'heeee;
    LUT4 i5_3_lut_4_lut (.A(n225[3]), .B(n225[5]), .C(n10), .D(n225[6]), 
         .Z(start_x_8__N_522[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12123_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(77[13:24])
    defparam i12123_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_13 (.A(n13687), .B(n13663), .C(n11363), .D(n13643), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_13.init = 16'hfffe;
    LUT4 i1_2_lut_rep_286 (.A(n225[14]), .B(n225[2]), .Z(n13791)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_286.init = 16'heeee;
    LUT4 i2012_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n13794), .D(n13792), 
         .Z(n2821)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i2012_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n13792), .D(n13794), 
         .Z(n11)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_287 (.A(n225[13]), .B(n225[3]), .Z(n13792)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_287.init = 16'heeee;
    FD1S3IX start_x__i1 (.D(start_x_8__N_522[3]), .CK(sys_clk_50MHz), .CD(n6867), 
            .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 i12246_2_lut_2_lut_3_lut_4_lut (.A(n225[13]), .B(n225[3]), .C(n13794), 
         .D(n225[11]), .Z(n11494)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i12246_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i536_2_lut_rep_203_3_lut_4_lut (.A(n225[13]), .B(n225[3]), .C(n225[2]), 
         .D(n225[14]), .Z(n13708)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i536_2_lut_rep_203_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5170_4_lut_4_lut (.A(n225[8]), .B(n13722), .C(n11494), .D(n13791), 
         .Z(n6001)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i5170_4_lut_4_lut.init = 16'hffd0;
    LUT4 i2057_3_lut_4_lut_4_lut (.A(n225[8]), .B(n13796), .C(n13803), 
         .D(n225[5]), .Z(n2868)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i2057_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 i1_2_lut_rep_289 (.A(n225[12]), .B(n225[0]), .Z(n13794)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_289.init = 16'heeee;
    LUT4 i1_2_lut_rep_291 (.A(n225[7]), .B(n225[1]), .Z(n13796)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_291.init = 16'heeee;
    LUT4 i7736_2_lut_3_lut (.A(n225[7]), .B(n225[1]), .C(n225[8]), .Z(n8581)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i7736_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_117_3_lut_4_lut (.A(n225[5]), .B(n13803), .C(n13806), 
         .D(n225[1]), .Z(n13622)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_117_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_298 (.A(n225[10]), .B(n225[9]), .Z(n13803)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_298.init = 16'heeee;
    LUT4 i1_2_lut_rep_217_3_lut (.A(n225[10]), .B(n225[9]), .C(n225[5]), 
         .Z(n13722)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_217_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_158_3_lut_4_lut (.A(n225[10]), .B(n225[9]), .C(n225[1]), 
         .D(n225[5]), .Z(n13663)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_158_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_301 (.A(n225[6]), .B(n225[2]), .Z(n13806)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_301.init = 16'heeee;
    LUT4 i2_3_lut_rep_182_4_lut (.A(n225[6]), .B(n225[2]), .C(n225[0]), 
         .D(n225[4]), .Z(n13687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_182_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_adj_14 (.A(n13769), .B(n225[3]), .C(n6490), .Z(n11363)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_14.init = 16'hfefe;
    FD1P3IX cnt_ascii_num_FSM_i19 (.D(n225[18]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_514));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i19.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i18 (.D(n225[17]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i18.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i17 (.D(n225[16]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i17.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i16 (.D(n225[15]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i16.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i15 (.D(n225[14]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i14 (.D(n225[13]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n225[12]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n225[11]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n225[10]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n225[9]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n225[8]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n225[7]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n225[6]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n225[5]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n225[4]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n225[3]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n225[2]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n225[1]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i1 (.D(n225[0]), .SP(sys_clk_50MHz_enable_103), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    
endmodule
