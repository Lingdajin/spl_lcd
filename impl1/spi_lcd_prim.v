// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 22:00:58 2025
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
    wire [5:0]state_adj_793;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    
    wire sys_clk_50MHz_enable_52;
    wire [8:0]init_data_8__N_240;
    
    wire n5;
    wire [3:0]state_adj_798;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_808;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[17:21])
    
    wire sys_clk_50MHz_enable_9, sys_clk_50MHz_enable_35, n1443, n14, 
        n13747, n15134, sys_clk_50MHz_enable_56, n8764, n13844, sys_clk_50MHz_enable_29, 
        n6875;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .lcd_cs_c(lcd_cs_c), .cnt_sclk({cnt_sclk}), .n13747(n13747), 
            .sys_clk_50MHz_enable_9(sys_clk_50MHz_enable_9), .lcd_sclk_c(lcd_sclk_c), 
            .\state[2] (state[2]), .lcd_mosi_c(lcd_mosi_c), .\state_3__N_25[1] (state_3__N_25[1]), 
            .\data[7] (data[7]), .n13844(n13844), .\data[0] (data[0]), 
            .\data[1] (data[1]), .\data[2] (data[2]), .\data[3] (data[3]), 
            .\data[4] (data[4]), .\data[5] (data[5]), .\data[6] (data[6]), 
            .n1443(n1443)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
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
    VHI i2 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i720_4_lut (.A(state_adj_798[2]), .B(length_num_flag), .C(n8764), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_52)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i720_4_lut.init = 16'hceee;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i719_2_lut (.A(wr_done), .B(state_adj_793[4]), .Z(sys_clk_50MHz_enable_35)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i719_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n13844), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_9)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    LUT4 i726_4_lut_rep_285 (.A(state_adj_793[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_808[0]), .D(cnt1_adj_808[1]), .Z(sys_clk_50MHz_enable_29)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i726_4_lut_rep_285.init = 16'hceee;
    LUT4 i2008_2_lut_4_lut (.A(state_adj_793[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_808[0]), .D(cnt1_adj_808[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2008_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i10857_2_lut_rep_297 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n13844)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10857_2_lut_rep_297.init = 16'heeee;
    LUT4 i12196_3_lut_rep_200_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n13747)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12196_3_lut_rep_200_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_308 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_56)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_308.init = 16'h2222;
    LUT4 i2015_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i2015_2_lut_3_lut.init = 16'hd2d2;
    LUT4 m1_lut (.Z(n15134)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    lcd_init lcd_init_inst (.cnt_s2_num({cnt_s2_num}), .sys_clk_50MHz(sys_clk_50MHz), 
            .init_data({init_data}), .sys_clk_50MHz_enable_35(sys_clk_50MHz_enable_35), 
            .\state[5] (state_adj_793[5]), .n15134(n15134), .n1443(n1443), 
            .lcd_rst_c(lcd_rst_c), .\state[4] (state_adj_793[4]), .GND_net(GND_net), 
            .\state[2] (state_adj_793[2]), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .\init_data_8__N_240[5] (init_data_8__N_240[5]), .\init_data_8__N_240[4] (init_data_8__N_240[4]), 
            .\init_data_8__N_240[2] (init_data_8__N_240[2]), .n6875(n6875), 
            .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    lcd_show_char lcd_show_char_inst (.cnt_length_num({Open_0, Open_1, Open_2, 
            Open_3, cnt_length_num[0]}), .sys_clk_50MHz(sys_clk_50MHz), 
            .n14(n14), .cnt_rom_prepare({cnt_rom_prepare}), .length_num_flag(length_num_flag), 
            .wr_done(wr_done), .show_char_data({show_char_data}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .\state[1] (state_adj_798[1]), .\state[2] (state_adj_798[2]), 
            .sys_clk_50MHz_enable_52(sys_clk_50MHz_enable_52), .\cnt_length_num[4] (cnt_length_num[4]), 
            .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), .\state[3] (state_adj_798[3]), 
            .n8764(n8764), .\end_x_8__N_295[6] (end_x_8__N_295[6]), .\end_x_8__N_295[5] (end_x_8__N_295[5]), 
            .\end_y_8__N_313[5] (end_y_8__N_313[5]), .\end_x_8__N_295[7] (end_x_8__N_295[7]), 
            .GND_net(GND_net), .ascii_num({ascii_num}), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .\end_x_8__N_295[3] (end_x_8__N_295[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .init_data({init_data}), .show_char_data({show_char_data}), 
            .\state[5] (state_adj_793[5]), .\state[2] (state_adj_793[2]), 
            .\state[4] (state_adj_793[4]), .\state[1] (state_adj_798[1]), 
            .cnt_rom_prepare({cnt_rom_prepare})) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    show_string_number_ctrl show_string_number_ctrl_inst (.ascii_num({ascii_num}), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state[5] (state_adj_793[5]), 
            .cnt1({cnt1_adj_808}), .\state_3__N_368[1] (state_3__N_368[1]), 
            .n5(n5), .\end_y_8__N_313[4] (end_y_8__N_313[4]), .n6875(n6875), 
            .\end_y_8__N_313[5] (end_y_8__N_313[5]), .sys_clk_50MHz_enable_29(sys_clk_50MHz_enable_29), 
            .\end_x_8__N_295[7] (end_x_8__N_295[7]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\state[3] (state_adj_798[3]), .\end_x_8__N_295[3] (end_x_8__N_295[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, lcd_cs_c, cnt_sclk, n13747, 
            sys_clk_50MHz_enable_9, lcd_sclk_c, \state[2] , lcd_mosi_c, 
            \state_3__N_25[1] , \data[7] , n13844, \data[0] , \data[1] , 
            \data[2] , \data[3] , \data[4] , \data[5] , \data[6] , 
            n1443) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output [3:0]cnt_sclk;
    input n13747;
    input sys_clk_50MHz_enable_9;
    output lcd_sclk_c;
    output \state[2] ;
    output lcd_mosi_c;
    input \state_3__N_25[1] ;
    input \data[7] ;
    input n13844;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[4] ;
    input \data[5] ;
    input \data[6] ;
    output n1443;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]state_3__N_33;
    
    wire n1;
    wire [3:0]n15;
    wire [3:0]n100;
    
    wire sclk_N_53, n2870, n2867, n2859;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6881;
    wire [4:0]n25;
    
    wire sys_clk_50MHz_enable_44, n1559, n2885, mosi_N_56, n11577, 
        mosi_N_55;
    wire [3:0]state_3__N_29;
    
    wire n6, n13732, n5923, n5924, n13880, n11536, sys_clk_50MHz_enable_86, 
        n10110, n13, n14, mosi_N_65, mosi_N_63, mosi_N_59, mosi_N_61, 
        mosi_N_62, mosi_N_64, mosi_N_60, mosi_N_58, n2853, n11574, 
        n5925, n11566, sys_clk_50MHz_enable_70;
    wire [15:0]n120;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n13747), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_9), .CD(n13747), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_9), .CD(n13747), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_9), .CD(n13747), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2870), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2867), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2859), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_688__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6881), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_688__i4.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n1559), .SP(sys_clk_50MHz_enable_44), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i9439_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9439_2_lut.init = 16'h6666;
    LUT4 i822_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i822_2_lut.init = 16'h6666;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    PFUMX mosi_I_1 (.BLUT(n2885), .ALUT(mosi_N_56), .C0(n11577), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    LUT4 i2062_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2870)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2062_2_lut.init = 16'h2222;
    LUT4 i2059_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2867)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2059_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 state_3__N_21_I_0_2_lut_rep_185 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n13732)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_185.init = 16'h2222;
    LUT4 i5098_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n5923), .Z(n5924)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5098_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2052_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2859)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2052_3_lut_4_lut.init = 16'h2f22;
    LUT4 i9460_3_lut_4_lut (.A(cnt_delay[2]), .B(n13880), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9460_3_lut_4_lut.init = 16'h7f80;
    LUT4 i12231_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n11536), .D(cnt_delay[2]), 
         .Z(n6881)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12231_4_lut.init = 16'hfffb;
    LUT4 i10924_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n11536)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10924_2_lut.init = 16'heeee;
    LUT4 i32_2_lut_rep_147_4_lut (.A(n13844), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_86)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_147_4_lut.init = 16'h0400;
    LUT4 i12181_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n10110), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_44)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12181_4_lut.init = 16'hfbfa;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n10110)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7350_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1559)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7350_2_lut.init = 16'h2222;
    LUT4 i2046_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n2853)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2046_4_lut.init = 16'hcac0;
    LUT4 i12187_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12187_4_lut.init = 16'h0200;
    LUT4 i12023_4_lut_4_lut (.A(n13732), .B(n11574), .C(n5924), .D(n2853), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12023_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i9437_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9437_1_lut.init = 16'h5555;
    LUT4 i5099_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n5925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5099_3_lut.init = 16'hcaca;
    LUT4 i10960_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n11574)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i10960_2_lut.init = 16'h1111;
    LUT4 i12291_4_lut (.A(n13732), .B(mosi_N_58), .C(mosi_N_59), .D(n11566), 
         .Z(n11577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12291_4_lut.init = 16'hfffe;
    LUT4 i10952_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n11566)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i10952_3_lut.init = 16'h0101;
    LUT4 i2006_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_9), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2006_2_lut.init = 16'h6666;
    LUT4 i5100_3_lut (.A(n5925), .B(\data[4] ), .C(mosi_N_60), .Z(n2885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5100_3_lut.init = 16'hcaca;
    LUT4 i5097_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n5923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5097_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n13747), .C(state[1]), .Z(sys_clk_50MHz_enable_70)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i836_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i836_3_lut_4_lut.init = 16'h7f80;
    LUT4 i829_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i829_2_lut_3_lut.init = 16'h7878;
    LUT4 i742_1_lut (.A(wr_done), .Z(n1443)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i742_1_lut.init = 16'h5555;
    LUT4 i9442_2_lut_rep_333 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n13880)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9442_2_lut_rep_333.init = 16'h8888;
    LUT4 i9453_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9453_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i9446_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9446_2_lut_3_lut.init = 16'h7878;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_70), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    FD1S3IX cnt_delay_688__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6881), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_688__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_688__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6881), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_688__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_688__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6881), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_688__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n120[14]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_65));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_64), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n120[12]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_64));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_63), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n120[10]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_63));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_62), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n120[8]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_62));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_61), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n120[6]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_61));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_60), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n120[4]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_60));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_59), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n120[2]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_59));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_58));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_688__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6881), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_688__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (cnt_s2_num, sys_clk_50MHz, init_data, sys_clk_50MHz_enable_35, 
            \state[5] , n15134, n1443, lcd_rst_c, \state[4] , GND_net, 
            \state[2] , \init_data_8__N_240[0] , \init_data_8__N_240[5] , 
            \init_data_8__N_240[4] , \init_data_8__N_240[2] , n6875, wr_done) /* synthesis syn_module_defined=1 */ ;
    output [6:0]cnt_s2_num;
    input sys_clk_50MHz;
    output [8:0]init_data;
    input sys_clk_50MHz_enable_35;
    output \state[5] ;
    input n15134;
    input n1443;
    output lcd_rst_c;
    output \state[4] ;
    input GND_net;
    output \state[2] ;
    input \init_data_8__N_240[0] ;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    output n6875;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire cnt_150ms_22__N_221, n13895;
    wire [6:0]n24;
    wire [8:0]init_data_8__N_97;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1455;
    wire [17:0]n357;
    
    wire n15130, n15131, n15132, sys_clk_50MHz_enable_7;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272, lcd_rst_high_flag, n13174, n13688, n13687;
    wire [8:0]init_data_8__N_231;
    
    wire n10051, n10052, n9960, n13729, n11296, n4, n63;
    wire [8:0]init_data_8__N_240;
    
    wire n34, n40, n13672, n13, n3, sys_clk_50MHz_enable_50;
    wire [6:0]n159;
    
    wire n13865;
    wire [5:0]state_5__N_168;
    
    wire n2887, n11431, n11396, n11509, n11415, n6, n13913, n13888, 
        n30, n15, n10;
    wire [5:0]state_5__N_174;
    
    wire n2890, n11318, n10_adj_778, n11293, n2842, n61, n12178, 
        n11207, n11352, n12184, n13822, n13678, n52, n12714, n13985, 
        n13986, n13987, n15_adj_779, n12183, n6561, n11511, n13739, 
        n13775, n30_adj_780, n12177, n13751, n13535, n13544, n13542, 
        n11544, n12986, n12193, n11459, n11444, n68, n13803, n13886, 
        n2892;
    wire [5:0]state_5__N_186;
    
    wire n2894, n11295, n4_adj_781, n11516, n11397, n13957, n12179, 
        n13792, n13885, n6590, n14813, n14814, n6579, n11394, 
        n13671, n49, n13956, n13955, n10949, n12185, n8910, n51, 
        n10_adj_782, n6879, lcd_rst_high_flag_N_270, n11330, n13882, 
        n16, n11520, n11554, n11441, n11483, n68_adj_783, n30_adj_784, 
        n15109, n2896, n13713, n10071, n10070, n10069, n11395, 
        n11552, n11538, n10068, n10067, n10066, n10065, n10064, 
        n10063, n10062, n10061, n10048, n10049, n10056, n10055, 
        n15108, n13868, n10054, n10050, n10053;
    
    LUT4 i12310_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12310_3_lut.init = 16'h0101;
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n13895), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i22.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    PFUMX i13791 (.BLUT(n15130), .ALUT(n15131), .C0(cnt_s2_num[1]), .Z(n15132));
    FD1P3AX state_FSM_i0 (.D(n15134), .SP(sys_clk_50MHz_enable_7), .CK(sys_clk_50MHz), 
            .Q(\state[5] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_35), 
            .CD(n1455), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_35), .CD(n1455), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1443), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1443), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n15134), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    LUT4 i7498_4_lut (.A(n13174), .B(\state[4] ), .C(n13688), .D(n13687), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7498_4_lut.init = 16'hc8c0;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10051), .COUT(n10052), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n9960), .B(n13729), .C(n11296), .D(cnt_s4_num[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_2_lut_4_lut.init = 16'h0400;
    LUT4 i7385_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n63), .Z(init_data_8__N_240[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7385_2_lut_2_lut.init = 16'h4444;
    LUT4 i50_3_lut_4_lut (.A(cnt_s4_num[0]), .B(n13687), .C(cnt_s4_num[1]), 
         .D(n13688), .Z(n34)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i50_3_lut_4_lut.init = 16'hf404;
    PFUMX i68 (.BLUT(n40), .ALUT(n13672), .C0(\state[2] ), .Z(init_data_8__N_97[8]));
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i5.GSR = "ENABLED";
    PFUMX i29 (.BLUT(n13), .ALUT(n3), .C0(\state[2] ), .Z(init_data_8__N_97[1]));
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i4.GSR = "ENABLED";
    PFUMX init_data_8__I_0_i8 (.BLUT(init_data_8__N_231[7]), .ALUT(init_data_8__N_240[7]), 
          .C0(\state[2] ), .Z(init_data_8__N_97[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n13865), .SP(sys_clk_50MHz_enable_50), .CD(n13895), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    LUT4 i2079_2_lut (.A(state[0]), .B(state_5__N_168[0]), .Z(n2887)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2079_2_lut.init = 16'h8888;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(\state[2] ), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    LUT4 i1_4_lut (.A(n11431), .B(n11396), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_4_lut.init = 16'hffef;
    LUT4 i3_4_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[12]), .C(cnt_s4_num[14]), 
         .D(n11509), .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i10898_4_lut (.A(cnt_s4_num[11]), .B(n11415), .C(n6), .D(n13913), 
         .Z(n11509)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i10898_4_lut.init = 16'hfffd;
    LUT4 i3_4_lut_adj_31 (.A(cnt_s4_num[16]), .B(cnt_s4_num[4]), .C(cnt_s4_num[0]), 
         .D(n13888), .Z(n11415)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i3_4_lut_adj_31.init = 16'hffef;
    LUT4 i260_2_lut (.A(state_5__N_192[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_7)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 mux_290_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_290_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    LUT4 mux_290_Mux_3_i15_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_290_Mux_3_i15_4_lut_4_lut.init = 16'h08e0;
    LUT4 i4_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i2082_4_lut (.A(state[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state[0]), .Z(n2890)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2082_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_32 (.A(cnt_150ms[5]), .B(n11318), .C(n10_adj_778), 
         .D(n11293), .Z(state_5__N_174[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_32.init = 16'hfffd;
    PFUMX i11564 (.BLUT(n2842), .ALUT(n61), .C0(cnt_s2_num[4]), .Z(n12178));
    PFUMX i11570 (.BLUT(n11207), .ALUT(n11352), .C0(cnt_s2_num[4]), .Z(n12184));
    LUT4 i12184_4_lut (.A(cnt_s2_num[5]), .B(n13822), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12184_4_lut.init = 16'h1000;
    LUT4 n8908_bdd_4_lut_13036 (.A(n13678), .B(n13688), .C(n52), .D(\state[4] ), 
         .Z(n12714)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam n8908_bdd_4_lut_13036.init = 16'hec00;
    LUT4 i2_2_lut_rep_275_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n13822)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_275_3_lut_4_lut.init = 16'hfbff;
    PFUMX i13088 (.BLUT(n13985), .ALUT(n13986), .C0(cnt_s4_num[3]), .Z(n13987));
    LUT4 mux_290_Mux_3_i61_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n61)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam mux_290_Mux_3_i61_4_lut_4_lut_4_lut.init = 16'h0210;
    PFUMX i11569 (.BLUT(n15_adj_779), .ALUT(n30), .C0(cnt_s2_num[4]), 
          .Z(n12183));
    LUT4 i2_4_lut (.A(cnt_150ms[13]), .B(n6561), .C(n11511), .D(n13739), 
         .Z(n11318)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i879_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n13775), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i879_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i11563 (.BLUT(n15), .ALUT(n30_adj_780), .C0(cnt_s2_num[4]), 
          .Z(n12177));
    LUT4 i4_4_lut_adj_33 (.A(cnt_150ms[8]), .B(cnt_150ms[6]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[11]), .Z(n10_adj_778)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_33.init = 16'hfffb;
    LUT4 n2923_bdd_4_lut (.A(n13751), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n13535)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n2923_bdd_4_lut.init = 16'h31cf;
    LUT4 cnt_s2_num_5__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13544)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut.init = 16'ha088;
    LUT4 cnt_s2_num_0__bdd_4_lut_13027 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n13542)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_13027.init = 16'h1020;
    LUT4 i1_2_lut_rep_366 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n13913)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_2_lut_rep_366.init = 16'hdddd;
    LUT4 i10931_2_lut_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[3]), 
         .Z(n11544)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i10931_2_lut_3_lut.init = 16'hfdfd;
    LUT4 cnt_s2_num_2__bdd_4_lut_12906 (.A(cnt_s2_num[4]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n12986)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_12906.init = 16'h1640;
    LUT4 n12986_bdd_2_lut (.A(n12986), .B(cnt_s2_num[2]), .Z(n12193)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n12986_bdd_2_lut.init = 16'h2222;
    LUT4 i10900_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n11511)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10900_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_34 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n11459), 
         .D(cnt_150ms[18]), .Z(n11293)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_4_lut_adj_34.init = 16'hffdf;
    LUT4 i10849_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n11459)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10849_2_lut.init = 16'h8888;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n11444), .B(\init_data_8__N_240[0] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut (.A(n68), .B(n13688), .C(n13687), .Z(n11444)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i87_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n68)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i87_4_lut.init = 16'h05c1;
    LUT4 i12193_3_lut_rep_140_4_lut (.A(n13803), .B(n13886), .C(n11296), 
         .D(n9960), .Z(n13687)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i12193_3_lut_rep_140_4_lut.init = 16'h0001;
    LUT4 i2084_4_lut (.A(\state[2] ), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state[1]), .Z(n2892)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2084_4_lut.init = 16'h3b0a;
    LUT4 i2086_4_lut (.A(state[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(\state[2] ), .Z(n2894)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2086_4_lut.init = 16'heca0;
    LUT4 i1_2_lut (.A(cnt_s4_num[16]), .B(cnt_s4_num[17]), .Z(n9960)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_35 (.A(cnt_150ms[16]), .B(n11295), .C(n4_adj_781), 
         .D(n11516), .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_35.init = 16'hfdff;
    LUT4 i1_4_lut_adj_36 (.A(cnt_s4_num[9]), .B(cnt_s4_num[13]), .C(cnt_s4_num[5]), 
         .D(cnt_s4_num[15]), .Z(n11397)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i1_4_lut_adj_36.init = 16'hfffe;
    LUT4 n13536_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n13535), 
         .D(n13957), .Z(n13672)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n13536_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7356_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12179), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7356_2_lut_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_37 (.A(cnt_150ms[14]), .B(cnt_150ms[5]), .C(cnt_150ms[6]), 
         .D(n11293), .Z(n11295)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_37.init = 16'hfffe;
    LUT4 i1_4_lut_adj_38 (.A(n9960), .B(n11296), .C(n13792), .D(n13885), 
         .Z(n6590)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i1_4_lut_adj_38.init = 16'hfffe;
    LUT4 cnt_s4_num_2__bdd_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[0]), .D(cnt_s4_num[3]), .Z(n14813)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(B+((D)+!C))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut.init = 16'haa90;
    LUT4 i5_3_lut_rep_192 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .Z(n13739)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i5_3_lut_rep_192.init = 16'hfefe;
    LUT4 cnt_s4_num_2__bdd_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .Z(n14814)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam cnt_s4_num_2__bdd_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_adj_39 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n6579), .Z(n4_adj_781)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut_adj_39.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_40 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n11394), .Z(n11396)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut_adj_40.init = 16'hfffe;
    LUT4 n13542_bdd_4_lut (.A(n13542), .B(cnt_s2_num[4]), .C(n13544), 
         .D(cnt_s2_num[5]), .Z(n13671)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n13542_bdd_4_lut.init = 16'h22f0;
    LUT4 cnt_s4_num_1__bdd_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[3]), .Z(n13174)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam cnt_s4_num_1__bdd_4_lut.init = 16'h5189;
    LUT4 i2_4_lut_adj_41 (.A(cnt_s4_num[3]), .B(n4), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n49)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i2_4_lut_adj_41.init = 16'h4048;
    LUT4 n2923_bdd_3_lut_13010_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n13956)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;
    defparam n2923_bdd_3_lut_13010_4_lut_then_4_lut.init = 16'hf3fb;
    LUT4 n2923_bdd_3_lut_13010_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n13955)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam n2923_bdd_3_lut_13010_4_lut_else_4_lut.init = 16'hb7f2;
    LUT4 init_data_8__I_0_i6_3_lut (.A(init_data_8__N_231[5]), .B(\init_data_8__N_240[5] ), 
         .C(\state[2] ), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i7493_4_lut (.A(n10949), .B(\state[4] ), .C(n13688), .D(n13687), 
         .Z(init_data_8__N_231[5])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7493_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_42 (.A(cnt_s4_num[3]), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[2]), .Z(n10949)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_4_lut_adj_42.init = 16'h6257;
    LUT4 i1_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12185), .Z(n3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_43 (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(n8910), 
         .D(n51), .Z(n10_adj_782)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_43.init = 16'h2220;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6879), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_44 (.A(cnt_s4_num[0]), .B(n11330), .C(n13882), .D(cnt_s4_num[3]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_44.init = 16'ha088;
    LUT4 i2_4_lut_adj_45 (.A(n11520), .B(n13913), .C(n11554), .D(cnt_s4_num[11]), 
         .Z(n11330)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i2_4_lut_adj_45.init = 16'h0004;
    LUT4 i10908_2_lut (.A(cnt_s4_num[8]), .B(cnt_s4_num[6]), .Z(n11520)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10908_2_lut.init = 16'heeee;
    LUT4 i10941_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[10]), .C(n9960), 
         .D(n13803), .Z(n11554)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10941_4_lut.init = 16'hfffe;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n11441), .B(\init_data_8__N_240[4] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i12217_3_lut (.A(n13687), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .Z(n11483)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;
    defparam i12217_3_lut.init = 16'h8282;
    LUT4 i1_2_lut_adj_46 (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .Z(n68_adj_783)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_2_lut_adj_46.init = 16'h8888;
    LUT4 i12136_4_lut (.A(n30_adj_784), .B(n13671), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n63)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i12136_4_lut.init = 16'hcacc;
    LUT4 i9388_4_lut (.A(\state[4] ), .B(\init_data_8__N_240[2] ), .C(\state[2] ), 
         .D(n15109), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    defparam i9388_4_lut.init = 16'hcac0;
    LUT4 i69_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n52)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i69_3_lut.init = 16'h1818;
    LUT4 i718_1_lut (.A(\state[4] ), .Z(n1455)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i718_1_lut.init = 16'h5555;
    LUT4 i6026_1_lut (.A(\state[5] ), .Z(n6875)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6026_1_lut.init = 16'h5555;
    LUT4 i10904_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11516)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10904_2_lut.init = 16'h8888;
    LUT4 i2088_4_lut (.A(\state[4] ), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state[3]), .Z(n2896)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2088_4_lut.init = 16'h3b0a;
    LUT4 i12297_2_lut_rep_131_4_lut (.A(n9960), .B(n13729), .C(n11296), 
         .D(cnt_s4_num[0]), .Z(n13678)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i12297_2_lut_rep_131_4_lut.init = 16'h0004;
    LUT4 i886_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n13713), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i886_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_4_lut_then_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(n6590), 
         .D(cnt_s4_num[2]), .Z(n13986)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i3_4_lut_then_4_lut.init = 16'hfafe;
    LUT4 i3_4_lut_else_4_lut (.A(n13687), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .D(n6590), .Z(n13985)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i3_4_lut_else_4_lut.init = 16'hff08;
    CCU2D cnt_150ms_690_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10071), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10070), .COUT(n10071), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10069), .COUT(n10070), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_19.INJECT1_1 = "NO";
    LUT4 i6030_1_lut (.A(state[0]), .Z(n6879)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6030_1_lut.init = 16'h5555;
    LUT4 i12169_4_lut (.A(n11431), .B(n11395), .C(cnt_150ms[6]), .D(cnt_150ms[3]), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12169_4_lut.init = 16'h0100;
    LUT4 i3_4_lut_adj_47 (.A(cnt_150ms[5]), .B(n11552), .C(cnt_150ms[22]), 
         .D(n11394), .Z(n11395)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i3_4_lut_adj_47.init = 16'hff7f;
    LUT4 i10939_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[2]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n11552)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10939_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_48 (.A(cnt_150ms[18]), .B(n6579), .C(cnt_150ms[9]), 
         .D(n6561), .Z(n11394)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_48.init = 16'hffdf;
    LUT4 i3_4_lut_adj_49 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .C(cnt_150ms[12]), 
         .D(n11538), .Z(n6579)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_49.init = 16'hfeff;
    LUT4 i10926_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n11538)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i10926_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_50 (.A(cnt_150ms[15]), .B(cnt_150ms[10]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n6561)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_50.init = 16'hffef;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[17]), .C(cnt_150ms[7]), 
         .Z(n11431)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    PFUMX i13068 (.BLUT(n13955), .ALUT(n13956), .C0(cnt_s2_num[2]), .Z(n13957));
    CCU2D cnt_150ms_690_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10068), .COUT(n10069), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10067), .COUT(n10068), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10066), .COUT(n10067), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10065), .COUT(n10066), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10064), .COUT(n10065), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10063), .COUT(n10064), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_690_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10062), .COUT(n10063), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_5.INJECT1_1 = "NO";
    LUT4 i7489_4_lut (.A(n34), .B(\state[4] ), .C(n6590), .D(n68_adj_783), 
         .Z(init_data_8__N_231[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(254[9:32])
    defparam i7489_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_51 (.A(\state[4] ), .B(n6590), .C(n10_adj_782), 
         .D(n16), .Z(n13)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_51.init = 16'haaa8;
    CCU2D cnt_150ms_690_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10061), .COUT(n10062), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_690_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_52 (.A(\state[4] ), .B(n11544), .C(n13987), .D(n49), 
         .Z(n40)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_4_lut_adj_52.init = 16'haaa2;
    CCU2D cnt_150ms_690_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10061), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_690_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_690_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_690_add_4_1.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10048), .COUT(n10049), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_335 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n13882)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_2_lut_rep_335.init = 16'h8888;
    LUT4 i1_3_lut_rep_141_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6590), .Z(n13688)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_3_lut_rep_141_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6590), .Z(n51)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hcc80;
    LUT4 n12193_bdd_3_lut_else_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .Z(n15130)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n12193_bdd_3_lut_else_4_lut.init = 16'h0808;
    LUT4 i2_3_lut_rep_338 (.A(cnt_s4_num[4]), .B(cnt_s4_num[14]), .C(cnt_s4_num[12]), 
         .Z(n13885)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i2_3_lut_rep_338.init = 16'hfefe;
    LUT4 i1_2_lut_rep_256_4_lut (.A(cnt_s4_num[4]), .B(cnt_s4_num[14]), 
         .C(cnt_s4_num[12]), .D(n11397), .Z(n13803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i1_2_lut_rep_256_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_339 (.A(cnt_s4_num[10]), .B(cnt_s4_num[6]), .Z(n13886)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut_rep_339.init = 16'heeee;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10056), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i12192_2_lut_rep_182_3_lut_4_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[6]), 
         .C(n13885), .D(n11397), .Z(n13729)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i12192_2_lut_rep_182_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_245_3_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[6]), 
         .C(n11397), .Z(n13792)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i1_2_lut_rep_245_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[6]), .C(cnt_s4_num[3]), 
         .D(n11397), .Z(n6)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(260[10] 265[34])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_341 (.A(cnt_s4_num[7]), .B(cnt_s4_num[8]), .Z(n13888)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i1_2_lut_rep_341.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[8]), .C(cnt_s4_num[11]), 
         .Z(n11296)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(271[13:36])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10055), .COUT(n10056), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 n12711_bdd_4_lut (.A(n15132), .B(n12193), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n15108)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n12711_bdd_4_lut.init = 16'h00ca;
    LUT4 mux_290_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_779)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_290_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i1_2_lut_3_lut_adj_53 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n11352)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_53.init = 16'h1010;
    LUT4 i872_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n13868), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i872_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 mux_290_Mux_3_i30_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n30_adj_780)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam mux_290_Mux_3_i30_4_lut_4_lut_4_lut.init = 16'hd0c0;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11207)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 n14814_bdd_4_lut (.A(n14814), .B(n14813), .C(n13687), .D(n6590), 
         .Z(n15109)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n14814_bdd_4_lut.init = 16'hffca;
    L6MUX21 i11565 (.D0(n12177), .D1(n12178), .SD(cnt_s2_num[5]), .Z(n12179));
    L6MUX21 i11571 (.D0(n12183), .D1(n12184), .SD(cnt_s2_num[5]), .Z(n12185));
    LUT4 i12303_2_lut_4_lut (.A(n9960), .B(n13729), .C(n11296), .D(cnt_s4_num[1]), 
         .Z(n8910)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 254[32])
    defparam i12303_2_lut_4_lut.init = 16'h0004;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10054), .COUT(n10055), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 i7386_2_lut_rep_204_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n13751)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7386_2_lut_rep_204_2_lut.init = 16'h4444;
    LUT4 mux_290_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_784)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_290_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10049), .COUT(n10050), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10053), .COUT(n10054), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(n11483), 
         .D(n13688), .Z(n11441)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 252[16])
    defparam i1_3_lut_4_lut.init = 16'hff40;
    LUT4 i715_1_lut_rep_348 (.A(\state[2] ), .Z(n13895)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i715_1_lut_rep_348.init = 16'h5555;
    LUT4 i851_2_lut_rep_318 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n13865)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i851_2_lut_rep_318.init = 16'h6666;
    PFUMX i12359 (.BLUT(n12714), .ALUT(n15108), .C0(\state[2] ), .Z(init_data_8__N_97[6]));
    LUT4 i853_2_lut_rep_321 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n13868)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i853_2_lut_rep_321.init = 16'h8888;
    LUT4 i860_2_lut_rep_228_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n13775)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i860_2_lut_rep_228_3_lut.init = 16'h8080;
    LUT4 i858_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i858_2_lut_3_lut.init = 16'h7878;
    LUT4 i2035_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n2842)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2035_3_lut_4_lut.init = 16'h7088;
    LUT4 i867_2_lut_rep_166_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n13713)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i867_2_lut_rep_166_3_lut_4_lut.init = 16'h8000;
    LUT4 i865_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i865_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2007_2_lut_3_lut_3_lut (.A(\state[2] ), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2007_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i716_2_lut_rep_266_2_lut (.A(\state[2] ), .B(wr_done), .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i716_2_lut_rep_266_2_lut.init = 16'hdddd;
    FD1S3IX cnt_150ms_690__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i5 (.D(n2887), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2890), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2892), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2894), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2896), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_690__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_690__i0.GSR = "ENABLED";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10050), .COUT(n10051), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 n12193_bdd_3_lut_then_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n15131)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n12193_bdd_3_lut_then_4_lut.init = 16'h48a9;
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10048), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10052), .COUT(n10053), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (cnt_length_num, sys_clk_50MHz, n14, cnt_rom_prepare, 
            length_num_flag, wr_done, show_char_data, \state_3__N_368[1] , 
            \state[1] , \state[2] , sys_clk_50MHz_enable_52, \cnt_length_num[4] , 
            sys_clk_50MHz_enable_56, \state[3] , n8764, \end_x_8__N_295[6] , 
            \end_x_8__N_295[5] , \end_y_8__N_313[5] , \end_x_8__N_295[7] , 
            GND_net, ascii_num, \end_x_8__N_295[4] , \end_y_8__N_313[4] , 
            \end_x_8__N_295[3] ) /* synthesis syn_module_defined=1 */ ;
    output [4:0]cnt_length_num;
    input sys_clk_50MHz;
    input n14;
    output [2:0]cnt_rom_prepare;
    output length_num_flag;
    input wr_done;
    output [8:0]show_char_data;
    input \state_3__N_368[1] ;
    output \state[1] ;
    output \state[2] ;
    input sys_clk_50MHz_enable_52;
    output \cnt_length_num[4] ;
    input sys_clk_50MHz_enable_56;
    output \state[3] ;
    output n8764;
    input \end_x_8__N_295[6] ;
    input \end_x_8__N_295[5] ;
    input \end_y_8__N_313[5] ;
    input \end_x_8__N_295[7] ;
    input GND_net;
    input [6:0]ascii_num;
    input \end_x_8__N_295[4] ;
    input \end_y_8__N_313[4] ;
    input \end_x_8__N_295[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [3:0]state_3__N_376;
    wire [15:0]n429;
    
    wire cnt_set_windows_3__N_384;
    wire [2:0]n12;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_439;
    wire [5:0]n1;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_372;
    
    wire state1_finish_flag_N_459;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_71;
    wire [7:0]temp_7__N_345;
    
    wire length_num_flag_N_462, sys_clk_50MHz_enable_69;
    wire [8:0]show_char_data_8__N_275;
    wire [15:0]n33;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n1769, n13927, n13928;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire n13929, n1324, n11361, n14464, n4094, sys_clk_50MHz_enable_43;
    wire [5:0]n422;
    
    wire n13708;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2899, n2902, n2904;
    wire [2:0]n132;
    
    wire n13921, n13922, n13923;
    wire [4:0]n365;
    
    wire n2848;
    wire [8:0]show_char_data_8__N_449;
    
    wire n11584, n1228, n236, sys_clk_50MHz_enable_68, n1377;
    wire [6:0]n1369;
    
    wire n13871, n13785, n13798, n13585, n722, n13690, n11401, 
        n11355, n5966, n13839, n6046, n13829;
    wire [4:0]n1362;
    
    wire n13874;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n3, n13830, n13831, n5954, n6858, n11291, n13736, n11405, 
        n13884, n6, n11548, n13735, n5929, n11307, n11455, n8_adj_770, 
        n13854, n2952, n6878, n10060, n10059, n11434, n6316, n6048, 
        n13724, n13817, n13894, n5812, n11489, n15116, n12153, 
        n13715, n13725, n1820, n1172, n2025, n11793, n10181, n10058, 
        n4, n10057, n13721, n15110, n1755, n684, n270, n13816, 
        n12219, n13771, n1851, n13772, n1723, n2850, n13818, n13911, 
        n13691, n2141, n13733, n13342, n15111, n94, n13786, n1529, 
        n12181, n13684, n603, n2652, n308, n301, n317, n1676, 
        n94_adj_771, n859, n13700, n13804, n13704, n13702, n2428, 
        n6_adj_772, n5, n125, n126, n11344, n5905, n13681, n892, 
        n10383, n1534, n13722, n13903, n1084, n1076, n1085, n13727, 
        n13802, n12195, n13889, n2172, n13799, n13856, n6233, 
        n13716, n6682, n348, n13761, n13701, n13253, n13683, n1661, 
        n1723_adj_773, n6732, n1405, n11763, n12015, n4_adj_774, 
        n11540, n14_adj_775, n21, n13720, n6089, n13706, n3013, 
        n10451, n127, n11770, n13796, n11669, n13686, n13674, 
        n12081, n4094_adj_776, n6874, n15117, n1436, n13781, n13711, 
        n3069, n12031, n4094_adj_777;
    
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n429[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n429[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n1[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n429[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n429[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1S3AX the1_wr_done_177 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_177.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_179 (.D(state1_finish_flag_N_459), .CK(sys_clk_50MHz), 
            .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_179.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n429[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_183 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_183.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 i1019_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1769)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1019_2_lut.init = 16'h8888;
    PFUMX i13050 (.BLUT(n13927), .ALUT(n13928), .C0(rom_addr[3]), .Z(n13929));
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n429[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n429[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    LUT4 i12203_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1324), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_71)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12203_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n429[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n429[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n429[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n429[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n429[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n429[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n429[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n429[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    LUT4 i7906_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11361), 
         .D(n14464), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7906_4_lut_4_lut.init = 16'h5140;
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_43), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_43), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_43), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_43), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_43), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_161_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13708)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_161_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i2091_2_lut (.A(state[0]), .B(\state_3__N_368[1] ), .Z(n2899)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2091_2_lut.init = 16'h2222;
    LUT4 i2094_4_lut (.A(\state[1] ), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state[0]), .Z(n2902)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2094_4_lut.init = 16'hce0a;
    LUT4 i2096_4_lut (.A(\state[2] ), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(\state[1] ), .Z(n2904)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2096_4_lut.init = 16'hce0a;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_52), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_52), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    PFUMX i13046 (.BLUT(n13921), .ALUT(n13922), .C0(rom_addr[3]), .Z(n13923));
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(\cnt_length_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n2848), .ALUT(show_char_data_8__N_449[5]), 
          .C0(n11584), .Z(show_char_data_8__N_275[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;
    LUT4 i10854_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10854_3_lut_4_lut_4_lut_4_lut.init = 16'h4203;
    LUT4 i10864_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n236)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10864_3_lut_4_lut_4_lut_4_lut.init = 16'h180c;
    LUT4 state_3__N_365_I_0_195_2_lut (.A(\state[1] ), .B(the1_wr_done), 
         .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam state_3__N_365_I_0_195_2_lut.init = 16'h8888;
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_56), 
            .CD(state_3__N_376[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(n1377), .SP(sys_clk_50MHz_enable_68), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i10 (.D(n1369[6]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(n1369[5]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    LUT4 i2005_2_lut_4_lut (.A(\state[3] ), .B(n13871), .C(n13785), .D(cnt_wr_color_data[0]), 
         .Z(n1[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2005_2_lut_4_lut.init = 16'h10ef;
    FD1P3AX rom_addr_i0_i8 (.D(n1369[4]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    LUT4 i2010_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_52), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2010_2_lut.init = 16'h6666;
    FD1P3AX rom_addr_i0_i7 (.D(n1369[3]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 i7926_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8764)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7926_2_lut.init = 16'heeee;
    FD1P3AX rom_addr_i0_i6 (.D(n1369[2]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i987_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n13798), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i987_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX rom_addr_i0_i5 (.D(n1369[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    LUT4 n442_bdd_4_lut (.A(n429[3]), .B(n429[5]), .C(n429[2]), .D(n429[4]), 
         .Z(n13585)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n442_bdd_4_lut.init = 16'hccef;
    LUT4 i561_2_lut_rep_143 (.A(n33[10]), .B(n722), .Z(n13690)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i561_2_lut_rep_143.init = 16'hbbbb;
    FD1P3AX rom_addr_i0_i4 (.D(n1369[0]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    LUT4 i2061_4_lut_4_lut (.A(n33[10]), .B(n722), .C(n429[9]), .D(n11401), 
         .Z(show_char_data_8__N_449[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i2061_4_lut_4_lut.init = 16'hc8cc;
    LUT4 i1_2_lut_rep_238_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n13785)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_238_3_lut.init = 16'hbfbf;
    LUT4 i2050_4_lut_4_lut (.A(n33[10]), .B(n722), .C(n429[9]), .D(n11355), 
         .Z(show_char_data_8__N_449[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2050_4_lut_4_lut.init = 16'hccc8;
    LUT4 i5211_2_lut_3_lut_4_lut (.A(n33[10]), .B(n722), .C(n5966), .D(n13839), 
         .Z(n6046)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5211_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i12286_2_lut_3_lut (.A(n33[10]), .B(n722), .C(\state[1] ), .Z(n11584)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12286_2_lut_3_lut.init = 16'hbfbf;
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n13829), .B(\end_x_8__N_295[6] ), 
         .C(\state[1] ), .D(n6046), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    FD1P3AX rom_addr_i0_i3 (.D(n1362[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_171_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), .C(n13871), 
         .D(\state[3] ), .Z(sys_clk_50MHz_enable_43)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_171_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_68), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n13874), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5128_3_lut_4_lut (.A(n13830), .B(n429[7]), .C(n429[9]), .D(n13831), 
         .Z(n5954)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5128_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i2_3_lut_4_lut (.A(n13830), .B(n429[7]), .C(n429[4]), .D(n429[5]), 
         .Z(n11401)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_3_lut_rep_189 (.A(n429[5]), .B(n6858), .C(n11291), .Z(n13736)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_rep_189.init = 16'habab;
    LUT4 i1_3_lut_4_lut (.A(n429[5]), .B(n6858), .C(n11291), .D(\end_x_8__N_295[5] ), 
         .Z(n11405)) /* synthesis lut_function=(A+(B (D)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut.init = 16'hefab;
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i959_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i959_2_lut.init = 16'h6666;
    LUT4 i980_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n13884), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i980_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i12200_4_lut (.A(n429[15]), .B(n429[11]), .C(n429[13]), .D(n6), 
         .Z(n722)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12200_4_lut.init = 16'h0001;
    LUT4 i118_4_lut (.A(n11548), .B(length_num_flag), .C(\cnt_length_num[4] ), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    LUT4 i12301_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_68)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12301_2_lut_3_lut.init = 16'h0404;
    LUT4 i5103_4_lut (.A(n13831), .B(n429[9]), .C(n13735), .D(n11291), 
         .Z(n5929)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5103_4_lut.init = 16'hcecf;
    LUT4 i908_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i908_3_lut.init = 16'h6a6a;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_459)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 i901_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i901_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(n11307), .B(cnt_wr_color_data[5]), .C(cnt_wr_color_data[4]), 
         .D(n11455), .Z(n1324)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), .C(cnt_wr_color_data[3]), 
         .Z(n11307)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i923_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i923_2_lut.init = 16'h6666;
    LUT4 i4_3_lut (.A(the1_wr_done), .B(n8_adj_770), .C(n11307), .Z(length_num_flag_N_462)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_28 (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[5]), .D(\state[2] ), .Z(n8_adj_770)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_28.init = 16'h0400;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n13922)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i1017_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1362[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1017_2_lut.init = 16'h6666;
    LUT4 i1055_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[24:58])
    defparam i1055_1_lut.init = 16'h5555;
    LUT4 i944_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n13854), .C(cnt_length_num_c[3]), 
         .D(\cnt_length_num[4] ), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i944_3_lut_4_lut.init = 16'h7f80;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13921)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i153_2_lut_rep_282 (.A(\state[2] ), .B(temp[0]), .Z(n13829)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i153_2_lut_rep_282.init = 16'h2222;
    LUT4 show_char_data_8__I_0_i3_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), 
         .C(\state[1] ), .D(show_char_data_8__N_449[2]), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), 
         .C(\state[1] ), .D(show_char_data_8__N_449[3]), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hf202;
    LUT4 i557_2_lut_rep_283 (.A(n429[6]), .B(n429[8]), .Z(n13830)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i557_2_lut_rep_283.init = 16'heeee;
    LUT4 i10890_2_lut_rep_188_3_lut (.A(n429[6]), .B(n429[8]), .C(n429[7]), 
         .Z(n13735)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i10890_2_lut_rep_188_3_lut.init = 16'hfefe;
    LUT4 n13585_bdd_2_lut_3_lut (.A(n429[6]), .B(n429[8]), .C(n13585), 
         .Z(n5966)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n13585_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i555_2_lut_rep_284 (.A(n429[4]), .B(n429[5]), .Z(n13831)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i555_2_lut_rep_284.init = 16'heeee;
    LUT4 i7875_4_lut_4_lut (.A(n429[4]), .B(n429[5]), .C(n13830), .D(n11291), 
         .Z(n2952)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i7875_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i2041_4_lut (.A(n11405), .B(\end_y_8__N_313[5] ), .C(n13839), 
         .D(n13830), .Z(n2848)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2041_4_lut.init = 16'hc0ca;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n13829), .B(\end_x_8__N_295[7] ), 
         .C(\state[1] ), .D(n6046), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i6029_1_lut (.A(\state[2] ), .Z(n6878)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6029_1_lut.init = 16'h5555;
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n6878), 
            .Q(\state[3] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_69), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    CCU2D add_681_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10060), 
          .S0(n1377));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_681_cout.INIT0 = 16'h0000;
    defparam add_681_cout.INIT1 = 16'h0000;
    defparam add_681_cout.INJECT1_0 = "NO";
    defparam add_681_cout.INJECT1_1 = "NO";
    CCU2D add_681_7 (.A0(ascii_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ascii_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10059), .COUT(n10060), .S0(n1369[5]), .S1(n1369[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_681_7.INIT0 = 16'hfaaa;
    defparam add_681_7.INIT1 = 16'h0555;
    defparam add_681_7.INJECT1_0 = "NO";
    defparam add_681_7.INJECT1_1 = "NO";
    LUT4 i559_2_lut_rep_292 (.A(n429[7]), .B(n429[9]), .Z(n13839)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i559_2_lut_rep_292.init = 16'heeee;
    LUT4 i5213_4_lut_4_lut (.A(rom_addr[3]), .B(n11434), .C(rom_addr[5]), 
         .D(n6316), .Z(n6048)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5213_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i7428_2_lut_rep_177_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13724)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7428_2_lut_rep_177_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 i4995_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13817), .C(rom_addr[4]), 
         .D(n13894), .Z(n5812)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i4995_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11539_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11489), .C(rom_addr[4]), 
         .D(n15116), .Z(n12153)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11539_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7694_2_lut_rep_168_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13715)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7694_2_lut_rep_168_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13725), 
         .C(rom_addr[4]), .D(n15116), .Z(n1820)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11179_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n11793)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11179_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13894), .D(rom_addr[5]), .Z(n10181)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    CCU2D add_681_5 (.A0(ascii_num[3]), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(\cnt_length_num[4] ), .A1(ascii_num[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10058), .COUT(n10059), .S0(n1369[3]), 
          .S1(n1369[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_681_5.INIT0 = 16'h556a;
    defparam add_681_5.INIT1 = 16'hfaaa;
    defparam add_681_5.INJECT1_0 = "NO";
    defparam add_681_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n4)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    CCU2D add_681_3 (.A0(\cnt_length_num[4] ), .B0(n1769), .C0(ascii_num[1]), 
          .D0(GND_net), .A1(\cnt_length_num[4] ), .B1(n1769), .C1(ascii_num[2]), 
          .D1(GND_net), .CIN(n10057), .COUT(n10058), .S0(n1369[1]), 
          .S1(n1369[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_681_3.INIT0 = 16'he1e1;
    defparam add_681_3.INIT1 = 16'he1e1;
    defparam add_681_3.INJECT1_0 = "NO";
    defparam add_681_3.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13721), 
         .C(rom_addr[4]), .D(n15110), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    CCU2D add_681_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt_length_num[4] ), .B1(n1769), .C1(ascii_num[0]), .D1(GND_net), 
          .COUT(n10057), .S1(n1369[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_681_1.INIT0 = 16'hF000;
    defparam add_681_1.INIT1 = 16'h6969;
    defparam add_681_1.INJECT1_0 = "NO";
    defparam add_681_1.INJECT1_1 = "NO";
    LUT4 i961_2_lut_rep_337 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n13884)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i961_2_lut_rep_337.init = 16'h8888;
    LUT4 i968_2_lut_rep_251_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n13798)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i968_2_lut_rep_251_3_lut.init = 16'h8080;
    LUT4 i966_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i966_2_lut_3_lut.init = 16'h7878;
    LUT4 i973_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i973_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7743_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n684)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7743_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i11792_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n13816), .Z(n12219)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11792_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13721), .D(n13771), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n15110), .C(rom_addr[4]), .D(n13772), .Z(n1723)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n13829), .B(n2850), .C(\state[1] ), 
         .D(n13690), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i7479_2_lut_rep_271_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n13818)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7479_2_lut_rep_271_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13911), .D(n13691), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 n2981_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15116), .C(rom_addr[4]), 
         .D(n13733), .Z(n13342)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2981_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13733), .D(n15111), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i10863_2_lut_rep_239_2_lut (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n13786)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10863_2_lut_rep_239_2_lut.init = 16'h4444;
    LUT4 i1_2_lut (.A(n429[12]), .B(n429[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2043_4_lut (.A(\end_x_8__N_295[4] ), .B(\end_y_8__N_313[4] ), 
         .C(n13839), .D(n5966), .Z(n2850)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2043_4_lut.init = 16'hc0ca;
    LUT4 i11567_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n15110), .Z(n12181)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11567_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_137_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13684)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_137_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_327 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n13874)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_327.init = 16'hbbbb;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n13691), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i7395_4_lut_4_lut_4_lut (.A(\state[1] ), .B(n2952), .C(n13690), 
         .D(n13839), .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i7395_4_lut_4_lut_4_lut.init = 16'h5f5d;
    LUT4 i2042_3_lut_4_lut_4_lut (.A(\state[1] ), .B(n722), .C(temp[0]), 
         .D(\state[2] ), .Z(show_char_data_8__N_449[5])) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2042_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i925_2_lut_rep_307 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n13854)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i925_2_lut_rep_307.init = 16'h8888;
    LUT4 i937_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i937_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n15110), .Z(n94_adj_771)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7766_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n859)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7766_3_lut_4_lut_4_lut.init = 16'h888c;
    LUT4 i10935_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n11548)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i10935_2_lut_3_lut.init = 16'h8080;
    LUT4 i930_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i930_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_153_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13700)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_153_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10980_2_lut_rep_257_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n13804)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10980_2_lut_rep_257_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n13704), 
         .C(n13702), .D(rom_addr[0]), .Z(n2428)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n6_adj_772), 
         .C(n5), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11344), 
         .C(n5905), .D(n13681), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7858_3_lut_3_lut (.A(rom_addr[6]), .B(n10383), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7858_3_lut_3_lut.init = 16'h0202;
    LUT4 temp_7__N_424_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(\state[3] ), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_424_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_4_lut (.A(n6858), .B(n13735), .C(n13736), .D(\end_x_8__N_295[3] ), 
         .Z(n11355)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_4_lut.init = 16'h3230;
    LUT4 i6011_3_lut (.A(n429[2]), .B(n429[4]), .C(n429[3]), .Z(n6858)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i6011_3_lut.init = 16'hcece;
    LUT4 i7643_2_lut_rep_175_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13722)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7643_2_lut_rep_175_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_2_lut_rep_356 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n13903)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_2_lut_rep_356.init = 16'h4444;
    LUT4 i11909_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1084), .C(n1076), 
         .D(rom_addr[4]), .Z(n1085)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11909_3_lut_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_180_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n13727)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_180_3_lut_3_lut.init = 16'h4040;
    LUT4 i2_3_lut_adj_29 (.A(n429[3]), .B(n429[1]), .C(n429[2]), .Z(n11291)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_29.init = 16'hfefe;
    LUT4 n1834_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13928)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_then_4_lut.init = 16'h1044;
    LUT4 i11581_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13802), .C(rom_addr[4]), 
         .D(n15116), .Z(n12195)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11581_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7756_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n13889), .D(rom_addr[4]), .Z(n2172)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7756_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_252_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13799)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_252_3_lut_3_lut.init = 16'h4040;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(n13856), 
         .D(rom_addr[5]), .Z(n6233)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_169_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13716)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_169_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i5844_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n6682)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5844_3_lut_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 i7776_2_lut_rep_134_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13856), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13681)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7776_2_lut_rep_134_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i7746_2_lut_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n348)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7746_2_lut_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i5829_2_lut_rep_214_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13761)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5829_2_lut_rep_214_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13701)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_154_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 n1969_bdd_4_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13253)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1969_bdd_4_lut_3_lut_4_lut.init = 16'h400f;
    LUT4 i10867_2_lut_rep_136_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13683)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i10867_2_lut_rep_136_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 n1834_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13927)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_else_4_lut.init = 16'h08f4;
    LUT4 i76_2_lut_rep_324 (.A(\state[2] ), .B(the1_wr_done), .Z(n13871)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i76_2_lut_rep_324.init = 16'h8888;
    LUT4 i1_2_lut_adj_30 (.A(\state[2] ), .B(\state[1] ), .Z(sys_clk_50MHz_enable_69)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'heeee;
    LUT4 i10845_2_lut_3_lut (.A(\state[2] ), .B(the1_wr_done), .C(cnt_wr_color_data[0]), 
         .Z(n11455)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i10845_2_lut_3_lut.init = 16'h8080;
    LUT4 i12050_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723_adj_773), 
         .Z(n6732)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12050_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11401_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n11763), .Z(n12015)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11401_4_lut_4_lut.init = 16'h7340;
    LUT4 i43_4_lut_4_lut (.A(rom_addr[7]), .B(n4_adj_774), .C(n11540), 
         .D(n14_adj_775), .Z(n21)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i43_4_lut_4_lut.init = 16'hae04;
    LUT4 i1_2_lut_rep_173_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13720)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_173_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i2205_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6089), 
         .D(n13706), .Z(n3013)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2205_4_lut_4_lut.init = 16'h7f5d;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n13829), .B(n5954), .C(\state[1] ), 
         .D(n13690), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    FD1S3JX state_FSM_i3 (.D(n2899), .CK(sys_clk_50MHz), .PD(\state[3] ), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 i11156_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n10451), 
         .D(n127), .Z(n11770)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11156_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11055_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n13715), 
         .D(n13796), .Z(n11669)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11055_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7713_2_lut_rep_139_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13686)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7713_2_lut_rep_139_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i7623_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n13674), 
         .D(n12081), .Z(n4094_adj_776)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7623_2_lut_4_lut_4_lut.init = 16'h5140;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_71), .CD(n6874), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    LUT4 i7995_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n15117), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7995_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_234_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13781)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_234_3_lut_3_lut.init = 16'h1010;
    FD1S3AX state_FSM_i2 (.D(n2902), .CK(sys_clk_50MHz), .Q(\state[1] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2904), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i6025_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1324), .D(cnt_rom_prepare[1]), .Z(n6874)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6025_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n13829), .B(n5929), .C(\state[1] ), 
         .D(n13690), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13711)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_164_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i7408_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12031), .Z(n4094_adj_777)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7408_4_lut_4_lut.init = 16'h5140;
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n15117(n15117), .n13772(n13772), 
            .n603(n603), .n3013(n3013), .n317(n317), .n13929(n13929), 
            .n2141(n2141), .n2172(n2172), .n1820(n1820), .n13342(n13342), 
            .n12081(n12081), .n13911(n13911), .n13733(n13733), .n4094(n4094_adj_776), 
            .rom_q({rom_q}), .n4094_adj_1(n4094), .n4094_adj_2(n4094_adj_777), 
            .n11770(n11770), .n13715(n13715), .n11793(n11793), .n13804(n13804), 
            .n12015(n12015), .n12031(n12031), .n11489(n11489), .n15111(n15111), 
            .n1676(n1676), .n684(n684), .n301(n301), .n1529(n1529), 
            .n13856(n13856), .n348(n348), .n15110(n15110), .n6732(n6732), 
            .n15116(n15116), .n13761(n13761), .n1228(n1228), .n5905(n5905), 
            .n308(n308), .n11763(n11763), .n21(n21), .n10451(n10451), 
            .n13802(n13802), .n13691(n13691), .n13781(n13781), .n13786(n13786), 
            .n1534(n1534), .n13684(n13684), .n10383(n10383), .n13708(n13708), 
            .n13722(n13722), .n13724(n13724), .n11344(n11344), .n13720(n13720), 
            .n13799(n13799), .n6089(n6089), .n13817(n13817), .n13711(n13711), 
            .n13894(n13894), .n14(n14_adj_775), .n13771(n13771), .n13889(n13889), 
            .n1405(n1405), .n13253(n13253), .n236(n236), .n11361(n11361), 
            .n1661(n1661), .n2025(n2025), .n13702(n13702), .n5812(n5812), 
            .n13725(n13725), .n3069(n3069), .n13683(n13683), .n13701(n13701), 
            .n12195(n12195), .n13721(n13721), .n270(n270), .n1085(n1085), 
            .n13816(n13816), .n6233(n6233), .n11434(n11434), .n1851(n1851), 
            .n11540(n11540), .n4(n4_adj_774), .n94(n94), .n126(n126), 
            .n127(n127), .n2428(n2428), .n13704(n13704), .n6048(n6048), 
            .n892(n892), .n13727(n13727), .n13923(n13923), .n10181(n10181), 
            .n13716(n13716), .n859(n859), .n13674(n13674), .n6316(n6316), 
            .n13686(n13686), .n1084(n1084), .n4_adj_3(n4), .n13818(n13818), 
            .n1436(n1436), .n13706(n13706), .n125(n125), .n1172(n1172), 
            .n13796(n13796), .n5(n5), .n1723(n1723), .n1755(n1755), 
            .n12153(n12153), .n13903(n13903), .n1723_adj_4(n1723_adj_773), 
            .n94_adj_5(n94_adj_771), .n2652(n2652), .n12181(n12181), .n6(n6_adj_772), 
            .n14464(n14464), .n1076(n1076), .n12219(n12219), .n6682(n6682), 
            .n11669(n11669), .n13700(n13700)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n15117, n13772, n603, n3013, n317, n13929, 
            n2141, n2172, n1820, n13342, n12081, n13911, n13733, 
            n4094, rom_q, n4094_adj_1, n4094_adj_2, n11770, n13715, 
            n11793, n13804, n12015, n12031, n11489, n15111, n1676, 
            n684, n301, n1529, n13856, n348, n15110, n6732, n15116, 
            n13761, n1228, n5905, n308, n11763, n21, n10451, n13802, 
            n13691, n13781, n13786, n1534, n13684, n10383, n13708, 
            n13722, n13724, n11344, n13720, n13799, n6089, n13817, 
            n13711, n13894, n14, n13771, n13889, n1405, n13253, 
            n236, n11361, n1661, n2025, n13702, n5812, n13725, 
            n3069, n13683, n13701, n12195, n13721, n270, n1085, 
            n13816, n6233, n11434, n1851, n11540, n4, n94, n126, 
            n127, n2428, n13704, n6048, n892, n13727, n13923, 
            n10181, n13716, n859, n13674, n6316, n13686, n1084, 
            n4_adj_3, n13818, n1436, n13706, n125, n1172, n13796, 
            n5, n1723, n1755, n12153, n13903, n1723_adj_4, n94_adj_5, 
            n2652, n12181, n6, n14464, n1076, n12219, n6682, n11669, 
            n13700) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n15117;
    output n13772;
    output n603;
    input n3013;
    input n317;
    input n13929;
    input n2141;
    input n2172;
    input n1820;
    input n13342;
    output n12081;
    output n13911;
    output n13733;
    input n4094;
    output [7:0]rom_q;
    input n4094_adj_1;
    input n4094_adj_2;
    input n11770;
    input n13715;
    input n11793;
    input n13804;
    input n12015;
    output n12031;
    output n11489;
    output n15111;
    output n1676;
    input n684;
    output n301;
    output n1529;
    output n13856;
    input n348;
    output n15110;
    input n6732;
    output n15116;
    input n13761;
    input n1228;
    output n5905;
    output n308;
    output n11763;
    input n21;
    output n10451;
    output n13802;
    output n13691;
    input n13781;
    input n13786;
    input n1534;
    input n13684;
    output n10383;
    input n13708;
    input n13722;
    input n13724;
    output n11344;
    input n13720;
    input n13799;
    output n6089;
    output n13817;
    input n13711;
    output n13894;
    output n14;
    output n13771;
    output n13889;
    output n1405;
    input n13253;
    input n236;
    output n11361;
    output n1661;
    output n2025;
    output n13702;
    input n5812;
    output n13725;
    output n3069;
    input n13683;
    input n13701;
    input n12195;
    output n13721;
    output n270;
    input n1085;
    output n13816;
    input n6233;
    output n11434;
    input n1851;
    output n11540;
    output n4;
    input n94;
    input n126;
    output n127;
    input n2428;
    output n13704;
    input n6048;
    input n892;
    input n13727;
    input n13923;
    input n10181;
    input n13716;
    input n859;
    output n13674;
    output n6316;
    input n13686;
    output n1084;
    input n4_adj_3;
    input n13818;
    input n1436;
    output n13706;
    output n125;
    output n1172;
    output n13796;
    output n5;
    input n1723;
    input n1755;
    input n12153;
    input n13903;
    output n1723_adj_4;
    input n94_adj_5;
    input n2652;
    input n12181;
    output n6;
    output n14464;
    output n1076;
    input n12219;
    input n6682;
    input n11669;
    input n13700;
    
    
    wire n1529_c, n716, n2490, n12883, n12880, n12884, n797, n828, 
        n11880, n11985, n11986, n11992, n11942, n11943, n11955, 
        n428, n13948, n11826, n1117, n1148, n1149, n11728, n11729, 
        n11730, n11938, n11939, n11953, n1451, n13930, n13931, 
        n13932, n205, n220, n11825, n11936, n11937, n11952, n11704, 
        n11705, n11706, n11954, n11961, n14013, n14014, n14015, 
        n13750, n541, n11707, n11708, n11709, n1676_c, n604, n13372, 
        n2045, n11713, n11714, n11715, n13371, n13370, n286, n11836, 
        n13765, n4510, n11820, n653, n668, n11886, n668_adj_542, 
        n12877, n12879, n11716, n11717, n11718, n14010, n14011, 
        n14012, n11670, n13836, n2684, n3069_c, n11722, n11723, 
        n11724, n158, n189, n190, n12036, n12037, n12038, n15127, 
        n15128, n15129, n14007, n14008, n14009, n13753, n6695, 
        n13723, n13881, n11817, n12679, n12680, n13348, n13347, 
        n13349, n13996, n12057, n12058, n12059, n13925, n13978, 
        n11815, n14004, n14005, n14006, n2173, n11731, n11732, 
        n11733, n1851_c, n1852, n1483, n12094, n12064, n12065, 
        n12066, n13835, n1211, n13345, n13346, n13343, n13340, 
        n13344, n2009, n13924, n13926, n13341, n15124, n15125, 
        n15126, n1514, n1530, n13896, n1531, n13738, n12079, n12080, 
        n11740, n11741, n11742, n13744, n13689, n11375, n12174, 
        n11743, n11744, n11745, n1946, n1947, n924, n11358, n956, 
        n11749, n11750, n11751, n11752, n11753, n11754, n827, 
        n828_adj_543, n11611, n829, n1707, n1723_c, n5264, n13339, 
        n12046, n12047, n12050, n14001, n14002, n14003, n11758, 
        n11759, n11760, n13692, n13847, n1466, n13311, n1628, 
        n364, n380, n381, n13998, n13999, n14000, n13878, n1549, 
        n1565, n11703, n6689, n318, n11764, n11765, n11766, n61, 
        n62, n63, n15121, n15122, n15123, n12012, n1228_c, n1243, 
        n11799, n11767, n11768, n11769, n12019, n13719, n1789, 
        n11789, n12016, n2268, n2299, n2300, n11933, n11934, n11935, 
        n11964, n11965, n11966, n11995, n11996, n11997, n13807, 
        n924_adj_545, n13916, n11774, n11775, n11776, n1739, n1786, 
        n1787, n2047, n1514_adj_547, n1530_adj_548, n1531_adj_549, 
        n11929, n11930, n11931, n11932, n13995, n13997, n1181, 
        n1212, n1213, n11962, n11963, n11777, n11778, n11779, 
        n11993, n11994, n12008, n12009, n12011, n859_c, n860, 
        n11642, n892_c, n11998, n11999, n12006, n11771, n12028, 
        n12098, n12003, n11772, n11773, n11904, n12025, n12002, 
        n11780, n11781, n11782, n11921, n11922, n1309, n11923, 
        n11924, n11925, n11926, n11927, n11928, n812, n828_adj_550, 
        n829_adj_551, n732, n13866, n764, n11960, n61_adj_552, n62_adj_553, 
        n63_adj_554, n11790, n11791, n11792, n11794, n11795, n11991, 
        n12007, n12010, n13789, n2620, n13252, n12013, n12014, 
        n12017, n12018, n11800, n11801, n12051, n12052, n11808, 
        n11809, n11810, n11811, n11812, n11813, n1835, n1851_adj_555, 
        n3069_adj_556, n3070, n3069_adj_557, n3070_adj_558, n13768, 
        n11818, n11819, n3070_adj_559, n11821, n11822, n6718, n1723_adj_560, 
        n6719, n11823, n11824, n11827, n11944, n11945, n11956, 
        n11950, n11951, n11959, n11828, n11830, n11831, n11832, 
        n12004, n12005, n766, n1021, n12029, n12030, n12043, n12044, 
        n12045, n349, n380_adj_561, n11837, n364_adj_562, n379, 
        n11865, n12140, n12141, n2044, n255, n510, n860_adj_563, 
        n893, n11592, n1021_adj_564, n270_c, n1691, n1243_adj_565, 
        n13676, n12887, n2522, n12888, n8848, n13312, n13310, 
        n13313, n61_adj_567, n699, n11887, n11902, n11903, n4_c, 
        n11701, n381_adj_568, n11907, n526, n908, n46, n731, n557, 
        n476, n891, n491, n506, n507, n2444, n2396, n971, n475, 
        n2109, n506_adj_570, n11737, n11738, n11739, n747, n1468, 
        n11916, n1244, n1275, n1276, n2108, n1913, n1724, n11918, 
        n1149_adj_571, n2298, n1643, n2426, n1466_adj_572, n15113, 
        n2523, n1597, n11948, n1915, n11940, n11941, n1595, n1017, 
        n221, n13780, n2554, n526_adj_573, n526_adj_574, n731_adj_575, 
        n13821, n1979, n12191, n11982, n11967, n11968, n11983, 
        n428_adj_576, n13513, n1084_c, n13187, n13759, n6090, n3078, 
        n11969, n11970, n11984, n5367, n5798, n333, n11864, n13714, 
        n11979, n11980, n11989, n3343, n13717, n11710, n3949, 
        n12249, n11860, n11873, n12000, n11882, n11895, n12001, 
        n2283, n1676_adj_577, n12034, n12035, n13938, n13992, n13993, 
        n13994, n1931, n635, n1707_adj_578, n11664, n13237, n1451_adj_579, 
        n1467, n13741, n2205, n2365, n2428_c, n12048, n13859, 
        n379_adj_580, n2444_adj_581, n5883, n13777, n11686, n1564, 
        n364_adj_582, n2283_adj_583, n13915, n1084_adj_584, n13989, 
        n13990, n13991, n12055, n12056, n1038, n1053, n124, n12060, 
        n12061, n12077, n12078, n1002, n13212, n13907, n11747, 
        n12113, n12114, n766_adj_585, n1770, n12138, n12139, n2077, 
        n2040, n12900, n13309, n2283_adj_586, n2298_adj_587, n11678, 
        n1196, n13840, n11342, n2475, n1596, n1243_adj_588, n13712, 
        n4949, n1549_adj_589, n13458, n11981, n11990, n460, n1210, 
        n13460, n12915, n2395, n2348, n13705, n604_adj_591, n2588, 
        n12250, n11796, n12735, n12747, n12988, n6703, n6684, 
        n13730, n890, n14020, n14019, n908_adj_592, n12237, n301_adj_593, 
        n12220, n13914, n684_adj_594, n13904, n12235, n13795, n270_adj_595, 
        n11761, n11762, n24, n11614, n220_adj_596, n526_adj_597, 
        n11787, n11788, n13905, n604_adj_598, n12231, n428_adj_599, 
        n12229, n13937, n205_adj_600, n12228, n428_adj_601, n443, 
        n13767, n2205_adj_602, n2237, n13820, n12225, n12904, n11978, 
        n11988, n12223, n12222, n11802, n1755_c, n1403, n11711, 
        n11712, n13824, n653_adj_603, n653_adj_604, n11867, n890_adj_605, 
        n12147, n13787, n2427, n11687, n2444_adj_606, n2459, n12216, 
        n2283_adj_607, n12217, n13918, n620, n11845, n11846, n11847, 
        n12198, n11689, n2492, n13876, n2428_adj_608, n2492_adj_609, 
        n2555, n14458, n620_adj_610, n635_adj_611, n13788, n11858, 
        n11859, n11871, n11872, n1692, n11881, n11897, n12210, 
        n2428_adj_612, n5801, n13966, n14459, n14461, n11893, n11894, 
        n2110, n2078, n14462, n10381, n10382, n12202, n11674, 
        n11675, n11676, n15115, n2025_c, n13793, n1038_adj_613, 
        n1054, n13797, n1435, n11734, n1882, n1883, n190_adj_614, 
        n253, n11906, n11975, n11976, n11987, n1883_adj_615, n1786_adj_616, 
        n13941, n1914, n11784, n11910, n2009_adj_617, n12189, n12110, 
        n12111, n12743, n12166, n1676_adj_618, n1692_adj_619, n12136, 
        n13794, n1212_adj_620, n13812, n1597_adj_621, n11911, n2538, 
        n13100, n1658, n13098, n1914_adj_622, n13979, n13980, n13981, 
        n13748, n12734, n12160, n11914, n12239, n14021, n12175, 
        n2009_adj_623, n2010, n1597_adj_624, n1660, n11917, n1820_adj_625, 
        n1530_adj_626, n11736, n1915_adj_627, n11919, n13800, n1692_adj_628, 
        n1466_adj_629, n11677, n11672, n1947_adj_630, n12103, n12104, 
        n12744, n11920, n190_adj_631, n11757, n1787_adj_632, n13976, 
        n13977, n2009_adj_633, n12154, n2010_adj_634, n2300_adj_635, 
        n13814, n1565_adj_636, n11803, n13988, n12089, n12090, n12746, 
        n445, n508, n1435_adj_637, n1436_c, n5137, n12196, n13940, 
        n4_adj_638, n13677, n12885, n11804, n1404, n11946, n11947, 
        n12240, n1851_adj_639, n13917, n13919, n13398, n2589, n15107, 
        n13783, n11853, n13695, n637, n2522_adj_640, n13169, n11879, 
        n11885, n11971, n12180, n15112, n12148, n12151, n11974, 
        n12161, n1213_adj_641, n1276_adj_642, n189_adj_643, n2332, 
        n13239, n13815, n78, n11698, n4772, n12150, n4763, n12149, 
        n1308, n1309_adj_644, n12167, n12182, n13774, n12146, n12226, 
        n13757, n13055, n2009_adj_645, n1660_adj_646, n12238, n13675, 
        n2333, n13933, n11848, n1914_adj_647, n12137, n13697, n1724_adj_648, 
        n2396_adj_649, n12234, n2396_adj_650, n2428_adj_651, n11892, 
        n1785, n1786_adj_652, n12126, n1691_adj_653, n1692_adj_654, 
        n1659, n1852_adj_655, n1915_adj_656, n13571, n12127, n1435_adj_657, 
        n1659_adj_658, n954, n13893, n604_adj_659, n1530_adj_660, 
        n13850, n2108_adj_661, n12023, n12024, n1499, n1085_c, n1054_adj_662, 
        n13946, n2267, n12026, n12027, n13945, n13682, n11359, 
        n2237_adj_663, n2300_adj_664, n12033, n2365_adj_665, n1565_adj_666, 
        n3243, n12100, n12095, n13843, n2040_adj_667, n12155, n12093, 
        n13841, n1867, n1883_adj_668, n12190, n13863, n572, n13827, 
        n986, n2492_adj_669, n6662, n589, n604_adj_670, n2491, n2411, 
        n2427_adj_671, n397, n6680, n15118, n13819, n13883, n1676_adj_672, 
        n2364, n1483_adj_673, n13950, n11673, n11679, n12040, n11682, 
        n12041, n13872, n11699, n12682, n12683, n11688, n11691, 
        n12042, n1101, n1212_adj_674, n2555_adj_675, n12049, n2317, 
        n15119, n15120, n12053, n11841, n13936, n2573, n2492_adj_676, 
        n2555_adj_677, n13949, n1243_adj_678, n1244_adj_679, n13901, 
        n13953, n1883_adj_680, n542, n1117_adj_681, n13952, n2110_adj_682, 
        n2173_adj_683, n716_adj_684, n11896, n11891, n11890, n11889, 
        n13870, n2573_adj_685, n6659, n11883, n11746, n11748, n13959, 
        n13255, n13256, n557_adj_686, n11878, n2492_adj_687, n2555_adj_688, 
        n12063, n13958, n11877, n1946_adj_689, n12069, n12070, n12076, 
        n12071, n12072, n1341, n10092, n1069, n1084_adj_690, n12073, 
        n12074, n316, n11862, n285, n11861, n11857, n13254, n12085, 
        n12086, n11856, n13970, n13971, n12087, n12088, n13779, 
        n11854, n251, n11852, n12096, n12097, n11851, n13962, 
        n11843, n12099, n699_adj_691, n12101, n12102, n11839, n12106, 
        n12107, n11333, n12108, n12109, n574, n11372, n11481, 
        n6748, n13171, n13961, n13240, n13241, n13806, n11786, 
        n13740, n12118, n12119, n12121, n11785, n12123, n12124, 
        n12125, n12130, n13967, n13968, n13969, n1786_adj_693, n13215, 
        n13898, n13209, n2621, n12128, n12129, n12131, n1038_adj_695, 
        n13728, n13219, n13965, n11957, n13102, n11958, n13964, 
        n1789_adj_696, n589_adj_697, n2110_adj_698, n13238, n508_adj_699, 
        n11908, n13960, n11909, n475_adj_700, n6723, n2380, n13696, 
        n12664, n13056, n12156, n12157, n12158, n13188, n13189, 
        n13867, n12224, n12227, n12169, n12230, n12233, n12171, 
        n2173_adj_701, n12032, n1403_adj_702, n12152, n684_adj_703, 
        n11868, n11844, n11850, n1499_adj_704, n2236, n11700, n11905, 
        n2491_adj_707, n2685, n13220, n109, n13760, n6859, n2237_adj_708, 
        n13939, n1867_adj_709, n1883_adj_710, n124_adj_711, n14018, 
        n1596_adj_712, n13947, n11888, n11898, n11972, n1117_adj_713, 
        n13552, n8405, n11973, n5992, n2364_adj_714, n13963, n12221, 
        n380_adj_715, n12168, n3997, n11618, n3520, n3529, n13900, 
        n13515, n13773, n5449, n1467_adj_716, n11783, n444, n445_adj_718, 
        n11876, n13213, n13211, n13214, n13547, n364_adj_719, n380_adj_720, 
        n13790, n220_adj_721, n13546, n13853, n2429, n2237_adj_724, 
        n2300_adj_725, n2301, n11814, n11816, n13920, n12092, n13550, 
        n844, n13766, n6459, n12241, n1978, n11829, n12232, n444_adj_726, 
        n11838, n11842, n11671, n1020, n13734, n4_adj_728, n11849, 
        n1086, n11855, n2299_adj_729, n2141_adj_730, n12236, n12172, 
        n13954, n126_adj_731, n12143, n13776, n11863, n11866, n13942, 
        n1978_adj_732, n11869, n11870, n2173_adj_733, n10112, n891_adj_734, 
        n11884, n12890, n13058, n12354, n13951, n46_adj_735, n62_adj_736, 
        n12749, n13673, n13190, n8878, n13698, n3135, n3136, n1533, 
        n13462, n1278, n4017, n13173, n13755, n13742, n30, n13172, 
        n13170, n2685_adj_738, n2109_adj_739, n13838, n731_adj_740, 
        n13685, n2268_adj_741, n4316, n13743, n2554_adj_742, n4780, 
        n12159, n2523_adj_743, n13052, n1565_adj_745, n12733, n2522_adj_746, 
        n2523_adj_747, n1596_adj_749, n3070_adj_750, n1898, n1914_adj_751, 
        n11702, n2460, n15114, n12204, n2554_adj_752, n13699, n1467_adj_754, 
        n13808, n13053, n476_adj_755, n557_adj_756, n12201, n13101, 
        n13099, n11756, n11755, n11343, n1628_adj_757, n14017, n13845, 
        n13890, n1403_adj_760, n13057, n13054, n11668, n14016, n796, 
        n12914, n4733, n4_adj_761, n1228_adj_763, n13549, n11374, 
        n2621_adj_765, n12165, n13782, n13935, n12748, n12745, n12665, 
        n4837, n6661, n1292, n12989, n13569, n13680, n13570, n12205, 
        n12902, n6656, n13551, n13548, n1275_adj_766, n13934, n14463, 
        n14460, n3070_adj_767, n2685_adj_768, n13516, n13514, n2298_adj_769, 
        n11690, n13461, n13459, n12903, n12901, n12889, n12886;
    
    LUT4 i7418_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_c)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7418_4_lut_4_lut.init = 16'hc700;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 i5860_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5860_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i12456 (.BLUT(n12883), .ALUT(n12880), .C0(rom_addr[6]), .Z(n12884));
    PFUMX i11266 (.BLUT(n797), .ALUT(n828), .C0(rom_addr[5]), .Z(n11880));
    LUT4 i12114_3_lut (.A(n11985), .B(n11986), .C(rom_addr[8]), .Z(n11992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12114_3_lut.init = 16'hcaca;
    LUT4 i11341_3_lut (.A(n11942), .B(n11943), .C(rom_addr[7]), .Z(n11955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11341_3_lut.init = 16'hcaca;
    LUT4 i11212_3_lut (.A(n428), .B(n13948), .C(rom_addr[4]), .Z(n11826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11212_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11116 (.BLUT(n11728), .ALUT(n11729), .C0(rom_addr[4]), .Z(n11730));
    LUT4 i11339_3_lut (.A(n11938), .B(n11939), .C(rom_addr[7]), .Z(n11953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11339_3_lut.init = 16'hcaca;
    LUT4 i5879_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5879_4_lut_4_lut.init = 16'h8505;
    PFUMX i13052 (.BLUT(n13930), .ALUT(n13931), .C0(rom_addr[3]), .Z(n13932));
    LUT4 i11211_3_lut (.A(n205), .B(n220), .C(rom_addr[4]), .Z(n11825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11211_3_lut.init = 16'hcaca;
    LUT4 i11338_3_lut (.A(n11936), .B(n11937), .C(rom_addr[7]), .Z(n11952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11338_3_lut.init = 16'hcaca;
    PFUMX i11092 (.BLUT(n11704), .ALUT(n11705), .C0(rom_addr[5]), .Z(n11706));
    LUT4 i11347_3_lut (.A(n11954), .B(n11955), .C(rom_addr[8]), .Z(n11961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11347_3_lut.init = 16'hcaca;
    PFUMX i13107 (.BLUT(n14013), .ALUT(n14014), .C0(rom_addr[2]), .Z(n14015));
    LUT4 i7438_2_lut_rep_203_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13750)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7438_2_lut_rep_203_3_lut.init = 16'hf8f8;
    LUT4 i7481_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam i7481_2_lut_4_lut_4_lut.init = 16'hc020;
    L6MUX21 i11095 (.D0(n11707), .D1(n11708), .SD(rom_addr[5]), .Z(n11709));
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13772), .Z(n1676_c)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 i7401_4_lut (.A(rom_addr[0]), .B(n3013), .C(n13372), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7401_4_lut.init = 16'h0a22;
    PFUMX i11101 (.BLUT(n11713), .ALUT(n11714), .C0(rom_addr[5]), .Z(n11715));
    PFUMX i12836 (.BLUT(n13371), .ALUT(n13370), .C0(rom_addr[6]), .Z(n13372));
    PFUMX i11222 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n11836));
    LUT4 i11206_4_lut (.A(n13765), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4510), 
         .Z(n11820)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11206_4_lut.init = 16'h0aca;
    PFUMX i11272 (.BLUT(n653), .ALUT(n668), .C0(rom_addr[4]), .Z(n11886));
    PFUMX i12452 (.BLUT(n668_adj_542), .ALUT(n12877), .C0(rom_addr[4]), 
          .Z(n12879));
    L6MUX21 i11104 (.D0(n11716), .D1(n11717), .SD(rom_addr[5]), .Z(n11718));
    PFUMX i13105 (.BLUT(n14010), .ALUT(n14011), .C0(rom_addr[0]), .Z(n14012));
    LUT4 i7826_4_lut (.A(n11670), .B(n13836), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7826_4_lut.init = 16'hc088;
    PFUMX i11110 (.BLUT(n11722), .ALUT(n11723), .C0(rom_addr[5]), .Z(n11724));
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11424_3_lut (.A(n12036), .B(n12037), .C(rom_addr[8]), .Z(n12038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11424_3_lut.init = 16'hcaca;
    PFUMX i13789 (.BLUT(n15127), .ALUT(n15128), .C0(rom_addr[1]), .Z(n15129));
    PFUMX i13103 (.BLUT(n14007), .ALUT(n14008), .C0(rom_addr[3]), .Z(n14009));
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_206_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13753)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_206_3_lut.init = 16'h7c7c;
    LUT4 i11203_4_lut (.A(n6695), .B(n13723), .C(rom_addr[4]), .D(n13881), 
         .Z(n11817)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11203_4_lut.init = 16'hcac0;
    PFUMX i12342 (.BLUT(n12679), .ALUT(n13765), .C0(rom_addr[4]), .Z(n12680));
    PFUMX i12814 (.BLUT(n13348), .ALUT(n13347), .C0(rom_addr[6]), .Z(n13349));
    LUT4 i11121_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13996)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11121_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i11445_3_lut (.A(n12057), .B(n12058), .C(rom_addr[8]), .Z(n12059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11445_3_lut.init = 16'hcaca;
    LUT4 n2573_bdd_4_lut_12681_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13925)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam n2573_bdd_4_lut_12681_then_4_lut.init = 16'h04c1;
    LUT4 i11884_3_lut (.A(n13929), .B(n13978), .C(rom_addr[5]), .Z(n11815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11884_3_lut.init = 16'hcaca;
    PFUMX i13101 (.BLUT(n14004), .ALUT(n14005), .C0(rom_addr[0]), .Z(n14006));
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11119 (.BLUT(n11731), .ALUT(n11732), .C0(rom_addr[5]), .Z(n11733));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851_c), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11480_3_lut_4_lut (.A(n13772), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n12094)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11480_3_lut_4_lut.init = 16'h9f90;
    LUT4 i11452_3_lut (.A(n12064), .B(n12065), .C(rom_addr[8]), .Z(n12066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11452_3_lut.init = 16'hcaca;
    LUT4 i12244_2_lut_rep_288 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13835)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12244_2_lut_rep_288.init = 16'h1111;
    PFUMX i12812 (.BLUT(n1211), .ALUT(n13345), .C0(rom_addr[4]), .Z(n13346));
    L6MUX21 i12810 (.D0(n13343), .D1(n13340), .SD(rom_addr[5]), .Z(n13344));
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    PFUMX i13048 (.BLUT(n13924), .ALUT(n13925), .C0(rom_addr[0]), .Z(n13926));
    PFUMX i12808 (.BLUT(n13342), .ALUT(n13341), .C0(rom_addr[6]), .Z(n13343));
    PFUMX i13787 (.BLUT(n15124), .ALUT(n15125), .C0(rom_addr[0]), .Z(n15126));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n13896), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i1_2_lut_rep_191_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13738)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_191_3_lut.init = 16'hefef;
    LUT4 i11467_3_lut (.A(n12079), .B(n12080), .C(rom_addr[8]), .Z(n12081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11467_3_lut.init = 16'hcaca;
    PFUMX i11128 (.BLUT(n11740), .ALUT(n11741), .C0(rom_addr[5]), .Z(n11742));
    LUT4 i7722_2_lut_rep_197_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13744)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7722_2_lut_rep_197_3_lut_4_lut.init = 16'h0880;
    LUT4 i12036_3_lut_4_lut (.A(n13689), .B(n13896), .C(rom_addr[6]), 
         .D(n11375), .Z(n12174)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12036_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11131 (.BLUT(n11743), .ALUT(n11744), .C0(rom_addr[5]), .Z(n11745));
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n13772), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924), .ALUT(n11358), .C0(rom_addr[5]), 
          .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11137 (.BLUT(n11749), .ALUT(n11750), .C0(rom_addr[5]), .Z(n11751));
    PFUMX i11140 (.BLUT(n11752), .ALUT(n11753), .C0(rom_addr[5]), .Z(n11754));
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828_adj_543), 
          .C0(n11611), .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11597_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14013)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i11597_3_lut_else_4_lut.init = 16'h0103;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n13772), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707), .Z(n1723_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12806 (.BLUT(n5264), .ALUT(n13339), .C0(rom_addr[6]), .Z(n13340));
    LUT4 i12105_3_lut (.A(n12046), .B(n12047), .C(rom_addr[7]), .Z(n12050)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12105_3_lut.init = 16'hcaca;
    PFUMX i13099 (.BLUT(n14001), .ALUT(n14002), .C0(rom_addr[0]), .Z(n14003));
    PFUMX i11146 (.BLUT(n11758), .ALUT(n11759), .C0(rom_addr[5]), .Z(n11760));
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n13692), .B(n13847), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    LUT4 n1340_bdd_3_lut_12878_4_lut (.A(n13911), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13733), .Z(n13311)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1340_bdd_3_lut_12878_4_lut.init = 16'h8f80;
    LUT4 i7710_2_lut_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n1628)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7710_2_lut_3_lut_3_lut_3_lut_4_lut.init = 16'h0008;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364), .ALUT(n380), .C0(n13896), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13097 (.BLUT(n13998), .ALUT(n13999), .C0(rom_addr[0]), .Z(n14000));
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n13878), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n11703), .ALUT(n6689), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11152 (.BLUT(n11764), .ALUT(n11765), .C0(rom_addr[5]), .Z(n11766));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n11611), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13785 (.BLUT(n15121), .ALUT(n15122), .C0(rom_addr[3]), .Z(n15123));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12012), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11712_3_lut (.A(n1228_c), .B(n1243), .C(rom_addr[4]), .Z(n11799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11712_3_lut.init = 16'hcaca;
    PFUMX i11155 (.BLUT(n11767), .ALUT(n11768), .C0(rom_addr[5]), .Z(n11769));
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12019), .ALUT(n4094_adj_1), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i1_2_lut_rep_172_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13719)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_172_3_lut_4_lut.init = 16'h8000;
    LUT4 i11402_3_lut (.A(n1789), .B(n11789), .C(rom_addr[8]), .Z(n12016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11402_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11321 (.D0(n11933), .D1(n11934), .SD(rom_addr[10]), .Z(n11935));
    L6MUX21 i11352 (.D0(n11964), .D1(n11965), .SD(rom_addr[10]), .Z(n11966));
    L6MUX21 i11383 (.D0(n11995), .D1(n11996), .SD(rom_addr[10]), .Z(n11997));
    LUT4 i1_2_lut_rep_260_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .Z(n13807)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_260_2_lut_3_lut.init = 16'h0808;
    LUT4 n924_bdd_3_lut (.A(n924_adj_545), .B(n13916), .C(rom_addr[5]), 
         .Z(n12883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n924_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i11162 (.D0(n11774), .D1(n11775), .SD(rom_addr[10]), .Z(n11776));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786), .C0(rom_addr[5]), 
          .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_547), .ALUT(n1530_adj_548), 
          .C0(n13896), .Z(n1531_adj_549)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11319 (.D0(n11929), .D1(n11930), .SD(rom_addr[9]), .Z(n11933));
    L6MUX21 i11320 (.D0(n11931), .D1(n11932), .SD(rom_addr[9]), .Z(n11934));
    PFUMX i13095 (.BLUT(n13995), .ALUT(n13996), .C0(rom_addr[0]), .Z(n13997));
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11351 (.BLUT(n11962), .ALUT(n11963), .C0(rom_addr[9]), .Z(n11965));
    PFUMX i11165 (.BLUT(n11777), .ALUT(n11778), .C0(rom_addr[5]), .Z(n11779));
    PFUMX i11382 (.BLUT(n11993), .ALUT(n11994), .C0(rom_addr[9]), .Z(n11996));
    L6MUX21 i11397 (.D0(n12008), .D1(n12009), .SD(rom_addr[9]), .Z(n12011));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859_c), .ALUT(n860), .C0(n11642), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12111_3_lut (.A(n11998), .B(n11999), .C(rom_addr[8]), .Z(n12006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12111_3_lut.init = 16'hcaca;
    PFUMX i11160 (.BLUT(n11770), .ALUT(n11771), .C0(rom_addr[9]), .Z(n11774));
    LUT4 i11389_3_lut (.A(n12028), .B(n12098), .C(rom_addr[7]), .Z(n12003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11389_3_lut.init = 16'hcaca;
    PFUMX i11161 (.BLUT(n11772), .ALUT(n11773), .C0(rom_addr[9]), .Z(n11775));
    LUT4 i11388_3_lut (.A(n11904), .B(n12025), .C(rom_addr[7]), .Z(n12002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11388_3_lut.init = 16'hcaca;
    PFUMX i11168 (.BLUT(n11780), .ALUT(n11781), .C0(rom_addr[5]), .Z(n11782));
    PFUMX i11315 (.BLUT(n11921), .ALUT(n11922), .C0(rom_addr[8]), .Z(n11929));
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n13911), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13715), .Z(n1309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11316 (.BLUT(n11923), .ALUT(n11924), .C0(rom_addr[8]), .Z(n11930));
    PFUMX i11317 (.BLUT(n11925), .ALUT(n11926), .C0(rom_addr[8]), .Z(n11931));
    PFUMX i11318 (.BLUT(n11927), .ALUT(n11928), .C0(rom_addr[8]), .Z(n11932));
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_550), 
          .C0(n13896), .Z(n829_adj_551)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n13866), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11350 (.BLUT(n11960), .ALUT(n11961), .C0(rom_addr[9]), .Z(n11964));
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_552), .ALUT(n62_adj_553), 
          .C0(n11611), .Z(n63_adj_554)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11178 (.BLUT(n11790), .ALUT(n11791), .C0(rom_addr[5]), .Z(n11792));
    PFUMX i11181 (.BLUT(n11793), .ALUT(n11794), .C0(rom_addr[5]), .Z(n11795));
    PFUMX i11381 (.BLUT(n11991), .ALUT(n11992), .C0(rom_addr[9]), .Z(n11995));
    PFUMX i11394 (.BLUT(n12002), .ALUT(n12003), .C0(rom_addr[8]), .Z(n12008));
    PFUMX i11396 (.BLUT(n12006), .ALUT(n12007), .C0(rom_addr[9]), .Z(n12010));
    LUT4 n2109_bdd_3_lut_4_lut (.A(n13804), .B(n13789), .C(rom_addr[5]), 
         .D(n2620), .Z(n13252)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2109_bdd_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11403 (.D0(n12013), .D1(n12014), .SD(rom_addr[9]), .Z(n12017));
    PFUMX i11404 (.BLUT(n12015), .ALUT(n12016), .C0(rom_addr[9]), .Z(n12018));
    PFUMX i11187 (.BLUT(n11799), .ALUT(n11800), .C0(rom_addr[5]), .Z(n11801));
    PFUMX i11438 (.BLUT(n12050), .ALUT(n12051), .C0(rom_addr[8]), .Z(n12052));
    PFUMX i11196 (.BLUT(n11808), .ALUT(n11809), .C0(rom_addr[5]), .Z(n11810));
    PFUMX i11199 (.BLUT(n11811), .ALUT(n11812), .C0(rom_addr[5]), .Z(n11813));
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n13878), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_555)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12066), .ALUT(n3069_adj_556), 
          .C0(rom_addr[9]), .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12059), .ALUT(n3069_adj_557), 
          .C0(rom_addr[9]), .Z(n3070_adj_558)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11180_4_lut (.A(n13768), .B(n13881), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n11794)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11180_4_lut.init = 16'hfaca;
    PFUMX i11205 (.BLUT(n11817), .ALUT(n11818), .C0(rom_addr[5]), .Z(n11819));
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12038), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070_adj_559)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11208 (.BLUT(n11820), .ALUT(n11821), .C0(rom_addr[5]), .Z(n11822));
    PFUMX i5881 (.BLUT(n6718), .ALUT(n1723_adj_560), .C0(rom_addr[5]), 
          .Z(n6719));
    PFUMX i11213 (.BLUT(n11823), .ALUT(n11824), .C0(rom_addr[5]), .Z(n11827));
    L6MUX21 i11342 (.D0(n11944), .D1(n11945), .SD(rom_addr[7]), .Z(n11956));
    L6MUX21 i11345 (.D0(n11950), .D1(n11951), .SD(rom_addr[7]), .Z(n11959));
    PFUMX i11214 (.BLUT(n11825), .ALUT(n11826), .C0(rom_addr[5]), .Z(n11828));
    PFUMX i11218 (.BLUT(n11830), .ALUT(n11831), .C0(rom_addr[5]), .Z(n11832));
    PFUMX i11395 (.BLUT(n12004), .ALUT(n12005), .C0(rom_addr[8]), .Z(n12009));
    PFUMX i11400 (.BLUT(n766), .ALUT(n1021), .C0(rom_addr[8]), .Z(n12014));
    PFUMX i11417 (.BLUT(n12029), .ALUT(n12030), .C0(rom_addr[8]), .Z(n12031));
    PFUMX i11431 (.BLUT(n12043), .ALUT(n12044), .C0(rom_addr[8]), .Z(n12045));
    PFUMX i11223 (.BLUT(n349), .ALUT(n380_adj_561), .C0(rom_addr[5]), 
          .Z(n11837));
    PFUMX i11251 (.BLUT(n364_adj_562), .ALUT(n379), .C0(rom_addr[4]), 
          .Z(n11865));
    L6MUX21 i11528 (.D0(n12140), .D1(n12141), .SD(rom_addr[7]), .Z(n2044));
    PFUMX i11399 (.BLUT(n255), .ALUT(n510), .C0(rom_addr[8]), .Z(n12013));
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_563), .ALUT(n893), 
          .C0(n11592), .Z(n1021_adj_564)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i10870_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n270_c)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10870_3_lut_3_lut_4_lut_4_lut.init = 16'h04b0;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1691)) /* synthesis lut_function=(A (B (D))+!A (B (C (D))+!B !(D))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hc811;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n11489)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_565)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 n1251_bdd_4_lut (.A(n13676), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n15111), .Z(n12887)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut.init = 16'hb888;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 n1251_bdd_3_lut_12571_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12888)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1251_bdd_3_lut_12571_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 i5820_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8848)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5820_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    L6MUX21 i12781 (.D0(n13312), .D1(n13310), .SD(rom_addr[6]), .Z(n13313));
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61_adj_567)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut_4_lut.init = 16'h87fe;
    LUT4 n730_bdd_3_lut_12961_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668_adj_542)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_12961_4_lut_4_lut.init = 16'h01c0;
    PFUMX i11273 (.BLUT(n684), .ALUT(n699), .C0(rom_addr[4]), .Z(n11887));
    L6MUX21 i11290 (.D0(n11902), .D1(n11903), .SD(rom_addr[6]), .Z(n11904));
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4_c)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    LUT4 i11087_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n11701)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11087_3_lut_4_lut_4_lut.init = 16'h22c2;
    L6MUX21 i11293 (.D0(n11706), .D1(n381_adj_568), .SD(rom_addr[6]), 
            .Z(n11907));
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h778c;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n908)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B (C+(D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h77c8;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n46)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h5188;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'ha898;
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n301)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_4_lut.init = 16'h0960;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557), .B(n1211), .C(rom_addr[4]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 i7490_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7490_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n475)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h5054;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i7456_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7456_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506_adj_570)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_3_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_rep_142_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13689)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_rep_142_4_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    PFUMX i11125 (.BLUT(n11737), .ALUT(n11738), .C0(rom_addr[4]), .Z(n11739));
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    L6MUX21 i11302 (.D0(n1468), .D1(n1531_adj_549), .SD(rom_addr[6]), 
            .Z(n11916));
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275), .C0(rom_addr[5]), 
          .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut.init = 16'h8004;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    L6MUX21 i11304 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n11918));
    L6MUX21 i11330 (.D0(n11792), .D1(n1149_adj_571), .SD(rom_addr[6]), 
            .Z(n11944));
    LUT4 i7617_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7617_4_lut_4_lut.init = 16'hf8f6;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466_adj_572)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 i7591_4_lut (.A(n13692), .B(rom_addr[4]), .C(n15113), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7591_4_lut.init = 16'hc088;
    L6MUX21 i11334 (.D0(n1597), .D1(n11813), .SD(rom_addr[6]), .Z(n11948));
    L6MUX21 i11336 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n11950));
    L6MUX21 i11340 (.D0(n11940), .D1(n11941), .SD(rom_addr[7]), .Z(n11954));
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    LUT4 i7567_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam i7567_4_lut_4_lut_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n15111), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n15111), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13780), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_573)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_574)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 n730_bdd_3_lut_12451_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12877)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_12451_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n731_adj_575)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut.init = 16'h2030;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_274_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13821)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_274_3_lut.init = 16'hc2c2;
    L6MUX21 i11368 (.D0(n1979), .D1(n12191), .SD(rom_addr[6]), .Z(n11982));
    L6MUX21 i11369 (.D0(n11967), .D1(n11968), .SD(rom_addr[7]), .Z(n11983));
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428_adj_576)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 n506_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13513)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n506_bdd_3_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 address_11__I_0_Mux_4_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_c)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1084_3_lut_4_lut_4_lut.init = 16'h2006;
    LUT4 n2100_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13187)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2100_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'hc807;
    LUT4 i2270_3_lut_4_lut (.A(n13856), .B(n13759), .C(rom_addr[6]), .D(n6090), 
         .Z(n3078)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2270_3_lut_4_lut.init = 16'h0efe;
    PFUMX i11370 (.BLUT(n11969), .ALUT(n11970), .C0(rom_addr[7]), .Z(n11984));
    LUT4 i4559_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5367)) /* synthesis lut_function=(A+!(B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4559_3_lut_4_lut_4_lut_4_lut.init = 16'hbfef;
    LUT4 i4981_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5798)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4981_3_lut_4_lut_4_lut_4_lut.init = 16'hbffe;
    PFUMX i11250 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n11864));
    LUT4 i11377_3_lut (.A(n11983), .B(n11984), .C(rom_addr[8]), .Z(n11991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11377_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n15110), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_adj_560)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 rom_addr_6__bdd_3_lut_12859_4_lut (.A(n15110), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13714), .Z(n13339)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_3_lut_12859_4_lut.init = 16'hefe0;
    L6MUX21 i11375 (.D0(n11979), .D1(n11980), .SD(rom_addr[7]), .Z(n11989));
    LUT4 i2535_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n3343)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2535_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i1_2_lut_rep_170_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13717)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_170_3_lut_3_lut_4_lut.init = 16'h2202;
    LUT4 i11096_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n11710)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i11096_3_lut_4_lut_4_lut_4_lut.init = 16'h1086;
    LUT4 i3141_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n3949)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3141_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 i11655_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n12249)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11655_1_lut_3_lut_4_lut_4_lut.init = 16'h2701;
    L6MUX21 i11386 (.D0(n11860), .D1(n11873), .SD(rom_addr[7]), .Z(n12000));
    L6MUX21 i11387 (.D0(n11882), .D1(n11895), .SD(rom_addr[7]), .Z(n12001));
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut_4_lut.init = 16'h2810;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1676_adj_577)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut_4_lut.init = 16'h6160;
    L6MUX21 i11423 (.D0(n12034), .D1(n12035), .SD(rom_addr[7]), .Z(n12037));
    LUT4 i11067_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13938)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11067_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n859_c)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D))+!B (C))) */ ;
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut_4_lut.init = 16'hd210;
    PFUMX i13093 (.BLUT(n13992), .ALUT(n13993), .C0(rom_addr[4]), .Z(n13994));
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut.init = 16'h4030;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707_adj_578), .ALUT(n6732), 
          .C0(n11664), .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n2062_bdd_3_lut_12783_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13237)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_12783_4_lut_4_lut_4_lut.init = 16'h4020;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n15110), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_579), .Z(n1467)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n15110), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13741), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11434 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n12048));
    LUT4 i10883_3_lut_4_lut (.A(n15116), .B(rom_addr[3]), .C(n13859), 
         .D(n1676), .Z(n6718)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10883_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n379_adj_580)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 i11072_4_lut (.A(n2444_adj_581), .B(n5883), .C(rom_addr[4]), 
         .D(n13777), .Z(n11686)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i11072_4_lut.init = 16'h3a0a;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1564)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut_4_lut.init = 16'h2120;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_582)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut_4_lut.init = 16'h1021;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283_adj_583)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut_4_lut.init = 16'hc410;
    LUT4 i12454_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13915)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i12454_then_3_lut.init = 16'h6161;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_adj_584)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    PFUMX i13091 (.BLUT(n13989), .ALUT(n13990), .C0(rom_addr[0]), .Z(n13991));
    L6MUX21 i11444 (.D0(n12055), .D1(n12056), .SD(rom_addr[7]), .Z(n12058));
    LUT4 i11718_3_lut (.A(n1038), .B(n1053), .C(rom_addr[4]), .Z(n11790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11718_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_368 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15111)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_368.init = 16'h1818;
    L6MUX21 i11450 (.D0(n12060), .D1(n12061), .SD(rom_addr[7]), .Z(n12064));
    L6MUX21 i11466 (.D0(n12077), .D1(n12078), .SD(rom_addr[7]), .Z(n12080));
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 n549_bdd_4_lut_12903_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13212)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_12903_4_lut.init = 16'h9080;
    LUT4 i5058_2_lut_rep_360 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13907)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5058_2_lut_rep_360.init = 16'h6666;
    LUT4 i11133_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n11747)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)+!B !((D)+!C)))) */ ;
    defparam i11133_3_lut_4_lut_4_lut_4_lut.init = 16'h4e10;
    L6MUX21 i11501 (.D0(n12113), .D1(n12114), .SD(rom_addr[7]), .Z(n766_adj_585));
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'hcb80;
    PFUMX i11527 (.BLUT(n12138), .ALUT(n12139), .C0(rom_addr[6]), .Z(n12141));
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hd280;
    LUT4 n1403_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n12900)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1403_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    PFUMX i12777 (.BLUT(n13676), .ALUT(n13309), .C0(rom_addr[5]), .Z(n13310));
    LUT4 i11064_3_lut (.A(n2283_adj_586), .B(n2298_adj_587), .C(rom_addr[4]), 
         .Z(n11678)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11064_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h5380;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut_adj_17 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13840), .Z(n11342)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_4_lut_adj_17.init = 16'h0018;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2475)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut.init = 16'h4140;
    LUT4 i11114_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n11728)) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;
    defparam i11114_3_lut_4_lut_4_lut_4_lut.init = 16'hb1b0;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n13761), 
         .C(rom_addr[4]), .D(n13765), .Z(n1596)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1243_adj_588)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut_4_lut.init = 16'h4c10;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_165_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13712)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_165_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i4141_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n4949)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4141_3_lut_4_lut_4_lut_4_lut.init = 16'hf6d6;
    LUT4 i7506_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549_adj_589)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7506_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_588), .B(n1228), .C(rom_addr[4]), 
         .Z(n13458)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 i11376_3_lut (.A(n11981), .B(n11982), .C(rom_addr[7]), .Z(n11990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11376_3_lut.init = 16'hcaca;
    LUT4 i7465_2_lut_rep_176_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13723)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7465_2_lut_rep_176_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n13460)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_547)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i2670_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[5]), .Z(n5905)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2670_3_lut_4_lut_4_lut_4_lut.init = 16'heffd;
    LUT4 n8842_bdd_3_lut_13029_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12915)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n8842_bdd_3_lut_13029_4_lut_4_lut.init = 16'hf7c0;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut.init = 16'h0803;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_581)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i7433_2_lut_rep_158_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13705)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7433_2_lut_rep_158_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_591)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 i11656_1_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n12250)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11656_1_lut_4_lut_4_lut.init = 16'h1445;
    LUT4 n12089_bdd_2_lut_13002_4_lut (.A(n11796), .B(n12735), .C(rom_addr[6]), 
         .D(rom_addr[7]), .Z(n12747)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n12089_bdd_2_lut_13002_4_lut.init = 16'hca00;
    LUT4 rom_addr_0__bdd_4_lut_12634_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n12988)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_12634_4_lut.init = 16'h0802;
    LUT4 i5865_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n6703)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5865_3_lut_4_lut_4_lut.init = 16'h04c0;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n61)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    LUT4 i5846_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6684)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;
    defparam i5846_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_rep_183_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13730)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1101_3_lut_rep_183_4_lut_4_lut_4_lut.init = 16'h4202;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i12480_then_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14020)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12480_then_4_lut.init = 16'h0004;
    LUT4 i12480_else_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14019)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i12480_else_4_lut.init = 16'h0812;
    LUT4 i11623_3_lut (.A(n908_adj_592), .B(n13689), .C(rom_addr[4]), 
         .Z(n12237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11623_3_lut.init = 16'hcaca;
    LUT4 i11606_3_lut_4_lut (.A(rom_addr[1]), .B(n13878), .C(rom_addr[4]), 
         .D(n301_adj_593), .Z(n12220)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11606_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12454_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n13914)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A ((C)+!B))) */ ;
    defparam i12454_else_3_lut.init = 16'h0686;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    LUT4 i11621_4_lut (.A(n684_adj_594), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n13904), .Z(n12235)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11621_4_lut.init = 16'hca0a;
    LUT4 i11768_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[4]), 
         .D(n270_adj_595), .Z(n11704)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11768_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11149 (.BLUT(n11761), .ALUT(n11762), .C0(rom_addr[7]), .Z(n11763));
    PFUMX i40 (.BLUT(n24), .ALUT(n21), .C0(n11614), .Z(n10451));
    LUT4 address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n220_adj_596)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(B (C+!(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut.init = 16'h434f;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_597)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    L6MUX21 i11175 (.D0(n11787), .D1(n11788), .SD(rom_addr[7]), .Z(n11789));
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n13905), 
         .D(rom_addr[4]), .Z(n11358)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 i11617_3_lut (.A(n205), .B(n604_adj_598), .C(rom_addr[4]), .Z(n12231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11617_3_lut.init = 16'hcaca;
    LUT4 i11615_3_lut (.A(n506_adj_570), .B(n428_adj_599), .C(rom_addr[4]), 
         .Z(n12229)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11615_3_lut.init = 16'hcaca;
    LUT4 i11067_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n13937)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11067_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i11614_3_lut (.A(n526_adj_574), .B(n205_adj_600), .C(rom_addr[4]), 
         .Z(n12228)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11614_3_lut.init = 16'hcaca;
    PFUMX i11094 (.BLUT(n428_adj_601), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n11708));
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n13767), 
         .C(rom_addr[5]), .D(n2205_adj_602), .Z(n2237)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_273_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13820)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_273_4_lut_3_lut.init = 16'h4242;
    LUT4 i11611_3_lut (.A(n506), .B(n475), .C(rom_addr[4]), .Z(n12225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11611_3_lut.init = 16'hcaca;
    LUT4 i11374_3_lut (.A(n12904), .B(n11978), .C(rom_addr[7]), .Z(n11988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11374_3_lut.init = 16'hcaca;
    LUT4 i11609_3_lut (.A(n428_adj_599), .B(n684_adj_594), .C(rom_addr[4]), 
         .Z(n12223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11609_3_lut.init = 16'hcaca;
    LUT4 i11608_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n12222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11608_3_lut.init = 16'hcaca;
    LUT4 i11188_4_lut_4_lut (.A(n13772), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n11802)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i11188_4_lut_4_lut.init = 16'hdfd0;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n13772), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n15110), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n13772), .B(rom_addr[3]), 
         .C(n13802), .D(rom_addr[4]), .Z(n1403)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 i7684_2_lut_rep_144_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13691)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7684_2_lut_rep_144_3_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13781), 
         .C(rom_addr[4]), .D(n13738), .Z(n2620)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut.init = 16'h404a;
    PFUMX i11098 (.BLUT(n11710), .ALUT(n11711), .C0(rom_addr[4]), .Z(n11712));
    LUT4 i11153_3_lut_4_lut (.A(n13824), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_603), .Z(n11767)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11153_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11253_3_lut_4_lut (.A(n13824), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_604), .Z(n11867)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11253_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11533_3_lut_4_lut (.A(n13786), .B(n13905), .C(rom_addr[4]), 
         .D(n890_adj_605), .Z(n12147)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11533_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11136_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(rom_addr[4]), 
         .D(n13878), .Z(n11750)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11136_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i11073_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(rom_addr[4]), 
         .D(n13744), .Z(n11687)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11073_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_364 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13911)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_364.init = 16'h2424;
    LUT4 i11602_3_lut (.A(n2444_adj_606), .B(n2459), .C(rom_addr[4]), 
         .Z(n12216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11602_3_lut.init = 16'hcaca;
    LUT4 i11603_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(rom_addr[4]), 
         .D(n2283_adj_607), .Z(n12217)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11603_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n13918)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    PFUMX i11233 (.BLUT(n11845), .ALUT(n11846), .C0(rom_addr[6]), .Z(n11847));
    LUT4 i11584_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(rom_addr[4]), 
         .D(n2588), .Z(n12198)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11584_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 i11075_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(rom_addr[4]), 
         .D(n2522), .Z(n11689)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11075_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), 
         .C(n13896), .D(n2283), .Z(n2492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 i6019_3_lut_4_lut (.A(rom_addr[0]), .B(n13787), .C(n13876), .D(n2426), 
         .Z(n2428_adj_608)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6019_3_lut_4_lut.init = 16'hf202;
    LUT4 i7402_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7402_2_lut_4_lut.init = 16'hca00;
    LUT4 i11097_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n11711)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11097_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 n2492_bdd_3_lut (.A(n2492_adj_609), .B(n2555), .C(rom_addr[6]), 
         .Z(n14458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2492_bdd_3_lut.init = 16'hcaca;
    PFUMX i11103 (.BLUT(n620_adj_610), .ALUT(n635_adj_611), .C0(rom_addr[4]), 
          .Z(n11717));
    LUT4 i11135_3_lut_4_lut (.A(rom_addr[0]), .B(n13788), .C(rom_addr[4]), 
         .D(n2588), .Z(n11749)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11135_3_lut_4_lut.init = 16'hf808;
    LUT4 i11164_3_lut_4_lut (.A(rom_addr[0]), .B(n13788), .C(rom_addr[4]), 
         .D(n747), .Z(n11778)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11164_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11246 (.D0(n11858), .D1(n11859), .SD(rom_addr[6]), .Z(n11860));
    L6MUX21 i11259 (.D0(n11871), .D1(n11872), .SD(rom_addr[6]), .Z(n11873));
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n13788), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11268 (.D0(n11880), .D1(n11881), .SD(rom_addr[6]), .Z(n11882));
    LUT4 i11283_3_lut_4_lut (.A(rom_addr[0]), .B(n13788), .C(rom_addr[4]), 
         .D(n379_adj_580), .Z(n11897)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11283_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11969_3_lut (.A(n12210), .B(n14015), .C(rom_addr[5]), .Z(n2428_adj_612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11969_3_lut.init = 16'hcaca;
    LUT4 n2492_bdd_4_lut (.A(n5801), .B(n13966), .C(rom_addr[0]), .D(rom_addr[6]), 
         .Z(n14459)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B (C)))) */ ;
    defparam n2492_bdd_4_lut.init = 16'h5030;
    LUT4 n2110_bdd_4_lut_13375 (.A(rom_addr[5]), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n13684), .Z(n14461)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13375.init = 16'h8400;
    L6MUX21 i11281 (.D0(n11893), .D1(n11894), .SD(rom_addr[6]), .Z(n11895));
    LUT4 n2110_bdd_4_lut_13762 (.A(n2110), .B(n2078), .C(rom_addr[5]), 
         .D(rom_addr[6]), .Z(n14462)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13762.init = 16'haaac;
    PFUMX i9774 (.BLUT(n10381), .ALUT(n10382), .C0(rom_addr[8]), .Z(n10383));
    LUT4 i11588_3_lut_4_lut (.A(rom_addr[0]), .B(n13708), .C(rom_addr[4]), 
         .D(n13705), .Z(n12202)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11588_3_lut_4_lut.init = 16'hf101;
    PFUMX i11062 (.BLUT(n11674), .ALUT(n11675), .C0(rom_addr[4]), .Z(n11676));
    LUT4 i11207_3_lut_4_lut (.A(n15115), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n11821)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11207_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11130_3_lut_4_lut (.A(n15115), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13793), .Z(n11744)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11130_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n15115), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038_adj_613), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11204_3_lut_4_lut (.A(n13797), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n11818)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11204_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11194_3_lut_4_lut (.A(n13797), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435), .Z(n11808)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11194_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11120_3_lut_4_lut (.A(n13797), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13722), .Z(n11734)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11120_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n13797), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11292 (.BLUT(n190_adj_614), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n11906));
    LUT4 i11373_3_lut (.A(n11975), .B(n11976), .C(rom_addr[7]), .Z(n11987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11373_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut (.A(n13797), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13724), .Z(n1883_adj_615)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_616)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13941)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11344)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i11127_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[4]), 
         .D(n1643), .Z(n11741)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11127_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11170_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[5]), 
         .D(n1914), .Z(n11784)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11170_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11296 (.D0(n11724), .D1(n764), .SD(rom_addr[6]), .Z(n11910));
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13795), 
         .C(rom_addr[4]), .D(n13720), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i11575_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[4]), 
         .D(n2009_adj_617), .Z(n12189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11575_3_lut_4_lut.init = 16'hf202;
    LUT4 i11380_3_lut (.A(n11989), .B(n11990), .C(rom_addr[8]), .Z(n11994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11380_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_372 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15115)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_372.init = 16'h3838;
    LUT4 n12103_bdd_3_lut_12370 (.A(n12110), .B(n12111), .C(rom_addr[7]), 
         .Z(n12743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12103_bdd_3_lut_12370.init = 16'hcaca;
    LUT4 i11552_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[4]), 
         .D(n1466), .Z(n12166)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11552_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), 
         .C(rom_addr[5]), .D(n1676_adj_618), .Z(n1692_adj_619)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11522_3_lut_4_lut (.A(rom_addr[0]), .B(n13795), .C(rom_addr[5]), 
         .D(n1851_adj_555), .Z(n12136)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11522_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1212_3_lut_4_lut (.A(rom_addr[0]), .B(n13794), 
         .C(rom_addr[4]), .D(n1196), .Z(n1212_adj_620)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1212_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11981_3_lut_4_lut (.A(n13812), .B(n11344), .C(rom_addr[5]), 
         .D(n1565), .Z(n1597_adj_621)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11981_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11297 (.D0(n829_adj_551), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n11911));
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 n1676_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13794), .C(rom_addr[5]), 
         .D(n13795), .Z(n13100)) /* synthesis lut_function=(!((B (C (D))+!B ((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1676_bdd_3_lut_4_lut_4_lut.init = 16'h08a8;
    LUT4 i11198_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), .C(rom_addr[4]), 
         .D(n1658), .Z(n11812)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11198_3_lut_4_lut.init = 16'hf808;
    LUT4 n2426_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), .C(rom_addr[4]), 
         .D(n2426), .Z(n13098)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2426_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914_adj_622)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13084 (.BLUT(n13979), .ALUT(n13980), .C0(rom_addr[0]), .Z(n13981));
    LUT4 n1243_bdd_4_lut_12631 (.A(n13748), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13767), .Z(n12734)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut_12631.init = 16'h3a0a;
    LUT4 i11546_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), .C(rom_addr[4]), 
         .D(n1084_adj_584), .Z(n12160)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11546_3_lut_4_lut.init = 16'hf808;
    LUT4 i12117_3_lut (.A(n11952), .B(n11953), .C(rom_addr[8]), .Z(n11960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12117_3_lut.init = 16'hcaca;
    L6MUX21 i11300 (.D0(n1213), .D1(n11733), .SD(rom_addr[6]), .Z(n11914));
    LUT4 i11561_4_lut (.A(n12239), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14021), 
         .Z(n12175)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11561_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), 
         .C(rom_addr[4]), .D(n2009_adj_623), .Z(n2010)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    PFUMX i11303 (.BLUT(n1597_adj_624), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n11917));
    PFUMX i12779 (.BLUT(n13311), .ALUT(n13676), .C0(rom_addr[5]), .Z(n13312));
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n11966), .B(n3070_adj_558), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), 
         .C(rom_addr[4]), .D(n13765), .Z(n1820_adj_625)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n13799), 
         .C(rom_addr[4]), .D(n1529_c), .Z(n1530_adj_626)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    PFUMX i11305 (.BLUT(n11736), .ALUT(n1915_adj_627), .C0(rom_addr[6]), 
          .Z(n11919));
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_373 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15116)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_373.init = 16'h8383;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13800), 
         .C(rom_addr[5]), .D(n13795), .Z(n1692_adj_628)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 i11195_3_lut_4_lut (.A(rom_addr[0]), .B(n13800), .C(rom_addr[4]), 
         .D(n1466_adj_629), .Z(n11809)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11195_3_lut_4_lut.init = 16'hf202;
    LUT4 i11063_3_lut_4_lut (.A(rom_addr[0]), .B(n13800), .C(rom_addr[4]), 
         .D(n2588), .Z(n11677)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11063_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11058_3_lut_4_lut (.A(rom_addr[0]), .B(n13800), .C(rom_addr[4]), 
         .D(n2444_adj_581), .Z(n11672)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11058_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n13800), 
         .C(n4949), .D(rom_addr[5]), .Z(n1947_adj_630)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 n12103_bdd_3_lut_12997 (.A(n12103), .B(n12104), .C(rom_addr[7]), 
         .Z(n12744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12103_bdd_3_lut_12997.init = 16'hcaca;
    L6MUX21 i11306 (.D0(n11742), .D1(n11745), .SD(rom_addr[6]), .Z(n11920));
    PFUMX i11323 (.BLUT(n190_adj_631), .ALUT(n11757), .C0(rom_addr[6]), 
          .Z(n11937));
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n13800), 
         .C(rom_addr[5]), .D(n1786_adj_616), .Z(n1787_adj_632)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    PFUMX i13082 (.BLUT(n13976), .ALUT(n13977), .C0(rom_addr[0]), .Z(n13978));
    LUT4 i11540_3_lut_4_lut (.A(n13802), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_633), .Z(n12154)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11540_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n13802), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009), .Z(n2010_adj_634)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11948_3_lut (.A(n12198), .B(n15129), .C(rom_addr[5]), .Z(n2300_adj_635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11948_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_636)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11189_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n11803)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11189_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11324 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n11938));
    LUT4 i11138_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n13988), .Z(n11752)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11138_3_lut_4_lut.init = 16'h1f10;
    LUT4 n12089_bdd_3_lut_13001 (.A(n12089), .B(n12090), .C(rom_addr[7]), 
         .Z(n12746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12089_bdd_3_lut_13001.init = 16'hcaca;
    PFUMX i11325 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n11939));
    LUT4 i11118_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n1835), .Z(n11732)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11118_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), 
         .C(rom_addr[4]), .D(n1435_adj_637), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 i11582_4_lut (.A(n5137), .B(n13715), .C(rom_addr[4]), .D(n13835), 
         .Z(n12196)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11582_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13940)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n13804), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n4_adj_638)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(rom_addr[1]), .B(n13804), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n6089)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h8000;
    L6MUX21 i11326 (.D0(n11760), .D1(n11766), .SD(rom_addr[6]), .Z(n11940));
    L6MUX21 i11327 (.D0(n11769), .D1(n11779), .SD(rom_addr[6]), .Z(n11941));
    LUT4 i12234_2_lut_rep_130_3_lut_4_lut (.A(rom_addr[1]), .B(n13804), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n13677)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12234_2_lut_rep_130_3_lut_4_lut.init = 16'hf7ff;
    LUT4 n1340_bdd_4_lut_12740 (.A(n13722), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n15111), .Z(n12885)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_12740.init = 16'haca0;
    L6MUX21 i11328 (.D0(n829), .D1(n11782), .SD(rom_addr[6]), .Z(n11942));
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n11997), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    L6MUX21 i11331 (.D0(n11795), .D1(n11801), .SD(rom_addr[6]), .Z(n11945));
    PFUMX i11332 (.BLUT(n11804), .ALUT(n1404), .C0(rom_addr[6]), .Z(n11946));
    L6MUX21 i11333 (.D0(n11810), .D1(n1531), .SD(rom_addr[6]), .Z(n11947));
    LUT4 i11626_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12240)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11626_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 i7427_2_lut_4_lut_4_lut (.A(n13814), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13799), .Z(n1851_adj_639)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7427_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i7779_2_lut_rep_374 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n15117)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7779_2_lut_rep_374.init = 16'h8888;
    PFUMX i13044 (.BLUT(n13917), .ALUT(n13918), .C0(rom_addr[2]), .Z(n13919));
    L6MUX21 i11337 (.D0(n11819), .D1(n11822), .SD(rom_addr[6]), .Z(n11951));
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13398), .C(n2589), 
         .D(rom_addr[6]), .Z(n15107)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 i7699_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n13783), .Z(n5264)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7699_4_lut_4_lut_4_lut.init = 16'hf8f3;
    L6MUX21 i11354 (.D0(n190), .D1(n11853), .SD(rom_addr[6]), .Z(n11968));
    LUT4 i11167_3_lut_4_lut (.A(rom_addr[0]), .B(n13738), .C(rom_addr[4]), 
         .D(n890), .Z(n11781)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11167_3_lut_4_lut.init = 16'hf202;
    LUT4 i7446_2_lut_4_lut (.A(n13733), .B(n13695), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7446_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_640)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 n2172_bdd_3_lut_12858_4_lut (.A(rom_addr[0]), .B(n13738), .C(rom_addr[4]), 
         .D(n13765), .Z(n13169)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2172_bdd_3_lut_12858_4_lut.init = 16'h2f20;
    L6MUX21 i11357 (.D0(n11879), .D1(n11885), .SD(rom_addr[6]), .Z(n11971));
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_610)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i11566_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n12180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11566_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_369 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15112)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_369.init = 16'h1c1c;
    L6MUX21 i11360 (.D0(n12148), .D1(n12151), .SD(rom_addr[6]), .Z(n11974));
    L6MUX21 i11361 (.D0(n12161), .D1(n1149), .SD(rom_addr[6]), .Z(n11975));
    PFUMX i11362 (.BLUT(n1213_adj_641), .ALUT(n1276_adj_642), .C0(rom_addr[6]), 
          .Z(n11976));
    LUT4 address_11__I_0_Mux_3_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), 
         .C(rom_addr[4]), .D(n668_adj_542), .Z(n189_adj_643)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 n2332_bdd_3_lut_12786_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n2332), .Z(n13239)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2332_bdd_3_lut_12786_4_lut.init = 16'h2f20;
    LUT4 i11210_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n2283_adj_586), .Z(n11824)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11210_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), 
         .C(rom_addr[4]), .D(n13815), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i11084_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n78), .Z(n11698)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11084_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11536_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4772), 
         .Z(n12150)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11536_4_lut.init = 16'hc0ca;
    LUT4 i11535_4_lut (.A(rom_addr[0]), .B(n13730), .C(rom_addr[4]), .D(n4763), 
         .Z(n12149)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11535_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n13738), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309_adj_644)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11364 (.D0(n12167), .D1(n12182), .SD(rom_addr[6]), .Z(n11978));
    LUT4 i11532_4_lut (.A(rom_addr[0]), .B(n13774), .C(rom_addr[4]), .D(n13812), 
         .Z(n12146)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11532_4_lut.init = 16'hcac0;
    LUT4 i11612_3_lut_4_lut (.A(rom_addr[0]), .B(n13738), .C(rom_addr[4]), 
         .D(n684_adj_594), .Z(n12226)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11612_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1038_bdd_4_lut (.A(n1084_c), .B(n13757), .C(rom_addr[0]), .D(rom_addr[4]), 
         .Z(n13055)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n1038_bdd_4_lut.init = 16'haa30;
    LUT4 i12040_3_lut (.A(n2010), .B(n13994), .C(rom_addr[5]), .Z(n12139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12040_3_lut.init = 16'hcaca;
    LUT4 i11129_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n2009_adj_645), .Z(n11743)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11129_3_lut_4_lut.init = 16'hf202;
    PFUMX i11365 (.BLUT(n1597_adj_621), .ALUT(n1660_adj_646), .C0(rom_addr[6]), 
          .Z(n11979));
    LUT4 i11624_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n890_adj_605), .Z(n12238)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11624_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_128_4_lut (.A(rom_addr[0]), 
         .B(n13814), .C(rom_addr[4]), .D(n13712), .Z(n13675)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_128_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11234_3_lut_4_lut (.A(rom_addr[0]), .B(n13814), .C(rom_addr[4]), 
         .D(n13933), .Z(n11848)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11234_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11922_3_lut (.A(n1883), .B(n1914_adj_647), .C(rom_addr[5]), 
         .Z(n12137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11922_3_lut.init = 16'hcaca;
    LUT4 i4984_3_lut (.A(n13697), .B(n5798), .C(rom_addr[5]), .Z(n5801)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4984_3_lut.init = 16'hc5c5;
    PFUMX i11366 (.BLUT(n1724_adj_648), .ALUT(n1787_adj_632), .C0(rom_addr[6]), 
          .Z(n11980));
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13697), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_649)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11620_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n668_adj_542), .Z(n12234)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11620_3_lut_4_lut.init = 16'hf404;
    LUT4 i11109_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n684_adj_594), .Z(n11723)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11109_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n13697), 
         .C(rom_addr[5]), .D(n2396_adj_650), .Z(n2428_adj_651)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n13820), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364_adj_582), .Z(n380_adj_561)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n13820), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_c), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11278_3_lut_4_lut (.A(rom_addr[0]), .B(n13738), .C(rom_addr[4]), 
         .D(n1002), .Z(n11892)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11278_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_652)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 i11512_3_lut_4_lut (.A(rom_addr[0]), .B(n13711), .C(rom_addr[5]), 
         .D(n1565_adj_636), .Z(n12126)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11512_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_c), .B(n1691_adj_653), 
         .C(rom_addr[4]), .Z(n1692_adj_654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n13761), .Z(n1659)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    PFUMX i11367 (.BLUT(n1852_adj_655), .ALUT(n1915_adj_656), .C0(rom_addr[6]), 
          .Z(n11981));
    LUT4 i11927_3_lut (.A(n13571), .B(n1659), .C(rom_addr[5]), .Z(n12127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11927_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_657), .B(n15116), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659_adj_658)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_595)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), 
         .C(rom_addr[3]), .D(n13911), .Z(n604_adj_659)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009), .B(n1529), .C(rom_addr[4]), 
         .Z(n1530_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 i11697_3_lut_4_lut (.A(n13850), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108_adj_661), .Z(n11831)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11697_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11411 (.BLUT(n12023), .ALUT(n12024), .C0(rom_addr[6]), .Z(n12025));
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_13063 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_adj_593)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13063.init = 16'hb124;
    LUT4 i7671_4_lut (.A(rom_addr[0]), .B(n13757), .C(n13795), .D(rom_addr[4]), 
         .Z(n1085_c)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7671_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n13815), 
         .C(rom_addr[4]), .D(n13767), .Z(n1054_adj_662)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 n2552_bdd_3_lut_12882_4_lut (.A(rom_addr[0]), .B(n13894), .C(rom_addr[3]), 
         .D(n13821), .Z(n12679)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2552_bdd_3_lut_12882_4_lut.init = 16'h7f70;
    LUT4 i9470_then_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13946)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam i9470_then_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n13894), 
         .C(rom_addr[3]), .D(n15110), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11414 (.BLUT(n12026), .ALUT(n12027), .C0(rom_addr[6]), .Z(n12028));
    LUT4 i9470_else_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13945)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam i9470_else_4_lut.init = 16'h6db4;
    LUT4 rom_addr_0__bdd_4_lut_13090 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13948)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_13090.init = 16'h480c;
    LUT4 i7712_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(n13835), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7712_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i7641_2_lut_rep_135_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n13856), .D(rom_addr[0]), .Z(n13682)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7641_2_lut_rep_135_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(rom_addr[2]), .B(n13835), .C(n11359), 
         .D(rom_addr[4]), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h8000;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13797), .Z(n2009_adj_617)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_367 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15110)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_367.init = 16'h8181;
    L6MUX21 i11419 (.D0(n2237_adj_663), .D1(n2300_adj_664), .SD(rom_addr[6]), 
            .Z(n12033));
    PFUMX i11420 (.BLUT(n2365_adj_665), .ALUT(n2428_adj_612), .C0(rom_addr[6]), 
          .Z(n12034));
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549_adj_589), .ALUT(n1564), 
          .C0(rom_addr[4]), .Z(n1565_adj_666)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11936_3_lut (.A(n14012), .B(n3243), .C(rom_addr[5]), .Z(n12100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11936_3_lut.init = 16'hcaca;
    LUT4 i11481_3_lut (.A(n2077), .B(n1529_c), .C(rom_addr[4]), .Z(n12095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11481_3_lut.init = 16'hcaca;
    LUT4 i11541_3_lut_4_lut (.A(n13843), .B(n13881), .C(rom_addr[4]), 
         .D(n2040_adj_667), .Z(n12155)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11541_3_lut_4_lut.init = 16'hf808;
    LUT4 i11479_3_lut (.A(n1451), .B(n1676_c), .C(rom_addr[4]), .Z(n12093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11479_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n15117), .B(n13841), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_668)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11576_3_lut_4_lut (.A(n15117), .B(n13841), .C(rom_addr[4]), 
         .D(n2040), .Z(n12190)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11576_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15116), .Z(n572)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(n13753), .D(rom_addr[3]), .Z(n653_adj_604)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(n13827), .D(rom_addr[3]), .Z(n604_adj_598)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15112), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11421 (.BLUT(n2492_adj_669), .ALUT(n6662), .C0(rom_addr[6]), 
          .Z(n12035));
    PFUMX i11102 (.BLUT(n589), .ALUT(n604_adj_670), .C0(rom_addr[4]), 
          .Z(n11716));
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(n13797), .D(rom_addr[3]), .Z(n428_adj_599)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    PFUMX i11093 (.BLUT(n397), .ALUT(n6680), .C0(rom_addr[4]), .Z(n11707));
    LUT4 i7607_4_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15118)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7607_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0414;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13819), .Z(n653_adj_603)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n13883), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13797), .Z(n1676_adj_672)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n13771), .B(n13724), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13797), .Z(n1483_adj_673)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13950)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n13863), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13911), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11060_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), .C(rom_addr[3]), 
         .D(n13850), .Z(n11674)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11060_3_lut_4_lut.init = 16'h02f2;
    L6MUX21 i11426 (.D0(n11673), .D1(n11679), .SD(rom_addr[6]), .Z(n12040));
    PFUMX i11427 (.BLUT(n11682), .ALUT(n2428_adj_608), .C0(rom_addr[6]), 
          .Z(n12041));
    LUT4 i11085_3_lut_4_lut (.A(n13872), .B(n13841), .C(rom_addr[4]), 
         .D(n13689), .Z(n11699)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11085_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12344 (.BLUT(n12682), .ALUT(n14), .C0(rom_addr[6]), .Z(n12683));
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_370 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15113)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_370.init = 16'he8e8;
    L6MUX21 i11428 (.D0(n11688), .D1(n11691), .SD(rom_addr[6]), .Z(n12042));
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), 
         .C(rom_addr[3]), .D(n15111), .Z(n1435_adj_637)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), 
         .C(rom_addr[3]), .D(n13824), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), 
         .C(rom_addr[3]), .D(n13850), .Z(n1101)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut.init = 16'hdfd0;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n13893), 
         .C(rom_addr[3]), .D(n15112), .Z(n2009_adj_623)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i11409_3_lut_4_lut (.A(rom_addr[0]), .B(n13711), .C(rom_addr[5]), 
         .D(n1212_adj_674), .Z(n12023)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11409_3_lut_4_lut.init = 16'hf101;
    PFUMX i11435 (.BLUT(n2492), .ALUT(n2555_adj_675), .C0(rom_addr[6]), 
          .Z(n12049));
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n13872), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13802), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    PFUMX i13783 (.BLUT(n15118), .ALUT(n15119), .C0(rom_addr[1]), .Z(n15120));
    L6MUX21 i11439 (.D0(n11832), .D1(n2173), .SD(rom_addr[6]), .Z(n12053));
    PFUMX i11441 (.BLUT(n11841), .ALUT(n2428_adj_651), .C0(rom_addr[6]), 
          .Z(n12055));
    LUT4 i11972_3_lut (.A(n13932), .B(n13936), .C(rom_addr[5]), .Z(n12027)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11972_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    PFUMX i11442 (.BLUT(n2492_adj_676), .ALUT(n2555_adj_677), .C0(rom_addr[6]), 
          .Z(n12056));
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n13949)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h2002;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_678), 
         .C(rom_addr[4]), .Z(n1244_adj_679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i11974_3_lut (.A(n1244_adj_679), .B(n15120), .C(rom_addr[5]), 
         .Z(n12024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11974_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n13889), .B(n13901), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205_adj_602)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13953)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n13904), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_680)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13917)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n13904), 
         .C(rom_addr[4]), .D(n526_adj_573), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7605_4_lut (.A(rom_addr[0]), .B(n13814), .C(n13708), .D(rom_addr[4]), 
         .Z(n1117_adj_681)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7605_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13952)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    PFUMX i11446 (.BLUT(n2110_adj_682), .ALUT(n2173_adj_683), .C0(rom_addr[6]), 
          .Z(n12060));
    LUT4 i11859_3_lut (.A(n716_adj_684), .B(n731_adj_575), .C(rom_addr[4]), 
         .Z(n11896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11859_3_lut.init = 16'hcaca;
    LUT4 i11861_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n11891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11861_3_lut.init = 16'hcaca;
    LUT4 i11124_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), .C(rom_addr[3]), 
         .D(n13753), .Z(n11738)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11124_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n15110), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i11276_3_lut (.A(n2009_adj_645), .B(n954), .C(rom_addr[4]), .Z(n11890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11276_3_lut.init = 16'hcaca;
    LUT4 i11275_3_lut (.A(n908), .B(n13689), .C(rom_addr[4]), .Z(n11889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11275_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut_4_lut (.A(n13870), .B(n15111), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2573_adj_685)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11447 (.BLUT(n2237), .ALUT(n2300_adj_635), .C0(rom_addr[6]), 
          .Z(n12061));
    LUT4 i5821_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), .C(rom_addr[3]), 
         .D(n8848), .Z(n6659)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5821_3_lut_4_lut.init = 16'h08f8;
    LUT4 i11269_3_lut (.A(n301), .B(n604_adj_659), .C(rom_addr[4]), .Z(n11883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11269_3_lut.init = 16'hcaca;
    LUT4 i11866_3_lut (.A(n11746), .B(n11747), .C(rom_addr[4]), .Z(n11748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11866_3_lut.init = 16'hcaca;
    LUT4 i11071_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13959)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i11071_then_3_lut.init = 16'h3838;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n15111), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_267_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13814)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_267_3_lut.init = 16'hfefe;
    PFUMX i12733 (.BLUT(n13255), .ALUT(n13252), .C0(rom_addr[6]), .Z(n13256));
    LUT4 i11264_3_lut (.A(n557_adj_686), .B(n428), .C(rom_addr[4]), .Z(n11878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11264_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n15116), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11449 (.D0(n2492_adj_687), .D1(n2555_adj_688), .SD(rom_addr[6]), 
            .Z(n12063));
    LUT4 i11071_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n13958)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i11071_else_3_lut.init = 16'h0484;
    LUT4 i11263_3_lut (.A(n526_adj_597), .B(n13689), .C(rom_addr[4]), 
         .Z(n11877)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11263_3_lut.init = 16'hcaca;
    LUT4 i11126_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), .C(rom_addr[4]), 
         .D(n1946_adj_689), .Z(n11740)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11126_3_lut_4_lut.init = 16'hf808;
    LUT4 i12154_2_lut_rep_325 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13872)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12154_2_lut_rep_325.init = 16'h9999;
    L6MUX21 i11462 (.D0(n12069), .D1(n12070), .SD(rom_addr[6]), .Z(n12076));
    L6MUX21 i11463 (.D0(n12071), .D1(n12072), .SD(rom_addr[6]), .Z(n12077));
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n10092), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11177_3_lut (.A(n1069), .B(n1084_adj_690), .C(rom_addr[4]), 
         .Z(n11791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11177_3_lut.init = 16'hcaca;
    L6MUX21 i11464 (.D0(n12073), .D1(n12074), .SD(rom_addr[6]), .Z(n12078));
    LUT4 i11248_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n11862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11248_3_lut.init = 16'hcaca;
    LUT4 i11247_3_lut (.A(n270_c), .B(n285), .C(rom_addr[4]), .Z(n11861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11247_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(n13850), .D(rom_addr[3]), .Z(n716_adj_684)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i11243_3_lut (.A(n620), .B(n205_adj_600), .C(rom_addr[4]), .Z(n11857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11243_3_lut.init = 16'hcaca;
    PFUMX i12731 (.BLUT(n13253), .ALUT(n13802), .C0(rom_addr[4]), .Z(n13254));
    PFUMX i11475 (.BLUT(n12085), .ALUT(n12086), .C0(rom_addr[6]), .Z(n12089));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n15116), .Z(n1707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i11242_3_lut (.A(n491), .B(n604_adj_591), .C(rom_addr[4]), .Z(n11856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11242_3_lut.init = 16'hcaca;
    PFUMX i13078 (.BLUT(n13970), .ALUT(n13971), .C0(rom_addr[4]), .Z(n924_adj_545));
    LUT4 i11061_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), .C(rom_addr[3]), 
         .D(n13820), .Z(n11675)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11061_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_212_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n13759)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_212_3_lut.init = 16'hfefe;
    L6MUX21 i11476 (.D0(n12087), .D1(n12088), .SD(rom_addr[6]), .Z(n12090));
    LUT4 i11240_3_lut (.A(n526), .B(n13779), .C(rom_addr[4]), .Z(n11854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11240_3_lut.init = 16'hcaca;
    LUT4 i11238_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n11852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11238_3_lut.init = 16'hcaca;
    L6MUX21 i11484 (.D0(n12096), .D1(n12097), .SD(rom_addr[6]), .Z(n12098));
    LUT4 i11237_3_lut (.A(n205_adj_600), .B(n220_adj_596), .C(rom_addr[4]), 
         .Z(n11851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11237_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut_4_lut (.A(n13870), 
         .B(rom_addr[4]), .C(n13794), .D(rom_addr[0]), .Z(n1676_adj_618)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut_4_lut.init = 16'hd100;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut_4_lut (.A(n13870), .B(n13911), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n827)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11080_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n13962)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam i11080_then_4_lut.init = 16'h2ec2;
    LUT4 i11229_3_lut (.A(n46), .B(n61_adj_567), .C(rom_addr[4]), .Z(n11843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11229_3_lut.init = 16'hcaca;
    PFUMX i11489 (.BLUT(n12099), .ALUT(n12100), .C0(rom_addr[6]), .Z(n12103));
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5137), .B(n15112), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699_adj_691)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 i12160_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5137)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12160_2_lut.init = 16'h9999;
    L6MUX21 i11490 (.D0(n12101), .D1(n12102), .SD(rom_addr[6]), .Z(n12104));
    LUT4 i11225_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n11839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11225_3_lut.init = 16'hcaca;
    L6MUX21 i11496 (.D0(n12106), .D1(n12107), .SD(rom_addr[6]), .Z(n12110));
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n11333), .C(rom_addr[6]), .D(n11359), 
         .Z(n11361)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    L6MUX21 i11497 (.D0(n12108), .D1(n12109), .SD(rom_addr[6]), .Z(n12111));
    LUT4 i1_4_lut (.A(n13817), .B(rom_addr[8]), .C(n13781), .D(rom_addr[4]), 
         .Z(n11333)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h3022;
    PFUMX i11499 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12113));
    LUT4 i7728_4_lut (.A(n1628), .B(rom_addr[6]), .C(n11372), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7728_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n13870), .B(rom_addr[4]), 
         .C(n13748), .D(n11481), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut_4_lut (.A(n13870), .B(n13753), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1707_adj_578)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n2109_bdd_4_lut_4_lut (.A(n13870), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n6748), .Z(n13171)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam n2109_bdd_4_lut_4_lut.init = 16'h4474;
    LUT4 i11080_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n13961)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam i11080_else_4_lut.init = 16'h6802;
    PFUMX i12724 (.BLUT(n13240), .ALUT(n2427), .C0(rom_addr[6]), .Z(n13241));
    LUT4 i11182_4_lut (.A(n13804), .B(n1628), .C(rom_addr[5]), .D(n13806), 
         .Z(n11796)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11182_4_lut.init = 16'hcac0;
    LUT4 i11172_4_lut (.A(n13722), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n11786)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11172_4_lut.init = 16'haaca;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut_4_lut (.A(n13870), .B(n13740), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2009_adj_645)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n13702), .B(n3343), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_665)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    L6MUX21 i11507 (.D0(n12118), .D1(n12119), .SD(rom_addr[6]), .Z(n12121));
    LUT4 i11171_3_lut (.A(n1914), .B(n13675), .C(rom_addr[5]), .Z(n11785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11171_3_lut.init = 16'hcaca;
    L6MUX21 i11511 (.D0(n12123), .D1(n12124), .SD(rom_addr[6]), .Z(n12125));
    PFUMX i11516 (.BLUT(n12126), .ALUT(n12127), .C0(rom_addr[6]), .Z(n12130));
    PFUMX i13076 (.BLUT(n13967), .ALUT(n13968), .C0(rom_addr[0]), .Z(n13969));
    LUT4 i7774_4_lut_4_lut (.A(n13702), .B(rom_addr[5]), .C(n5812), .D(rom_addr[0]), 
         .Z(n2492_adj_609)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7774_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13708), 
         .C(rom_addr[4]), .D(n13725), .Z(n1786_adj_693)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 n2283_bdd_3_lut_12726 (.A(n2283_adj_607), .B(n2298_adj_587), .C(rom_addr[4]), 
         .Z(n13215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2283_bdd_3_lut_12726.init = 16'hcaca;
    LUT4 n915_bdd_3_lut_12899_4_lut (.A(n13898), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n13827), .Z(n13209)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_3_lut_12899_4_lut.init = 16'h8f80;
    LUT4 i7845_4_lut (.A(n2621), .B(n13836), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7845_4_lut.init = 16'hc088;
    L6MUX21 i11517 (.D0(n12128), .D1(n12129), .SD(rom_addr[6]), .Z(n12131));
    LUT4 address_11__I_0_Mux_4_i1038_3_lut_4_lut (.A(n13898), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13824), .Z(n1038_adj_695)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1038_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n13728), .Z(n2621)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i11472_3_lut_4_lut (.A(rom_addr[0]), .B(n13683), .C(rom_addr[5]), 
         .D(n1403), .Z(n12086)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11472_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n13898), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15111), .Z(n1084_adj_690)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 n13218_bdd_3_lut_12710 (.A(n14009), .B(n13215), .C(rom_addr[5]), 
         .Z(n13219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13218_bdd_3_lut_12710.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut_4_lut (.A(n13870), .B(n13820), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1466_adj_629)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i4957_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13965)) /* synthesis lut_function=(A+(B (C+(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4957_3_lut_4_lut_4_lut_then_4_lut.init = 16'heffb;
    LUT4 i11343_3_lut (.A(n11946), .B(n11947), .C(rom_addr[7]), .Z(n11957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11343_3_lut.init = 16'hcaca;
    LUT4 i11344_3_lut (.A(n11948), .B(n13102), .C(rom_addr[7]), .Z(n11958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11344_3_lut.init = 16'hcaca;
    LUT4 i4957_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13964)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4957_3_lut_4_lut_4_lut_else_4_lut.init = 16'hfffe;
    LUT4 i12220_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11642)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12220_2_lut.init = 16'hbbbb;
    LUT4 i11518_3_lut (.A(n12130), .B(n12131), .C(rom_addr[7]), .Z(n1789_adj_696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11518_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n13911), .Z(n589_adj_697)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 i5855_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13968)) /* synthesis lut_function=(A (B (C+(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5855_3_lut_4_lut_then_4_lut.init = 16'h8d80;
    LUT4 i5855_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13967)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5855_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 address_11__I_0_Mux_3_i190_3_lut_4_lut (.A(rom_addr[0]), .B(n13701), 
         .C(rom_addr[5]), .D(n189_adj_643), .Z(n190_adj_631)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i190_3_lut_4_lut.init = 16'hf202;
    LUT4 i11915_3_lut (.A(n12195), .B(n12196), .C(rom_addr[5]), .Z(n2110_adj_698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11915_3_lut.init = 16'hcaca;
    PFUMX i12722 (.BLUT(n13237), .ALUT(n13721), .C0(rom_addr[4]), .Z(n13238));
    LUT4 i11294_3_lut (.A(n11709), .B(n508_adj_699), .C(rom_addr[6]), 
         .Z(n11908)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11294_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut_4_lut (.A(n13870), .B(n13750), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n397)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n13960), .B(n507), .C(rom_addr[5]), 
         .Z(n508_adj_699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    PFUMX i11526 (.BLUT(n12136), .ALUT(n12137), .C0(rom_addr[6]), .Z(n12140));
    LUT4 i11295_3_lut (.A(n11715), .B(n11718), .C(rom_addr[6]), .Z(n11909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11295_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n13911), .Z(n475_adj_700)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n13881), 
         .C(rom_addr[3]), .D(n15116), .Z(n1435)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut_4_lut (.A(n13870), .B(n15115), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2283_adj_586)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5885_4_lut_4_lut (.A(n13870), .B(rom_addr[3]), .C(n13750), .D(n13840), 
         .Z(n6723)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5885_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13971)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_then_4_lut.init = 16'h0040;
    LUT4 n13239_bdd_3_lut (.A(n13239), .B(n13238), .C(rom_addr[5]), .Z(n13240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13239_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut_4_lut (.A(n13870), .B(n13750), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2380)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut (.A(n13870), .B(n15113), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691_adj_653)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 i11725_3_lut (.A(n6684), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11725_3_lut.init = 16'hcaca;
    LUT4 i11485_4_lut (.A(n13696), .B(n4_adj_638), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12099)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11485_4_lut.init = 16'hc0c5;
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n13835), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n12664)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13970)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 n13254_bdd_3_lut_13520 (.A(n13254), .B(n2109), .C(rom_addr[5]), 
         .Z(n13255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13254_bdd_3_lut_13520.init = 16'hcaca;
    LUT4 n1038_bdd_3_lut_12988_4_lut (.A(n13898), .B(n13904), .C(rom_addr[4]), 
         .D(n1038_adj_695), .Z(n13056)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1038_bdd_3_lut_12988_4_lut.init = 16'h8f80;
    L6MUX21 i11544 (.D0(n12156), .D1(n12157), .SD(rom_addr[6]), .Z(n12158));
    LUT4 n13188_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13702), .C(rom_addr[5]), 
         .D(n13188), .Z(n13189)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n13188_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n13911), .B(n13676), .C(rom_addr[5]), 
         .D(n13867), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    L6MUX21 i11555 (.D0(n12224), .D1(n12227), .SD(rom_addr[6]), .Z(n12169));
    L6MUX21 i11557 (.D0(n12230), .D1(n12233), .SD(rom_addr[6]), .Z(n12171));
    PFUMX i11418 (.BLUT(n2110_adj_698), .ALUT(n2173_adj_701), .C0(rom_addr[6]), 
          .Z(n12032));
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_4_lut_4_lut_4_lut (.A(n13870), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(n13740), .Z(n1243_adj_678)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i1243_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 i4971_3_lut_rep_150_4_lut (.A(rom_addr[2]), .B(n13901), .C(rom_addr[4]), 
         .D(n13787), .Z(n13697)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4971_3_lut_rep_150_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n13898), .B(n13722), .C(rom_addr[4]), 
         .D(n13841), .Z(n1403_adj_702)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut_4_lut_4_lut (.A(n13870), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(n13750), .Z(n1435_adj_657)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 i11538_3_lut_4_lut_4_lut (.A(n13870), .B(rom_addr[3]), .C(n15110), 
         .D(rom_addr[4]), .Z(n12152)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i11538_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 i11254_4_lut_4_lut (.A(n13907), .B(rom_addr[4]), .C(n5137), .D(n684_adj_703), 
         .Z(n11868)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11254_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut (.A(n13863), .B(n13841), 
         .C(rom_addr[4]), .D(n13904), .Z(n1244)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11353 (.D0(n11844), .D1(n11850), .SD(rom_addr[6]), .Z(n11967));
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n13863), .B(n13841), 
         .C(rom_addr[4]), .D(n1483_adj_673), .Z(n1499_adj_704)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n13863), .B(n13841), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11322 (.D0(n63), .D1(n11754), .SD(rom_addr[6]), .Z(n11936));
    PFUMX i13074 (.BLUT(n13964), .ALUT(n13965), .C0(rom_addr[5]), .Z(n13966));
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n13847), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13750), .Z(n270)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11291 (.D0(n63_adj_554), .D1(n11700), .SD(rom_addr[6]), .Z(n11905));
    PFUMX i11288 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), .Z(n11902));
    LUT4 i11950_3_lut (.A(n13991), .B(n14003), .C(rom_addr[5]), .Z(n2110_adj_682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11950_3_lut.init = 16'hcaca;
    LUT4 i11314_3_lut (.A(n11919), .B(n11920), .C(rom_addr[7]), .Z(n11928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11314_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_630), 
          .C0(n13866), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11465_3_lut (.A(n13256), .B(n12076), .C(rom_addr[7]), .Z(n12079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11465_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491_adj_707), 
         .C(rom_addr[5]), .Z(n2492_adj_676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15116), .B(n13820), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 i11451_3_lut (.A(n13241), .B(n12063), .C(rom_addr[7]), .Z(n12065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11451_3_lut.init = 16'hcaca;
    LUT4 i11954_3_lut (.A(n11839), .B(n13981), .C(rom_addr[5]), .Z(n11841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11954_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13816), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12101_4_lut (.A(n2573), .B(n15107), .C(rom_addr[6]), .D(n13866), 
         .Z(n2685)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12101_4_lut.init = 16'hccca;
    LUT4 i11443_3_lut (.A(n12053), .B(n13220), .C(rom_addr[7]), .Z(n12057)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11443_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(n15112), .D(rom_addr[3]), .Z(n2108_adj_661)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15110), .Z(n109)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i7516_4_lut (.A(rom_addr[0]), .B(n13760), .C(n13787), .D(n6859), 
         .Z(n2237_adj_708)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7516_4_lut.init = 16'h0a88;
    LUT4 i6012_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6859)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6012_2_lut.init = 16'heeee;
    LUT4 i11433_3_lut (.A(n2237_adj_708), .B(n2300), .C(rom_addr[6]), 
         .Z(n12047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11433_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(n15110), .D(rom_addr[3]), .Z(n2009_adj_633)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11962_3_lut (.A(n14000), .B(n13939), .C(rom_addr[5]), .Z(n11682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11962_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(n13827), .D(rom_addr[3]), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13772), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 i5904_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6695)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5904_2_lut.init = 16'h6666;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_709), .ALUT(n1883_adj_710), 
          .C0(n13866), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13819), .Z(n124_adj_711)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11422_3_lut (.A(n12032), .B(n12033), .C(rom_addr[7]), .Z(n12036)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11422_3_lut.init = 16'hcaca;
    LUT4 i11967_3_lut (.A(n15123), .B(n14018), .C(rom_addr[5]), .Z(n2492_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11967_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n13977)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n13819), .B(n5137), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_712), 
          .C0(n11611), .Z(n1597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11329_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13947), 
         .Z(n11943)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11329_4_lut.init = 16'hca0a;
    LUT4 i11358_3_lut (.A(n11888), .B(n11898), .C(rom_addr[6]), .Z(n11972)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11358_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101), .ALUT(n1117_adj_713), 
          .C0(n13866), .Z(n1149_adj_571)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11313_3_lut (.A(n11917), .B(n11918), .C(rom_addr[7]), .Z(n11927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11313_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(n15117), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n13772), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 i11359_4_lut (.A(rom_addr[0]), .B(n13552), .C(rom_addr[6]), .D(n8405), 
         .Z(n11973)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11359_4_lut.init = 16'hcac0;
    PFUMX i12706 (.BLUT(n2237_adj_708), .ALUT(n13219), .C0(rom_addr[6]), 
          .Z(n13220));
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_680), .B(n1786_adj_616), 
         .C(rom_addr[5]), .Z(n1915_adj_656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_649), 
          .C0(n13866), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7586_4_lut (.A(rom_addr[0]), .B(n13795), .C(n5992), .D(rom_addr[5]), 
         .Z(n1852_adj_655)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7586_4_lut.init = 16'ha022;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364_adj_714), 
          .C0(n13896), .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13072 (.BLUT(n13961), .ALUT(n13962), .C0(rom_addr[0]), .Z(n13963));
    LUT4 i11554_4_lut (.A(n12221), .B(n380_adj_715), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12168)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11554_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n13872), .B(n13712), .C(rom_addr[4]), 
         .D(n13878), .Z(n380_adj_715)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n3997), .ALUT(n1692_adj_619), 
          .C0(n11618), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2721_3_lut (.A(n3520), .B(n6233), .C(rom_addr[6]), .Z(n3529)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2721_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_20 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n11434)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'heeee;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), .C(n13820), 
         .D(rom_addr[3]), .Z(n13515)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i4641_3_lut_4_lut_4_lut (.A(n13835), .B(n13773), .C(rom_addr[5]), 
         .D(n13856), .Z(n5449)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4641_3_lut_4_lut_4_lut.init = 16'h3f35;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466_adj_572), .ALUT(n1467_adj_716), 
          .C0(n11611), .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11169_3_lut_4_lut (.A(rom_addr[0]), .B(n13702), .C(rom_addr[5]), 
         .D(n1851), .Z(n11783)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11169_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n13702), 
         .C(n6090), .D(rom_addr[6]), .Z(n2110)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n13824), .Z(n890_adj_605)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n13976)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut.init = 16'h8080;
    LUT4 i11471_3_lut_4_lut (.A(rom_addr[0]), .B(n13683), .C(rom_addr[5]), 
         .D(n1309), .Z(n12085)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11471_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15126), .B(n444), .C(rom_addr[5]), 
         .Z(n445_adj_718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 i12056_3_lut (.A(n445_adj_718), .B(n11876), .C(rom_addr[6]), 
         .Z(n11970)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12056_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n13820), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11100_3_lut (.A(n557), .B(n572), .C(rom_addr[4]), .Z(n11714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11100_3_lut.init = 16'hcaca;
    LUT4 i11151_3_lut (.A(n475_adj_700), .B(n13689), .C(rom_addr[4]), 
         .Z(n11765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11151_3_lut.init = 16'hcaca;
    L6MUX21 i12701 (.D0(n13213), .D1(n13211), .SD(rom_addr[5]), .Z(n13214));
    LUT4 i11121_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13995)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11121_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 n858_bdd_3_lut_13019_4_lut (.A(rom_addr[0]), .B(n13900), .C(rom_addr[3]), 
         .D(n13820), .Z(n13547)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n858_bdd_3_lut_13019_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_719), .ALUT(n380_adj_720), 
          .C0(n13896), .Z(n381_adj_568)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n13835), 
         .B(rom_addr[5]), .C(n13790), .D(n13856), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 i11745_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n11753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11745_3_lut.init = 16'hcaca;
    LUT4 i11995_3_lut (.A(n11802), .B(n11803), .C(rom_addr[5]), .Z(n11804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11995_3_lut.init = 16'hcaca;
    PFUMX i11173 (.BLUT(n11783), .ALUT(n11784), .C0(rom_addr[6]), .Z(n11787));
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n13911), .Z(n220_adj_721)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    PFUMX i11174 (.BLUT(n11785), .ALUT(n11786), .C0(rom_addr[6]), .Z(n11788));
    LUT4 i11132_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), .C(rom_addr[3]), 
         .D(n15112), .Z(n11746)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11132_3_lut_4_lut.init = 16'h2f20;
    LUT4 n858_bdd_3_lut_12967_4_lut (.A(rom_addr[0]), .B(n13900), .C(n13824), 
         .D(rom_addr[3]), .Z(n13546)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n858_bdd_3_lut_12967_4_lut.init = 16'h22f0;
    PFUMX i12699 (.BLUT(n13212), .ALUT(n13894), .C0(rom_addr[3]), .Z(n13213));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n11712), .B(n444), .C(rom_addr[5]), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 i42_4_lut (.A(rom_addr[1]), .B(n13683), .C(rom_addr[5]), .D(n13783), 
         .Z(n11540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i42_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_adj_21 (.A(rom_addr[0]), .B(rom_addr[6]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_adj_21.init = 16'h8888;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n13853), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12177_2_lut (.A(rom_addr[7]), .B(rom_addr[6]), .Z(n11614)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12177_2_lut.init = 16'h7777;
    LUT4 i11599_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15122)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11599_3_lut_4_lut_then_4_lut.init = 16'h744c;
    LUT4 n2077_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13720), .C(rom_addr[4]), 
         .D(n13815), .Z(n13309)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n2077_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11226_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n13980)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i11226_4_lut_then_4_lut.init = 16'ha9c8;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n13853), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12007_3_lut (.A(n11734), .B(n13997), .C(rom_addr[5]), .Z(n11736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12007_3_lut.init = 16'hcaca;
    LUT4 i11412_3_lut_4_lut (.A(rom_addr[0]), .B(n13683), .C(rom_addr[5]), 
         .D(n1309_adj_644), .Z(n12026)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11412_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11226_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n13979)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11226_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_666), .B(n1596), 
         .C(rom_addr[5]), .Z(n1597_adj_624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_724), .ALUT(n2300_adj_725), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i10871_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11481)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10871_2_lut.init = 16'hdddd;
    PFUMX i11202 (.BLUT(n11814), .ALUT(n11815), .C0(rom_addr[6]), .Z(n11816));
    LUT4 rom_addr_1__bdd_4_lut_13060 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13920)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;
    defparam rom_addr_1__bdd_4_lut_13060.init = 16'h6414;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n13683), 
         .C(rom_addr[5]), .D(n1403_adj_702), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    LUT4 i11478_3_lut_4_lut (.A(rom_addr[0]), .B(n13720), .C(rom_addr[4]), 
         .D(n1435_adj_657), .Z(n12092)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11478_3_lut_4_lut.init = 16'hf101;
    LUT4 n2545_bdd_4_lut_4_lut (.A(n13881), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(n13750), .Z(n13550)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n2545_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n13881), .B(n13911), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n11676), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i7474_4_lut (.A(rom_addr[0]), .B(n13701), .C(n13766), .D(rom_addr[5]), 
         .Z(n190_adj_614)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7474_4_lut.init = 16'h0a22;
    LUT4 i1_4_lut_adj_22 (.A(n13683), .B(rom_addr[7]), .C(n6459), .D(rom_addr[5]), 
         .Z(n10382)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hcfee;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428), .B(n684_adj_594), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i11834_3_lut (.A(n12240), .B(n12241), .C(rom_addr[4]), .Z(n1978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11834_3_lut.init = 16'hcaca;
    L6MUX21 i11215 (.D0(n11827), .D1(n11828), .SD(rom_addr[6]), .Z(n11829));
    LUT4 i11787_3_lut (.A(n13920), .B(n635), .C(rom_addr[4]), .Z(n12232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11787_3_lut.init = 16'hcaca;
    LUT4 i12021_3_lut (.A(n13919), .B(n444_adj_726), .C(rom_addr[5]), 
         .Z(n11845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12021_3_lut.init = 16'hcaca;
    L6MUX21 i11224 (.D0(n11836), .D1(n11837), .SD(rom_addr[6]), .Z(n11838));
    LUT4 i5166_4_lut (.A(n13841), .B(n13795), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n5992)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5166_4_lut.init = 16'h3530;
    LUT4 i1_2_lut_rep_157_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n13856), .D(rom_addr[5]), .Z(n13704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_157_3_lut_4_lut.init = 16'hfffe;
    PFUMX i11230 (.BLUT(n11842), .ALUT(n11843), .C0(rom_addr[5]), .Z(n11844));
    LUT4 i11057_3_lut_4_lut (.A(rom_addr[0]), .B(n13760), .C(rom_addr[4]), 
         .D(n2426), .Z(n11671)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11057_3_lut_4_lut.init = 16'hf808;
    LUT4 i7451_4_lut (.A(rom_addr[0]), .B(n6048), .C(n13677), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7451_4_lut.init = 16'h0a22;
    LUT4 i12076_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12076_3_lut.init = 16'hcaca;
    LUT4 i41_4_lut (.A(rom_addr[5]), .B(n13734), .C(rom_addr[4]), .D(n13689), 
         .Z(n24)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i41_4_lut.init = 16'hcac0;
    LUT4 i11148_4_lut (.A(n13807), .B(n1276), .C(rom_addr[6]), .D(n4_adj_728), 
         .Z(n11762)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11148_4_lut.init = 16'hcac0;
    PFUMX i11236 (.BLUT(n11848), .ALUT(n11849), .C0(rom_addr[5]), .Z(n11850));
    LUT4 i11147_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n6233), 
         .Z(n11761)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11147_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n15116), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11091_3_lut_4_lut (.A(n13740), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_593), .Z(n11705)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11091_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11239 (.BLUT(n11851), .ALUT(n11852), .C0(rom_addr[5]), .Z(n11853));
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n13816), .Z(n428_adj_601)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 rom_addr_0__bdd_4_lut_13348 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13988)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13348.init = 16'h0da3;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n15110), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5867_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n13990)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5867_3_lut_4_lut_then_4_lut.init = 16'h4691;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n13900), 
         .C(rom_addr[3]), .D(n13911), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11244 (.BLUT(n11854), .ALUT(n11855), .C0(rom_addr[5]), .Z(n11858));
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283), .B(n2490), .C(rom_addr[4]), 
         .Z(n2491_adj_707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i11849_3_lut (.A(n2283_adj_583), .B(n2298), .C(rom_addr[4]), 
         .Z(n2299_adj_729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11849_3_lut.init = 16'hcaca;
    LUT4 i12087_3_lut (.A(n12174), .B(n12175), .C(rom_addr[7]), .Z(n1021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12087_3_lut.init = 16'hcaca;
    PFUMX i11245 (.BLUT(n11856), .ALUT(n11857), .C0(rom_addr[5]), .Z(n11859));
    LUT4 address_11__I_0_Mux_2_i2141_4_lut (.A(n13691), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(n13843), .Z(n2141_adj_730)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut.init = 16'h0aca;
    LUT4 i11558_4_lut (.A(n12236), .B(rom_addr[0]), .C(rom_addr[6]), .D(n5449), 
         .Z(n12172)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11558_4_lut.init = 16'h0aca;
    LUT4 i11529_4_lut (.A(n13954), .B(n126_adj_731), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12143)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11529_4_lut.init = 16'hcac0;
    PFUMX i12697 (.BLUT(n13776), .ALUT(n13209), .C0(rom_addr[4]), .Z(n13211));
    LUT4 i11556_3_lut (.A(n12168), .B(n12169), .C(rom_addr[7]), .Z(n510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11556_3_lut.init = 16'hcaca;
    PFUMX i13070 (.BLUT(n13958), .ALUT(n13959), .C0(rom_addr[1]), .Z(n13960));
    PFUMX i11249 (.BLUT(n11861), .ALUT(n11862), .C0(rom_addr[5]), .Z(n11863));
    L6MUX21 i11252 (.D0(n11864), .D1(n11865), .SD(rom_addr[5]), .Z(n11866));
    PFUMX i11257 (.BLUT(n11867), .ALUT(n11868), .C0(rom_addr[5]), .Z(n11871));
    LUT4 n12681_bdd_3_lut (.A(n13926), .B(n12680), .C(rom_addr[5]), .Z(n12682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12681_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n13894), 
         .C(rom_addr[3]), .D(n13820), .Z(n684_adj_594)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    LUT4 i11524_3_lut (.A(n13942), .B(n1978_adj_732), .C(rom_addr[5]), 
         .Z(n12138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11524_3_lut.init = 16'hcaca;
    PFUMX i11258 (.BLUT(n11869), .ALUT(n11870), .C0(rom_addr[5]), .Z(n11872));
    LUT4 i11123_3_lut_4_lut (.A(rom_addr[0]), .B(n13894), .C(rom_addr[3]), 
         .D(n15110), .Z(n11737)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11123_3_lut_4_lut.init = 16'h4f40;
    LUT4 i5867_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n13989)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5867_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13993)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hac51;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13992)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'ha800;
    LUT4 i12047_3_lut (.A(n13214), .B(n2173_adj_733), .C(rom_addr[6]), 
         .Z(n12046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12047_3_lut.init = 16'hcaca;
    LUT4 i11437_3_lut (.A(n12048), .B(n12049), .C(rom_addr[7]), .Z(n12051)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11437_3_lut.init = 16'hcaca;
    PFUMX i11265 (.BLUT(n11877), .ALUT(n11878), .C0(rom_addr[5]), .Z(n11879));
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n13894), 
         .C(rom_addr[3]), .D(n13911), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 i2_3_lut_4_lut (.A(n13867), .B(n13881), .C(rom_addr[5]), .D(rom_addr[0]), 
         .Z(n10112)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n13894), 
         .C(rom_addr[3]), .D(n13821), .Z(n205_adj_600)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    PFUMX i11267 (.BLUT(n11748), .ALUT(n891_adj_734), .C0(rom_addr[5]), 
          .Z(n11881));
    PFUMX i11271 (.BLUT(n11883), .ALUT(n11884), .C0(rom_addr[5]), .Z(n11885));
    LUT4 i7827_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(n13727), .C(rom_addr[0]), 
         .D(rom_addr[5]), .Z(n2684)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7827_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i4958_2_lut_rep_210_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13757)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4958_2_lut_rep_210_3_lut.init = 16'hf9f9;
    LUT4 i11312_3_lut (.A(n12890), .B(n11916), .C(rom_addr[7]), .Z(n11926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11312_3_lut.init = 16'hcaca;
    L6MUX21 i11274 (.D0(n11886), .D1(n11887), .SD(rom_addr[5]), .Z(n11888));
    LUT4 i11311_3_lut (.A(n13058), .B(n11914), .C(rom_addr[7]), .Z(n11925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11311_3_lut.init = 16'hcaca;
    PFUMX i11279 (.BLUT(n11889), .ALUT(n11890), .C0(rom_addr[5]), .Z(n11893));
    LUT4 i11355_3_lut (.A(n11863), .B(n11866), .C(rom_addr[6]), .Z(n11969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11355_3_lut.init = 16'hcaca;
    LUT4 i12156_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12354)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12156_2_lut.init = 16'h9999;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n13727), .B(n13777), 
         .C(rom_addr[5]), .D(n13951), .Z(n2173_adj_701)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11280 (.BLUT(n11891), .ALUT(n11892), .C0(rom_addr[5]), .Z(n11894));
    PFUMX i11284 (.BLUT(n11896), .ALUT(n11897), .C0(rom_addr[5]), .Z(n11898));
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(n13727), .B(n13777), 
         .C(rom_addr[5]), .D(n13923), .Z(n2173_adj_733)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46_adj_735), .B(n301), .C(rom_addr[4]), 
         .Z(n62_adj_736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    PFUMX i13066 (.BLUT(n13952), .ALUT(n13953), .C0(rom_addr[2]), .Z(n13954));
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12749), .B(n3070_adj_559), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    PFUMX i12677 (.BLUT(n13189), .ALUT(n13673), .C0(rom_addr[6]), .Z(n13190));
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n8878)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    LUT4 i7524_2_lut_rep_331 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13878)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7524_2_lut_rep_331.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n13867), 
         .D(rom_addr[2]), .Z(n11372)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 i1_3_lut_rep_219_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n13766)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_rep_219_4_lut.init = 16'heffe;
    LUT4 i12261_2_lut_rep_218_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13765)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12261_2_lut_rep_218_3_lut.init = 16'h0101;
    LUT4 i7633_2_lut_rep_229_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n13776)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7633_2_lut_rep_229_3_lut.init = 16'h1010;
    LUT4 i7862_2_lut_3_lut_4_lut (.A(rom_addr[5]), .B(n13835), .C(rom_addr[0]), 
         .D(n13783), .Z(n2237_adj_724)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7862_2_lut_3_lut_4_lut.init = 16'h0040;
    PFUMX i11289 (.BLUT(n1117_adj_681), .ALUT(n11342), .C0(rom_addr[5]), 
          .Z(n11903));
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n13824), .B(n603), .C(rom_addr[3]), 
         .Z(n699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i7439_2_lut_rep_151_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13698)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7439_2_lut_rep_151_3_lut_4_lut.init = 16'hf080;
    LUT4 n2981_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13341)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2981_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n13820), .B(n13824), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n13734), .B(n13820), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860_adj_563)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    PFUMX i2328 (.BLUT(n10181), .ALUT(n3135), .C0(rom_addr[6]), .Z(n3136));
    LUT4 i11508_3_lut (.A(n13313), .B(n12121), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13462), 
         .C(rom_addr[7]), .D(n3529), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 i11159_3_lut (.A(n1789_adj_696), .B(n2044), .C(rom_addr[8]), 
         .Z(n11773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11159_3_lut.init = 16'hcaca;
    LUT4 i12079_3_lut (.A(n12143), .B(n13349), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12079_3_lut.init = 16'hcaca;
    LUT4 i7463_4_lut_4_lut (.A(n13795), .B(rom_addr[4]), .C(n4017), .D(rom_addr[0]), 
         .Z(n1978_adj_732)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7463_4_lut_4_lut.init = 16'h7400;
    PFUMX i12675 (.BLUT(n13733), .ALUT(n13187), .C0(rom_addr[4]), .Z(n13188));
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n333)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut_4_lut.init = 16'h5810;
    LUT4 i11430_3_lut (.A(n12041), .B(n12042), .C(rom_addr[7]), .Z(n12044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11430_3_lut.init = 16'hcaca;
    PFUMX i13064 (.BLUT(n13949), .ALUT(n13950), .C0(rom_addr[0]), .Z(n13951));
    LUT4 i11429_3_lut (.A(n13173), .B(n12040), .C(rom_addr[7]), .Z(n12043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11429_3_lut.init = 16'hcaca;
    LUT4 i11310_3_lut (.A(n11911), .B(n12884), .C(rom_addr[7]), .Z(n11924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11310_3_lut.init = 16'hcaca;
    LUT4 i11416_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3136), 
         .Z(n12030)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11416_4_lut.init = 16'hca0a;
    LUT4 i11415_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3078), 
         .Z(n12029)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11415_4_lut.init = 16'hc0ca;
    LUT4 i11200_3_lut_4_lut (.A(rom_addr[1]), .B(n13716), .C(rom_addr[5]), 
         .D(n62_adj_736), .Z(n11814)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11200_3_lut_4_lut.init = 16'hf202;
    LUT4 i11559_3_lut (.A(n12171), .B(n12172), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11559_3_lut.init = 16'hcaca;
    LUT4 i11391_3_lut (.A(n13344), .B(n12158), .C(rom_addr[7]), .Z(n12005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11391_3_lut.init = 16'hcaca;
    LUT4 i11390_3_lut (.A(n12125), .B(n6719), .C(rom_addr[7]), .Z(n12004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11390_3_lut.init = 16'hcaca;
    LUT4 i11385_3_lut (.A(n11838), .B(n11847), .C(rom_addr[7]), .Z(n11999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11385_3_lut.init = 16'hcaca;
    LUT4 i11384_3_lut (.A(n11816), .B(n11829), .C(rom_addr[7]), .Z(n11998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11384_3_lut.init = 16'hcaca;
    LUT4 i11393_3_lut (.A(n12000), .B(n12001), .C(rom_addr[8]), .Z(n12007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11393_3_lut.init = 16'hcaca;
    LUT4 i11209_3_lut_4_lut (.A(rom_addr[0]), .B(n13720), .C(rom_addr[4]), 
         .D(n13815), .Z(n11823)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11209_3_lut_4_lut.init = 16'hf202;
    LUT4 i11372_3_lut (.A(n11973), .B(n11974), .C(rom_addr[7]), .Z(n11986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11372_3_lut.init = 16'hcaca;
    LUT4 i11309_3_lut (.A(n11909), .B(n11910), .C(rom_addr[7]), .Z(n11923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11309_3_lut.init = 16'hcaca;
    LUT4 i7835_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n13755), 
         .D(rom_addr[3]), .Z(n3243)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7835_4_lut_4_lut.init = 16'hd100;
    LUT4 i11371_3_lut (.A(n11971), .B(n11972), .C(rom_addr[7]), .Z(n11985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11371_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n13720), 
         .C(n13773), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    LUT4 i11308_3_lut (.A(n11907), .B(n11908), .C(rom_addr[7]), .Z(n11922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11308_3_lut.init = 16'hcaca;
    LUT4 i11723_3_lut (.A(n844), .B(n859), .C(rom_addr[4]), .Z(n11780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11723_3_lut.init = 16'hcaca;
    LUT4 i11307_3_lut (.A(n11905), .B(n11906), .C(rom_addr[7]), .Z(n11921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11307_3_lut.init = 16'hcaca;
    LUT4 i7601_2_lut_rep_195_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13742)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7601_2_lut_rep_195_3_lut_3_lut.init = 16'h5454;
    LUT4 n2286_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684_adj_703)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2286_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i7590_2_lut_rep_230_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n13777)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7590_2_lut_rep_230_2_lut.init = 16'h4444;
    LUT4 i7662_2_lut_rep_186_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13733)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7662_2_lut_rep_186_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n13692), .D(n13905), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i12258_2_lut_rep_289 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n13836)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12258_2_lut_rep_289.init = 16'h1111;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n1228_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut.init = 16'h1919;
    L6MUX21 i12661 (.D0(n13172), .D1(n13170), .SD(rom_addr[6]), .Z(n13173));
    LUT4 i7682_2_lut_rep_127_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_738), 
         .Z(n13674)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7682_2_lut_rep_127_3_lut.init = 16'h1010;
    PFUMX i12659 (.BLUT(n13171), .ALUT(n2109_adj_739), .C0(rom_addr[5]), 
          .Z(n13172));
    LUT4 i11099_4_lut (.A(n13907), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n11713)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11099_4_lut.init = 16'hcac0;
    LUT4 i11270_3_lut_4_lut (.A(n13870), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n11884)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11270_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n13804), .B(n13789), 
         .C(rom_addr[5]), .D(n2141_adj_730), .Z(n2173_adj_683)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3189_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n3997)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3189_3_lut_3_lut.init = 16'h7474;
    LUT4 i7750_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13190), 
         .Z(n3069_adj_557)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7750_2_lut_3_lut.init = 16'h1010;
    LUT4 i7718_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685), 
         .Z(n3069_adj_556)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7718_2_lut_3_lut.init = 16'h1010;
    LUT4 i12125_3_lut (.A(n1278), .B(n1533), .C(rom_addr[8]), .Z(n11772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12125_3_lut.init = 16'hcaca;
    LUT4 i11157_3_lut (.A(n766_adj_585), .B(n1021_adj_564), .C(rom_addr[8]), 
         .Z(n11771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11157_3_lut.init = 16'hcaca;
    LUT4 i7527_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n46_adj_735)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7527_4_lut_4_lut.init = 16'h3d00;
    LUT4 i12129_3_lut (.A(n11987), .B(n11988), .C(rom_addr[8]), .Z(n11993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12129_3_lut.init = 16'hcaca;
    LUT4 i11144_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n13838), .Z(n11758)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11144_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13819), 
         .C(rom_addr[3]), .D(n13863), .Z(n731_adj_740)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11349_3_lut (.A(n11958), .B(n11959), .C(rom_addr[8]), .Z(n11963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11349_3_lut.init = 16'hcaca;
    LUT4 i11348_3_lut (.A(n11956), .B(n11957), .C(rom_addr[8]), .Z(n11962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11348_3_lut.init = 16'hcaca;
    LUT4 i11163_3_lut (.A(n13730), .B(n731), .C(rom_addr[4]), .Z(n11777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11163_3_lut.init = 16'hcaca;
    PFUMX i12657 (.BLUT(n13169), .ALUT(n13685), .C0(rom_addr[5]), .Z(n13170));
    LUT4 i5841_3_lut_3_lut_rep_291 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n13838)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5841_3_lut_3_lut_rep_291.init = 16'hd3d3;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), .C(n13804), 
         .D(rom_addr[1]), .Z(n6090)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i5842_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n6680)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5842_3_lut_4_lut_4_lut.init = 16'hd388;
    PFUMX i11455 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12069));
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n4017), .Z(n1786)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n6316)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13790), 
         .C(rom_addr[3]), .D(n13872), .Z(n2298_adj_587)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11599_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n15121)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11599_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 i11255_3_lut_4_lut (.A(rom_addr[1]), .B(n13878), .C(rom_addr[4]), 
         .D(n731_adj_740), .Z(n11869)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11255_3_lut_4_lut.init = 16'hf101;
    LUT4 i12174_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n11618)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12174_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i11066_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13999)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11066_3_lut_4_lut_then_4_lut.init = 16'ha883;
    PFUMX i11456 (.BLUT(n2268_adj_741), .ALUT(n2299_adj_729), .C0(rom_addr[5]), 
          .Z(n12070));
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n13686), .D(n4316), .Z(n924)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13797), 
         .C(rom_addr[3]), .D(n13872), .Z(n2332)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7577_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13692), 
         .D(n13743), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7577_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13827), 
         .C(rom_addr[3]), .D(n13872), .Z(n364_adj_562)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283), .B(n2298_adj_587), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i11066_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13998)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11066_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i10884_2_lut_rep_236_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n13783)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10884_2_lut_rep_236_2_lut.init = 16'hdddd;
    LUT4 i7518_4_lut (.A(rom_addr[0]), .B(n13779), .C(n13800), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7518_4_lut.init = 16'h0a22;
    LUT4 i12172_2_lut_rep_167_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13714)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12172_2_lut_rep_167_2_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n13780), .B(n15113), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_742)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i11545_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4780), 
         .D(n13819), .Z(n12159)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11545_4_lut_4_lut.init = 16'h7340;
    LUT4 i11405_3_lut (.A(n12017), .B(n12018), .C(rom_addr[10]), .Z(n12019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11405_3_lut.init = 16'hcaca;
    PFUMX i11457 (.BLUT(n2333), .ALUT(n2364), .C0(rom_addr[5]), .Z(n12071));
    LUT4 rom_addr_2__bdd_4_lut_13310 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13933)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13310.init = 16'h98d1;
    LUT4 i7522_4_lut (.A(rom_addr[0]), .B(n13814), .C(n4510), .D(rom_addr[4]), 
         .Z(n2523_adj_743)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7522_4_lut.init = 16'h0a22;
    LUT4 i11957_3_lut (.A(n2523_adj_743), .B(n2554_adj_742), .C(rom_addr[5]), 
         .Z(n2555_adj_675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11957_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n13900), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 n1101_bdd_2_lut_12574_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n13901), .Z(n13052)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1101_bdd_2_lut_12574_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i7610_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13742), .C(rom_addr[3]), 
         .D(n13772), .Z(n1565_adj_745)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7610_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 n1243_bdd_2_lut_12630_4_lut (.A(rom_addr[2]), .B(n13835), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n12733)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_2_lut_12630_4_lut.init = 16'h8400;
    LUT4 i11154_3_lut (.A(n684_adj_703), .B(n699_adj_691), .C(rom_addr[4]), 
         .Z(n11768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11154_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n13750), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_746), .Z(n2523_adj_747)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i1276_4_lut_4_lut (.A(rom_addr[4]), .B(n4_adj_3), 
         .C(rom_addr[5]), .D(n11730), .Z(n1276_adj_642)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1276_4_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n13872), .D(n13802), .Z(n1483)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i11398_3_lut (.A(n12010), .B(n12011), .C(rom_addr[10]), .Z(n12012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11398_3_lut.init = 16'hcaca;
    LUT4 i2712_4_lut_4_lut (.A(rom_addr[2]), .B(n11434), .C(rom_addr[5]), 
         .D(n6316), .Z(n3520)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2712_4_lut_4_lut.init = 16'hfd0d;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(n13870), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13776), .Z(n891_adj_734)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'hf606;
    LUT4 i7745_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n13818), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n1596_adj_749)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7745_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n11776), .B(n3070_adj_750), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 i11736_3_lut (.A(n589_adj_697), .B(n604), .C(rom_addr[4]), .Z(n11764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11736_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_576), .B(n13779), 
         .C(rom_addr[4]), .Z(n444_adj_726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_751)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_138_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(n13804), .D(rom_addr[0]), .Z(n13685)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_138_3_lut_4_lut_4_lut.init = 16'h4000;
    PFUMX i11458 (.BLUT(n6723), .ALUT(n2427_adj_671), .C0(rom_addr[5]), 
          .Z(n12072));
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914_adj_622), .D(n12354), .Z(n1883_adj_710)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11738_3_lut (.A(n11701), .B(n11702), .C(rom_addr[4]), .Z(n11703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11738_3_lut.init = 16'hcaca;
    LUT4 i5851_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13820), 
         .D(n13911), .Z(n6689)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5851_4_lut_4_lut.init = 16'h7340;
    LUT4 i7565_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n13816), .C(rom_addr[3]), 
         .D(n13740), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7565_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i12274_2_lut_rep_129_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n13818), .Z(n13676)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12274_2_lut_rep_129_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12045), .B(n12683), .C(rom_addr[9]), 
         .D(n13836), .Z(n3070_adj_750)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    PFUMX i11459 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12073));
    LUT4 i11590_3_lut_4_lut (.A(rom_addr[1]), .B(n15114), .C(rom_addr[4]), 
         .D(n2267), .Z(n12204)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11590_3_lut_4_lut.init = 16'hf101;
    LUT4 n2573_bdd_4_lut_12681_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13924)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n2573_bdd_4_lut_12681_else_4_lut.init = 16'h4801;
    PFUMX i11460 (.BLUT(n2523_adj_747), .ALUT(n2554_adj_752), .C0(rom_addr[5]), 
          .Z(n12074));
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_719)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    LUT4 i7688_2_lut_rep_152_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13699)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7688_2_lut_rep_152_3_lut_4_lut.init = 16'h0080;
    PFUMX i11473 (.BLUT(n1436), .ALUT(n1467_adj_754), .C0(rom_addr[5]), 
          .Z(n12087));
    LUT4 i1_2_lut_rep_334 (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n13881)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_334.init = 16'h8888;
    LUT4 i1_2_lut_rep_187_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13734)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_187_3_lut_4_lut.init = 16'h0008;
    LUT4 i7548_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15112), 
         .D(n13790), .Z(n1851_c)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7548_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_181_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13728)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_181_3_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0c80;
    LUT4 i1_2_lut_rep_159_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n13835), .D(rom_addr[2]), .Z(n13706)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_159_3_lut_4_lut_4_lut.init = 16'hffdf;
    PFUMX i11474 (.BLUT(n1499_adj_704), .ALUT(n1530_adj_626), .C0(rom_addr[5]), 
          .Z(n12088));
    LUT4 i11107_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15125)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11107_then_4_lut.init = 16'h5924;
    LUT4 i3964_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4772)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3964_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 n1101_bdd_2_lut_12984_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(n13808), .D(n13905), .Z(n13053)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1101_bdd_2_lut_12984_4_lut_4_lut.init = 16'h5140;
    LUT4 i2327_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n13728), 
         .D(n13787), .Z(n3135)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2327_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14002)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 i12207_2_lut_rep_220_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13767)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12207_2_lut_rep_220_3_lut.init = 16'h0909;
    LUT4 i7444_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13827), 
         .D(n13692), .Z(n125)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7444_4_lut_4_lut.init = 16'h5140;
    PFUMX i11482 (.BLUT(n12092), .ALUT(n12093), .C0(rom_addr[5]), .Z(n12096));
    LUT4 address_11__I_0_Mux_0_i2555_4_lut_4_lut (.A(rom_addr[4]), .B(n13698), 
         .C(rom_addr[5]), .D(n13699), .Z(n2555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut_4_lut.init = 16'h4f40;
    LUT4 i7484_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_611)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7484_2_lut_3_lut.init = 16'h9090;
    LUT4 i1_2_lut_rep_247_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13794)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_247_3_lut.init = 16'h6060;
    LUT4 i11107_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15124)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11107_else_4_lut.init = 16'h5092;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i5162_2_lut_rep_227_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13774)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5162_2_lut_rep_227_3_lut.init = 16'h1e1e;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475_adj_700), .C(rom_addr[4]), 
         .Z(n476_adj_755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12001_3_lut (.A(n476_adj_755), .B(n13969), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12001_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1946_adj_689)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut.init = 16'h6909;
    LUT4 i7644_2_lut_rep_255_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n13802)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7644_2_lut_rep_255_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14001)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    PFUMX i11483 (.BLUT(n12094), .ALUT(n12095), .C0(rom_addr[5]), .Z(n12097));
    LUT4 i1_2_lut_rep_226_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13773)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_226_3_lut_4_lut.init = 16'h8000;
    LUT4 i11145_3_lut (.A(n557_adj_756), .B(n526_adj_573), .C(rom_addr[4]), 
         .Z(n11759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11145_3_lut.init = 16'hcaca;
    LUT4 i10886_2_lut_rep_293 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n13840)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10886_2_lut_rep_293.init = 16'heeee;
    LUT4 i1_2_lut_rep_270_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13817)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_270_3_lut.init = 16'h0808;
    PFUMX i11487 (.BLUT(n1692), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n12101));
    LUT4 i7954_2_lut_rep_294 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13841)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7954_2_lut_rep_294.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n6459)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0008;
    LUT4 i3702_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n4510)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3702_3_lut_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i11488 (.BLUT(n1755_c), .ALUT(n1786_adj_693), .C0(rom_addr[5]), 
          .Z(n12102));
    LUT4 i7674_2_lut_rep_261_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n13808)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7674_2_lut_rep_261_3_lut.init = 16'h0808;
    LUT4 n1211_bdd_3_lut_12816_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13345)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n1211_bdd_3_lut_12816_3_lut_4_lut.init = 16'h8088;
    LUT4 i7426_2_lut_rep_178_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13725)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7426_2_lut_rep_178_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i11492 (.BLUT(n1820_adj_625), .ALUT(n1851_adj_639), .C0(rom_addr[5]), 
          .Z(n12106));
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444_adj_581), .Z(n2268_adj_741)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i11241_3_lut_4_lut (.A(n13870), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428_adj_576), .Z(n11855)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11241_3_lut_4_lut.init = 16'hf909;
    LUT4 i11587_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12201)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11587_3_lut_4_lut.init = 16'hf808;
    PFUMX i11493 (.BLUT(n1883_adj_615), .ALUT(n1914_adj_751), .C0(rom_addr[5]), 
          .Z(n12107));
    L6MUX21 i12609 (.D0(n13101), .D1(n13099), .SD(rom_addr[6]), .Z(n13102));
    LUT4 i11142_3_lut (.A(n236), .B(n491), .C(rom_addr[4]), .Z(n11756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11142_3_lut.init = 16'hcaca;
    PFUMX i13061 (.BLUT(n13945), .ALUT(n13946), .C0(rom_addr[1]), .Z(n13947));
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_752)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 i11141_3_lut (.A(n13689), .B(n220_adj_721), .C(rom_addr[4]), 
         .Z(n11755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11141_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_713)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    PFUMX i12607 (.BLUT(n1676_adj_672), .ALUT(n13100), .C0(n13866), .Z(n13101));
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    PFUMX i11494 (.BLUT(n1947), .ALUT(n1978), .C0(rom_addr[5]), .Z(n12108));
    LUT4 i12004_3_lut (.A(n11755), .B(n11756), .C(rom_addr[5]), .Z(n11757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12004_3_lut.init = 16'hcaca;
    LUT4 i7540_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7540_4_lut_4_lut_4_lut.init = 16'h8030;
    PFUMX i11495 (.BLUT(n2010_adj_634), .ALUT(n6659), .C0(rom_addr[5]), 
          .Z(n12109));
    LUT4 i11232_3_lut (.A(n476), .B(n507), .C(rom_addr[5]), .Z(n11846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11232_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_24 (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n11359)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_adj_24.init = 16'h2222;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2025)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2025_3_lut_4_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i1_2_lut_rep_149_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13696)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_149_3_lut_4_lut.init = 16'h0f1e;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054_adj_662), .ALUT(n1085_c), 
          .C0(rom_addr[5]), .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14005)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0521;
    LUT4 i11216_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1211), .Z(n11830)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11216_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    PFUMX i5161 (.BLUT(n12249), .ALUT(n12250), .C0(rom_addr[5]), .Z(n8405));
    PFUMX i11500 (.BLUT(n11343), .ALUT(n10112), .C0(rom_addr[6]), .Z(n12114));
    LUT4 i7749_2_lut_rep_233_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13780)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7749_2_lut_rep_233_3_lut.init = 16'h8080;
    LUT4 i11197_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13901), .C(rom_addr[4]), 
         .D(n13761), .Z(n11811)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;
    defparam i11197_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 i7964_2_lut_rep_336 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n13883)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7964_2_lut_rep_336.init = 16'hdddd;
    PFUMX i11504 (.BLUT(n1436_c), .ALUT(n1467), .C0(rom_addr[5]), .Z(n12118));
    LUT4 i7965_2_lut_rep_224_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n13771)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7965_2_lut_rep_224_3_lut.init = 16'hd0d0;
    LUT4 i7951_2_lut_rep_249_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n13796)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7951_2_lut_rep_249_3_lut.init = 16'h0d0d;
    LUT4 i7798_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7798_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i11505 (.BLUT(n1499), .ALUT(n1530_adj_660), .C0(rom_addr[5]), 
          .Z(n12119));
    LUT4 i7608_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13930)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7608_4_lut_4_lut_else_4_lut.init = 16'h0045;
    PFUMX i11509 (.BLUT(n1565_adj_745), .ALUT(n1596_adj_749), .C0(rom_addr[5]), 
          .Z(n12123));
    LUT4 i7726_2_lut_rep_246_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13793)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i7726_2_lut_rep_246_3_lut_4_lut.init = 16'h0888;
    LUT4 i7578_2_lut_rep_353 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13900)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7578_2_lut_rep_353.init = 16'hbbbb;
    LUT4 i5898_2_lut_rep_354 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13901)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5898_2_lut_rep_354.init = 16'h8888;
    LUT4 i7729_2_lut_rep_221_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n13768)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7729_2_lut_rep_221_3_lut.init = 16'h0808;
    PFUMX i11510 (.BLUT(n1628_adj_757), .ALUT(n1659_adj_658), .C0(rom_addr[5]), 
          .Z(n12124));
    PFUMX i13058 (.BLUT(n13940), .ALUT(n13941), .C0(rom_addr[0]), .Z(n13942));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867_adj_709)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'hcc10;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut.init = 16'h9090;
    LUT4 i10865_2_lut_rep_296 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n13843)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10865_2_lut_rep_296.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13901), 
         .C(rom_addr[4]), .D(n13799), .Z(n1628_adj_757)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 i7691_2_lut_rep_194_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13741)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7691_2_lut_rep_194_3_lut_4_lut.init = 16'h9000;
    PFUMX i11514 (.BLUT(n1692_adj_654), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12128));
    LUT4 i7575_2_lut_rep_272_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13819)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7575_2_lut_rep_272_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444_adj_606)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0430;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut (.A(rom_addr[0]), .B(n13901), 
         .C(rom_addr[5]), .D(n13963), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut.init = 16'hf404;
    PFUMX i12605 (.BLUT(n13723), .ALUT(n13098), .C0(rom_addr[5]), .Z(n13099));
    PFUMX i11515 (.BLUT(n1755), .ALUT(n1786_adj_652), .C0(rom_addr[5]), 
          .Z(n12129));
    LUT4 i11600_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14017)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11600_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i5061_2_lut_rep_342 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n13889)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5061_2_lut_rep_342.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14004)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i12294_2_lut_rep_298 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n13845)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12294_2_lut_rep_298.init = 16'h1111;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2283_adj_607)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h6003;
    LUT4 i6_1_lut_rep_343 (.A(rom_addr[5]), .Z(n13890)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i6_1_lut_rep_343.init = 16'h5555;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n13733), .Z(n2364_adj_714)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i5062_2_lut_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n5883)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5062_2_lut_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8878), 
         .C(rom_addr[4]), .D(n13772), .Z(n1403_adj_760)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 address_11__I_0_Mux_2_i1213_3_lut_4_lut (.A(n13804), .B(n13881), 
         .C(rom_addr[5]), .D(n1212_adj_620), .Z(n1213_adj_641)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1213_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12579 (.D0(n13057), .D1(n13054), .SD(rom_addr[6]), .Z(n13058));
    LUT4 i1_2_lut_rep_241_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n13788)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_241_3_lut.init = 16'h8080;
    LUT4 i11054_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n2573_adj_685), .Z(n11668)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13840), .C(rom_addr[3]), 
         .D(n13894), .Z(n11343)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    PFUMX i12577 (.BLUT(n13056), .ALUT(n13055), .C0(rom_addr[5]), .Z(n13057));
    LUT4 i11600_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14016)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11600_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i3209_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4017)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3209_3_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668_adj_542), .C(rom_addr[4]), 
         .Z(n828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n13774), .Z(n828_adj_550)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13835), 
         .C(n13856), .D(rom_addr[7]), .Z(n10381)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n13800), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_c), 
         .C(rom_addr[4]), .D(n13712), .Z(n380_adj_720)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n13711), 
         .C(rom_addr[0]), .D(n46), .Z(n62_adj_553)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_735), 
         .C(n13716), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    PFUMX i11534 (.BLUT(n12146), .ALUT(n12147), .C0(rom_addr[5]), .Z(n12148));
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_666), 
         .C(n2395), .Z(n1596_adj_712)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3955_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3955_3_lut_3_lut.init = 16'hcbcb;
    LUT4 i12212_2_lut_rep_300 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n13847)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12212_2_lut_rep_300.init = 16'h7777;
    LUT4 n8842_bdd_2_lut_13030_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n12914)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n8842_bdd_2_lut_13030_3_lut_4_lut.init = 16'h0007;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n13727), 
         .C(rom_addr[0]), .D(n379_adj_580), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11344), 
         .C(n4733), .D(n13717), .Z(n828_adj_543)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 i2_3_lut_4_lut_4_lut_adj_25 (.A(rom_addr[5]), .B(n13845), .C(rom_addr[0]), 
         .D(n13894), .Z(n10092)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut_adj_25.init = 16'h4000;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n3949), 
         .C(n13800), .D(rom_addr[0]), .Z(n1467_adj_716)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    PFUMX i11537 (.BLUT(n12149), .ALUT(n12150), .C0(rom_addr[5]), .Z(n12151));
    PFUMX i11542 (.BLUT(n12152), .ALUT(n12153), .C0(rom_addr[5]), .Z(n12156));
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_761), 
         .C(n13903), .D(n13722), .Z(n1723_adj_4)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 n6637_bdd_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[7]), 
         .C(n13704), .D(n13702), .Z(n13371)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n6637_bdd_3_lut_4_lut_4_lut.init = 16'hfc74;
    LUT4 i7405_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13712), 
         .D(n13733), .Z(n2300_adj_725)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7405_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i11228_3_lut_4_lut (.A(rom_addr[1]), .B(n13841), .C(rom_addr[4]), 
         .D(n30), .Z(n11842)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11228_3_lut_4_lut.init = 16'hf808;
    PFUMX i12575 (.BLUT(n13053), .ALUT(n13052), .C0(rom_addr[5]), .Z(n13054));
    PFUMX i11543 (.BLUT(n12154), .ALUT(n12155), .C0(rom_addr[5]), .Z(n12157));
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n13894), .C(n13867), 
         .D(rom_addr[0]), .Z(n11375)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_763)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n13800), .D(rom_addr[0]), .Z(n1530_adj_548)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n2545_bdd_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13549)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n2545_bdd_3_lut_3_lut_4_lut.init = 16'hf101;
    PFUMX i11547 (.BLUT(n12159), .ALUT(n12160), .C0(rom_addr[5]), .Z(n12161));
    LUT4 n12915_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n12914), 
         .D(n12915), .Z(n13673)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n12915_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n13870), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11489), .Z(n1212_adj_674)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n13870), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_148_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13695)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_148_3_lut_3_lut_4_lut.init = 16'h0080;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_adj_5), .ALUT(n11374), .C0(rom_addr[5]), 
          .Z(n126_adj_731)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_670)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n13682), .Z(n2621_adj_765)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    PFUMX i11553 (.BLUT(n12165), .ALUT(n12166), .C0(rom_addr[5]), .Z(n12167));
    LUT4 i7603_4_lut (.A(n13782), .B(rom_addr[4]), .C(n13870), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7603_4_lut.init = 16'hc088;
    LUT4 n1293_bdd_4_lut (.A(n13691), .B(n13843), .C(n13893), .D(rom_addr[4]), 
         .Z(n13398)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut.init = 16'h30aa;
    LUT4 i1_2_lut_rep_358 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13905)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_358.init = 16'h2222;
    PFUMX i11568 (.BLUT(n12180), .ALUT(n12181), .C0(rom_addr[5]), .Z(n12182));
    LUT4 i11596_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n13841), .Z(n12210)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11596_3_lut_4_lut.init = 16'hf808;
    LUT4 i5834_3_lut_rep_303 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n13850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5834_3_lut_rep_303.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13935)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut (.A(rom_addr[0]), .B(n13835), 
         .C(rom_addr[4]), .D(n2108), .Z(n2109_adj_739)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut.init = 16'hf808;
    LUT4 i12284_2_lut_rep_306 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n13853)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12284_2_lut_rep_306.init = 16'hdddd;
    LUT4 i12279_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11592)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12279_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i11577 (.BLUT(n12189), .ALUT(n12190), .C0(rom_addr[5]), .Z(n12191));
    L6MUX21 i12375 (.D0(n12748), .D1(n12745), .SD(rom_addr[9]), .Z(n12749));
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), 
         .C(rom_addr[4]), .D(n2444), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_668), .B(n1914_adj_622), 
         .C(rom_addr[5]), .Z(n1915_adj_627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 i3925_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4733)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3925_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i5914_2_lut_rep_346 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13893)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5914_2_lut_rep_346.init = 16'h6666;
    LUT4 i1_2_lut_rep_309 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n13856)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_309.init = 16'heeee;
    LUT4 n12879_bdd_3_lut (.A(n12879), .B(n924_adj_545), .C(rom_addr[5]), 
         .Z(n12880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12879_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_155_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_155_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3718_2_lut_rep_213_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13760)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3718_2_lut_rep_213_3_lut.init = 16'h6060;
    PFUMX i12373 (.BLUT(n12747), .ALUT(n12746), .C0(rom_addr[8]), .Z(n12748));
    LUT4 i2_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_686)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i7466_2_lut_rep_242_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13789)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7466_2_lut_rep_242_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    PFUMX i12334 (.BLUT(n13748), .ALUT(n12664), .C0(n13890), .Z(n12665));
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_579)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 i4029_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n4837)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4029_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i7379_2_lut_rep_312 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n13859)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7379_2_lut_rep_312.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[6]), .Z(n4_adj_761)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h9990;
    LUT4 i5824_3_lut_4_lut (.A(n13750), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6661), .Z(n6662)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5824_3_lut_4_lut.init = 16'hf808;
    LUT4 i3747_3_lut_rep_232_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13779)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3747_3_lut_rep_232_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i11186_4_lut (.A(n13733), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n11800)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11186_4_lut.init = 16'hca0a;
    LUT4 i7509_2_lut_rep_174_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13721)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7509_2_lut_rep_174_3_lut_4_lut.init = 16'h0090;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut.init = 16'h3930;
    PFUMX i11589 (.BLUT(n12201), .ALUT(n12202), .C0(rom_addr[5]), .Z(n2237_adj_663));
    LUT4 i7417_2_lut_rep_250_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13797)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7417_2_lut_rep_250_3_lut.init = 16'h9090;
    LUT4 i5905_2_lut_rep_371 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15114)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5905_2_lut_rep_371.init = 16'h6666;
    LUT4 i12103_3_lut_4_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(n2621_adj_765), 
         .D(n12989), .Z(n2685_adj_738)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12103_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7645_2_lut_rep_145_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n13692)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7645_2_lut_rep_145_2_lut_3_lut.init = 16'h1010;
    LUT4 i7646_2_lut_rep_225_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13772)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7646_2_lut_rep_225_3_lut.init = 16'hfefe;
    LUT4 i5835_2_lut_rep_248_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n13795)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5835_2_lut_rep_248_3_lut.init = 16'hf6f6;
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13569)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557_adj_756)) /* synthesis lut_function=(A (C (D))+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hb005;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_133_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n13733), .C(rom_addr[4]), .D(n13788), .Z(n13680)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_133_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i12533 (.BLUT(n12988), .ALUT(n15111), .C0(rom_addr[3]), .Z(n12989));
    PFUMX i12981 (.BLUT(n13570), .ALUT(n13569), .C0(rom_addr[0]), .Z(n13571));
    LUT4 i1_2_lut_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n4_adj_728)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i11755_3_lut (.A(n1228_adj_763), .B(n1243_adj_565), .C(rom_addr[4]), 
         .Z(n11731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11755_3_lut.init = 16'hcaca;
    PFUMX i11592 (.BLUT(n12204), .ALUT(n12205), .C0(rom_addr[5]), .Z(n2300_adj_664));
    LUT4 n2573_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n2573_adj_685), 
         .C(rom_addr[4]), .D(n13799), .Z(n12902)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam n2573_bdd_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n221_bdd_3_lut_13144 (.A(n221), .B(n13346), .C(rom_addr[5]), 
         .Z(n13347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_13144.init = 16'hcaca;
    PFUMX i12364 (.BLUT(n12734), .ALUT(n12733), .C0(rom_addr[5]), .Z(n12735));
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n6656), 
         .C(rom_addr[4]), .D(n13788), .Z(n1467_adj_754)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n221_bdd_4_lut (.A(n13680), .B(n5367), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n13348)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut.init = 16'haa30;
    LUT4 i5907_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n6748)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5907_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    L6MUX21 i12972 (.D0(n13551), .D1(n13548), .SD(rom_addr[5]), .Z(n13552));
    PFUMX i12371 (.BLUT(n12744), .ALUT(n12743), .C0(rom_addr[8]), .Z(n12745));
    LUT4 i7541_2_lut_rep_196_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13743)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7541_2_lut_rep_196_3_lut.init = 16'h6f6f;
    LUT4 i11256_4_lut_4_lut (.A(rom_addr[0]), .B(n13794), .C(rom_addr[4]), 
         .D(n13719), .Z(n11870)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11256_4_lut_4_lut.init = 16'hf404;
    PFUMX i12970 (.BLUT(n13550), .ALUT(n13549), .C0(rom_addr[4]), .Z(n13551));
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut (.A(rom_addr[0]), .B(n13728), 
         .C(rom_addr[5]), .D(n542), .Z(n574)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6703), 
         .C(rom_addr[5]), .D(n11739), .Z(n1660_adj_646)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13733), 
         .C(rom_addr[4]), .D(n13799), .Z(n1275_adj_766)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7593_2_lut_rep_235_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13782)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7593_2_lut_rep_235_3_lut.init = 16'h0606;
    PFUMX i13056 (.BLUT(n13937), .ALUT(n13938), .C0(rom_addr[1]), .Z(n13939));
    LUT4 i11235_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n124_adj_711), .C(rom_addr[4]), 
         .D(n13788), .Z(n11849)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11235_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 rom_addr_0__bdd_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13570)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_4_lut_4_lut.init = 16'h0a01;
    PFUMX i12968 (.BLUT(n13547), .ALUT(n13546), .C0(rom_addr[4]), .Z(n13548));
    LUT4 i7420_2_lut_rep_208_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13755)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7420_2_lut_rep_208_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13934)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    L6MUX21 i13378 (.D0(n14463), .D1(n14460), .SD(rom_addr[8]), .Z(n14464));
    PFUMX i13376 (.BLUT(n14462), .ALUT(n14461), .C0(rom_addr[7]), .Z(n14463));
    LUT4 i7631_2_lut_rep_347 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13894)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7631_2_lut_rep_347.init = 16'h2222;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n13883), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13816), .Z(n61_adj_552)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 i7692_2_lut_rep_316 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13863)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7692_2_lut_rep_316.init = 16'heeee;
    PFUMX i13373 (.BLUT(n14459), .ALUT(n14458), .C0(rom_addr[7]), .Z(n14460));
    LUT4 i5818_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6656)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i5818_4_lut_4_lut_4_lut.init = 16'he303;
    LUT4 i3972_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4780)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3972_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i3508_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4316)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i3508_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i4969_3_lut_rep_240_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13787)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4969_3_lut_rep_240_4_lut_3_lut.init = 16'hdede;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_269_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n13816)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_269_3_lut.init = 16'hc1c1;
    LUT4 i7664_2_lut_rep_280_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13827)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7664_2_lut_rep_280_3_lut.init = 16'h0202;
    LUT4 i11585_3_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n15128)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i11585_3_lut_then_4_lut.init = 16'h1240;
    LUT4 i7422_2_lut_rep_193_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13740)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7422_2_lut_rep_193_3_lut.init = 16'he0e0;
    PFUMX i11604 (.BLUT(n12216), .ALUT(n12217), .C0(rom_addr[5]), .Z(n2492_adj_687));
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_650)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n11935), .B(n3070_adj_767), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12052), .B(n2685_adj_768), 
         .C(rom_addr[9]), .D(n13836), .Z(n3070_adj_767)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 n1699_bdd_4_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n14008)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (D)) */ ;
    defparam n1699_bdd_4_lut_then_4_lut.init = 16'hff28;
    L6MUX21 i12952 (.D0(n13516), .D1(n13514), .SD(rom_addr[5]), .Z(n11876));
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i12950 (.BLUT(n270_c), .ALUT(n13515), .C0(rom_addr[4]), .Z(n13516));
    PFUMX i11607 (.BLUT(n12219), .ALUT(n12220), .C0(rom_addr[5]), .Z(n12221));
    LUT4 i4056_3_lut_rep_265_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13812)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4056_3_lut_rep_265_4_lut_3_lut.init = 16'h6262;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n11751), .B(n14006), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685_adj_768)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_277_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13824)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_277_3_lut.init = 16'h3e3e;
    LUT4 i7687_2_lut_rep_243_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13790)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7687_2_lut_rep_243_3_lut.init = 16'h2020;
    LUT4 i4132_3_lut_rep_253_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13800)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i4132_3_lut_rep_253_4_lut_3_lut.init = 16'hd6d6;
    LUT4 i7690_2_lut_rep_201_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13748)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7690_2_lut_rep_201_3_lut_4_lut.init = 16'he000;
    LUT4 i11585_3_lut_else_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n15127)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11585_3_lut_else_4_lut.init = 16'h0814;
    PFUMX i12948 (.BLUT(n13513), .ALUT(n506_adj_570), .C0(rom_addr[4]), 
          .Z(n13514));
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038_adj_613)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 n1699_bdd_4_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14007)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1699_bdd_4_lut_else_4_lut.init = 16'h0202;
    LUT4 i11115_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n11729)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11115_3_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 i12226_2_lut_rep_319 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13866)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12226_2_lut_rep_319.init = 16'heeee;
    LUT4 i11979_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_628), 
         .D(n1676_adj_577), .Z(n1724_adj_648)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11979_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_320 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n13867)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_320.init = 16'h8888;
    LUT4 i11591_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n2298_adj_769), .Z(n12205)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11591_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_3_lut_4_lut_adj_27 (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(n13872), .Z(n11374)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_27.init = 16'h8000;
    PFUMX i13042 (.BLUT(n13914), .ALUT(n13915), .C0(rom_addr[1]), .Z(n13916));
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14011)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(n13889), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13819), .Z(n908_adj_592)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'hf808;
    LUT4 i12251_2_lut_rep_357 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n13904)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12251_2_lut_rep_357.init = 16'h4444;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14010)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(C (D)))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut.init = 16'h5080;
    LUT4 i11551_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13870), .C(rom_addr[4]), 
         .D(n4837), .Z(n12165)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11551_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 i11076_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[4]), 
         .D(n2522_adj_640), .Z(n11690)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11076_3_lut_4_lut.init = 16'hf808;
    LUT4 i11108_3_lut (.A(n6682), .B(n668_adj_542), .C(rom_addr[4]), .Z(n11722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11108_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), 
         .C(n15116), .D(rom_addr[3]), .Z(n2040_adj_667)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i11610 (.BLUT(n12222), .ALUT(n12223), .C0(rom_addr[5]), .Z(n12224));
    LUT4 i12229_2_lut_rep_349 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13896)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12229_2_lut_rep_349.init = 16'hdddd;
    PFUMX i11613 (.BLUT(n12225), .ALUT(n12226), .C0(rom_addr[5]), .Z(n12227));
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n13889), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n13802), .Z(n1243)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11616 (.BLUT(n12228), .ALUT(n12229), .C0(rom_addr[5]), .Z(n12230));
    LUT4 i11952_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n12665), 
         .D(n2538), .Z(n2555_adj_677)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11952_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i11619 (.BLUT(n12231), .ALUT(n12232), .C0(rom_addr[5]), .Z(n12233));
    LUT4 i7500_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n13870), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i7500_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 n6637_bdd_4_lut (.A(rom_addr[7]), .B(n13684), .C(n13799), .D(rom_addr[5]), 
         .Z(n13370)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!B))) */ ;
    defparam n6637_bdd_4_lut.init = 16'h771b;
    LUT4 i12224_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n11664)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i12224_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i11627_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), .C(n15110), 
         .D(rom_addr[3]), .Z(n12241)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11627_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i7935_2_lut_rep_323 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n13870)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7935_2_lut_rep_323.init = 16'heeee;
    LUT4 i11597_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14014)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i11597_3_lut_then_4_lut.init = 16'hccc4;
    PFUMX i11622 (.BLUT(n12234), .ALUT(n12235), .C0(rom_addr[5]), .Z(n12236));
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), 
         .C(n15115), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i1985_2_lut_rep_351 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n13898)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i1985_2_lut_rep_351.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), 
         .C(n15111), .D(rom_addr[3]), .Z(n2522_adj_746)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11625 (.BLUT(n12237), .ALUT(n12238), .C0(rom_addr[5]), .Z(n12239));
    LUT4 i7607_4_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15119)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7607_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_769)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut.init = 16'hf006;
    PFUMX i13111 (.BLUT(n14019), .ALUT(n14020), .C0(rom_addr[1]), .Z(n14021));
    PFUMX i11056 (.BLUT(n11668), .ALUT(n11669), .C0(rom_addr[5]), .Z(n11670));
    PFUMX i13109 (.BLUT(n14016), .ALUT(n14017), .C0(rom_addr[0]), .Z(n14018));
    LUT4 i7494_2_lut_rep_259_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13806)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7494_2_lut_rep_259_3_lut.init = 16'h6060;
    PFUMX i11059 (.BLUT(n11671), .ALUT(n11672), .C0(rom_addr[5]), .Z(n11673));
    LUT4 i10996_2_lut_rep_329 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n13876)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10996_2_lut_rep_329.init = 16'h8888;
    L6MUX21 i12913 (.D0(n13461), .D1(n13459), .SD(rom_addr[6]), .Z(n13462));
    LUT4 i5823_3_lut_4_lut (.A(rom_addr[0]), .B(n13817), .C(rom_addr[5]), 
         .D(n2522_adj_640), .Z(n6661)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5823_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11088_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), .C(n13821), 
         .D(rom_addr[3]), .Z(n11702)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i11088_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i12911 (.BLUT(n13700), .ALUT(n13460), .C0(rom_addr[5]), .Z(n13461));
    L6MUX21 i12477 (.D0(n12903), .D1(n12901), .SD(rom_addr[6]), .Z(n12904));
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n13870), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_647)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11065 (.BLUT(n11677), .ALUT(n11678), .C0(rom_addr[5]), .Z(n11679));
    PFUMX i12475 (.BLUT(n12902), .ALUT(n13676), .C0(rom_addr[5]), .Z(n12903));
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut.init = 16'hf1e1;
    LUT4 i7659_2_lut_rep_268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13815)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7659_2_lut_rep_268_3_lut_4_lut.init = 16'h0440;
    PFUMX i11074 (.BLUT(n11686), .ALUT(n11687), .C0(rom_addr[5]), .Z(n11688));
    PFUMX i12909 (.BLUT(n13458), .ALUT(n1275_adj_766), .C0(rom_addr[5]), 
          .Z(n13459));
    PFUMX i11077 (.BLUT(n11689), .ALUT(n11690), .C0(rom_addr[5]), .Z(n11691));
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_adj_688)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12473 (.BLUT(n12900), .ALUT(n1403_adj_760), .C0(n13896), .Z(n12901));
    PFUMX i13054 (.BLUT(n13934), .ALUT(n13935), .C0(rom_addr[1]), .Z(n13936));
    LUT4 i10997_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11611)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i10997_1_lut_2_lut.init = 16'h7777;
    PFUMX i11086 (.BLUT(n11698), .ALUT(n11699), .C0(rom_addr[5]), .Z(n11700));
    L6MUX21 i12462 (.D0(n12889), .D1(n12886), .SD(rom_addr[6]), .Z(n12890));
    PFUMX i12460 (.BLUT(n12888), .ALUT(n12887), .C0(n13866), .Z(n12889));
    LUT4 i7608_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13931)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(12[3] 4114[10])
    defparam i7608_4_lut_4_lut_then_4_lut.init = 16'h0100;
    PFUMX i12458 (.BLUT(n13676), .ALUT(n12885), .C0(rom_addr[5]), .Z(n12886));
    
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
            \state[2] , \state[4] , \state[1] , cnt_rom_prepare) /* synthesis syn_module_defined=1 */ ;
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
    input \state[2] ;
    input \state[4] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_73;
    
    wire en_write_N_95, n13559, n13558;
    
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
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n13559)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 state_2__bdd_4_lut_13175 (.A(\state[1] ), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[2]), .D(cnt_rom_prepare[1]), .Z(n13558)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut_13175.init = 16'haaea;
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
    PFUMX i12977 (.BLUT(n13559), .ALUT(n13558), .C0(\state[5] ), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (ascii_num, sys_clk_50MHz, \state[5] , 
            cnt1, \state_3__N_368[1] , n5, \end_y_8__N_313[4] , n6875, 
            \end_y_8__N_313[5] , sys_clk_50MHz_enable_29, \end_x_8__N_295[7] , 
            \end_x_8__N_295[6] , \end_x_8__N_295[5] , \end_x_8__N_295[4] , 
            \state[3] , \end_x_8__N_295[3] ) /* synthesis syn_module_defined=1 */ ;
    output [6:0]ascii_num;
    input sys_clk_50MHz;
    input \state[5] ;
    output [1:0]cnt1;
    output \state_3__N_368[1] ;
    input n5;
    output \end_y_8__N_313[4] ;
    input n6875;
    output \end_y_8__N_313[5] ;
    input sys_clk_50MHz_enable_29;
    output \end_x_8__N_295[7] ;
    output \end_x_8__N_295[6] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    input \state[3] ;
    output \end_x_8__N_295[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [6:0]ascii_num_6__N_515;
    
    wire show_char_flag_N_540;
    wire [8:0]start_y_8__N_531;
    wire [31:0]n225;
    
    wire cnt_ascii_num_4__N_514, n6872;
    wire [1:0]n7;
    wire [8:0]start_x_8__N_522;
    
    wire n13851, n13858, n11416, n10105, n5958, n11, n13897, n6, 
        n9, n8_adj_541, n13731, n13809, n13891, n13017, n13887, 
        n13018, n13810, n2825, n13848, n13857, n11446, n5949, 
        n13754, n13703, n13014, n8744, n2832, n5932, n2836, n13861, 
        n13709, n13762, n13846, n13849, n13801, n5960, n13852, 
        n13892, sys_clk_50MHz_enable_105, n13749, n13015;
    
    FD1P3AX ascii_num_i0_i0 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i0.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3AX show_char_flag_40 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[10] 95[32])
    defparam show_char_flag_40.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(228[10] 253[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i0 (.D(n6872), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_514), 
            .Q(n225[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i0.GSR = "ENABLED";
    FD1S3IX start_y__i2 (.D(start_y_8__N_531[5]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_y_8__N_313[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(228[10] 253[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_50MHz_enable_29), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[10] 87[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_522[7]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_522[6]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_522[5]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_522[4]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i6.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i5 (.D(ascii_num_6__N_515[5]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i5.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i4 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i4.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i3 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i3.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i2 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i2.GSR = "ENABLED";
    FD1P3AX ascii_num_i0_i1 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), 
            .CK(sys_clk_50MHz), .Q(ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(110[10] 133[16])
    defparam ascii_num_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n13851), .B(n225[12]), .C(n13858), .D(n11416), 
         .Z(start_x_8__N_522[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i3_4_lut.init = 16'hfffe;
    PFUMX mux_547_i1 (.BLUT(n10105), .ALUT(n5958), .C0(n11), .Z(ascii_num_6__N_515[0]));
    LUT4 i4_4_lut (.A(n225[11]), .B(n13897), .C(n225[4]), .D(n6), .Z(start_x_8__N_522[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(n9), .B(n225[10]), .C(n8_adj_541), .D(n225[13]), 
         .Z(start_x_8__N_522[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 n1050_bdd_4_lut_12553 (.A(n13731), .B(n13809), .C(n13891), .D(n225[6]), 
         .Z(n13017)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam n1050_bdd_4_lut_12553.init = 16'hcdcc;
    LUT4 n1050_bdd_4_lut (.A(n13887), .B(n13851), .C(n225[18]), .D(n225[16]), 
         .Z(n13018)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam n1050_bdd_4_lut.init = 16'h5150;
    LUT4 mux_547_i7_4_lut (.A(n13810), .B(n2825), .C(n11), .D(n13809), 
         .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam mux_547_i7_4_lut.init = 16'hf5c5;
    LUT4 i3_4_lut_adj_10 (.A(n13848), .B(n225[8]), .C(n13857), .D(n11446), 
         .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_10.init = 16'hfffe;
    LUT4 i12271_3_lut_4_lut (.A(n5949), .B(n13809), .C(n11), .D(n13731), 
         .Z(ascii_num_6__N_515[5])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i12271_3_lut_4_lut.init = 16'h0010;
    LUT4 n1085_bdd_4_lut_4_lut (.A(n13754), .B(n225[11]), .C(n13809), 
         .D(n13703), .Z(n13014)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam n1085_bdd_4_lut_4_lut.init = 16'h0302;
    LUT4 i2025_4_lut_4_lut (.A(n13754), .B(n225[11]), .C(n13891), .D(n8744), 
         .Z(n2832)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i2025_4_lut_4_lut.init = 16'h3233;
    LUT4 mux_547_i4_4_lut (.A(n5932), .B(n2832), .C(n11), .D(n13809), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam mux_547_i4_4_lut.init = 16'h0aca;
    LUT4 i7907_2_lut (.A(n225[6]), .B(n225[1]), .Z(n8744)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7907_2_lut.init = 16'heeee;
    LUT4 mux_547_i2_4_lut (.A(n5932), .B(n2836), .C(n11), .D(n13809), 
         .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam mux_547_i2_4_lut.init = 16'hfaca;
    LUT4 i12179_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[13:24])
    defparam i12179_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_11 (.A(n13861), .B(n13709), .C(n13762), .D(n11446), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i3_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n13846), .B(n225[15]), .C(n225[14]), .D(n225[3]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_162_4_lut (.A(n13846), .B(n225[15]), .C(n225[14]), 
         .D(n13848), .Z(n13709)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i1_2_lut_rep_162_4_lut.init = 16'hfffe;
    LUT4 i2018_3_lut_3_lut_4_lut (.A(n225[3]), .B(n13849), .C(n5949), 
         .D(n225[11]), .Z(n2825)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i2018_3_lut_3_lut_4_lut.init = 16'h00fe;
    LUT4 i5134_2_lut_3_lut_4_lut (.A(n225[3]), .B(n13849), .C(n13801), 
         .D(n225[1]), .Z(n5960)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i5134_2_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i2029_2_lut_3_lut_4_lut (.A(n225[3]), .B(n13849), .C(n13801), 
         .D(n225[11]), .Z(n2836)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i2029_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut (.A(n225[3]), .B(n13849), .C(n225[1]), .D(n13852), 
         .Z(n11446)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5132_4_lut (.A(n13892), .B(n225[13]), .C(n5960), .D(n225[11]), 
         .Z(n5958)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i5132_4_lut.init = 16'hdddc;
    LUT4 i1002_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(85[17:28])
    defparam i1002_2_lut.init = 16'h6666;
    LUT4 i19_2_lut_rep_295 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_105)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i19_2_lut_rep_295.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n225[0]), 
         .Z(n6872)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(102[13:40])
    defparam i1_2_lut_3_lut.init = 16'h7070;
    LUT4 i10912_2_lut_rep_340 (.A(n225[5]), .B(cnt_ascii_num_4__N_514), 
         .Z(n13887)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10912_2_lut_rep_340.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(n225[5]), .B(cnt_ascii_num_4__N_514), 
         .C(n225[18]), .Z(n5932)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h1010;
    LUT4 i1_2_lut_rep_299 (.A(n225[16]), .B(n225[17]), .Z(n13846)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i1_2_lut_rep_299.init = 16'heeee;
    LUT4 i2_3_lut_rep_202_4_lut (.A(n225[16]), .B(n225[17]), .C(n225[14]), 
         .D(n225[15]), .Z(n13749)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i2_3_lut_rep_202_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_3_lut (.A(n225[16]), .B(n225[17]), .C(n225[1]), .Z(n8_adj_541)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_301 (.A(n225[12]), .B(n225[13]), .Z(n13848)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_301.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n225[12]), .B(n225[13]), .C(n225[18]), 
         .D(n13749), .Z(start_y_8__N_531[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_13 (.A(n225[3]), .B(n13861), .C(n225[1]), .D(n11416), 
         .Z(start_x_8__N_522[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i3_4_lut_adj_13.init = 16'hfffe;
    LUT4 i1_2_lut_rep_302 (.A(n225[2]), .B(n225[9]), .Z(n13849)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_2_lut_rep_302.init = 16'heeee;
    LUT4 i1_2_lut_rep_207_3_lut (.A(n225[2]), .B(n225[9]), .C(n225[3]), 
         .Z(n13754)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_2_lut_rep_207_3_lut.init = 16'hfefe;
    LUT4 i531_2_lut_rep_184_3_lut_4_lut (.A(n225[2]), .B(n225[9]), .C(n225[11]), 
         .D(n225[3]), .Z(n13731)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i531_2_lut_rep_184_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX start_x__i1 (.D(start_x_8__N_522[3]), .CK(sys_clk_50MHz), .CD(n6875), 
            .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(198[10] 223[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_344 (.A(n225[7]), .B(n225[4]), .Z(n13891)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_2_lut_rep_344.init = 16'heeee;
    LUT4 i10861_2_lut_rep_304 (.A(n225[17]), .B(n225[15]), .Z(n13851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10861_2_lut_rep_304.init = 16'heeee;
    LUT4 n1085_bdd_2_lut_3_lut_4_lut (.A(n225[17]), .B(n225[15]), .C(n13861), 
         .D(cnt_ascii_num_4__N_514), .Z(n13015)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n1085_bdd_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(n225[17]), .B(n225[15]), .C(n225[18]), 
         .D(n13887), .Z(n10105)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'h000e;
    LUT4 i2_3_lut_rep_305 (.A(n225[4]), .B(n225[0]), .C(n225[6]), .Z(n13852)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_305.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(n225[4]), .B(n225[0]), .C(n225[6]), 
         .D(n225[2]), .Z(n11416)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_15.init = 16'hfffe;
    LUT4 i5123_3_lut_4_lut (.A(n225[7]), .B(n225[4]), .C(n225[1]), .D(n225[6]), 
         .Z(n5949)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i5123_3_lut_4_lut.init = 16'heefe;
    LUT4 i7351_2_lut_rep_156_3_lut_4_lut (.A(n225[7]), .B(n225[4]), .C(n225[1]), 
         .D(n225[6]), .Z(n13703)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i7351_2_lut_rep_156_3_lut_4_lut.init = 16'hfffe;
    LUT4 i529_2_lut_rep_254_3_lut (.A(n225[7]), .B(n225[4]), .C(n225[6]), 
         .Z(n13801)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i529_2_lut_rep_254_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_345 (.A(n225[12]), .B(n225[8]), .Z(n13892)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i1_2_lut_rep_345.init = 16'heeee;
    LUT4 i533_2_lut_rep_262_3_lut (.A(n225[12]), .B(n225[8]), .C(n225[13]), 
         .Z(n13809)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(111[9] 133[16])
    defparam i533_2_lut_rep_262_3_lut.init = 16'hfefe;
    PFUMX i12554 (.BLUT(n13018), .ALUT(n13017), .C0(n11), .Z(ascii_num_6__N_515[4]));
    LUT4 i1_2_lut_rep_310 (.A(n225[11]), .B(n225[7]), .Z(n13857)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_310.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n225[11]), .B(n225[7]), .C(n225[9]), 
         .D(n13858), .Z(start_x_8__N_522[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'hfffe;
    LUT4 i1_2_lut_rep_311 (.A(n225[8]), .B(n225[10]), .Z(n13858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_311.init = 16'heeee;
    PFUMX i12551 (.BLUT(n13015), .ALUT(n13014), .C0(n11), .Z(ascii_num_6__N_515[2]));
    LUT4 i1_2_lut_rep_215_3_lut_4_lut (.A(n225[8]), .B(n225[10]), .C(n225[7]), 
         .D(n225[11]), .Z(n13762)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_215_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_314 (.A(n225[5]), .B(n225[18]), .Z(n13861)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i1_2_lut_rep_314.init = 16'heeee;
    LUT4 i1_2_lut_rep_263_3_lut (.A(n225[5]), .B(n225[18]), .C(cnt_ascii_num_4__N_514), 
         .Z(n13810)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam i1_2_lut_rep_263_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_350 (.A(n225[5]), .B(n225[6]), .Z(n13897)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_350.init = 16'heeee;
    LUT4 i3_2_lut_3_lut_4_lut (.A(n225[5]), .B(n225[6]), .C(n225[9]), 
         .D(n225[2]), .Z(n9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_ascii_num_FSM_i19 (.D(n225[18]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_514));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i19.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i18 (.D(n225[17]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i18.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i17 (.D(n225[16]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i17.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i16 (.D(n225[15]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i16.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i15 (.D(n225[14]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i14 (.D(n225[13]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n225[12]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n225[11]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n225[10]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n225[9]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n225[8]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n225[7]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n225[6]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n225[5]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n225[4]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n225[3]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n225[2]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n225[1]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i1 (.D(n225[0]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(103[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    
endmodule
