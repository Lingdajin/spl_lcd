// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 21:03:36 2025
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
    
    wire sys_clk_50MHz_enable_50;
    wire [5:0]state_adj_798;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_240;
    wire [3:0]state_adj_803;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_295;
    wire [8:0]end_y_8__N_313;
    wire [3:0]state_3__N_368;
    wire [1:0]cnt1_adj_813;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_69, sys_clk_50MHz_enable_57, n14, n5, 
        n1423, n6883, n15369, n14107, sys_clk_50MHz_enable_54, sys_clk_50MHz_enable_12, 
        n8979, n14041;
    
    VLO i1 (.Z(GND_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .cnt_sclk({cnt_sclk}), .n14041(n14041), .n1423(n1423), .lcd_cs_c(lcd_cs_c), 
            .\state[2] (state[2]), .lcd_sclk_c(lcd_sclk_c), .lcd_mosi_c(lcd_mosi_c), 
            .sys_clk_50MHz_enable_57(sys_clk_50MHz_enable_57), .\data[5] (data[5]), 
            .\data[6] (data[6]), .\data[0] (data[0]), .\data[1] (data[1]), 
            .n14107(n14107), .\data[7] (data[7]), .\data[4] (data[4]), 
            .\data[2] (data[2]), .\data[3] (data[3]), .\state_3__N_25[1] (state_3__N_25[1])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(85[12] 97[2])
    ROM128X1A mux_290_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_290_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_290_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_290_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_290_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_290_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_290_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_240[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_290_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    VHI i2 (.Z(VCC_net));
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 m1_lut (.Z(n15369)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    TSALL TSALL_INST (.TSALL(GND_net));
    lcd_init lcd_init_inst (.sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_69(sys_clk_50MHz_enable_69), 
            .init_data({init_data}), .cnt_s2_num({cnt_s2_num}), .state({state_adj_798[5:4], 
            Open_0, state_adj_798[2], Open_1, Open_2}), .n15369(n15369), 
            .n1423(n1423), .GND_net(GND_net), .lcd_rst_c(lcd_rst_c), .\init_data_8__N_240[0] (init_data_8__N_240[0]), 
            .\init_data_8__N_240[5] (init_data_8__N_240[5]), .\init_data_8__N_240[4] (init_data_8__N_240[4]), 
            .\init_data_8__N_240[2] (init_data_8__N_240[2]), .n6883(n6883), 
            .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(113[11] 123[2])
    LUT4 i710_2_lut (.A(wr_done), .B(state_adj_798[4]), .Z(sys_clk_50MHz_enable_69)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i710_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14107), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_57)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i711_4_lut (.A(state_adj_803[2]), .B(length_num_flag), .C(n8979), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i711_4_lut.init = 16'hceee;
    LUT4 i717_4_lut_rep_277 (.A(state_adj_798[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_813[0]), .D(cnt1_adj_813[1]), .Z(sys_clk_50MHz_enable_12)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i717_4_lut_rep_277.init = 16'hceee;
    LUT4 i2002_2_lut_4_lut (.A(state_adj_798[5]), .B(state_3__N_368[1]), 
         .C(cnt1_adj_813[0]), .D(cnt1_adj_813[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2002_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i11087_2_lut_rep_305 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14107)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11087_2_lut_rep_305.init = 16'heeee;
    LUT4 i1_2_lut_rep_302 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_54)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_302.init = 16'h2222;
    LUT4 i12430_3_lut_rep_239_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(cnt_sclk[3]), 
         .D(cnt_sclk[2]), .Z(n14041)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12430_3_lut_rep_239_4_lut.init = 16'h0100;
    LUT4 i2000_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i2000_2_lut_3_lut.init = 16'hd2d2;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    lcd_show_char lcd_show_char_inst (.sys_clk_50MHz(sys_clk_50MHz), .cnt_length_num({Open_3, 
            Open_4, Open_5, Open_6, cnt_length_num[0]}), .n14(n14), 
            .cnt_rom_prepare({cnt_rom_prepare}), .length_num_flag(length_num_flag), 
            .wr_done(wr_done), .show_char_data({show_char_data}), .state({state_adj_803[3:1], 
            Open_7}), .sys_clk_50MHz_enable_50(sys_clk_50MHz_enable_50), 
            .\cnt_length_num[4] (cnt_length_num[4]), .sys_clk_50MHz_enable_54(sys_clk_50MHz_enable_54), 
            .n8979(n8979), .\end_x_8__N_295[7] (end_x_8__N_295[7]), .\end_y_8__N_313[5] (end_y_8__N_313[5]), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\state_3__N_368[1] (state_3__N_368[1]), 
            .GND_net(GND_net), .\ascii_num[6] (ascii_num[6]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .\ascii_num[3] (ascii_num[3]), .\ascii_num[4] (ascii_num[4]), 
            .\ascii_num[1] (ascii_num[1]), .\ascii_num[2] (ascii_num[2]), 
            .\ascii_num[0] (ascii_num[0]), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\end_y_8__N_313[4] (end_y_8__N_313[4]), .\end_x_8__N_295[3] (end_x_8__N_295[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(125[16] 139[2])
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(79[5] 83[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_25[1] (state_3__N_25[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .\state[2] (state_adj_798[2]), .\state[4] (state_adj_798[4]), 
            .\state[1] (state_adj_803[1]), .cnt_rom_prepare({cnt_rom_prepare}), 
            .init_data({init_data}), .show_char_data({show_char_data}), 
            .\state[5] (state_adj_798[5])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(99[10] 111[2])
    show_string_number_ctrl show_string_number_ctrl_inst (.cnt1({cnt1_adj_813}), 
            .sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_12(sys_clk_50MHz_enable_12), 
            .\state_3__N_368[1] (state_3__N_368[1]), .\end_x_8__N_295[6] (end_x_8__N_295[6]), 
            .n6883(n6883), .\ascii_num[0] (ascii_num[0]), .\state[5] (state_adj_798[5]), 
            .n5(n5), .\end_x_8__N_295[3] (end_x_8__N_295[3]), .\end_y_8__N_313[4] (end_y_8__N_313[4]), 
            .\end_x_8__N_295[5] (end_x_8__N_295[5]), .\end_x_8__N_295[4] (end_x_8__N_295[4]), 
            .\end_y_8__N_313[5] (end_y_8__N_313[5]), .\ascii_num[6] (ascii_num[6]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[1] (ascii_num[1]), 
            .\state[3] (state_adj_803[3]), .\end_x_8__N_295[7] (end_x_8__N_295[7])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(141[26] 153[2])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, cnt_sclk, n14041, n1423, 
            lcd_cs_c, \state[2] , lcd_sclk_c, lcd_mosi_c, sys_clk_50MHz_enable_57, 
            \data[5] , \data[6] , \data[0] , \data[1] , n14107, \data[7] , 
            \data[4] , \data[2] , \data[3] , \state_3__N_25[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output [3:0]cnt_sclk;
    input n14041;
    output n1423;
    output lcd_cs_c;
    output \state[2] ;
    output lcd_sclk_c;
    output lcd_mosi_c;
    input sys_clk_50MHz_enable_57;
    input \data[5] ;
    input \data[6] ;
    input \data[0] ;
    input \data[1] ;
    input n14107;
    input \data[7] ;
    input \data[4] ;
    input \data[2] ;
    input \data[3] ;
    input \state_3__N_25[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_70;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]n15;
    wire [3:0]state_3__N_33;
    
    wire n2851, n2850, n2841;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6890;
    wire [4:0]n25;
    
    wire n1, sclk_N_53, sys_clk_50MHz_enable_49, n1555;
    wire [3:0]n100;
    
    wire mosi_N_58, n5918, n11725, mosi_N_65, n2864, mosi_N_56, 
        n11819, mosi_N_55, mosi_N_63, mosi_N_64, n2839, sys_clk_50MHz_enable_86;
    wire [3:0]state_3__N_29;
    
    wire n10361, n13, n14, mosi_N_59, mosi_N_61, mosi_N_62, mosi_N_60, 
        n13936, n11816, n5919, sys_clk_50MHz_enable_70, n5940, n11808, 
        n14136;
    wire [15:0]n120;
    
    wire n6;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14041), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    LUT4 i731_1_lut (.A(wr_done), .Z(n1423)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i731_1_lut.init = 16'h5555;
    FD1S3IX state_FSM_i0 (.D(state_3__N_33[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2851), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2850), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2841), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_679__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6890), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_679__i4.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_70), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_33[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_53), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n1555), .SP(sys_clk_50MHz_enable_49), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_57), .CD(n14041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_57), .CD(n14041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    LUT4 i5088_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_58), .Z(n5918)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5088_3_lut.init = 16'hcaca;
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_57), .CD(n14041), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    LUT4 i12427_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[3]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12427_4_lut.init = 16'h0200;
    LUT4 i12459_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n11725), .D(cnt_delay[2]), 
         .Z(n6890)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12459_4_lut.init = 16'hfffb;
    LUT4 i11111_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n11725)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11111_2_lut.init = 16'heeee;
    LUT4 i1_1_lut (.A(mosi_N_65), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_53)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 state_3__N_22_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_22_I_0_118_1_lut.init = 16'h5555;
    LUT4 i2004_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_57), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2004_2_lut.init = 16'h6666;
    PFUMX mosi_I_1 (.BLUT(n2864), .ALUT(mosi_N_56), .C0(n11819), .Z(mosi_N_55)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=97 */ ;
    LUT4 i2029_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_63), .D(mosi_N_64), 
         .Z(n2839)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2029_4_lut.init = 16'hcac0;
    LUT4 i32_2_lut_rep_137_4_lut (.A(n14107), .B(cnt_sclk[2]), .C(cnt_sclk[3]), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_86)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_137_4_lut.init = 16'h0400;
    LUT4 i12419_4_lut (.A(state[0]), .B(state_3__N_29[1]), .C(n10361), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_49)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12419_4_lut.init = 16'hfbfa;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n10361)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i5_4_lut (.A(mosi_N_65), .B(mosi_N_63), .C(mosi_N_59), .D(mosi_N_61), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_62), .B(mosi_N_64), .C(mosi_N_60), .D(mosi_N_58), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7535_2_lut (.A(mosi_N_55), .B(state[0]), .Z(n1555)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7535_2_lut.init = 16'h2222;
    LUT4 i12273_4_lut_4_lut (.A(n13936), .B(n11816), .C(n5919), .D(n2839), 
         .Z(mosi_N_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12273_4_lut_4_lut.init = 16'hf4b0;
    LUT4 state_3__N_21_I_0_2_lut_rep_134 (.A(state[1]), .B(state_3__N_29[1]), 
         .Z(n13936)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_21_I_0_2_lut_rep_134.init = 16'h2222;
    LUT4 i5089_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(\data[7] ), 
         .D(n5918), .Z(n5919)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5089_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2031_3_lut_4_lut (.A(state[1]), .B(state_3__N_29[1]), .C(state_3__N_33[3]), 
         .D(\state[2] ), .Z(n2841)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2031_3_lut_4_lut.init = 16'h2f22;
    LUT4 i818_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i818_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14041), .C(state[1]), .Z(sys_clk_50MHz_enable_70)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i5111_3_lut (.A(n5940), .B(\data[4] ), .C(mosi_N_60), .Z(n2864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5111_3_lut.init = 16'hcaca;
    LUT4 i5110_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_61), .Z(n5940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5110_3_lut.init = 16'hcaca;
    LUT4 i11198_2_lut (.A(mosi_N_58), .B(mosi_N_59), .Z(n11816)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11198_2_lut.init = 16'h1111;
    LUT4 i12527_4_lut (.A(n13936), .B(mosi_N_58), .C(mosi_N_59), .D(n11808), 
         .Z(n11819)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12527_4_lut.init = 16'hfffe;
    LUT4 i11190_3_lut (.A(mosi_N_60), .B(mosi_N_61), .C(mosi_N_62), .Z(n11808)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11190_3_lut.init = 16'h0101;
    LUT4 i9733_3_lut_4_lut (.A(cnt_delay[2]), .B(n14136), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9733_3_lut_4_lut.init = 16'h7f80;
    LUT4 i9712_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9712_2_lut.init = 16'h6666;
    LUT4 i9710_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9710_1_lut.init = 16'h5555;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_65), .SP(sys_clk_50MHz_enable_70), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i2040_2_lut (.A(state[0]), .B(\state_3__N_25[1] ), .Z(n2851)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2040_2_lut.init = 16'h2222;
    LUT4 i2039_4_lut (.A(state[1]), .B(\state_3__N_25[1] ), .C(state_3__N_29[1]), 
         .D(state[0]), .Z(n2850)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2039_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_29[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i9715_2_lut_rep_334 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14136)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9715_2_lut_rep_334.init = 16'h8888;
    LUT4 i9719_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9719_2_lut_3_lut.init = 16'h7878;
    LUT4 i9726_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9726_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i832_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .D(cnt_sclk[3]), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i832_3_lut_4_lut.init = 16'h7f80;
    LUT4 i825_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(cnt_sclk[2]), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i825_2_lut_3_lut.init = 16'h7878;
    FD1S3IX cnt_delay_679__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6890), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_679__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_679__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6890), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_679__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_679__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6890), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_679__i1.GSR = "ENABLED";
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
    FD1S3IX cnt_delay_679__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6890), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_679__i0.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_58), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n120[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n120[0]), .SP(sys_clk_50MHz_enable_86), .CD(state[1]), 
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

module lcd_init (sys_clk_50MHz, sys_clk_50MHz_enable_69, init_data, cnt_s2_num, 
            state, n15369, n1423, GND_net, lcd_rst_c, \init_data_8__N_240[0] , 
            \init_data_8__N_240[5] , \init_data_8__N_240[4] , \init_data_8__N_240[2] , 
            n6883, wr_done) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_69;
    output [8:0]init_data;
    output [6:0]cnt_s2_num;
    output [5:0]state;
    input n15369;
    input n1423;
    input GND_net;
    output lcd_rst_c;
    input \init_data_8__N_240[0] ;
    input \init_data_8__N_240[5] ;
    input \init_data_8__N_240[4] ;
    input \init_data_8__N_240[2] ;
    output n6883;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1427;
    wire [17:0]n357;
    wire [8:0]init_data_8__N_97;
    
    wire n14076;
    wire [6:0]n24;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire cnt_150ms_22__N_221;
    wire [22:0]n97;
    
    wire sys_clk_50MHz_enable_28, sys_clk_50MHz_enable_40;
    wire [6:0]n159;
    wire [5:0]state_5__N_192;
    
    wire cnt_s4_num_done_N_274;
    wire [5:0]state_5__N_180;
    
    wire cnt_s2_num_done_N_272, n10347, n10348, n10346, n9, lcd_rst_high_flag, 
        n14126, n10345, n14, n6642, n10344, n14065, n13980, n13935, 
        n6887, lcd_rst_high_flag_N_270, n15, n30, n12108, n13930, 
        n5, n10343, n8, n13915, n10342, n13, n3, n10368, n11622, 
        n15_adj_778, n23, n10328, n10329;
    wire [8:0]init_data_8__N_231;
    wire [8:0]init_data_8__N_240;
    
    wire n71, n83, n11796, n11788, n15_adj_779, n4, n13919, n94, 
        n14093, n15_adj_780, n26, n46, n10341, n14061, n11563, 
        n14024, n12146, n12109, n12110, n13537, n13538, n12147, 
        n89, n11717, n1369, n10340, n12135, n12136, n12137, n12148, 
        n12149, n12150, n10377, n2829, n10634, n30_adj_781, n31, 
        n11826, n63, n10339, n13850;
    wire [5:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n11528, n10632, n52, n11664, n8_adj_782, n10338, n14181, 
        n14180, n7, n11686, n6559, n11660, n11776, n6578, n11772, 
        n6, n8888, n18, n14_adj_783, n12, n11606, n11666, n11623, 
        n88, n6_adj_784, n6612, n13937, n11723, n7_adj_785, n11751, 
        n13929, n14182, n14094;
    wire [5:0]state_5__N_168;
    
    wire n2866, n6_adj_786, n10394;
    wire [5:0]state_5__N_174;
    
    wire n2869, n11567, n11753, n12144, n12145, n11565, n12_adj_787, 
        n11743, n2871;
    wire [5:0]state_5__N_186;
    
    wire n2873, n10, n11768, n2875, n14129, n13988, n13530, n10333, 
        n13918, n10332, n30_adj_788, n10331, n10326, n10327, n10325, 
        n4_adj_789, n10330;
    
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_97[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14076), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i22.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_69), .CD(n1427), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n15369), .SP(sys_clk_50MHz_enable_28), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_274), .CK(sys_clk_50MHz), 
            .CD(n1423), .Q(state_5__N_192[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_272), .CK(sys_clk_50MHz), 
            .CD(n1423), .Q(state_5__N_180[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    CCU2D cnt_150ms_681_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10347), .COUT(n10348), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_150ms_681_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10346), .COUT(n10347), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[17]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX lcd_rst_172 (.D(n15369), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14126), .SP(sys_clk_50MHz_enable_40), .CD(n14076), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    CCU2D cnt_150ms_681_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10345), .COUT(n10346), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_17.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(n9), .B(n14), .C(cnt_s4_num[14]), .D(n6642), .Z(cnt_s4_num_done_N_274)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7_4_lut.init = 16'h0080;
    CCU2D cnt_150ms_681_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10344), .COUT(n10345), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_15.INJECT1_1 = "NO";
    LUT4 i849_2_lut_rep_263 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14065)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i849_2_lut_rep_263.init = 16'h8888;
    LUT4 i856_2_lut_rep_178_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n13980)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i856_2_lut_rep_178_3_lut.init = 16'h8080;
    LUT4 i854_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i854_2_lut_3_lut.init = 16'h7878;
    LUT4 i863_2_lut_rep_133_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n13935)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i863_2_lut_rep_133_3_lut_4_lut.init = 16'h8000;
    FD1S3AX init_data_i8 (.D(init_data_8__N_97[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    LUT4 i861_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i861_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_270), .CK(sys_clk_50MHz), 
            .CD(n6887), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_97[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    PFUMX i11490 (.BLUT(n15), .ALUT(n30), .C0(cnt_s2_num[4]), .Z(n12108));
    FD1S3AX init_data_i6 (.D(init_data_8__N_97[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_97[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_97[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n13930), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), .D(cnt_s4_num[2]), 
         .Z(n5)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_4_lut.init = 16'h8008;
    FD1S3AX init_data_i3 (.D(init_data_8__N_97[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_97[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_97[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    CCU2D cnt_150ms_681_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10343), .COUT(n10344), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_13.INJECT1_1 = "NO";
    PFUMX i18 (.BLUT(n8), .ALUT(n13915), .C0(state[2]), .Z(init_data_8__N_97[8]));
    CCU2D cnt_150ms_681_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10342), .COUT(n10343), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_11.INJECT1_1 = "NO";
    PFUMX i28 (.BLUT(n13), .ALUT(n3), .C0(state[2]), .Z(init_data_8__N_97[1]));
    LUT4 i2_4_lut (.A(cnt_s4_num[1]), .B(n13930), .C(cnt_s4_num[2]), .D(cnt_s4_num[0]), 
         .Z(n10368)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'h8400;
    PFUMX i29 (.BLUT(n11622), .ALUT(n15_adj_778), .C0(cnt_s4_num[3]), 
          .Z(n23));
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10328), .COUT(n10329), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_231[3]), .ALUT(init_data_8__N_240[3]), 
          .C0(state[2]), .Z(init_data_8__N_97[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;
    PFUMX i88 (.BLUT(n10368), .ALUT(n71), .C0(cnt_s4_num[3]), .Z(n83));
    LUT4 i6_4_lut (.A(cnt_s4_num[12]), .B(n11796), .C(cnt_s4_num[11]), 
         .D(cnt_s4_num[3]), .Z(n14)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i6_4_lut.init = 16'h2000;
    LUT4 i11179_4_lut (.A(cnt_s4_num[4]), .B(n11788), .C(n15_adj_779), 
         .D(n4), .Z(n11796)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11179_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_30 (.A(state[4]), .B(n13930), .C(n13919), .D(n94), 
         .Z(init_data_8__N_231[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i1_4_lut_adj_30.init = 16'ha8a0;
    LUT4 i11171_4_lut (.A(cnt_s4_num[10]), .B(n14093), .C(cnt_s4_num[7]), 
         .D(cnt_s4_num[5]), .Z(n11788)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11171_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_31 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .Z(n6642)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(228[13:16])
    defparam i1_2_lut_adj_31.init = 16'hbbbb;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(n13930), 
         .D(cnt_s4_num[2]), .Z(n15_adj_780)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h10a2;
    PFUMX i32 (.BLUT(n5), .ALUT(n15_adj_780), .C0(cnt_s4_num[3]), .Z(n26));
    LUT4 mux_290_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_290_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 i882_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n13935), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i882_3_lut_4_lut.init = 16'h7f80;
    CCU2D cnt_150ms_681_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10341), .COUT(n10342), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_9.INJECT1_1 = "NO";
    LUT4 mux_290_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_290_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    LUT4 i12424_4_lut (.A(cnt_s2_num[5]), .B(n14061), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_272)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12424_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_117_4_lut (.A(n11563), .B(n4), .C(n14093), .D(n14024), 
         .Z(n13919)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_117_4_lut.init = 16'hfffe;
    LUT4 i11528_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12146)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i11528_3_lut_4_lut_4_lut.init = 16'h6c20;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n94)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A !(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_4_lut.init = 16'h518b;
    L6MUX21 i11492 (.D0(n12108), .D1(n12109), .SD(cnt_s2_num[5]), .Z(n12110));
    LUT4 n13537_bdd_2_lut_4_lut (.A(n11563), .B(n4), .C(n14093), .D(n13537), 
         .Z(n13538)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n13537_bdd_2_lut_4_lut.init = 16'hfffe;
    LUT4 i11529_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n12147)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam i11529_4_lut_4_lut.init = 16'h0204;
    LUT4 i11103_2_lut_4_lut (.A(n11563), .B(n4), .C(n14093), .D(n89), 
         .Z(n11717)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11103_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n11563), .B(n4), .C(n14093), .D(n83), .Z(n1369)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    CCU2D cnt_150ms_681_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10340), .COUT(n10341), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_7.INJECT1_1 = "NO";
    L6MUX21 i11519 (.D0(n12135), .D1(n12136), .SD(cnt_s2_num[5]), .Z(n12137));
    L6MUX21 i11532 (.D0(n12148), .D1(n12149), .SD(cnt_s2_num[5]), .Z(n12150));
    LUT4 i3_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n10377)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    PFUMX i11491 (.BLUT(n2829), .ALUT(n10634), .C0(cnt_s2_num[4]), .Z(n12109));
    PFUMX mux_290_Mux_7_i63 (.BLUT(n30_adj_781), .ALUT(n31), .C0(n11826), 
          .Z(n63));
    CCU2D cnt_150ms_681_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10339), .COUT(n10340), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_5.INJECT1_1 = "NO";
    LUT4 cnt_s4_num_1__bdd_4_lut_13382 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[3]), .Z(n13850)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B+!((D)+!C)))) */ ;
    defparam cnt_s4_num_1__bdd_4_lut_13382.init = 16'h1981;
    LUT4 i12540_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_221)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12540_3_lut.init = 16'h0101;
    LUT4 i868_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14065), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i868_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_32 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[1]), .Z(n11528)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'ha088;
    LUT4 i11940_3_lut (.A(n11528), .B(n10632), .C(cnt_s2_num[5]), .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11940_3_lut.init = 16'hcaca;
    LUT4 i709_1_lut (.A(state[4]), .Z(n1427)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i709_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut (.A(cnt_s4_num[1]), .B(n13930), .C(n13919), .D(n52), 
         .Z(n11664)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i20_4_lut (.A(state[4]), .B(\init_data_8__N_240[0] ), .C(state[2]), 
         .D(n8_adj_782), .Z(init_data_8__N_97[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i20_4_lut.init = 16'hcac0;
    CCU2D cnt_150ms_681_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10338), .COUT(n10339), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_3.INJECT1_1 = "NO";
    LUT4 n2921_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[5]), .Z(n14181)) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2921_bdd_3_lut_4_lut_then_4_lut.init = 16'hff5d;
    LUT4 n2921_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[5]), .Z(n14180)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n2921_bdd_3_lut_4_lut_else_4_lut.init = 16'hdf74;
    LUT4 i6034_1_lut (.A(state_c[0]), .Z(n6887)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6034_1_lut.init = 16'h5555;
    LUT4 i12414_4_lut (.A(n7), .B(n11686), .C(cnt_150ms[5]), .D(n6559), 
         .Z(lcd_rst_high_flag_N_270)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12414_4_lut.init = 16'h0010;
    LUT4 i2_4_lut_adj_33 (.A(cnt_150ms[3]), .B(n11660), .C(n11776), .D(cnt_150ms[0]), 
         .Z(n7)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_33.init = 16'hdfff;
    LUT4 i11160_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .C(cnt_150ms[4]), 
         .Z(n11776)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11160_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_34 (.A(cnt_150ms[6]), .B(n6578), .Z(n11660)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_34.init = 16'heeee;
    LUT4 i4_4_lut (.A(cnt_150ms[21]), .B(n11772), .C(cnt_150ms[22]), .D(n6), 
         .Z(n6578)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut.init = 16'hffbf;
    LUT4 i11156_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n11772)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11156_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_35 (.A(cnt_150ms[12]), .B(cnt_150ms[13]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_35.init = 16'heeee;
    LUT4 i3_4_lut_adj_36 (.A(cnt_150ms[17]), .B(n8888), .C(cnt_150ms[7]), 
         .D(cnt_150ms[20]), .Z(n11686)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_36.init = 16'hfffb;
    LUT4 i8046_2_lut (.A(cnt_150ms[18]), .B(cnt_150ms[9]), .Z(n8888)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8046_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_37 (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n6559)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_37.init = 16'hffef;
    LUT4 i9_4_lut (.A(cnt_s4_num[5]), .B(n18), .C(n14_adj_783), .D(cnt_s4_num[11]), 
         .Z(n11563)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n15_adj_779), .B(cnt_s4_num[12]), .C(n12), .D(cnt_s4_num[7]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 init_data_8__I_0_i8_4_lut (.A(init_data_8__N_231[7]), .B(n63), 
         .C(state[2]), .D(cnt_s2_num[6]), .Z(init_data_8__N_97[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i7688_4_lut (.A(n13930), .B(state[4]), .C(n13919), .D(n11606), 
         .Z(init_data_8__N_231[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7688_4_lut.init = 16'hc8c0;
    LUT4 i2_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .Z(n11606)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 init_data_8__I_0_i7_4_lut (.A(init_data_8__N_231[7]), .B(n12137), 
         .C(state[2]), .D(cnt_s2_num[6]), .Z(init_data_8__N_97[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i1_3_lut_4_lut_adj_38 (.A(cnt_s4_num[1]), .B(n13930), .C(n13919), 
         .D(cnt_s4_num[2]), .Z(n71)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_38.init = 16'hf400;
    LUT4 i7340_4_lut (.A(state[4]), .B(\init_data_8__N_240[5] ), .C(state[2]), 
         .D(n11666), .Z(init_data_8__N_97[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    defparam i7340_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_39 (.A(n13930), .B(n13919), .C(n11623), .D(n88), 
         .Z(n11666)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_39.init = 16'heeec;
    LUT4 i4_2_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[4]), .Z(n14_adj_783)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i875_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n13980), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i875_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_69), 
            .CD(n1427), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=123 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[17]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_40 (.A(cnt_s4_num[8]), .B(cnt_s4_num[6]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_40.init = 16'heeee;
    LUT4 i5_2_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[16]), .Z(n15_adj_779)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n11664), .B(\init_data_8__N_240[4] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i69_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .Z(n52)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i69_3_lut.init = 16'h1818;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n1369), .B(\init_data_8__N_240[2] ), 
         .C(state[2]), .D(state[4]), .Z(init_data_8__N_97[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_adj_41 (.A(cnt_s4_num[1]), .B(n26), .C(n11717), .D(cnt_s4_num[0]), 
         .Z(n6_adj_784)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i2_4_lut_adj_41.init = 16'hccce;
    LUT4 i1_2_lut_adj_42 (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .Z(n89)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_adj_42.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_135 (.A(n6559), .B(n6612), .Z(n13937)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_2_lut_rep_135.init = 16'heeee;
    LUT4 i11109_2_lut (.A(cnt_s4_num[12]), .B(cnt_s4_num[14]), .Z(n11723)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11109_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(n6559), .B(n6612), .C(n6578), .Z(n7_adj_785)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i11136_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .Z(n11751)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11136_2_lut.init = 16'heeee;
    LUT4 i12522_2_lut (.A(cnt_s2_num[5]), .B(cnt_s2_num[4]), .Z(n11826)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i12522_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut_adj_43 (.A(n14024), .B(n13929), .C(n13850), .D(n13930), 
         .Z(n8_adj_782)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_3_lut_4_lut_adj_43.init = 16'hfeee;
    LUT4 i6030_1_lut (.A(state[5]), .Z(n6883)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6030_1_lut.init = 16'h5555;
    CCU2D cnt_150ms_681_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10338), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_681_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_681_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_1.INJECT1_1 = "NO";
    PFUMX i13331 (.BLUT(n14180), .ALUT(n14181), .C0(cnt_s2_num[1]), .Z(n14182));
    LUT4 i2_4_lut_adj_44 (.A(n14094), .B(n11796), .C(n11723), .D(n11751), 
         .Z(n11622)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_44.init = 16'h0002;
    LUT4 i1_3_lut (.A(state[4]), .B(n13929), .C(n23), .Z(n13)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_45 (.A(state[4]), .B(n13919), .C(n13538), .D(n6_adj_784), 
         .Z(n8)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_4_lut_adj_45.init = 16'haa8a;
    LUT4 i2055_2_lut (.A(state_c[0]), .B(state_5__N_168[0]), .Z(n2866)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2055_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_46 (.A(n7_adj_785), .B(n11686), .C(cnt_150ms[6]), 
         .D(cnt_150ms[5]), .Z(state_5__N_168[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i4_4_lut_adj_46.init = 16'hffef;
    LUT4 i4_4_lut_adj_47 (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .C(cnt_150ms[1]), 
         .D(n6_adj_786), .Z(n6612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i4_4_lut_adj_47.init = 16'hfffe;
    PFUMX i11518 (.BLUT(n46), .ALUT(n10394), .C0(cnt_s2_num[4]), .Z(n12136));
    LUT4 i1_2_lut_adj_48 (.A(cnt_150ms[2]), .B(cnt_150ms[4]), .Z(n6_adj_786)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i1_2_lut_adj_48.init = 16'heeee;
    LUT4 i2058_4_lut (.A(state_c[1]), .B(state_5__N_168[0]), .C(state_5__N_174[1]), 
         .D(state_c[0]), .Z(n2869)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2058_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_49 (.A(n11567), .B(cnt_150ms[13]), .C(n13937), .D(n11753), 
         .Z(state_5__N_174[1])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_49.init = 16'hfbff;
    PFUMX i11530 (.BLUT(n12144), .ALUT(n12145), .C0(cnt_s2_num[4]), .Z(n12148));
    LUT4 i6_4_lut_adj_50 (.A(n11565), .B(n12_adj_787), .C(cnt_150ms[19]), 
         .D(cnt_150ms[22]), .Z(n11567)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i6_4_lut_adj_50.init = 16'hfeff;
    LUT4 i11138_2_lut (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .Z(n11753)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11138_2_lut.init = 16'h8888;
    LUT4 i5_4_lut (.A(cnt_150ms[11]), .B(cnt_150ms[5]), .C(cnt_150ms[8]), 
         .D(cnt_150ms[6]), .Z(n12_adj_787)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i5_4_lut.init = 16'hfbff;
    LUT4 i2_4_lut_adj_51 (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n11743), 
         .D(cnt_150ms[18]), .Z(n11565)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(90[26:50])
    defparam i2_4_lut_adj_51.init = 16'hffdf;
    LUT4 i11128_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n11743)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11128_2_lut.init = 16'h8888;
    LUT4 i2060_4_lut (.A(state[2]), .B(state_5__N_174[1]), .C(state_5__N_180[3]), 
         .D(state_c[1]), .Z(n2871)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2060_4_lut.init = 16'h3b0a;
    LUT4 i2062_4_lut (.A(state_c[3]), .B(state_5__N_180[3]), .C(state_5__N_186[3]), 
         .D(state[2]), .Z(n2873)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2062_4_lut.init = 16'heca0;
    LUT4 i5_4_lut_adj_52 (.A(cnt_150ms[16]), .B(n10), .C(n11660), .D(n11768), 
         .Z(state_5__N_186[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i5_4_lut_adj_52.init = 16'hfdff;
    LUT4 i4_4_lut_adj_53 (.A(n6612), .B(cnt_150ms[5]), .C(cnt_150ms[14]), 
         .D(n11565), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_53.init = 16'hfffe;
    LUT4 i11152_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11768)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11152_2_lut.init = 16'h8888;
    LUT4 i2064_4_lut (.A(state[4]), .B(state_5__N_186[3]), .C(state_5__N_192[5]), 
         .D(state_c[3]), .Z(n2875)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2064_4_lut.init = 16'h3b0a;
    PFUMX i11531 (.BLUT(n12146), .ALUT(n12147), .C0(cnt_s2_num[4]), .Z(n12149));
    LUT4 i847_2_lut_rep_324 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14126)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i847_2_lut_rep_324.init = 16'h6666;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(n14129), 
         .D(cnt_s2_num[4]), .Z(n10632)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 n2921_bdd_4_lut (.A(n13988), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n13530)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n2921_bdd_4_lut.init = 16'h31cf;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10333), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_327 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .Z(n14129)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_rep_327.init = 16'hbbbb;
    LUT4 i2_2_lut_rep_259_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14061)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i2_2_lut_rep_259_3_lut_4_lut.init = 16'hfbff;
    LUT4 i706_1_lut_rep_274 (.A(state[2]), .Z(n14076)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i706_1_lut_rep_274.init = 16'h5555;
    LUT4 i2011_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2011_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i707_2_lut_rep_192_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_40)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i707_2_lut_rep_192_2_lut.init = 16'hdddd;
    LUT4 i12410_2_lut_rep_116_4_lut_4_lut (.A(n14093), .B(cnt_s4_num[1]), 
         .C(n4), .D(n11563), .Z(n13918)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12410_2_lut_rep_116_4_lut_4_lut.init = 16'h0001;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10332), .COUT(n10333), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 mux_290_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_781)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_290_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 i7576_2_lut_rep_186_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n13988)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7576_2_lut_rep_186_2_lut.init = 16'h4444;
    LUT4 mux_290_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_788)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_290_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10331), .COUT(n10332), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10326), .COUT(n10327), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10327), .COUT(n10328), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 n6581_bdd_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n13537)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B (C+!(D)))) */ ;
    defparam n6581_bdd_4_lut.init = 16'hfabf;
    PFUMX i11517 (.BLUT(n10377), .ALUT(n30_adj_788), .C0(cnt_s2_num[4]), 
          .Z(n12135));
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n10394)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_3_lut_3_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n10634)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i8122_4_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[0]), .Z(n2829)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i8122_4_lut_4_lut_4_lut_4_lut.init = 16'h0034;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10325), .COUT(n10326), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_54 (.A(cnt_s4_num[0]), .B(n4_adj_789), .C(n13918), 
         .D(n11606), .Z(n15_adj_778)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_4_lut_4_lut_adj_54.init = 16'hff54;
    LUT4 i1_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12110), .Z(n3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 n13531_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n13530), 
         .D(n14182), .Z(n13915)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n13531_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7590_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12150), .Z(init_data_8__N_240[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7590_2_lut_2_lut.init = 16'h4444;
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10330), .COUT(n10331), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(n13929), 
         .D(cnt_s4_num[1]), .Z(n4_adj_789)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_3_lut_4_lut_4_lut.init = 16'ha8a0;
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10325), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_222_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n14024)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_2_lut_rep_222_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_4_lut_adj_55 (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[1]), .D(cnt_s4_num[3]), .Z(n88)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_55.init = 16'h0b01;
    LUT4 i1_2_lut_rep_291 (.A(cnt_s4_num[15]), .B(cnt_s4_num[13]), .Z(n14093)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_rep_291.init = 16'heeee;
    LUT4 i12442_3_lut_rep_128_3_lut_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[13]), 
         .C(n11563), .D(n4), .Z(n13930)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i12442_3_lut_rep_128_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_rep_127_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[13]), 
         .C(n4), .D(n11563), .Z(n13929)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_3_lut_rep_127_4_lut.init = 16'hfffe;
    LUT4 i260_2_lut (.A(state_5__N_192[5]), .B(state[4]), .Z(sys_clk_50MHz_enable_28)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_292 (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .Z(n14094)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut_rep_292.init = 16'ha2a2;
    LUT4 i1_2_lut_4_lut_adj_56 (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n11623)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_56.init = 16'h00a2;
    LUT4 i11526_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n12144)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A ((D)+!B))) */ ;
    defparam i11526_3_lut_4_lut.init = 16'h20cc;
    LUT4 i11527_4_lut_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n12145)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i11527_4_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 mux_290_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_290_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    CCU2D cnt_150ms_681_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10348), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_681_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_681_add_4_23.INJECT1_1 = "NO";
    FD1S3IX cnt_150ms_681__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i5 (.D(n2866), .CK(sys_clk_50MHz), .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2869), .CK(sys_clk_50MHz), .Q(state_c[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2871), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2873), .CK(sys_clk_50MHz), .Q(state_c[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2875), .CK(sys_clk_50MHz), .Q(state[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_681__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_221), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_681__i0.GSR = "ENABLED";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10329), .COUT(n10330), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
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

module lcd_show_char (sys_clk_50MHz, cnt_length_num, n14, cnt_rom_prepare, 
            length_num_flag, wr_done, show_char_data, state, sys_clk_50MHz_enable_50, 
            \cnt_length_num[4] , sys_clk_50MHz_enable_54, n8979, \end_x_8__N_295[7] , 
            \end_y_8__N_313[5] , \end_x_8__N_295[5] , \state_3__N_368[1] , 
            GND_net, \ascii_num[6] , \end_x_8__N_295[6] , \ascii_num[3] , 
            \ascii_num[4] , \ascii_num[1] , \ascii_num[2] , \ascii_num[0] , 
            \end_x_8__N_295[4] , \end_y_8__N_313[4] , \end_x_8__N_295[3] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output [4:0]cnt_length_num;
    input n14;
    output [2:0]cnt_rom_prepare;
    output length_num_flag;
    input wr_done;
    output [8:0]show_char_data;
    output [3:0]state;
    input sys_clk_50MHz_enable_50;
    output \cnt_length_num[4] ;
    input sys_clk_50MHz_enable_54;
    output n8979;
    input \end_x_8__N_295[7] ;
    input \end_y_8__N_313[5] ;
    input \end_x_8__N_295[5] ;
    input \state_3__N_368[1] ;
    input GND_net;
    input \ascii_num[6] ;
    input \end_x_8__N_295[6] ;
    input \ascii_num[3] ;
    input \ascii_num[4] ;
    input \ascii_num[1] ;
    input \ascii_num[2] ;
    input \ascii_num[0] ;
    input \end_x_8__N_295[4] ;
    input \end_y_8__N_313[4] ;
    input \end_x_8__N_295[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    wire [5:0]n422;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_50MHz_enable_68;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_46;
    wire [7:0]temp_7__N_345;
    wire [3:0]state_3__N_376;
    wire [2:0]n12;
    
    wire cnt_wr_color_data_5__N_439;
    wire [5:0]n21;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_372;
    
    wire state1_finish_flag_N_459, sys_clk_50MHz_enable_71;
    wire [8:0]show_char_data_8__N_275;
    
    wire length_num_flag_N_462, n14160, n14161, n14162, n11608, n4720, 
        n14015, n828, n3936, n13970, n1467;
    wire [15:0]n429;
    
    wire cnt_set_windows_3__N_384, n14088, n5939, n13952, sys_clk_50MHz_enable_47, 
        n6889;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    wire [2:0]n132;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n1767;
    wire [4:0]n365;
    
    wire n9087, n14043, n1403, n4, n14121, n13975, n1723, n14167, 
        n14166, n13147, n891;
    wire [15:0]n33;
    
    wire n720, n11674;
    wire [8:0]show_char_data_8__N_449;
    
    wire n11626, n5946, n14087, n5950, n11823, n1361, n272, n14050;
    wire [6:0]n1353;
    
    wire n14047, n13829, n11715, n11576, n1309, n15362, n14112, 
        n15361, n46, n13955, n62, n11755, n2941, n14073, n14074, 
        n5912;
    wire [4:0]n1346;
    
    wire n3, n6886, n14009, n14067, n6, n5944, n6_adj_763, n10480, 
        n6867, n13973, n13977, n2300;
    wire [3:0]state_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2882, n2885, n2887, n10337, n10336, n10335, n10334, 
        n14044, n1596, n13927, n1069, n14052, n1084, n6718, n10364, 
        n13950, n13954, n13947, n1628, n14028, n14086, n13362, 
        n14066, n13924, n13968, n13959, n13659, n13999, n14004, 
        n6694, n723, n1565, n14027, n13982, n158, n15360, n13979, 
        n1851, n14006, n14032, n1148, n14011, n13961, n3122, n13916, 
        n1101, n1149, n11862, n13969, n14138, n1755, n1181, n13989, 
        n13978, n2141, n2896, n11727, n14140, n12096, n13691, 
        n603, n2652, n11676, n6031, n5906, n1529, n12124, n13948, 
        n1851_adj_764, n13971, n1883, n11713, n308, n301, n317, 
        n270, n12151, n13944, n14082, n158_adj_765, n1723_adj_766, 
        n14103, n2172, n13995, n13967, n13928, n14105, n14139, 
        n94, n13946, n14018, n1676, n94_adj_767, n13962, n14001, 
        n5800, n13925, n13957, n12389, n1172, n2025, n11996, n6687, 
        n14063, n12157, n13452, n15363, n13987, n14000, n125, 
        n126, n13949, n2428, n5894, n892, n10638, n1534, n6074, 
        n3000, n1661, n6740, n10597, n13227, n509, n1405, n1278, 
        n12285, n510, n127, n12391, n3069, n12357, n4094, n3069_adj_768, 
        n12301, n4094_adj_769, n11619, n14276, n4094_adj_770, n2943, 
        n14099, n796, n14057, n828_adj_771, n14075, n10372, n12995, 
        n12994, n15355, n13337, n46_adj_772, n62_adj_773, n11627, 
        n6681, n380, n11629, n2332, n2364, n10636, n1565_adj_774, 
        n2395, n1596_adj_775, n13943, n1211, n1530, n1643, n1530_adj_776, 
        n379, n380_adj_777;
    
    LUT4 i962_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i962_2_lut_3_lut.init = 16'h7878;
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_345[6]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_376[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_345[5]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_439), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_178 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_178.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_180 (.D(state1_finish_flag_N_459), .CK(sys_clk_50MHz), 
            .Q(state_3__N_372[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_180.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_345[0]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_275[7]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_462), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_275[0]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_275[6]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_275[5]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_275[4]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_275[3]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_275[2]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_275[1]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_345[4]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    PFUMX i13317 (.BLUT(n14160), .ALUT(n14161), .C0(rom_addr[3]), .Z(n14162));
    FD1P3AX temp_i3 (.D(temp_7__N_345[3]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11608), 
         .C(n4720), .D(n14015), .Z(n828)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n3936), 
         .C(n13970), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n429[15]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_345[2]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_345[1]), .SP(sys_clk_50MHz_enable_46), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n14088), .B(n5939), .C(state[1]), 
         .D(n13952), .Z(show_char_data_8__N_275[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_46), .CD(n6889), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_47), 
            .CD(cnt_wr_color_data_5__N_439), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_50), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_50), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    LUT4 i1015_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1767)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1015_2_lut.init = 16'h8888;
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
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n9087), 
         .C(rom_addr[4]), .D(n14043), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4), 
         .C(n14121), .D(n13975), .Z(n1723)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 i7641_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14167)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7641_4_lut_4_lut_then_4_lut.init = 16'h0004;
    LUT4 i7641_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14166)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7641_4_lut_4_lut_else_4_lut.init = 16'h0010;
    LUT4 n2203_bdd_2_lut_12717_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13147)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2203_bdd_2_lut_12717_4_lut_4_lut_4_lut.init = 16'h0151;
    LUT4 i7686_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7686_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i559_2_lut_rep_150 (.A(n33[10]), .B(n720), .Z(n13952)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i559_2_lut_rep_150.init = 16'hbbbb;
    LUT4 i2137_4_lut_4_lut (.A(n33[10]), .B(n720), .C(n429[9]), .D(n11674), 
         .Z(show_char_data_8__N_449[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i2137_4_lut_4_lut.init = 16'hc8cc;
    LUT4 i2135_4_lut_4_lut (.A(n33[10]), .B(n720), .C(n429[9]), .D(n11626), 
         .Z(show_char_data_8__N_449[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2135_4_lut_4_lut.init = 16'hccc8;
    LUT4 i5120_2_lut_3_lut_4_lut (.A(n33[10]), .B(n720), .C(n5946), .D(n14087), 
         .Z(n5950)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5120_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i12524_2_lut_3_lut (.A(n33[10]), .B(n720), .C(state[1]), .Z(n11823)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12524_2_lut_3_lut.init = 16'hbfbf;
    FD1P3AX rom_addr_i0_i11 (.D(n1361), .SP(sys_clk_50MHz_enable_68), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    LUT4 i2009_2_lut_4_lut (.A(state[3]), .B(n272), .C(n14050), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2009_2_lut_4_lut.init = 16'h10ef;
    LUT4 state_3__N_365_I_0_196_2_lut (.A(state[1]), .B(the1_wr_done), .Z(cnt_set_windows_3__N_384)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam state_3__N_365_I_0_196_2_lut.init = 16'h8888;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n14088), 
         .C(state[1]), .D(show_char_data_8__N_449[3]), .Z(show_char_data_8__N_275[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(254[10] 260[22])
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hfd0d;
    FD1P3AX rom_addr_i0_i10 (.D(n1353[6]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    LUT4 i983_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14047), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i983_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX rom_addr_i0_i9 (.D(n1353[5]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(n1353[4]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    LUT4 n442_bdd_4_lut (.A(n429[3]), .B(n429[5]), .C(n429[2]), .D(n429[4]), 
         .Z(n13829)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n442_bdd_4_lut.init = 16'hccef;
    FD1P3AX rom_addr_i0_i7 (.D(n1353[3]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(n1353[2]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n11715), .B(n272), .C(cnt_wr_color_data[0]), .D(n11576), 
         .Z(n1309)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut.init = 16'hffbf;
    LUT4 i11101_2_lut (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[5]), 
         .Z(n11715)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11101_2_lut.init = 16'heeee;
    LUT4 i76_2_lut (.A(state[2]), .B(the1_wr_done), .Z(n272)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i76_2_lut.init = 16'h8888;
    LUT4 i7802_4_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15362)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7802_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i2_3_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), .C(cnt_wr_color_data[3]), 
         .Z(n11576)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i957_2_lut_rep_310 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14112)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i957_2_lut_rep_310.init = 16'h8888;
    LUT4 i7802_4_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n15361)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7802_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0414;
    LUT4 i955_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i955_2_lut.init = 16'h6666;
    LUT4 i904_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i904_3_lut.init = 16'h6a6a;
    FD1P3AX rom_addr_i0_i5 (.D(n1353[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46), 
         .C(n13955), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i118_4_lut (.A(n11755), .B(length_num_flag), .C(\cnt_length_num[4] ), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_376[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    FD1P3AX rom_addr_i0_i4 (.D(n1353[0]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n2941), .ALUT(show_char_data_8__N_449[5]), 
          .C0(n11823), .Z(show_char_data_8__N_275[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;
    LUT4 i5109_3_lut_4_lut (.A(n14073), .B(n429[7]), .C(n429[9]), .D(n14074), 
         .Z(n5939)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5109_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1_3_lut_4_lut (.A(n14073), .B(n429[7]), .C(n429[5]), .D(n5912), 
         .Z(n11626)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    FD1P3AX rom_addr_i0_i3 (.D(n1346[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n14073), .B(n429[7]), .C(n429[4]), .D(n429[5]), 
         .Z(n11674)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffef;
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_68), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_68), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i897_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i897_2_lut.init = 16'h6666;
    FD1S3IX state_FSM_i0 (.D(state_3__N_376[3]), .CK(sys_clk_50MHz), .CD(n6886), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i2010_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_50), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2010_2_lut.init = 16'h6666;
    LUT4 i919_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i919_2_lut.init = 16'h6666;
    LUT4 i926_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i926_2_lut_3_lut.init = 16'h7878;
    LUT4 i8136_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8979)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8136_2_lut.init = 16'heeee;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_459)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(state[2]), .B(state[1]), .Z(sys_clk_50MHz_enable_71)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n14009), .B(\end_x_8__N_295[7] ), 
         .C(state[1]), .D(n5950), .Z(show_char_data_8__N_275[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i976_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14112), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i976_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_rep_156_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), .C(n272), 
         .D(state[3]), .Z(sys_clk_50MHz_enable_47)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_156_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_345[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_345[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_345[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_345[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_345[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i12434_4_lut (.A(n429[15]), .B(n429[11]), .C(n429[13]), .D(n6), 
         .Z(n720)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12434_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_25 (.A(n429[12]), .B(n429[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_345[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14067), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_345[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2130_4_lut (.A(n5944), .B(\end_y_8__N_313[5] ), .C(n14087), 
         .D(n14073), .Z(n2941)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2130_4_lut.init = 16'hc0ca;
    LUT4 i4_4_lut_adj_26 (.A(the1_wr_done), .B(n11715), .C(n11576), .D(n6_adj_763), 
         .Z(length_num_flag_N_462)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_adj_26.init = 16'h2000;
    LUT4 i1_2_lut_adj_27 (.A(cnt_wr_color_data[0]), .B(state[2]), .Z(n6_adj_763)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_27.init = 16'h8888;
    LUT4 i7839_4_lut (.A(n10480), .B(n429[5]), .C(\end_x_8__N_295[5] ), 
         .D(n6867), .Z(n5944)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i7839_4_lut.init = 16'hfcdd;
    LUT4 i1013_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1346[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1013_2_lut.init = 16'h6666;
    LUT4 i1051_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[24:58])
    defparam i1051_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_265 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14067)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_265.init = 16'hbbbb;
    LUT4 i12533_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_68)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12533_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_248_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14050)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_248_3_lut.init = 16'hbfbf;
    LUT4 i6033_1_lut (.A(state[2]), .Z(n6886)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6033_1_lut.init = 16'h5555;
    LUT4 i12454_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1309), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_46)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12454_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i7601_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13973), 
         .D(n13977), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7601_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 temp_7__N_424_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(state[3]), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_439)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_424_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i6036_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1309), .D(cnt_rom_prepare[1]), .Z(n6889)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6036_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 i2071_2_lut (.A(state_c[0]), .B(\state_3__N_368[1] ), .Z(n2882)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2071_2_lut.init = 16'h2222;
    LUT4 i2074_4_lut (.A(state[1]), .B(\state_3__N_368[1] ), .C(state_3__N_372[2]), 
         .D(state_c[0]), .Z(n2885)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2074_4_lut.init = 16'hce0a;
    LUT4 i2076_4_lut (.A(state[2]), .B(state_3__N_372[2]), .C(state_3__N_376[3]), 
         .D(state[1]), .Z(n2887)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2076_4_lut.init = 16'hce0a;
    CCU2D add_672_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10337), 
          .S0(n1361));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_672_cout.INIT0 = 16'h0000;
    defparam add_672_cout.INIT1 = 16'h0000;
    defparam add_672_cout.INJECT1_0 = "NO";
    defparam add_672_cout.INJECT1_1 = "NO";
    CCU2D add_672_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10336), .COUT(n10337), .S0(n1353[5]), .S1(n1353[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_672_7.INIT0 = 16'hf000;
    defparam add_672_7.INIT1 = 16'h0555;
    defparam add_672_7.INJECT1_0 = "NO";
    defparam add_672_7.INJECT1_1 = "NO";
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n14009), .B(\end_x_8__N_295[6] ), 
         .C(state[1]), .D(n5950), .Z(show_char_data_8__N_275[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i969_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i969_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D add_672_5 (.A0(\ascii_num[3] ), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(\cnt_length_num[4] ), .A1(\ascii_num[4] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n10335), .COUT(n10336), .S0(n1353[3]), 
          .S1(n1353[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_672_5.INIT0 = 16'h556a;
    defparam add_672_5.INIT1 = 16'hfaaa;
    defparam add_672_5.INJECT1_0 = "NO";
    defparam add_672_5.INJECT1_1 = "NO";
    CCU2D add_672_3 (.A0(\cnt_length_num[4] ), .B0(n1767), .C0(\ascii_num[1] ), 
          .D0(GND_net), .A1(\cnt_length_num[4] ), .B1(n1767), .C1(\ascii_num[2] ), 
          .D1(GND_net), .CIN(n10334), .COUT(n10335), .S0(n1353[1]), 
          .S1(n1353[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_672_3.INIT0 = 16'he1e1;
    defparam add_672_3.INIT1 = 16'he1e1;
    defparam add_672_3.INJECT1_0 = "NO";
    defparam add_672_3.INJECT1_1 = "NO";
    CCU2D add_672_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt_length_num[4] ), .B1(n1767), .C1(\ascii_num[0] ), .D1(GND_net), 
          .COUT(n10334), .S1(n1353[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_672_1.INIT0 = 16'hF000;
    defparam add_672_1.INIT1 = 16'h6969;
    defparam add_672_1.INJECT1_0 = "NO";
    defparam add_672_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_153_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13955)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_153_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i7948_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14044), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n1596)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7948_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n13927)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_125_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14052), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(n6718), .C(rom_addr[0]), 
         .Z(n10364)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_148_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13950)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_148_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_152_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13954)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_152_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13947)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_145_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i7938_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1628)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7938_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i11116_2_lut_rep_226_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14028)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11116_2_lut_rep_226_2_lut.init = 16'hdddd;
    LUT4 n12290_bdd_3_lut_12884_3_lut_3_lut (.A(rom_addr[4]), .B(n14086), 
         .C(rom_addr[3]), .Z(n13362)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12290_bdd_3_lut_12884_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_122_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14066), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n13924)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_122_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 n1403_bdd_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13968), 
         .D(n13959), .Z(n13659)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1403_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i5853_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n13999), 
         .D(n14004), .Z(n6694)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5853_4_lut_4_lut.init = 16'h7340;
    LUT4 i7805_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n723), .C(rom_addr[3]), 
         .D(n14043), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7805_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i7759_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14027), .C(rom_addr[3]), 
         .D(n13982), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7759_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i7742_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15360), 
         .D(n13979), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7742_4_lut_4_lut.init = 16'h5140;
    LUT4 i7771_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14006), 
         .D(n14032), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7771_4_lut_4_lut.init = 16'h5140;
    LUT4 i11242_2_lut_rep_209_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14011)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11242_2_lut_rep_209_2_lut.init = 16'h4444;
    LUT4 i2311_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n13927), 
         .D(n13961), .Z(n3122)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2311_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n13916), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12449_2_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(rom_addr[3]), 
         .Z(n11862)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12449_2_lut_3_lut_3_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13969), 
         .C(rom_addr[4]), .D(n14138), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i555_2_lut_rep_271 (.A(n429[6]), .B(n429[8]), .Z(n14073)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i555_2_lut_rep_271.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n1181)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 n13829_bdd_2_lut_3_lut (.A(n429[6]), .B(n429[8]), .C(n13829), 
         .Z(n5946)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n13829_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i11122_2_lut_rep_187_3_lut (.A(n429[6]), .B(n429[8]), .C(n429[7]), 
         .Z(n13989)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11122_2_lut_rep_187_3_lut.init = 16'hfefe;
    LUT4 i553_2_lut_rep_272 (.A(n429[4]), .B(n429[5]), .Z(n14074)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i553_2_lut_rep_272.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14004), .D(n13978), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i8114_4_lut_4_lut (.A(n429[4]), .B(n429[5]), .C(n14073), .D(n10480), 
         .Z(n2896)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i8114_4_lut_4_lut.init = 16'hf3f2;
    LUT4 i11478_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11727), .C(rom_addr[4]), 
         .D(n14140), .Z(n12096)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11478_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n2968_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n14140), .C(rom_addr[4]), 
         .D(n13977), .Z(n13691)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2968_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n13978), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i7676_2_lut_rep_242_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n14044)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7676_2_lut_rep_242_2_lut.init = 16'hdddd;
    LUT4 i5193_4_lut_4_lut (.A(rom_addr[3]), .B(n11676), .C(rom_addr[5]), 
         .D(n13950), .Z(n6031)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5193_4_lut_4_lut.init = 16'hfd0d;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14088), .B(n5906), .C(state[1]), 
         .D(n13952), .Z(show_char_data_8__N_275[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 i11506_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n14138), .Z(n12124)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11506_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7549_4_lut_4_lut_4_lut (.A(state[1]), .B(n2896), .C(n13952), 
         .D(n14087), .Z(show_char_data_8__N_275[8])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i7549_4_lut_4_lut_4_lut.init = 16'h5f5d;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13969), .D(n13948), .Z(n1851_adj_764)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13971), 
         .C(rom_addr[4]), .D(n14140), .Z(n1883)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11099_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11713)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11099_2_lut_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i2131_3_lut_4_lut_4_lut (.A(state[1]), .B(n720), .C(n14088), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_449[5])) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2131_3_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i11944_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14027), .Z(n12151)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11944_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_142_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13944)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_142_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i7996_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14082), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n158_adj_765)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7996_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n14138), .C(rom_addr[4]), .D(n14043), .Z(n1723_adj_766)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 i7974_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14103), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n2172)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7974_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_193_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n13995)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_193_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_165_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n13967)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_165_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i7922_2_lut_rep_126_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13928)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7922_2_lut_rep_126_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i5077_4_lut (.A(n14074), .B(n429[9]), .C(n13989), .D(n10480), 
         .Z(n5906)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5077_4_lut.init = 16'hcecf;
    LUT4 i940_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n14105), .C(cnt_length_num_c[3]), 
         .D(\cnt_length_num[4] ), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i940_3_lut_4_lut.init = 16'h7f80;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n13977), .D(n14139), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_144_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n14082), .D(rom_addr[5]), .Z(n13946)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_144_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_216_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n14018)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_216_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1676), 
         .C(rom_addr[4]), .D(n14138), .Z(n94_adj_767)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4979_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n13962), .C(rom_addr[4]), 
         .D(n14001), .Z(n5800)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i4979_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11771_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n13925), 
         .D(n13957), .Z(n12389)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11771_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11378_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n11996)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11378_4_lut_4_lut.init = 16'h7340;
    LUT4 i5846_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n6687)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5846_3_lut_4_lut_4_lut_4_lut.init = 16'h313d;
    LUT4 i11539_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14063), .C(rom_addr[4]), 
         .D(n14140), .Z(n12157)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11539_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_2_lut_rep_319 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14121)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_2_lut_rep_319.init = 16'h4444;
    LUT4 n1969_bdd_4_lut_13245_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13452)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1969_bdd_4_lut_13245_3_lut_4_lut.init = 16'h400f;
    FD1P3AX data_i8 (.D(show_char_data_8__N_275[8]), .SP(sys_clk_50MHz_enable_71), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=125, LSE_RLINE=139 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    PFUMX i14090 (.BLUT(n15361), .ALUT(n15362), .C0(rom_addr[1]), .Z(n15363));
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n13987), 
         .C(n14000), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n13949), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11608), 
         .C(n5894), .D(n158_adj_765), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7946_3_lut_3_lut (.A(rom_addr[6]), .B(n10638), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7946_3_lut_3_lut.init = 16'h0202;
    LUT4 i557_2_lut_rep_285 (.A(n429[7]), .B(n429[9]), .Z(n14087)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i557_2_lut_rep_285.init = 16'heeee;
    LUT4 i153_2_lut_rep_286 (.A(state[2]), .B(temp[0]), .Z(n14088)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i153_2_lut_rep_286.init = 16'h2222;
    LUT4 i7593_2_lut_rep_207_3_lut (.A(state[2]), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n14009)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i7593_2_lut_rep_207_3_lut.init = 16'h2f2f;
    LUT4 show_char_data_8__I_0_i3_3_lut_4_lut (.A(state[2]), .B(temp[0]), 
         .C(state[1]), .D(show_char_data_8__N_449[2]), .Z(show_char_data_8__N_275[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 i2189_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6074), 
         .D(n13924), .Z(n3000)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2189_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i12300_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n6740)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12300_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12322_3_lut_3_lut (.A(rom_addr[7]), .B(n10597), .C(n13227), 
         .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12322_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11667_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278), .Z(n12285)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11667_4_lut_4_lut.init = 16'h7340;
    LUT4 i11773_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12391)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11773_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7822_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12357), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7822_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7604_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069_adj_768), 
         .D(n12301), .Z(n4094_adj_769)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7604_4_lut_4_lut.init = 16'h5140;
    LUT4 i8126_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11619), 
         .D(n14276), .Z(n4094_adj_770)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i8126_4_lut_4_lut.init = 16'h5140;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14009), .B(n2943), .C(state[1]), 
         .D(n13952), .Z(show_char_data_8__N_275[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i921_2_lut_rep_303 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n14105)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i921_2_lut_rep_303.init = 16'h8888;
    LUT4 i933_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i933_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i11140_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n11755)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i11140_2_lut_3_lut.init = 16'h8080;
    LUT4 i2132_4_lut (.A(\end_x_8__N_295[4] ), .B(\end_y_8__N_313[4] ), 
         .C(n14087), .D(n5946), .Z(n2943)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2132_4_lut.init = 16'hc0ca;
    LUT4 n1834_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14161)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_then_4_lut.init = 16'h1044;
    LUT4 i964_2_lut_rep_245_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14047)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i964_2_lut_rep_245_3_lut.init = 16'h8080;
    PFUMX i13321 (.BLUT(n14166), .ALUT(n14167), .C0(rom_addr[3]), .Z(n125));
    LUT4 i2146_1_lut_rep_297 (.A(rom_addr[5]), .Z(n14099)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2146_1_lut_rep_297.init = 16'h5555;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14057), .Z(n828_adj_771)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14075), .C(rom_addr[0]), 
         .D(n14001), .Z(n10372)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_198_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14000)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_198_3_lut_3_lut.init = 16'hfdfd;
    LUT4 n1834_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14160)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1834_bdd_4_lut_4_lut_else_4_lut.init = 16'h08f4;
    LUT4 i5083_3_lut (.A(n10480), .B(\end_x_8__N_295[3] ), .C(n6867), 
         .Z(n5912)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5083_3_lut.init = 16'hc5c5;
    LUT4 i2_3_lut_adj_28 (.A(n429[3]), .B(n429[1]), .C(n429[2]), .Z(n10480)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_28.init = 16'hfefe;
    LUT4 n12995_bdd_4_lut (.A(n12995), .B(n12994), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n15355)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n12995_bdd_4_lut.init = 16'h00ca;
    LUT4 n2109_bdd_2_lut_12960_2_lut (.A(rom_addr[5]), .B(n2652), .Z(n13337)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2109_bdd_2_lut_12960_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n13947), 
         .C(rom_addr[0]), .D(n46_adj_772), .Z(n62_adj_773)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n11627), 
         .C(n6681), .D(n13973), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i6016_3_lut (.A(n429[2]), .B(n429[4]), .C(n429[3]), .Z(n6867)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i6016_3_lut.init = 16'hcece;
    LUT4 i2_3_lut_4_lut_4_lut_adj_29 (.A(rom_addr[5]), .B(n11627), .C(rom_addr[3]), 
         .D(n14001), .Z(n11629)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut_adj_29.init = 16'h4000;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n13977), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14082), 
         .C(n14066), .D(rom_addr[7]), .Z(n10636)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfff;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_774), 
         .C(n2395), .Z(n1596_adj_775)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_rep_141_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14082), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13943)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_141_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n429[14]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n429[13]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n429[12]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n429[11]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n429[9]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n429[8]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n429[7]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n429[6]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n429[5]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n429[4]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n429[3]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n429[2]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n429[1]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n429[0]), .SP(cnt_set_windows_3__N_384), 
            .CK(sys_clk_50MHz), .Q(n429[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2882), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state_c[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n13970), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n13970), .D(rom_addr[0]), .Z(n1530_adj_776)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    FD1S3AX state_FSM_i2 (.D(n2885), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2887), .CK(sys_clk_50MHz), .Q(state[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14018), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_777)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n14139(n14139), .n1181(n1181), 
            .n1101(n1101), .n14140(n14140), .n14086(n14086), .n1211(n1211), 
            .n12357(n12357), .n379(n379), .n13999(n13999), .n11629(n11629), 
            .n11996(n11996), .n46(n46), .n301(n301), .n1148(n1148), 
            .n13955(n13955), .n10364(n10364), .n158(n158), .n2141(n2141), 
            .n2172(n2172), .n1565(n1565), .n1596(n1596), .n14066(n14066), 
            .n1851(n1851), .n1530(n1530), .n828(n828), .n14057(n14057), 
            .n380(n380_adj_777), .n13967(n13967), .n6694(n6694), .n4094(n4094), 
            .rom_q({rom_q}), .n4094_adj_1(n4094_adj_770), .n62(n62), .n4094_adj_2(n4094_adj_769), 
            .n12096(n12096), .n12391(n12391), .n46_adj_3(n46_adj_772), 
            .n14001(n14001), .n14004(n14004), .n14138(n14138), .n13970(n13970), 
            .n13973(n13973), .n11862(n11862), .n14162(n14162), .n1643(n1643), 
            .n12285(n12285), .n13982(n13982), .n14018(n14018), .n317(n317), 
            .n13949(n13949), .n3936(n3936), .n1529(n1529), .n1530_adj_4(n1530_adj_776), 
            .n13978(n13978), .n13452(n13452), .n14063(n14063), .n1676(n1676), 
            .n828_adj_5(n828_adj_771), .n2395(n2395), .n14043(n14043), 
            .n12995(n12995), .n11608(n11608), .n12124(n12124), .n12301(n12301), 
            .n380_adj_6(n380), .n13961(n13961), .n62_adj_7(n62_adj_773), 
            .n13943(n13943), .n14044(n14044), .n5894(n5894), .n14052(n14052), 
            .n14027(n14027), .n9087(n9087), .n13975(n13975), .n509(n509), 
            .n510(n510), .n13962(n13962), .n12151(n12151), .n796(n796), 
            .n14000(n14000), .n15360(n15360), .n6740(n6740), .n2332(n2332), 
            .n6687(n6687), .n1278(n1278), .n14006(n14006), .n14103(n14103), 
            .n11713(n11713), .n13948(n13948), .n13977(n13977), .n1565_adj_8(n1565_adj_774), 
            .n1628(n1628), .n1661(n1661), .n13947(n13947), .n13944(n13944), 
            .n270(n270), .n6031(n6031), .n892(n892), .n10636(n10636), 
            .n10638(n10638), .n5800(n5800), .n891(n891), .n12157(n12157), 
            .n13995(n13995), .n2025(n2025), .n11619(n11619), .n3069(n3069_adj_768), 
            .n13927(n13927), .n14011(n14011), .n11676(n11676), .n13950(n13950), 
            .n13979(n13979), .n14082(n14082), .n1851_adj_9(n1851_adj_764), 
            .n14028(n14028), .n10372(n10372), .n1405(n1405), .n11727(n11727), 
            .n10597(n10597), .n13954(n13954), .n13946(n13946), .n1069(n1069), 
            .n723(n723), .n13925(n13925), .n1596_adj_10(n1596_adj_775), 
            .n13362(n13362), .n3000(n3000), .n2364(n2364), .n1534(n1534), 
            .n1467(n1467), .n13959(n13959), .n3069_adj_11(n3069), .n13957(n13957), 
            .n6681(n6681), .n13337(n13337), .n1403(n1403), .n94(n94), 
            .n126(n126), .n127(n127), .n2428(n2428), .n4720(n4720), 
            .n2300(n2300), .n13968(n13968), .n125(n125), .n13969(n13969), 
            .n1149(n1149), .n13916(n13916), .n3122(n3122), .n308(n308), 
            .n15355(n15355), .n14075(n14075), .n15363(n15363), .n11627(n11627), 
            .n14015(n14015), .n158_adj_12(n158_adj_765), .n13928(n13928), 
            .n1883(n1883), .n603(n603), .n14276(n14276), .n12389(n12389), 
            .n1172(n1172), .n13987(n13987), .n1084(n1084), .n1723(n1723_adj_766), 
            .n1755(n1755), .n6718(n6718), .n14099(n14099), .n12994(n12994), 
            .n13227(n13227), .n4(n4), .n13971(n13971), .n6074(n6074), 
            .n13691(n13691), .n14032(n14032), .n13659(n13659), .n13147(n13147), 
            .n94_adj_13(n94_adj_767)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n14139, n1181, n1101, n14140, n14086, 
            n1211, n12357, n379, n13999, n11629, n11996, n46, 
            n301, n1148, n13955, n10364, n158, n2141, n2172, n1565, 
            n1596, n14066, n1851, n1530, n828, n14057, n380, n13967, 
            n6694, n4094, rom_q, n4094_adj_1, n62, n4094_adj_2, 
            n12096, n12391, n46_adj_3, n14001, n14004, n14138, n13970, 
            n13973, n11862, n14162, n1643, n12285, n13982, n14018, 
            n317, n13949, n3936, n1529, n1530_adj_4, n13978, n13452, 
            n14063, n1676, n828_adj_5, n2395, n14043, n12995, n11608, 
            n12124, n12301, n380_adj_6, n13961, n62_adj_7, n13943, 
            n14044, n5894, n14052, n14027, n9087, n13975, n509, 
            n510, n13962, n12151, n796, n14000, n15360, n6740, 
            n2332, n6687, n1278, n14006, n14103, n11713, n13948, 
            n13977, n1565_adj_8, n1628, n1661, n13947, n13944, n270, 
            n6031, n892, n10636, n10638, n5800, n891, n12157, 
            n13995, n2025, n11619, n3069, n13927, n14011, n11676, 
            n13950, n13979, n14082, n1851_adj_9, n14028, n10372, 
            n1405, n11727, n10597, n13954, n13946, n1069, n723, 
            n13925, n1596_adj_10, n13362, n3000, n2364, n1534, n1467, 
            n13959, n3069_adj_11, n13957, n6681, n13337, n1403, 
            n94, n126, n127, n2428, n4720, n2300, n13968, n125, 
            n13969, n1149, n13916, n3122, n308, n15355, n14075, 
            n15363, n11627, n14015, n158_adj_12, n13928, n1883, 
            n603, n14276, n12389, n1172, n13987, n1084, n1723, 
            n1755, n6718, n14099, n12994, n13227, n4, n13971, 
            n6074, n13691, n14032, n13659, n13147, n94_adj_13) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n14139;
    input n1181;
    output n1101;
    output n14140;
    output n14086;
    output n1211;
    output n12357;
    output n379;
    output n13999;
    input n11629;
    input n11996;
    output n46;
    output n301;
    input n1148;
    input n13955;
    input n10364;
    input n158;
    input n2141;
    input n2172;
    input n1565;
    input n1596;
    output n14066;
    input n1851;
    input n1530;
    input n828;
    output n14057;
    input n380;
    input n13967;
    input n6694;
    input n4094;
    output [7:0]rom_q;
    input n4094_adj_1;
    input n62;
    input n4094_adj_2;
    input n12096;
    input n12391;
    output n46_adj_3;
    output n14001;
    output n14004;
    output n14138;
    output n13970;
    output n13973;
    input n11862;
    input n14162;
    output n1643;
    input n12285;
    output n13982;
    input n14018;
    input n317;
    output n13949;
    output n3936;
    output n1529;
    input n1530_adj_4;
    output n13978;
    input n13452;
    output n14063;
    output n1676;
    input n828_adj_5;
    output n2395;
    output n14043;
    output n12995;
    output n11608;
    input n12124;
    output n12301;
    input n380_adj_6;
    output n13961;
    input n62_adj_7;
    input n13943;
    input n14044;
    output n5894;
    output n14052;
    output n14027;
    output n9087;
    output n13975;
    input n509;
    output n510;
    output n13962;
    input n12151;
    output n796;
    input n14000;
    output n15360;
    input n6740;
    output n2332;
    input n6687;
    output n1278;
    output n14006;
    output n14103;
    input n11713;
    output n13948;
    output n13977;
    output n1565_adj_8;
    input n1628;
    output n1661;
    input n13947;
    input n13944;
    output n270;
    input n6031;
    input n892;
    input n10636;
    output n10638;
    input n5800;
    input n891;
    input n12157;
    input n13995;
    output n2025;
    output n11619;
    output n3069;
    input n13927;
    input n14011;
    output n11676;
    input n13950;
    output n13979;
    output n14082;
    input n1851_adj_9;
    input n14028;
    input n10372;
    output n1405;
    output n11727;
    output n10597;
    input n13954;
    input n13946;
    output n1069;
    output n723;
    output n13925;
    input n1596_adj_10;
    input n13362;
    input n3000;
    input n2364;
    input n1534;
    input n1467;
    output n13959;
    output n3069_adj_11;
    output n13957;
    output n6681;
    input n13337;
    input n1403;
    input n94;
    input n126;
    output n127;
    input n2428;
    output n4720;
    input n2300;
    output n13968;
    input n125;
    output n13969;
    input n1149;
    output n13916;
    input n3122;
    output n308;
    input n15355;
    output n14075;
    input n15363;
    output n11627;
    output n14015;
    input n158_adj_12;
    input n13928;
    input n1883;
    output n603;
    output n14276;
    input n12389;
    output n1172;
    output n13987;
    input n1084;
    input n1723;
    input n1755;
    output n6718;
    input n14099;
    output n12994;
    output n13227;
    output n4;
    output n13971;
    output n6074;
    input n13691;
    output n14032;
    input n13659;
    input n13147;
    input n94_adj_13;
    
    
    wire n11965, n11966, n11967, n14118, n589, n13453, n2109, 
        n13454, n1017, n4759, n12112, n13582, n13580, n13583, 
        n14241, n11968, n11969, n11970, n589_adj_541, n604, n13581, 
        n4750, n12111, n13579, n1275, n349, n380_c, n11972, n14163, 
        n14164, n14165, n1707, n14218, n12333, n12334, n12335, 
        n11974, n11975, n11976, n14217, n13542, n13541, n13543, 
        n620, n205, n11992, n9065, n6664, n716, n11977, n11978, 
        n11979, n2283, n2490, n2491, n13539, n13540, n12340, n12341, 
        n12342, n684, n699, n12090, n12905, n12903, n12906, n1882, 
        n14221, n11983, n11984, n11985, n1946, n11937, n12355, 
        n12356, n11986, n11987, n11988, n14048, n12294, n14137, 
        n15357, n2009, n491, n604_adj_542, n11991, n14238, n14239, 
        n14240, n13154, n12317, n12320, n14145, n12093, n14111, 
        n11989, n11990, n11993, n747, n270_c, n12904, n364, n11994, 
        n13926, n14100, n12485, n11997, n11998, n11639, n13517, 
        n13515, n13518, n1789, n11924, n12286, n14098, n6075, 
        n11999, n12000, n12001, n12002, n12003, n12006, n13920, 
        n13514, n14157, n14158, n924, n2588, n11946, n14235, n14236, 
        n14237, n62_c, n12004, n12005, n12007, n13516, n14232, 
        n14233, n14234, n12268, n12269, n12276, n15365, n15366, 
        n15367, n13663, n12070, n12273, n2523, n2554, n2555, n12012, 
        n12013, n12014, n12328, n891_c, n12016, n1691, n1692, 
        n14242, n13488, n13483, n12378, n14109, n12039, n12048, 
        n12272, n12018, n12019, n12020, n12021, n12022, n12023, 
        n1117, n1149_c, n12024, n12025, n12028, n14153, n14154, 
        n14155, n14229, n14230, n14231, n12026, n12027, n12029, 
        n2426, n4004, n1786, n12247, n12248, n12255, n12031, n12032, 
        n12033, n14220, n11949, n12034, n12035, n12036, n12600, 
        n13486, n13485, n13487, n14149, n14150, n14132, n14151, 
        n1117_adj_543, n12038, n12245, n12246, n12254, n14046, n428, 
        n14008, n444, n189, n190, n14226, n14227, n14228, n12049, 
        n12050, n12051, n12052, n12053, n12054, n2173, n12077, 
        n12241, n12242, n12252, n557, n526, n1820, n1852, n12239, 
        n13367, n12251, n12058, n12059, n12060, n1514, n1531, 
        n12061, n12062, n12063, n924_adj_544, n11617, n956, n476, 
        n507, n11981, n827, n11869, n829, n12253, n12258, n12064, 
        n12065, n12068, n12066, n12067, n12069, n14223, n14224, 
        n14225, n13966, n12105, n12071, n12072, n12073, n1628_c, 
        n1659, n12078, n13983, n797, n828_adj_545, n12015, n12207, 
        n12208, n12215, n13239, n12171, n12181, n12168, n12169, 
        n12180, n364_adj_546, n381, n12080, n12081, n12082, n14026, 
        n14222, n12224, n318, n12166, n13233, n12179, n12164, 
        n12165, n12178, n12083, n12084, n12085, n12282, n12089, 
        n12091, n12092, n12094, n12188, n12189, n12190, n12289, 
        n12219, n12220, n12221, n61, n63, n12259, n12260, n12261, 
        n12395, n12396, n12397, n2298, n2299, n2047, n12095, n12099, 
        n12184, n12185, n12186, n12187, n12217, n12218, n12097, 
        n12098, n12100, n12257, n12278, n12279, n12281, n12392, 
        n12393, n12394, n2268, n2300_c, n1867, n2444, n428_adj_552, 
        n251, n11961, n13299, n205_adj_553, n220, n11960, n6689, 
        n14034, n270_adj_554, n12452, n12216, n6685, n1228, n14127, 
        n364_adj_555, n14021, n1946_adj_556, n13934, n1309, n1341, 
        n251_adj_557, n12106, n12107, n2283_adj_558, n1308, n12293, 
        n13451, n13455, n731, n14058, n908, n1595, n12256, n1739, 
        n1787, n971, n475, n13305, n1770, n2040, n684_adj_559, 
        n2077, n3984, n1692_adj_560, n1724, n1196, n12277, n12280, 
        n14210, n11950, n1387, n859, n12283, n12284, n12287, n12288, 
        n124, n2492, n2555_adj_561, n14270, n1676_c, n301_adj_562, 
        n12453, n14007, n13149, n13150, n14191, n2173_adj_563, n286, 
        n11971, n1243, n1931, n14252, n14198, n14271, n2141_adj_564, 
        n2173_adj_565, n12321, n12322, n13321, n14010, n12476, n12327, 
        n2475, n3070, n1514_adj_566, n1531_adj_568, n2685, n14068, 
        n12290, n11948, n14124, n13621, n1466, n14219, n3069_c, 
        n3070_adj_569, n1278_c, n1533, n2298_adj_570, n2396, n1883_c, 
        n1914, n1915, n460, n3069_adj_571, n3070_adj_572, n1181_adj_573, 
        n1212, n1213, n2522, n12113, n653, n14214, n14215, n14216, 
        n668, n1084_c, n860, n11850, n892_c, n1243_adj_574, n11931, 
        n13900, n13010, n812, n12114, n12115, n12116, n13237, 
        n12308, n3069_adj_576, n3070_adj_577, n13228, n2444_adj_578, 
        n14273, n12176, n12177, n109, n2009_adj_579, n12182, n12183, 
        n13964, n1913, n829_adj_581, n13338, n14211, n14212, n14213, 
        n379_adj_582, n1483, n12199, n12200, n12211, n12205, n12206, 
        n12214, n716_adj_583, n732, n14085, n764, n2348, n14146, 
        n14147, n14148, n908_adj_584, n526_adj_585, n13318, n731_adj_586, 
        n1565_adj_587, n1597, n731_adj_588, n12902, n506, n13933, 
        n14053, n14045, n1851_adj_589, n6708, n13151, n12274, n12275, 
        n11733, n506_adj_590, n766, n1021, n12120, n12121, n12122, 
        n766_adj_591, n1021_adj_592, n13963, n1228_adj_593, n11928, 
        n2009_adj_594, n2010, n12123, n12125, n14245, n12299, n12300, 
        n14244, n364_adj_595, n381_adj_597, n14248, n14247, n14025, 
        n14251, n14250, n2110, n2078, n14274, n14176, n13152, 
        n13153, n14254, n12313, n12314, n12315, n14253, n3330, 
        n5354, n13932, n61_adj_598, n63_adj_600, n604_adj_601, n1451, 
        n1723_c, n13965, n13688, n1451_adj_602, n1467_c, n13985, 
        n2205, n14080, n6723, n14141, n2025_c, n14002, n11944, 
        n1038, n1054, n4_c, n12477, n13981, n13986, n1785, n428_adj_603, 
        n2298_adj_604, n316, n13998, n1085, n12129, n12130, n12131, 
        n14249, n12869, n12870, n1786_adj_605, n13992, n1054_adj_606, 
        n11938, n1466_adj_607, n1676_adj_608, n14208, n14209, n14016, 
        n1692_adj_609, n12422, n12423, n2044, n12470, n1914_adj_610, 
        n11919, n1851_adj_611, n12418, n12468, n1692_adj_612, n14035, 
        n1596_adj_613, n14135, n14056, n2620, n2141_adj_614, n2173_adj_615, 
        n604_adj_616, n14169, n255, n510_c, n1435, n11934, n1883_adj_617, 
        n12141, n12142, n12143, n14040, n221, n1549, n1565_adj_618, 
        n11952, n1835, n11929, n507_adj_619, n11834, n1435_adj_621, 
        n1436, n1755_c, n2522_adj_622, n12441, n2589, n15354, n6724, 
        n12464, n1149_adj_623, n1597_adj_624, n12203, n1915_adj_625, 
        n12195, n12196, n12209, n1403_c, n13350, n1404, n557_adj_626, 
        n572, n12462, n14113, n541, n12461, n13976, n12152, n12153, 
        n1979, n12231, n12232, n668_adj_627, n12154, n12155, n12156, 
        n12213, n1658, n14205, n14206, n14207, n2009_adj_628, n2010_adj_629, 
        n13229, n13230, n954, n13231, n1820_adj_630, n1529_adj_631, 
        n1530_adj_632, n12233, n12234, n12212, n6666, n12983, n14751, 
        n14750, n3507, n3516, n124_adj_633, n14753, n12243, n12244, 
        n11995, n12008, n12270, n13232, n14754, n12017, n12030, 
        n12271, n13234, n2554_adj_634, n890, n13012, n12304, n12305, 
        n12307, n2365, n2428_c, n12318, n14172, n13236, n14202, 
        n14203, n14204, n13912, n14171, n2460, n12984, n428_adj_635, 
        n12447, n12446, n653_adj_636, n12326, n2298_adj_637, n12266, 
        n14175, n14174, n12331, n12332, n12336, n12337, n2573, 
        n12388, n12368, n220_adj_638, n12353, n12354, n12358, n1707_adj_639, 
        n11908, n14156, n14199, n14200, n14201, n13323, n2396_adj_640, 
        n14022, n13922, n13288, n12471, n2283_adj_641, n11959, n2009_adj_642, 
        n11943, n78, n12449, n11915, n13974, n12263, n2333, n13917, 
        n12401, n12402, n12437, n13661, n12420, n12421, n890_adj_643, 
        n1002, n12434, n12438, n11922, n11923, n12426, n12868, 
        n2267, n14173, n1914_adj_644, n12419, n12488, n12489, n1786_adj_646, 
        n13810, n12295, n1676_adj_647, n1691_adj_648, n1692_adj_649, 
        n1659_adj_650, n13804, n12412, n1530_adj_651, n1499, n14070, 
        n653_adj_652, n12037, n14033, n13899, n860_adj_653, n893, 
        n11838, n1243_adj_654, n12323, n12324, n12325, n236, n13285, 
        n986, n13286, n1243_adj_655, n635, n11912, n1483_adj_656, 
        n14196, n14197, n1466_adj_657, n12472, n12486, n12425, n2428_adj_658, 
        n14078, n12450, n14122, n1468, n13898, n2491_adj_659, n13303, 
        n2411, n2459, n2427, n6700, n14178, n620_adj_660, n635_adj_661, 
        n11913, n2364_c, n15356, n6728, n13306, n13307, n637, 
        n14177, n1499_adj_662, n12399, n2236, n1244, n1275_adj_663, 
        n1276, n4936, n12193, n445, n508, n12194, n11936, n1597_adj_665, 
        n11640, n1212_adj_667, n12046, n13320, n11927, n443, n12459, 
        n1883_adj_668, n542, n13322, n13324, n12197, n12484, n253, 
        n190_adj_669, n12482, n14083, n2108, n13953, n1020, n14037, 
        n14123, n12411, n14120, n2205_adj_672, n12202, n13960, n1786_adj_673, 
        n1947, n1787_adj_674, n12265, n30, n12483, n10637, n12379, 
        n13007, n14184, n12235, n12238, n12480, n1660, n2538, 
        n12291, n13363, n1724_adj_675, n14183, n14144, n2554_adj_676, 
        n1852_adj_677, n1915_adj_678, n397, n12458, n12264, n12267, 
        n12303, n2365_adj_679, n475_adj_681, n12385, n12386, n13006, 
        n2522_adj_682, n12223, n2040_adj_683, n14187, n2492_adj_684, 
        n6667, n14186, n12371, n12372, n13009, n285, n14190, n14189, 
        n2110_adj_685, n12309, n844, n14193, n14194, n14195, n12987, 
        n14064, n4824, n1053, n12158, n12159, n2237, n2300_adj_686, 
        n12310, n14179, n11980, n2365_adj_687, n2428_adj_688, n12311, 
        n2492_adj_689, n2555_adj_690, n12312, n13300, n13301, n11921, 
        n11920, n1341_adj_692, n2492_adj_693, n2555_adj_694, n12319, 
        n11594, n11618, n13956, n12045, n2428_adj_695, n2492_adj_696, 
        n2555_adj_697, n2110_adj_698, n2621, n2684, n2237_adj_700, 
        n12134, n14756, n2427_adj_701, n13354, n12043, n13339, n13340, 
        n13931, n12339, n14005, n12398, n2237_adj_702, n1402, n1403_adj_703, 
        n13811, n12415, n12416, n1789_adj_704, n12345, n12346, n12352, 
        n12463, n11914, n12347, n12348, n12349, n12350, n5124, 
        n684_adj_705, n12367, n14188, n15364, n2299_adj_706, n12370, 
        n14003, n5436, n5977, n12376, n12377, n12381, n12382, 
        n12383, n12384, n12406, n12407, n12409, n11953, n444_adj_707, 
        n445_adj_708, n12413, n12414, n6428, n12479, n1978, n11918, 
        n10390, n13325, n2237_adj_710, n14152, n12465, n2573_adj_711, 
        n2685_adj_712, n12329, n13308, n6868, n12439, n12456, n12302, 
        n12306, n12448, n12466, n12473, n12460, n508_adj_713, n12163, 
        n14255, n12198, n1978_adj_714, n12236, n12989, n12237, n3392, 
        n13011, n13008, n11951, n1723_adj_715, n13923, n574, n1947_adj_716, 
        n4_adj_717, n11962, n11963, n11964, n1086, n11973, n12469, 
        n12474, n126_c, n12428, n11982, n12455, n1084_adj_718, n14185, 
        n3065, n12889, n380_adj_719, n1435_adj_720, n4497, n2523_adj_721, 
        n1660_adj_722, n11954, n12191, n2523_adj_723, n13366, n13364, 
        n12451, n12160, n2444_adj_724, n11947, n12132, n12440, n13991, 
        n12435, n12133, n12047, n604_adj_725, n2396_adj_726, n2380, 
        n13365, n14091, n1867_adj_727, n1883_adj_728, n2429, n3123, 
        n2301, n1101_adj_730, n1117_adj_731, n13693, n12101, n12079, 
        n12250, n12249, n12210, n13290, n12174, n12175, n12172, 
        n12173, n12162, n1085_adj_732, n12161, n13353, n13351, n12478, 
        n2045, n12390, n13352, n3070_adj_734, n12222, n13302, n13341, 
        n1228_adj_737, n557_adj_738, n526_adj_739, n12871, n1898, 
        n1914_adj_741, n14077, n476_adj_743, n14246, n14013, n4247, 
        n12890, n12454, n11917, n12262, n13319, n13484, n11930, 
        n14017, n13148, n699_adj_747, n11939, n11945, n11601, n1038_adj_748, 
        n4767, n333, n220_adj_749, n526_adj_750, n13304, n2268_adj_751, 
        n14055, n3230, n11638, n61_adj_752, n14130, n348, n1244_adj_753, 
        n13226, n10391, n2317, n2684_adj_754, n13289, n13287, n12467, 
        n4303, n11958, n14275, n14272, n12988, n12985, n1210, 
        n14081, n11916, n859_adj_757, n1076, n1292, n13990, n12986, 
        n13690, n5251, n13238, n13235, n14755, n14752, n13803, 
        n13802, n13692, n13689, n13662, n13660;
    
    PFUMX i11349 (.BLUT(n11965), .ALUT(n11966), .C0(rom_addr[5]), .Z(n11967));
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14139), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 n13453_bdd_3_lut_13699 (.A(n13453), .B(n2109), .C(rom_addr[5]), 
         .Z(n13454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13453_bdd_3_lut_13699.init = 16'hcaca;
    LUT4 i11494_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4759), 
         .Z(n12112)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11494_4_lut.init = 16'hc0ca;
    L6MUX21 i13064 (.D0(n13582), .D1(n13580), .SD(rom_addr[6]), .Z(n13583));
    LUT4 rom_addr_0__bdd_4_lut_13339_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14241)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_13339_else_4_lut.init = 16'h2000;
    PFUMX i11352 (.BLUT(n11968), .ALUT(n11969), .C0(rom_addr[5]), .Z(n11970));
    LUT4 i12050_3_lut (.A(n589_adj_541), .B(n604), .C(rom_addr[4]), .Z(n11968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12050_3_lut.init = 16'hcaca;
    PFUMX i13062 (.BLUT(n1181), .ALUT(n13581), .C0(rom_addr[5]), .Z(n13582));
    LUT4 i11493_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n4750), 
         .Z(n12111)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11493_4_lut.init = 16'hc0ca;
    PFUMX i13060 (.BLUT(n13579), .ALUT(n1275), .C0(rom_addr[5]), .Z(n13580));
    PFUMX i11354 (.BLUT(n349), .ALUT(n380_c), .C0(rom_addr[5]), .Z(n11972));
    PFUMX i13319 (.BLUT(n14163), .ALUT(n14164), .C0(rom_addr[0]), .Z(n14165));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14140), .Z(n1707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i5834_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n14218)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i5834_4_lut_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i11717_3_lut (.A(n12333), .B(n12334), .C(rom_addr[8]), .Z(n12335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11717_3_lut.init = 16'hcaca;
    PFUMX i11358 (.BLUT(n11974), .ALUT(n11975), .C0(rom_addr[5]), .Z(n11976));
    LUT4 i5834_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14217)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i5834_4_lut_4_lut_else_3_lut.init = 16'h4454;
    PFUMX i13029 (.BLUT(n13542), .ALUT(n13541), .C0(rom_addr[6]), .Z(n13543));
    LUT4 i11374_3_lut (.A(n620), .B(n205), .C(rom_addr[4]), .Z(n11992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11374_3_lut.init = 16'hcaca;
    LUT4 i5823_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), .C(rom_addr[3]), 
         .D(n9065), .Z(n6664)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5823_3_lut_4_lut.init = 16'h08f8;
    LUT4 address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(n14086), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut.init = 16'h77f0;
    PFUMX i11361 (.BLUT(n11977), .ALUT(n11978), .C0(rom_addr[5]), .Z(n11979));
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283), .B(n2490), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    PFUMX i13027 (.BLUT(n1211), .ALUT(n13539), .C0(rom_addr[4]), .Z(n13540));
    LUT4 i11724_3_lut (.A(n12340), .B(n12341), .C(rom_addr[8]), .Z(n12342)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11724_3_lut.init = 16'hcaca;
    PFUMX i11472 (.BLUT(n684), .ALUT(n699), .C0(rom_addr[4]), .Z(n12090));
    L6MUX21 i12574 (.D0(n12905), .D1(n12903), .SD(rom_addr[5]), .Z(n12906));
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14140), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11741_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14221)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i11741_3_lut_then_4_lut.init = 16'hccc4;
    PFUMX i11367 (.BLUT(n11983), .ALUT(n11984), .C0(rom_addr[5]), .Z(n11985));
    LUT4 i11319_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), .C(rom_addr[4]), 
         .D(n1946), .Z(n11937)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11319_3_lut_4_lut.init = 16'hf808;
    LUT4 i11739_3_lut (.A(n12355), .B(n12356), .C(rom_addr[8]), .Z(n12357)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11739_3_lut.init = 16'hcaca;
    PFUMX i11370 (.BLUT(n11986), .ALUT(n11987), .C0(rom_addr[5]), .Z(n11988));
    LUT4 i11676_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), .C(rom_addr[3]), 
         .D(n14048), .Z(n12294)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11676_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15357), .Z(n2009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 i11373_3_lut (.A(n491), .B(n604_adj_542), .C(rom_addr[4]), .Z(n11991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11373_3_lut.init = 16'hcaca;
    PFUMX i13370 (.BLUT(n14238), .ALUT(n14239), .C0(rom_addr[0]), .Z(n14240));
    LUT4 i12351_3_lut (.A(n13154), .B(n12317), .C(rom_addr[7]), .Z(n12320)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12351_3_lut.init = 16'hcaca;
    LUT4 i11475_3_lut_4_lut (.A(n14145), .B(n14137), .C(rom_addr[4]), 
         .D(n379), .Z(n12093)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11475_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7718_2_lut_rep_309 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14111)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7718_2_lut_rep_309.init = 16'heeee;
    PFUMX i11375 (.BLUT(n11989), .ALUT(n11990), .C0(rom_addr[5]), .Z(n11993));
    LUT4 i11360_3_lut_4_lut (.A(n14145), .B(n14137), .C(rom_addr[4]), 
         .D(n747), .Z(n11978)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11360_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12572 (.BLUT(n270_c), .ALUT(n12904), .C0(rom_addr[4]), .Z(n12905));
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n13999), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364), .Z(n380_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11376 (.BLUT(n11991), .ALUT(n11992), .C0(rom_addr[5]), .Z(n11994));
    LUT4 i12291_3_lut_4_lut (.A(n13926), .B(n14100), .C(rom_addr[6]), 
         .D(n11629), .Z(n12485)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12291_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11380 (.BLUT(n11996), .ALUT(n11997), .C0(rom_addr[5]), .Z(n11998));
    LUT4 i1_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n11639)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut.init = 16'h8888;
    L6MUX21 i13010 (.D0(n13517), .D1(n13515), .SD(rom_addr[6]), .Z(n13518));
    LUT4 i11668_3_lut (.A(n1789), .B(n11924), .C(rom_addr[8]), .Z(n12286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11668_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14098), .C(rom_addr[5]), 
         .D(rom_addr[3]), .Z(n6075)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    PFUMX i11383 (.BLUT(n11999), .ALUT(n12000), .C0(rom_addr[5]), .Z(n12001));
    PFUMX i11388 (.BLUT(n12002), .ALUT(n12003), .C0(rom_addr[5]), .Z(n12006));
    PFUMX i13006 (.BLUT(n13920), .ALUT(n13514), .C0(rom_addr[5]), .Z(n13515));
    PFUMX i13315 (.BLUT(n14157), .ALUT(n14158), .C0(rom_addr[0]), .Z(n924));
    LUT4 i11328_3_lut_4_lut (.A(n14145), .B(n14137), .C(rom_addr[4]), 
         .D(n2588), .Z(n11946)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11328_3_lut_4_lut.init = 16'hf808;
    PFUMX i13368 (.BLUT(n14235), .ALUT(n14236), .C0(rom_addr[0]), .Z(n14237));
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46), .B(n301), .C(rom_addr[4]), 
         .Z(n62_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    PFUMX i11389 (.BLUT(n12004), .ALUT(n12005), .C0(rom_addr[5]), .Z(n12007));
    PFUMX i13008 (.BLUT(n13516), .ALUT(n13920), .C0(rom_addr[5]), .Z(n13517));
    PFUMX i13366 (.BLUT(n14232), .ALUT(n14233), .C0(rom_addr[0]), .Z(n14234));
    LUT4 i12357_3_lut (.A(n12268), .B(n12269), .C(rom_addr[8]), .Z(n12276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12357_3_lut.init = 16'hcaca;
    PFUMX i14092 (.BLUT(n15365), .ALUT(n15366), .C0(rom_addr[0]), .Z(n15367));
    LUT4 i11655_3_lut (.A(n13663), .B(n12070), .C(rom_addr[7]), .Z(n12273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11655_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11396 (.BLUT(n12012), .ALUT(n12013), .C0(rom_addr[5]), .Z(n12014));
    PFUMX i11398 (.BLUT(n12328), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n12016));
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(n14145), .B(n14137), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_0__bdd_4_lut_13339_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14242)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13339_then_4_lut.init = 16'h2419;
    PFUMX i12990 (.BLUT(n13488), .ALUT(n13483), .C0(rom_addr[5]), .Z(n12378));
    LUT4 i11095_2_lut_rep_307 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14109)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11095_2_lut_rep_307.init = 16'heeee;
    LUT4 i11654_3_lut (.A(n12039), .B(n12048), .C(rom_addr[7]), .Z(n12272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11654_3_lut.init = 16'hcaca;
    PFUMX i11402 (.BLUT(n12018), .ALUT(n12019), .C0(rom_addr[5]), .Z(n12020));
    PFUMX i11405 (.BLUT(n12021), .ALUT(n12022), .C0(rom_addr[5]), .Z(n12023));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11410 (.BLUT(n12024), .ALUT(n12025), .C0(rom_addr[5]), .Z(n12028));
    PFUMX i13313 (.BLUT(n14153), .ALUT(n14154), .C0(rom_addr[4]), .Z(n14155));
    PFUMX i13364 (.BLUT(n14229), .ALUT(n14230), .C0(rom_addr[2]), .Z(n14231));
    PFUMX i11411 (.BLUT(n12026), .ALUT(n12027), .C0(rom_addr[5]), .Z(n12029));
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n4004), .Z(n1786)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i11637_3_lut (.A(n12247), .B(n12248), .C(rom_addr[8]), .Z(n12255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11637_3_lut.init = 16'hcaca;
    PFUMX i11415 (.BLUT(n12031), .ALUT(n12032), .C0(rom_addr[5]), .Z(n12033));
    LUT4 i11741_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14220)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i11741_3_lut_else_4_lut.init = 16'h0103;
    LUT4 i11331_3_lut_4_lut (.A(rom_addr[1]), .B(n13955), .C(rom_addr[5]), 
         .D(n62_c), .Z(n11949)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11331_3_lut_4_lut.init = 16'hf202;
    PFUMX i11418 (.BLUT(n12034), .ALUT(n12035), .C0(rom_addr[5]), .Z(n12036));
    LUT4 i12400_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12600)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12400_2_lut.init = 16'h9999;
    PFUMX i12988 (.BLUT(n13486), .ALUT(n13485), .C0(rom_addr[6]), .Z(n13487));
    PFUMX i13311 (.BLUT(n14149), .ALUT(n14150), .C0(n14132), .Z(n14151));
    PFUMX i11420 (.BLUT(n1117_adj_543), .ALUT(n10364), .C0(rom_addr[5]), 
          .Z(n12038));
    LUT4 i11636_3_lut (.A(n12245), .B(n12246), .C(rom_addr[7]), .Z(n12254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11636_3_lut.init = 16'hcaca;
    LUT4 i12485_2_lut_rep_244_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14046)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12485_2_lut_rep_244_3_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n14008), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13362 (.BLUT(n14226), .ALUT(n14227), .C0(rom_addr[0]), .Z(n14228));
    PFUMX i11433 (.BLUT(n12049), .ALUT(n12050), .C0(rom_addr[5]), .Z(n12051));
    PFUMX i11436 (.BLUT(n12052), .ALUT(n12053), .C0(rom_addr[5]), .Z(n12054));
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11459 (.BLUT(n1565), .ALUT(n1596), .C0(rom_addr[5]), .Z(n12077));
    LUT4 i11634_3_lut (.A(n12241), .B(n12242), .C(rom_addr[7]), .Z(n12252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11634_3_lut.init = 16'hcaca;
    LUT4 i12468_2_lut_rep_264 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14066)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12468_2_lut_rep_264.init = 16'h1111;
    LUT4 i11348_3_lut (.A(n557), .B(n526), .C(rom_addr[4]), .Z(n11966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11348_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11633_3_lut (.A(n12239), .B(n13367), .C(rom_addr[7]), .Z(n12251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11633_3_lut.init = 16'hcaca;
    PFUMX i11442 (.BLUT(n12058), .ALUT(n12059), .C0(rom_addr[5]), .Z(n12060));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14100), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11445 (.BLUT(n12061), .ALUT(n12062), .C0(rom_addr[5]), .Z(n12063));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_544), .ALUT(n11617), 
          .C0(rom_addr[5]), .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11363_3_lut (.A(n476), .B(n507), .C(rom_addr[5]), .Z(n11981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11363_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n11869), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11640_3_lut (.A(n12253), .B(n12254), .C(rom_addr[8]), .Z(n12258)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11640_3_lut.init = 16'hcaca;
    PFUMX i11450 (.BLUT(n12064), .ALUT(n12065), .C0(rom_addr[5]), .Z(n12068));
    PFUMX i11451 (.BLUT(n12066), .ALUT(n12067), .C0(rom_addr[5]), .Z(n12069));
    PFUMX i13360 (.BLUT(n14223), .ALUT(n14224), .C0(rom_addr[0]), .Z(n14225));
    LUT4 i11487_4_lut (.A(rom_addr[0]), .B(n14057), .C(rom_addr[4]), .D(n13966), 
         .Z(n12105)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11487_4_lut.init = 16'hcac0;
    L6MUX21 i11455 (.D0(n12071), .D1(n12072), .SD(rom_addr[5]), .Z(n12073));
    PFUMX i11460 (.BLUT(n1628_c), .ALUT(n1659), .C0(rom_addr[5]), .Z(n12078));
    LUT4 i11307_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n13983), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14150)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11307_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    PFUMX i11397 (.BLUT(n797), .ALUT(n828_adj_545), .C0(rom_addr[5]), 
          .Z(n12015));
    LUT4 i12364_3_lut (.A(n12207), .B(n12208), .C(rom_addr[8]), .Z(n12215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12364_3_lut.init = 16'hcaca;
    LUT4 i11563_3_lut (.A(n13239), .B(n12171), .C(rom_addr[7]), .Z(n12181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11563_3_lut.init = 16'hcaca;
    LUT4 i11562_3_lut (.A(n12168), .B(n12169), .C(rom_addr[7]), .Z(n12180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11562_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_adj_546), .ALUT(n380), 
          .C0(n14100), .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11464 (.BLUT(n12080), .ALUT(n12081), .C0(rom_addr[5]), .Z(n12082));
    LUT4 n2077_bdd_3_lut_13146_4_lut (.A(rom_addr[0]), .B(n13967), .C(rom_addr[4]), 
         .D(n14026), .Z(n13514)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n2077_bdd_3_lut_13146_4_lut.init = 16'h1f10;
    PFUMX i13358 (.BLUT(n14220), .ALUT(n14221), .C0(rom_addr[2]), .Z(n14222));
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n12224), .ALUT(n6694), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11561_3_lut (.A(n12166), .B(n13233), .C(rom_addr[7]), .Z(n12179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11561_3_lut.init = 16'hcaca;
    LUT4 i11560_3_lut (.A(n12164), .B(n12165), .C(rom_addr[7]), .Z(n12178)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11560_3_lut.init = 16'hcaca;
    PFUMX i11467 (.BLUT(n12083), .ALUT(n12084), .C0(rom_addr[5]), .Z(n12085));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12282), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11473 (.D0(n12089), .D1(n12090), .SD(rom_addr[5]), .Z(n12091));
    PFUMX i11476 (.BLUT(n12092), .ALUT(n12093), .C0(rom_addr[5]), .Z(n12094));
    L6MUX21 i11572 (.D0(n12188), .D1(n12189), .SD(rom_addr[10]), .Z(n12190));
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12289), .ALUT(n4094_adj_1), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11603 (.D0(n12219), .D1(n12220), .SD(rom_addr[10]), .Z(n12221));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n11869), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11643 (.D0(n12259), .D1(n12260), .SD(rom_addr[10]), .Z(n12261));
    L6MUX21 i11779 (.D0(n12395), .D1(n12396), .SD(rom_addr[10]), .Z(n12397));
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283), .B(n2298), .C(rom_addr[4]), 
         .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11481 (.BLUT(n12095), .ALUT(n12096), .C0(rom_addr[5]), .Z(n12099));
    L6MUX21 i11570 (.D0(n12184), .D1(n12185), .SD(rom_addr[9]), .Z(n12188));
    L6MUX21 i11571 (.D0(n12186), .D1(n12187), .SD(rom_addr[9]), .Z(n12189));
    PFUMX i11602 (.BLUT(n12217), .ALUT(n12218), .C0(rom_addr[9]), .Z(n12220));
    PFUMX i11482 (.BLUT(n12097), .ALUT(n12098), .C0(rom_addr[5]), .Z(n12100));
    PFUMX i11642 (.BLUT(n12257), .ALUT(n12258), .C0(rom_addr[9]), .Z(n12260));
    L6MUX21 i11663 (.D0(n12278), .D1(n12279), .SD(rom_addr[9]), .Z(n12281));
    PFUMX i11777 (.BLUT(n12391), .ALUT(n12392), .C0(rom_addr[9]), .Z(n12395));
    PFUMX i11778 (.BLUT(n12393), .ALUT(n12394), .C0(rom_addr[9]), .Z(n12396));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1867)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h6544;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    PFUMX i11567 (.BLUT(n12178), .ALUT(n12179), .C0(rom_addr[8]), .Z(n12185));
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46_adj_3)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h5818;
    LUT4 i11343_3_lut (.A(n428_adj_552), .B(n251), .C(rom_addr[4]), .Z(n11961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11343_3_lut.init = 16'hcaca;
    LUT4 n2506_bdd_3_lut_13162_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13299)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2506_bdd_3_lut_13162_4_lut_4_lut.init = 16'hc807;
    LUT4 i11342_3_lut (.A(n205_adj_553), .B(n220), .C(rom_addr[4]), .Z(n11960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11342_3_lut.init = 16'hcaca;
    PFUMX i11568 (.BLUT(n12180), .ALUT(n12181), .C0(rom_addr[8]), .Z(n12186));
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n301)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h4224;
    LUT4 i5848_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6689)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5848_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 i12082_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[4]), 
         .D(n270_adj_554), .Z(n12452)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12082_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    PFUMX i11601 (.BLUT(n12215), .ALUT(n12216), .C0(rom_addr[9]), .Z(n12219));
    LUT4 i11098_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11098_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h2422;
    LUT4 i5844_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6685)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5844_3_lut_4_lut_4_lut.init = 16'hd838;
    LUT4 i11084_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1228)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11084_3_lut_4_lut_3_lut_4_lut.init = 16'h1181;
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14127), .Z(n364_adj_555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14021), .Z(n1946_adj_556)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_2_i1341_3_lut_4_lut (.A(rom_addr[0]), .B(n13934), 
         .C(rom_addr[5]), .D(n1309), .Z(n1341)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1341_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n557)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut.init = 16'h81a1;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n251_adj_557)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h4808;
    PFUMX i11489 (.BLUT(n12105), .ALUT(n12106), .C0(rom_addr[5]), .Z(n12107));
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283_adj_558)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(D)))) */ ;
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h2811;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14004), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 i11675_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), .C(rom_addr[3]), 
         .D(n14138), .Z(n12293)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11675_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7712_4_lut (.A(rom_addr[0]), .B(n14008), .C(n13970), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7712_4_lut.init = 16'h0a22;
    PFUMX i12965 (.BLUT(n13454), .ALUT(n13451), .C0(rom_addr[6]), .Z(n13455));
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1691)) /* synthesis lut_function=(A (B (D))+!A (B (C (D))+!B !(D))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hc811;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14058), .Z(n205)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n908)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut.init = 16'h7a78;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364_adj_546)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 address_11__I_0_Mux_1_i220_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n220)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut_4_lut.init = 16'h9008;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    PFUMX i11641 (.BLUT(n12255), .ALUT(n12256), .C0(rom_addr[9]), .Z(n12259));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786), .C0(rom_addr[5]), 
          .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n475)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 n1699_bdd_2_lut_13080_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13305)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1699_bdd_2_lut_13080_4_lut_4_lut.init = 16'h6100;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_171_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13973)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_171_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n13999), .Z(n684_adj_559)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n3984), .ALUT(n1692_adj_560), 
          .C0(n11862), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11660 (.BLUT(n12272), .ALUT(n12273), .C0(rom_addr[8]), .Z(n12278));
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    PFUMX i11662 (.BLUT(n12276), .ALUT(n12277), .C0(rom_addr[9]), .Z(n12280));
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 i12186_3_lut (.A(n14162), .B(n14210), .C(rom_addr[5]), .Z(n11950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12186_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1387)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    L6MUX21 i11669 (.D0(n12283), .D1(n12284), .SD(rom_addr[9]), .Z(n12287));
    PFUMX i11670 (.BLUT(n12285), .ALUT(n12286), .C0(rom_addr[9]), .Z(n12288));
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 n2492_bdd_3_lut (.A(n2492), .B(n2555_adj_561), .C(rom_addr[6]), 
         .Z(n14270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2492_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 i11835_3_lut_4_lut (.A(n13982), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_562), .Z(n12453)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11835_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_542)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 n13149_bdd_3_lut_4_lut (.A(n14018), .B(n14007), .C(rom_addr[5]), 
         .D(n13149), .Z(n13150)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13149_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n14018), .B(n14007), 
         .C(rom_addr[5]), .D(n14191), .Z(n2173_adj_563)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11353 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n11971));
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut.init = 16'h7002;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 n2492_bdd_4_lut (.A(n14252), .B(n14198), .C(rom_addr[0]), .D(rom_addr[6]), 
         .Z(n14271)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B (C)))) */ ;
    defparam n2492_bdd_4_lut.init = 16'h5030;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n14018), .B(n14007), 
         .C(rom_addr[5]), .D(n2141_adj_564), .Z(n2173_adj_565)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    PFUMX i11704 (.BLUT(n12320), .ALUT(n12321), .C0(rom_addr[8]), .Z(n12322));
    LUT4 n2062_bdd_3_lut_13187_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13321)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_13187_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 i11858_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14010), .C(rom_addr[6]), 
         .D(n13949), .Z(n12476)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11858_3_lut_4_lut_4_lut.init = 16'hbfba;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut.init = 16'h4802;
    LUT4 i3125_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n3936)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3125_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 i11709_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12327)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11709_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_rep_124_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13926)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_rep_124_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 i7653_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7653_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12190), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_566), .ALUT(n1530_adj_4), 
          .C0(n14100), .Z(n1531_adj_568)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12322), .B(n2685), .C(rom_addr[9]), 
         .D(n14068), .Z(n3070)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 i11672_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12290)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11672_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n11948), .B(n14228), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 n1293_bdd_4_lut (.A(n13978), .B(n14109), .C(n14124), .D(rom_addr[4]), 
         .Z(n13621)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut.init = 16'h30aa;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    PFUMX i13356 (.BLUT(n14217), .ALUT(n14218), .C0(rom_addr[2]), .Z(n14219));
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12342), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070_adj_569)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12370_3_lut (.A(n1278_c), .B(n1533), .C(rom_addr[8]), .Z(n12393)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12370_3_lut.init = 16'hcaca;
    LUT4 i7816_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_570)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7816_4_lut_4_lut.init = 16'hf8f6;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i2109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_c), .B(n1914), .C(rom_addr[5]), 
         .Z(n1915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12335), .ALUT(n3069_adj_571), 
          .C0(rom_addr[9]), .Z(n3070_adj_572)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181_adj_573), .ALUT(n1212), 
          .C0(rom_addr[5]), .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7613_2_lut_rep_345 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n15357)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7613_2_lut_rep_345.init = 16'h9090;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    PFUMX i11495 (.BLUT(n12111), .ALUT(n12112), .C0(rom_addr[5]), .Z(n12113));
    LUT4 i7761_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i7761_4_lut_4_lut_4_lut.init = 16'h8400;
    PFUMX i13354 (.BLUT(n14214), .ALUT(n14215), .C0(rom_addr[0]), .Z(n14216));
    LUT4 address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_c)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    PFUMX i12963 (.BLUT(n13452), .ALUT(n14063), .C0(rom_addr[4]), .Z(n13453));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860), .C0(n11850), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_574)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 n12371_bdd_2_lut_13070_4_lut (.A(n11931), .B(n13900), .C(rom_addr[6]), 
         .D(rom_addr[7]), .Z(n13010)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n12371_bdd_2_lut_13070_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    PFUMX i11498 (.BLUT(n12114), .ALUT(n12115), .C0(rom_addr[5]), .Z(n12116));
    LUT4 n1251_bdd_3_lut_12932_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13237)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam n1251_bdd_3_lut_12932_3_lut_4_lut_4_lut.init = 16'h7e01;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12308), .ALUT(n3069_adj_576), 
          .C0(rom_addr[9]), .Z(n3070_adj_577)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n668_bdd_3_lut_13258_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13228)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam n668_bdd_3_lut_13258_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 i5822_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n9065)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i5822_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_578)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 n2110_bdd_4_lut_13393 (.A(rom_addr[5]), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n14010), .Z(n14273)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13393.init = 16'h8400;
    PFUMX i11566 (.BLUT(n12176), .ALUT(n12177), .C0(rom_addr[8]), .Z(n12184));
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_579)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12221), .B(n3070_adj_572), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    PFUMX i11569 (.BLUT(n12182), .ALUT(n12183), .C0(rom_addr[8]), .Z(n12187));
    LUT4 i7630_2_lut_rep_162_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13964)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7630_2_lut_rep_162_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_553)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_5), .C0(n14100), 
          .Z(n829_adj_581)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n4103_bdd_4_lut_13169_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n13338)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !((D)+!C)))) */ ;
    defparam n4103_bdd_4_lut_13169_4_lut.init = 16'h4010;
    PFUMX i13352 (.BLUT(n14211), .ALUT(n14212), .C0(rom_addr[0]), .Z(n14213));
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379_adj_582)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2395)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut.init = 16'h2101;
    LUT4 i11448_3_lut_4_lut (.A(n14043), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n12066)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11448_3_lut_4_lut.init = 16'h9f90;
    L6MUX21 i11593 (.D0(n12199), .D1(n12200), .SD(rom_addr[7]), .Z(n12211));
    L6MUX21 i11596 (.D0(n12205), .D1(n12206), .SD(rom_addr[7]), .Z(n12214));
    LUT4 n2552_bdd_3_lut_12683_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n12995)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_12683_4_lut_4_lut.init = 16'hdfc0;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716_adj_583), .ALUT(n732), 
          .C0(n14085), .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'he420;
    PFUMX i13309 (.BLUT(n14146), .ALUT(n14147), .C0(rom_addr[0]), .Z(n14148));
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n908_adj_584)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut.init = 16'h0860;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n526_adj_585)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h0852;
    LUT4 n730_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n13318)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_4_lut_4_lut.init = 16'h0812;
    LUT4 address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731_adj_586)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 i12246_3_lut_4_lut (.A(n13966), .B(n11608), .C(rom_addr[5]), 
         .D(n1565_adj_587), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12246_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731_adj_588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (D))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'h0832;
    LUT4 n730_bdd_3_lut_12576_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n12902)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_12576_4_lut_4_lut.init = 16'hc008;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h1008;
    LUT4 i7662_2_lut_rep_131_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13933)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7662_2_lut_rep_131_4_lut_4_lut.init = 16'h2900;
    LUT4 i7624_2_lut_4_lut_4_lut (.A(n14053), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14045), .Z(n1851_adj_589)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7624_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i5867_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[4]), .Z(n6708)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5867_3_lut_4_lut_4_lut.init = 16'h04c0;
    LUT4 n2093_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13151)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2093_bdd_3_lut_4_lut_4_lut.init = 16'h4810;
    PFUMX i11661 (.BLUT(n12274), .ALUT(n12275), .C0(rom_addr[8]), .Z(n12279));
    LUT4 i11118_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11733)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11118_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n506_adj_590)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h103f;
    PFUMX i11666 (.BLUT(n766), .ALUT(n1021), .C0(rom_addr[8]), .Z(n12284));
    PFUMX i11504 (.BLUT(n12120), .ALUT(n12121), .C0(rom_addr[5]), .Z(n12122));
    LUT4 i11774_3_lut (.A(n766_adj_591), .B(n1021_adj_592), .C(rom_addr[8]), 
         .Z(n12392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11774_3_lut.init = 16'hcaca;
    LUT4 i11479_3_lut_4_lut (.A(n14063), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_579), .Z(n12097)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11479_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut (.A(n14063), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13963), .Z(n1820)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12070_3_lut (.A(n1228_adj_593), .B(n1243_adj_574), .C(rom_addr[4]), 
         .Z(n11928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12070_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14063), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_594), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11507 (.BLUT(n12123), .ALUT(n12124), .C0(rom_addr[5]), .Z(n12125));
    LUT4 i5857_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14245)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5857_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    PFUMX i11683 (.BLUT(n12299), .ALUT(n12300), .C0(rom_addr[8]), .Z(n12301));
    LUT4 i5857_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14244)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5857_3_lut_4_lut_else_4_lut.init = 16'ha880;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_595), .ALUT(n380_adj_6), 
          .C0(n14100), .Z(n381_adj_597)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11825_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14248)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11825_3_lut_4_lut_then_4_lut.init = 16'h3448;
    LUT4 i11825_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14247)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11825_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i4969_3_lut_then_4_lut (.A(n14025), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14053), .Z(n14251)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4969_3_lut_then_4_lut.init = 16'h7f70;
    LUT4 i4969_3_lut_else_4_lut (.A(n14025), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n13961), .Z(n14250)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4969_3_lut_else_4_lut.init = 16'hf707;
    LUT4 n2110_bdd_4_lut_13974 (.A(n2110), .B(n2078), .C(rom_addr[5]), 
         .D(rom_addr[6]), .Z(n14274)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam n2110_bdd_4_lut_13974.init = 16'haaac;
    LUT4 n6692_bdd_3_lut_13286 (.A(n14176), .B(n13152), .C(rom_addr[5]), 
         .Z(n13153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6692_bdd_3_lut_13286.init = 16'hcaca;
    LUT4 n13145_bdd_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14254)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+(D))))) */ ;
    defparam n13145_bdd_3_lut_then_4_lut.init = 16'h046d;
    PFUMX i11697 (.BLUT(n12313), .ALUT(n12314), .C0(rom_addr[8]), .Z(n12315));
    LUT4 n13145_bdd_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14253)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam n13145_bdd_3_lut_else_4_lut.init = 16'h20b4;
    LUT4 i2519_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n14025), .C(rom_addr[4]), 
         .D(n14053), .Z(n3330)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2519_3_lut_3_lut_4_lut.init = 16'h08f8;
    LUT4 i4543_3_lut_4_lut (.A(rom_addr[1]), .B(n14025), .C(rom_addr[4]), 
         .D(n13967), .Z(n5354)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4543_3_lut_4_lut.init = 16'h7f70;
    LUT4 i4954_3_lut_rep_130_4_lut (.A(rom_addr[1]), .B(n14025), .C(rom_addr[4]), 
         .D(n13961), .Z(n13932)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4954_3_lut_rep_130_4_lut.init = 16'h08f8;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_598), .ALUT(n62_adj_7), 
          .C0(n11869), .Z(n63_adj_600)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_4_lut_4_lut (.A(n13982), .B(rom_addr[3]), 
         .C(n14001), .D(rom_addr[0]), .Z(n604_adj_601)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_0_i604_3_lut_4_lut_4_lut.init = 16'h11d1;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n14138), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 rom_addr_6__bdd_3_lut_4_lut (.A(n14138), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13965), .Z(n13688)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_6__bdd_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n14138), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_602), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n14138), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n13985), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11115_3_lut_4_lut (.A(n14140), .B(rom_addr[3]), .C(n14080), 
         .D(n1676), .Z(n6723)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11115_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11414_3_lut_4_lut (.A(n14141), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n12032)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11414_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11326_3_lut_4_lut (.A(n14141), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14002), .Z(n11944)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11326_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n14141), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11859_4_lut (.A(n13943), .B(rom_addr[1]), .C(rom_addr[6]), .D(n4_c), 
         .Z(n12477)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i11859_4_lut.init = 16'h3afa;
    LUT4 i2654_3_lut_4_lut (.A(rom_addr[2]), .B(n14044), .C(rom_addr[5]), 
         .D(n13981), .Z(n5894)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2654_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12261), .B(n3070_adj_569), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    LUT4 i1_3_lut_rep_184_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n13986)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_rep_184_4_lut.init = 16'heffe;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14138), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14140), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14027), .Z(n428_adj_603)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14127), .Z(n2298_adj_604)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14021), .Z(n9087)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14004), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 i7875_4_lut (.A(rom_addr[0]), .B(n13998), .C(n14034), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7875_4_lut.init = 16'h0a22;
    PFUMX i11513 (.BLUT(n12129), .ALUT(n12130), .C0(rom_addr[5]), .Z(n12131));
    LUT4 n12443_bdd_3_lut_13252 (.A(n14249), .B(n12869), .C(rom_addr[5]), 
         .Z(n12870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12443_bdd_3_lut_13252.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_605)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14034), 
         .C(rom_addr[4]), .D(n13967), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i11511_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[4]), 
         .D(n2009), .Z(n12129)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11511_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14026), 
         .C(rom_addr[4]), .D(n13992), .Z(n1054_adj_606)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 i11320_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[4]), 
         .D(n1643), .Z(n11938)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11320_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11503_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[4]), 
         .D(n1466_adj_607), .Z(n12121)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11503_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), 
         .C(rom_addr[5]), .D(n1676_adj_608), .Z(n1692_adj_560)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13350 (.BLUT(n14208), .ALUT(n14209), .C0(rom_addr[0]), .Z(n14210));
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), 
         .C(rom_addr[5]), .D(n14016), .Z(n1692_adj_609)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11806 (.D0(n12422), .D1(n12423), .SD(rom_addr[7]), .Z(n2044));
    LUT4 i11852_3_lut (.A(n908_adj_584), .B(n13926), .C(rom_addr[4]), 
         .Z(n12470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11852_3_lut.init = 16'hcaca;
    LUT4 i11301_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[5]), 
         .D(n1914_adj_610), .Z(n11919)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11301_3_lut_4_lut.init = 16'hf202;
    LUT4 i11800_3_lut_4_lut (.A(rom_addr[0]), .B(n14034), .C(rom_addr[5]), 
         .D(n1851_adj_611), .Z(n12418)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11800_3_lut_4_lut.init = 16'hf202;
    LUT4 i11850_4_lut (.A(n684_adj_559), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14025), .Z(n12468)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11850_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14034), 
         .C(rom_addr[5]), .D(n13970), .Z(n1692_adj_612)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14035), 
         .C(rom_addr[4]), .D(n14046), .Z(n1596_adj_613)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 n2620_bdd_3_lut_4_lut (.A(n14135), .B(n14056), .C(rom_addr[5]), 
         .D(n2620), .Z(n13451)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2620_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n14135), .B(n14056), 
         .C(rom_addr[5]), .D(n2141_adj_614), .Z(n2173_adj_615)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_616)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 rom_addr_1__bdd_4_lut_13324 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14169)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)+!B !(C (D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13324.init = 16'h4b51;
    PFUMX i11665 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n12283));
    LUT4 i11404_3_lut_4_lut (.A(n15357), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n12022)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11404_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11394_3_lut_4_lut (.A(n15357), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435), .Z(n12012)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11394_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11316_3_lut_4_lut (.A(n15357), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13975), .Z(n11934)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11316_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n15357), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_adj_617)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11525 (.BLUT(n12141), .ALUT(n12142), .C0(rom_addr[5]), .Z(n12143));
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n14139), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14040), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n14139), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_618)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11334_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n14169), .Z(n11952)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11334_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11311_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n1835), .Z(n11929)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11311_3_lut_4_lut.init = 16'hf101;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507_adj_619), .ALUT(n509), 
          .C0(n11834), .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n1435_adj_621), .Z(n1436)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14043), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14138), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 i11823_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), .C(rom_addr[4]), 
         .D(n2522_adj_622), .Z(n12441)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11823_3_lut_4_lut.init = 16'hf808;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13621), .C(n2589), 
         .D(rom_addr[6]), .Z(n15354)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    PFUMX i5883 (.BLUT(n6723), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n6724));
    LUT4 i11846_3_lut (.A(n205_adj_553), .B(n604_adj_601), .C(rom_addr[4]), 
         .Z(n12464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11846_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1514_adj_566)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut_4_lut.init = 16'h2290;
    LUT4 i12374_3_lut (.A(n12251), .B(n12252), .C(rom_addr[8]), .Z(n12257)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12374_3_lut.init = 16'hcaca;
    L6MUX21 i11581 (.D0(n11988), .D1(n1149_adj_623), .SD(rom_addr[6]), 
            .Z(n12199));
    L6MUX21 i11585 (.D0(n1597_adj_624), .D1(n12020), .SD(rom_addr[6]), 
            .Z(n12203));
    L6MUX21 i11587 (.D0(n1852), .D1(n1915_adj_625), .SD(rom_addr[6]), 
            .Z(n12205));
    L6MUX21 i11591 (.D0(n12195), .D1(n12196), .SD(rom_addr[7]), .Z(n12209));
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14043), .B(rom_addr[3]), 
         .C(n14063), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 n2235_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), .C(rom_addr[4]), 
         .D(n2426), .Z(n13350)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2235_bdd_3_lut_4_lut.init = 16'hf808;
    PFUMX i11623 (.BLUT(n1341), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12241));
    LUT4 i11844_3_lut (.A(n557_adj_626), .B(n572), .C(rom_addr[4]), .Z(n12462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11844_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_610)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 i11843_4_lut (.A(n14113), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n12461)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11843_4_lut.init = 16'hcac0;
    LUT4 i7769_2_lut_rep_174_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13976)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7769_2_lut_rep_174_3_lut_3_lut.init = 16'h0808;
    PFUMX i11535 (.BLUT(n12151), .ALUT(n12152), .C0(rom_addr[5]), .Z(n12153));
    L6MUX21 i11628 (.D0(n1979), .D1(n12131), .SD(rom_addr[6]), .Z(n12246));
    L6MUX21 i11629 (.D0(n12231), .D1(n12232), .SD(rom_addr[7]), .Z(n12247));
    LUT4 i11497_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), .C(rom_addr[4]), 
         .D(n1084_c), .Z(n12115)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11497_3_lut_4_lut.init = 16'hf808;
    PFUMX i11471 (.BLUT(n653), .ALUT(n668_adj_627), .C0(rom_addr[4]), 
          .Z(n12089));
    PFUMX i11538 (.BLUT(n12154), .ALUT(n12155), .C0(rom_addr[5]), .Z(n12156));
    LUT4 i11600_3_lut (.A(n12213), .B(n12214), .C(rom_addr[8]), .Z(n12218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11600_3_lut.init = 16'hcaca;
    LUT4 i11401_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), .C(rom_addr[4]), 
         .D(n1658), .Z(n12019)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11401_3_lut_4_lut.init = 16'hf808;
    PFUMX i13348 (.BLUT(n14205), .ALUT(n14206), .C0(rom_addr[2]), .Z(n14207));
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), 
         .C(rom_addr[4]), .D(n2009_adj_628), .Z(n2010_adj_629)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    PFUMX i12570 (.BLUT(n12902), .ALUT(n506_adj_590), .C0(rom_addr[4]), 
          .Z(n12903));
    LUT4 n13229_bdd_3_lut (.A(n13229), .B(n924), .C(rom_addr[5]), .Z(n13230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13229_bdd_3_lut.init = 16'hcaca;
    LUT4 n924_bdd_3_lut_13261 (.A(n954), .B(n796), .C(rom_addr[4]), .Z(n13231)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n924_bdd_3_lut_13261.init = 16'hacac;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), 
         .C(rom_addr[4]), .D(n14046), .Z(n1820_adj_630)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14045), 
         .C(rom_addr[4]), .D(n1529_adj_631), .Z(n1530_adj_632)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    PFUMX i11630 (.BLUT(n12233), .ALUT(n12234), .C0(rom_addr[7]), .Z(n12248));
    LUT4 i11599_3_lut (.A(n12211), .B(n12212), .C(rom_addr[8]), .Z(n12217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11599_3_lut.init = 16'hcaca;
    LUT4 i5825_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), .C(rom_addr[5]), 
         .D(n2522_adj_622), .Z(n6666)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5825_3_lut_4_lut.init = 16'h8f80;
    LUT4 n730_bdd_3_lut_12614_4_lut (.A(rom_addr[0]), .B(n14052), .C(n13983), 
         .D(rom_addr[3]), .Z(n12983)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_12614_4_lut.init = 16'h22f0;
    LUT4 n13975_bdd_2_lut (.A(n13934), .B(rom_addr[0]), .Z(n14751)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n13975_bdd_2_lut.init = 16'h1111;
    LUT4 n13975_bdd_4_lut (.A(n13975), .B(n14132), .C(n14145), .D(rom_addr[4]), 
         .Z(n14750)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n13975_bdd_4_lut.init = 16'haac0;
    LUT4 i2705_3_lut_4_lut (.A(n14044), .B(n14000), .C(rom_addr[6]), .D(n3507), 
         .Z(n3516)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2705_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14021), .Z(n124_adj_633)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    LUT4 n14043_bdd_4_lut_13683 (.A(n14053), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n14753)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n14043_bdd_4_lut_13683.init = 16'h11f0;
    L6MUX21 i11635 (.D0(n12243), .D1(n12244), .SD(rom_addr[7]), .Z(n12253));
    L6MUX21 i11652 (.D0(n11995), .D1(n12008), .SD(rom_addr[7]), .Z(n12270));
    LUT4 n13232_bdd_3_lut (.A(n13232), .B(n13230), .C(rom_addr[6]), .Z(n13233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13232_bdd_3_lut.init = 16'hcaca;
    LUT4 n14043_bdd_4_lut_13791 (.A(n14043), .B(n1835), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n14754)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam n14043_bdd_4_lut_13791.init = 16'hf5cc;
    L6MUX21 i11653 (.D0(n12017), .D1(n12030), .SD(rom_addr[7]), .Z(n12271));
    LUT4 n1340_bdd_4_lut_12978 (.A(n13975), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14139), .Z(n13234)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_12978.init = 16'haca0;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_634)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n13983), .Z(n890)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n13012), .B(n3070_adj_577), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    L6MUX21 i11689 (.D0(n12304), .D1(n12305), .SD(rom_addr[7]), .Z(n12307));
    L6MUX21 i11700 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n12318));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14172)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hac51;
    LUT4 n1251_bdd_4_lut (.A(n13920), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n14139), .Z(n13236)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut.init = 16'hb888;
    PFUMX i13346 (.BLUT(n14202), .ALUT(n14203), .C0(rom_addr[2]), .Z(n14204));
    LUT4 n1858_bdd_4_lut (.A(n14137), .B(n13955), .C(n14155), .D(rom_addr[5]), 
         .Z(n13912)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n1858_bdd_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14171)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'ha800;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), 
         .C(rom_addr[4]), .D(n2444), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 n730_bdd_3_lut_12850_4_lut (.A(rom_addr[0]), .B(n14052), .C(rom_addr[3]), 
         .D(n13999), .Z(n12984)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_12850_4_lut.init = 16'hf202;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), .C(n13999), 
         .D(rom_addr[3]), .Z(n12904)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i11829_3_lut (.A(n506_adj_590), .B(n428_adj_635), .C(rom_addr[4]), 
         .Z(n12447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11829_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n13999), .Z(n428_adj_552)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11828_3_lut (.A(n526_adj_585), .B(n205), .C(rom_addr[4]), .Z(n12446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11828_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n13982), .Z(n653_adj_636)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 i11708_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), .C(rom_addr[3]), 
         .D(n15360), .Z(n12326)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11708_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11648_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), .C(rom_addr[4]), 
         .D(n2298_adj_637), .Z(n12266)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11648_3_lut_4_lut.init = 16'hf808;
    LUT4 i5851_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14175)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5851_4_lut_then_4_lut.init = 16'h5a04;
    LUT4 i5851_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14174)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5851_4_lut_else_4_lut.init = 16'h2020;
    L6MUX21 i11716 (.D0(n12331), .D1(n12332), .SD(rom_addr[7]), .Z(n12334));
    L6MUX21 i11722 (.D0(n12336), .D1(n12337), .SD(rom_addr[7]), .Z(n12340));
    LUT4 i11770_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), .C(rom_addr[4]), 
         .D(n2573), .Z(n12388)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11770_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11750_3_lut_4_lut (.A(rom_addr[0]), .B(n13934), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n12368)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11750_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14052), 
         .C(rom_addr[3]), .D(n14004), .Z(n220_adj_638)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11738 (.D0(n12353), .D1(n12354), .SD(rom_addr[7]), .Z(n12356));
    LUT4 i11740_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), .C(rom_addr[4]), 
         .D(n14145), .Z(n12358)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11740_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707_adj_639), .ALUT(n6740), 
          .C0(n11908), .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n14026), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i11434_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n14156), .Z(n12052)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11434_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13344 (.BLUT(n14199), .ALUT(n14200), .C0(rom_addr[2]), .Z(n14201));
    LUT4 n2332_bdd_3_lut_13190_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2332), .Z(n13323)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_13190_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13962), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_640)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_120_4_lut (.A(rom_addr[0]), 
         .B(n14053), .C(rom_addr[4]), .D(n14022), .Z(n13922)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_120_4_lut.init = 16'hf202;
    LUT4 n158_bdd_3_lut_13232_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n668), .Z(n13288)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n158_bdd_3_lut_13232_4_lut.init = 16'hf202;
    LUT4 i11853_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n890), .Z(n12471)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11853_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11341_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2283_adj_641), .Z(n11959)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11341_3_lut_4_lut.init = 16'hf202;
    LUT4 i11325_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n2009_adj_642), .Z(n11943)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11325_3_lut_4_lut.init = 16'hf202;
    LUT4 i11831_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), .C(rom_addr[4]), 
         .D(n78), .Z(n12449)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11831_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11297_3_lut (.A(n6687), .B(n668), .C(rom_addr[4]), .Z(n11915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11297_3_lut.init = 16'hcaca;
    LUT4 i11645_3_lut_4_lut (.A(rom_addr[0]), .B(n13974), .C(rom_addr[4]), 
         .D(n13964), .Z(n12263)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11645_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14053), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_115_4_lut (.A(rom_addr[0]), 
         .B(n14053), .C(rom_addr[4]), .D(n13973), .Z(n13917)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_115_4_lut.init = 16'hf202;
    L6MUX21 i11785 (.D0(n12401), .D1(n12402), .SD(rom_addr[7]), .Z(n766_adj_591));
    LUT4 i11819_3_lut (.A(n506), .B(n475), .C(rom_addr[4]), .Z(n12437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11819_3_lut.init = 16'hcaca;
    LUT4 n1308_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13981), .C(rom_addr[4]), 
         .D(n1308), .Z(n13661)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1308_bdd_3_lut_4_lut.init = 16'hf202;
    PFUMX i11805 (.BLUT(n12420), .ALUT(n12421), .C0(rom_addr[6]), .Z(n12423));
    LUT4 i11366_3_lut_4_lut (.A(rom_addr[0]), .B(n13981), .C(rom_addr[4]), 
         .D(n890_adj_643), .Z(n11984)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11366_3_lut_4_lut.init = 16'hf202;
    LUT4 i11409_3_lut_4_lut (.A(rom_addr[0]), .B(n13981), .C(rom_addr[4]), 
         .D(n1002), .Z(n12027)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11409_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11816_4_lut (.A(n2444_adj_578), .B(n14044), .C(rom_addr[4]), 
         .D(n14007), .Z(n12434)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11816_4_lut.init = 16'hca0a;
    LUT4 i12438_2_lut_rep_190_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13992)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12438_2_lut_rep_190_3_lut.init = 16'h0909;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n13981), 
         .C(rom_addr[4]), .D(n14046), .Z(n2141_adj_564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11820_3_lut_4_lut (.A(rom_addr[0]), .B(n13981), .C(rom_addr[4]), 
         .D(n684_adj_559), .Z(n12438)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11820_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    L6MUX21 i11306 (.D0(n11922), .D1(n11923), .SD(rom_addr[7]), .Z(n11924));
    LUT4 i11808_3_lut (.A(n2283_adj_641), .B(n2298), .C(rom_addr[4]), 
         .Z(n12426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11808_3_lut.init = 16'hcaca;
    LUT4 n2552_bdd_3_lut_12624_4_lut (.A(rom_addr[0]), .B(n14001), .C(rom_addr[3]), 
         .D(n14058), .Z(n12868)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_12624_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14138), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12296_3_lut (.A(n2010_adj_629), .B(n14173), .C(rom_addr[5]), 
         .Z(n12421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12296_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), 
         .C(rom_addr[3]), .D(n14127), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12198_3_lut (.A(n1883_adj_617), .B(n1914_adj_644), .C(rom_addr[5]), 
         .Z(n12419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12198_3_lut.init = 16'hcaca;
    PFUMX i11872 (.BLUT(n12488), .ALUT(n12489), .C0(rom_addr[7]), .Z(n1278));
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 n2506_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14001), .C(rom_addr[3]), 
         .D(n14021), .Z(n13810)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2506_bdd_3_lut_4_lut.init = 16'h808f;
    PFUMX i11677 (.BLUT(n12293), .ALUT(n12294), .C0(rom_addr[4]), .Z(n12295));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_647), .B(n1691_adj_648), 
         .C(rom_addr[4]), .Z(n1692_adj_649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14035), .Z(n1659_adj_650)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    LUT4 i12201_3_lut (.A(n13804), .B(n1659_adj_650), .C(rom_addr[5]), 
         .Z(n12412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12201_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_594), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14048), .Z(n653_adj_652)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_4_lut.init = 16'hf707;
    L6MUX21 i11421 (.D0(n12037), .D1(n12038), .SD(rom_addr[6]), .Z(n12039));
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(n15357), .D(rom_addr[3]), .Z(n428_adj_635)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 n1243_bdd_4_lut (.A(n14033), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n13992), .Z(n13899)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut.init = 16'h3a0a;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_653), .ALUT(n893), 
          .C0(n11838), .Z(n1021_adj_592)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(n14006), .D(rom_addr[3]), .Z(n1243_adj_654)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut (.A(n13978), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(n14109), .Z(n2141_adj_614)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut.init = 16'h0aca;
    PFUMX i11707 (.BLUT(n12323), .ALUT(n12324), .C0(rom_addr[4]), .Z(n12325));
    LUT4 n205_bdd_3_lut_12817 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n13285)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n205_bdd_3_lut_12817.init = 16'hacac;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(n14140), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14006), .Z(n2009_adj_642)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15360), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 n205_bdd_3_lut_13091 (.A(n13926), .B(n220_adj_638), .C(rom_addr[4]), 
         .Z(n13286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n205_bdd_3_lut_13091.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n14103), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14063), .Z(n1243_adj_655)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!((B (C+!(D))+!B (D))+!A)) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h0822;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_348 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15360)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_348.init = 16'h1c1c;
    PFUMX i11294 (.BLUT(n589), .ALUT(n604_adj_616), .C0(rom_addr[4]), 
          .Z(n11912));
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n14140), .B(n13999), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15357), .Z(n1483_adj_656)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14070), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14004), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13342 (.BLUT(n14196), .ALUT(n14197), .C0(rom_addr[1]), .Z(n14198));
    LUT4 i11395_3_lut_4_lut (.A(rom_addr[0]), .B(n13970), .C(rom_addr[4]), 
         .D(n1466_adj_657), .Z(n12013)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11395_3_lut_4_lut.init = 16'hf202;
    LUT4 i11868_4_lut (.A(n12472), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14207), 
         .Z(n12486)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11868_4_lut.init = 16'hca0a;
    LUT4 i11807_3_lut_4_lut (.A(rom_addr[0]), .B(n13970), .C(rom_addr[4]), 
         .D(n2588), .Z(n12425)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11807_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12240_3_lut (.A(n12358), .B(n14222), .C(rom_addr[5]), .Z(n2428_adj_658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12240_3_lut.init = 16'hcaca;
    LUT4 i11832_3_lut_4_lut (.A(n14078), .B(n14145), .C(rom_addr[4]), 
         .D(n13926), .Z(n12450)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11832_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14122), .B(rom_addr[4]), 
         .C(n14033), .D(n11713), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    L6MUX21 i11553 (.D0(n1468), .D1(n1531_adj_568), .SD(rom_addr[6]), 
            .Z(n12171));
    LUT4 n1243_bdd_2_lut_4_lut (.A(rom_addr[2]), .B(n14066), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n13898)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1243_bdd_2_lut_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491_adj_659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 n2298_bdd_3_lut_12940 (.A(n2298), .B(n2283_adj_558), .C(rom_addr[4]), 
         .Z(n13303)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2298_bdd_3_lut_12940.init = 16'hacac;
    LUT4 i1_2_lut_adj_17 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11608)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 i5893_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6700)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5893_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14178)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    PFUMX i11295 (.BLUT(n620_adj_660), .ALUT(n635_adj_661), .C0(rom_addr[4]), 
          .Z(n11913));
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n13948), .B(n13963), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 i5918_2_lut_rep_344 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15356)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5918_2_lut_rep_344.init = 16'h6666;
    LUT4 i5887_4_lut_4_lut (.A(n14122), .B(rom_addr[3]), .C(n14021), .D(n11733), 
         .Z(n6728)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5887_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n13306_bdd_3_lut (.A(n13306), .B(n13303), .C(rom_addr[5]), .Z(n13307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13306_bdd_3_lut.init = 16'hcaca;
    LUT4 i7643_2_lut_4_lut (.A(n13977), .B(n14022), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7643_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14177)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 i11477_3_lut_4_lut_4_lut (.A(n14122), .B(rom_addr[3]), .C(n14138), 
         .D(rom_addr[4]), .Z(n12095)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i11477_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14070), .B(n14145), 
         .C(rom_addr[4]), .D(n1483_adj_656), .Z(n1499_adj_662)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11781_3_lut_4_lut (.A(rom_addr[0]), .B(n13970), .C(rom_addr[4]), 
         .D(n2444_adj_578), .Z(n12399)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11781_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14070), .B(n14145), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_adj_663), 
          .C0(rom_addr[5]), .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i4125_3_lut_4_lut (.A(n14124), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13970), .Z(n4936)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4125_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11575 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12193));
    PFUMX i11576 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n12194));
    LUT4 i12130_3_lut (.A(n11934), .B(n14240), .C(rom_addr[5]), .Z(n11936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12130_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_8), .B(n1596_adj_613), 
         .C(rom_addr[5]), .Z(n1597_adj_665)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i7941_4_lut (.A(n1628), .B(rom_addr[6]), .C(n11640), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7941_4_lut.init = 16'hc088;
    LUT4 i11428_3_lut_4_lut (.A(rom_addr[0]), .B(n13947), .C(rom_addr[5]), 
         .D(n1212_adj_667), .Z(n12046)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11428_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i11577 (.D0(n11967), .D1(n11970), .SD(rom_addr[6]), .Z(n12195));
    LUT4 i12136_3_lut (.A(n14151), .B(n13320), .C(rom_addr[5]), .Z(n11927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12136_3_lut.init = 16'hcaca;
    PFUMX i11841 (.BLUT(n428_adj_603), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n12459));
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14025), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_668)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14025), 
         .C(rom_addr[4]), .D(n526), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n14066), 
         .C(rom_addr[4]), .D(n14057), .Z(n891_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11578 (.D0(n11976), .D1(n11979), .SD(rom_addr[6]), .Z(n12196));
    LUT4 n13323_bdd_3_lut (.A(n13323), .B(n13322), .C(rom_addr[5]), .Z(n13324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13323_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i11579 (.D0(n829), .D1(n11985), .SD(rom_addr[6]), .Z(n12197));
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12484), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i7671_4_lut (.A(rom_addr[0]), .B(n13944), .C(n13986), .D(rom_addr[5]), 
         .Z(n190_adj_669)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7671_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[3]), .D(n14139), .Z(n1435_adj_621)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 i11864_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), .C(rom_addr[3]), 
         .D(n14086), .Z(n12482)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11864_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[3]), .D(n15360), .Z(n2009_adj_628)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n14083), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14021), .Z(n270)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    LUT4 i12018_3_lut_4_lut (.A(n14086), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n12035)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12018_3_lut_4_lut.init = 16'hfe0e;
    L6MUX21 i11582 (.D0(n11998), .D1(n12001), .SD(rom_addr[6]), .Z(n12200));
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[3]), .D(n13983), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 i7648_4_lut (.A(rom_addr[0]), .B(n6031), .C(n13953), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7648_4_lut.init = 16'h0a22;
    LUT4 i12282_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12282_3_lut.init = 16'hcaca;
    LUT4 i7835_2_lut_rep_235_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14037)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7835_2_lut_rep_235_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14123), 
         .D(rom_addr[4]), .Z(n11617)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 i11793_3_lut_4_lut (.A(rom_addr[0]), .B(n13947), .C(rom_addr[5]), 
         .D(n1565_adj_618), .Z(n12411)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11793_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14103), .B(n14120), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205_adj_672)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11584 (.D0(n12014), .D1(n1531), .SD(rom_addr[6]), .Z(n12202));
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n13974), 
         .C(rom_addr[4]), .D(n13960), .Z(n1786_adj_673)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n13970), 
         .C(n4936), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n13970), 
         .C(rom_addr[5]), .D(n1786_adj_605), .Z(n1787_adj_674)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i11647_3_lut_4_lut (.A(rom_addr[1]), .B(n15356), .C(rom_addr[4]), 
         .D(n2267), .Z(n12265)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11647_3_lut_4_lut.init = 16'hf101;
    LUT4 i11431_3_lut_4_lut (.A(rom_addr[1]), .B(n14145), .C(rom_addr[4]), 
         .D(n30), .Z(n12049)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11431_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11588 (.D0(n12023), .D1(n12033), .SD(rom_addr[6]), .Z(n12206));
    L6MUX21 i11614 (.D0(n190), .D1(n12060), .SD(rom_addr[6]), .Z(n12232));
    PFUMX i11866 (.BLUT(n12482), .ALUT(n12483), .C0(rom_addr[4]), .Z(n12484));
    PFUMX i10025 (.BLUT(n10636), .ALUT(n10637), .C0(rom_addr[8]), .Z(n10638));
    LUT4 n12378_bdd_3_lut_13821 (.A(n12378), .B(n12379), .C(rom_addr[7]), 
         .Z(n13007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12378_bdd_3_lut_13821.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14184)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    L6MUX21 i11617 (.D0(n12082), .D1(n12085), .SD(rom_addr[6]), .Z(n12235));
    L6MUX21 i11620 (.D0(n12107), .D1(n12113), .SD(rom_addr[6]), .Z(n12238));
    L6MUX21 i11621 (.D0(n12116), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12239));
    LUT4 i1_2_lut_rep_220_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14022)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_220_3_lut_4_lut.init = 16'h0080;
    LUT4 i11862_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), .C(n14138), 
         .D(rom_addr[3]), .Z(n12480)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i11862_3_lut_3_lut_4_lut.init = 16'h11f0;
    L6MUX21 i11624 (.D0(n12122), .D1(n12125), .SD(rom_addr[6]), .Z(n12242));
    PFUMX i11625 (.BLUT(n1597), .ALUT(n1660), .C0(rom_addr[6]), .Z(n12243));
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 n12290_bdd_3_lut_13116 (.A(n12290), .B(n12291), .C(rom_addr[4]), 
         .Z(n13363)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12290_bdd_3_lut_13116.init = 16'hcaca;
    LUT4 i1_2_lut_rep_251_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14053)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_251_3_lut.init = 16'hfefe;
    PFUMX i11626 (.BLUT(n1724_adj_675), .ALUT(n1787_adj_674), .C0(rom_addr[6]), 
          .Z(n12244));
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14183)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14040), .B(n14144), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_676)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    PFUMX i11627 (.BLUT(n1852_adj_677), .ALUT(n1915_adj_678), .C0(rom_addr[6]), 
          .Z(n12245));
    PFUMX i11840 (.BLUT(n397), .ALUT(n6685), .C0(rom_addr[4]), .Z(n12458));
    L6MUX21 i11685 (.D0(n12264), .D1(n12267), .SD(rom_addr[6]), .Z(n12303));
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_554)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 i7988_4_lut_4_lut (.A(n13949), .B(rom_addr[5]), .C(n5800), .D(rom_addr[0]), 
         .Z(n2492)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7988_4_lut_4_lut.init = 16'h7400;
    PFUMX i11686 (.BLUT(n2365_adj_679), .ALUT(n2428_adj_658), .C0(rom_addr[6]), 
          .Z(n12304));
    LUT4 i11964_3_lut (.A(n6689), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11964_3_lut.init = 16'hcaca;
    LUT4 i11351_3_lut (.A(n475_adj_681), .B(n13926), .C(rom_addr[4]), 
         .Z(n11969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11351_3_lut.init = 16'hcaca;
    LUT4 n12378_bdd_3_lut_12632 (.A(n12385), .B(n12386), .C(rom_addr[7]), 
         .Z(n13006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12378_bdd_3_lut_12632.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(n14139), .D(rom_addr[3]), .Z(n2522_adj_682)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11605_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), .C(n14058), 
         .D(rom_addr[3]), .Z(n12223)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i11605_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(n14140), .D(rom_addr[3]), .Z(n2040_adj_683)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n13949), .B(n3330), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_679)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 i11746_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14187)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11746_3_lut_4_lut_then_4_lut.init = 16'h744c;
    PFUMX i11687 (.BLUT(n2492_adj_684), .ALUT(n6667), .C0(rom_addr[6]), 
          .Z(n12305));
    LUT4 i11746_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14186)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11746_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 n12371_bdd_3_lut_13069 (.A(n12371), .B(n12372), .C(rom_addr[7]), 
         .Z(n13009)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12371_bdd_3_lut_13069.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n13999), .B(n13983), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n14190)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0020;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .Z(n14189)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h0202;
    PFUMX i11691 (.BLUT(n2110_adj_685), .ALUT(n2173_adj_565), .C0(rom_addr[6]), 
          .Z(n12309));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut (.A(n14118), .B(n14004), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n844)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i13340 (.BLUT(n14193), .ALUT(n14194), .C0(rom_addr[0]), .Z(n14195));
    LUT4 n2545_bdd_4_lut_13242_4_lut (.A(n14118), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n14021), .Z(n12987)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C))) */ ;
    defparam n2545_bdd_4_lut_13242_4_lut.init = 16'hdc10;
    LUT4 i1_2_lut_rep_262_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14064)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_262_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_644)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11502_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14122), .C(rom_addr[4]), 
         .D(n4824), .Z(n12120)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;
    defparam i11502_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(n14141), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14147)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_then_4_lut.init = 16'h2000;
    LUT4 i12178_3_lut (.A(n12157), .B(n12158), .C(rom_addr[5]), .Z(n12159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12178_3_lut.init = 16'hcaca;
    L6MUX21 i11692 (.D0(n2237), .D1(n2300_adj_686), .SD(rom_addr[6]), 
            .Z(n12310));
    LUT4 i12181_3_lut (.A(n14179), .B(n444), .C(rom_addr[5]), .Z(n11980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12181_3_lut.init = 16'hcaca;
    PFUMX i11693 (.BLUT(n2365_adj_687), .ALUT(n2428_adj_688), .C0(rom_addr[6]), 
          .Z(n12311));
    L6MUX21 i11694 (.D0(n2492_adj_689), .D1(n2555_adj_690), .SD(rom_addr[6]), 
            .Z(n12312));
    LUT4 n13300_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), .C(rom_addr[5]), 
         .D(n13300), .Z(n13301)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13300_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11313_4_lut (.A(n14132), .B(n1628), .C(rom_addr[5]), .D(n13995), 
         .Z(n11931)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11313_4_lut.init = 16'hcac0;
    LUT4 i11303_4_lut (.A(n13975), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n11921)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11303_4_lut.init = 16'haaca;
    LUT4 rom_addr_0__bdd_4_lut_13551 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_adj_562)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_13551.init = 16'hb124;
    LUT4 i11302_3_lut (.A(n1914_adj_610), .B(n13917), .C(rom_addr[5]), 
         .Z(n11920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11302_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14004), .B(n13920), .C(rom_addr[5]), 
         .D(n11639), .Z(n1341_adj_692)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 i11480_3_lut_4_lut (.A(n14109), .B(n14118), .C(rom_addr[4]), 
         .D(n2040_adj_683), .Z(n12098)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11480_3_lut_4_lut.init = 16'hf808;
    PFUMX i11701 (.BLUT(n2492_adj_693), .ALUT(n2555_adj_694), .C0(rom_addr[6]), 
          .Z(n12319));
    LUT4 i11384_3_lut_4_lut (.A(n13983), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_652), .Z(n12002)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11384_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11356_3_lut_4_lut (.A(n13983), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_636), .Z(n11974)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11356_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n11594), .C(rom_addr[6]), .D(n11618), 
         .Z(n11619)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_4_lut (.A(n13962), .B(rom_addr[8]), .C(n13956), .D(rom_addr[4]), 
         .Z(n11594)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h3022;
    PFUMX i11713 (.BLUT(n12045), .ALUT(n2428_adj_695), .C0(rom_addr[6]), 
          .Z(n12331));
    PFUMX i11714 (.BLUT(n2492_adj_696), .ALUT(n2555_adj_697), .C0(rom_addr[6]), 
          .Z(n12332));
    PFUMX i11718 (.BLUT(n2110_adj_698), .ALUT(n2173_adj_615), .C0(rom_addr[6]), 
          .Z(n12336));
    LUT4 i8073_4_lut (.A(n2621), .B(n14068), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8073_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n13927), .Z(n2621)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i12221_3_lut (.A(n14213), .B(n14237), .C(rom_addr[5]), .Z(n2110_adj_698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12221_3_lut.init = 16'hcaca;
    PFUMX i11719 (.BLUT(n2237_adj_700), .ALUT(n12134), .C0(rom_addr[6]), 
          .Z(n12337));
    LUT4 i11594_3_lut (.A(n14756), .B(n12202), .C(rom_addr[7]), .Z(n12212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11594_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427_adj_701), .B(n2491), 
         .C(rom_addr[5]), .Z(n2492_adj_696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i11595_3_lut (.A(n12203), .B(n13354), .C(rom_addr[7]), .Z(n12213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11595_3_lut.init = 16'hcaca;
    LUT4 i12225_3_lut (.A(n12043), .B(n14165), .C(rom_addr[5]), .Z(n12045)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12225_3_lut.init = 16'hcaca;
    LUT4 n13339_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), .C(rom_addr[5]), 
         .D(n13339), .Z(n13340)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13339_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n13931), .B(n14021), .C(rom_addr[5]), 
         .D(n14011), .Z(n2555_adj_561)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    L6MUX21 i11721 (.D0(n12143), .D1(n2555), .SD(rom_addr[6]), .Z(n12339));
    LUT4 i11780_3_lut_4_lut (.A(rom_addr[0]), .B(n14005), .C(rom_addr[4]), 
         .D(n2426), .Z(n12398)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11780_3_lut_4_lut.init = 16'hf808;
    LUT4 i11699_3_lut (.A(n2237_adj_702), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11699_3_lut.init = 16'hcaca;
    LUT4 i2696_4_lut_4_lut (.A(rom_addr[2]), .B(n11676), .C(rom_addr[5]), 
         .D(n13950), .Z(n3507)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2696_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i11609_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14194)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i11609_then_4_lut.init = 16'h214a;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut (.A(rom_addr[1]), .B(n14111), 
         .C(rom_addr[4]), .D(n1402), .Z(n1403_adj_703)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14111), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_611)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11534_3_lut_4_lut (.A(rom_addr[1]), .B(n14111), .C(rom_addr[4]), 
         .D(n301_adj_562), .Z(n12152)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11534_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14111), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_587)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12233_3_lut (.A(n14234), .B(n13811), .C(rom_addr[5]), .Z(n2365_adj_687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12233_3_lut.init = 16'hcaca;
    LUT4 i11386_3_lut_4_lut (.A(rom_addr[1]), .B(n14111), .C(rom_addr[4]), 
         .D(n731_adj_588), .Z(n12004)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11386_3_lut_4_lut.init = 16'hf101;
    LUT4 i11799_3_lut (.A(n12415), .B(n12416), .C(rom_addr[7]), .Z(n1789_adj_704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11799_3_lut.init = 16'hcaca;
    L6MUX21 i11734 (.D0(n12345), .D1(n12346), .SD(rom_addr[6]), .Z(n12352));
    LUT4 i11609_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14193)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11609_else_4_lut.init = 16'h081e;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14146)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_else_4_lut.init = 16'h4004;
    LUT4 i12236_3_lut (.A(n14219), .B(n14216), .C(rom_addr[5]), .Z(n2110_adj_685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12236_3_lut.init = 16'hcaca;
    LUT4 i11546_3_lut (.A(n12463), .B(n11914), .C(rom_addr[6]), .Z(n12164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11546_3_lut.init = 16'hcaca;
    LUT4 i11512_3_lut_4_lut (.A(n14137), .B(n14145), .C(rom_addr[4]), 
         .D(n2040), .Z(n12130)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11512_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n14137), .B(n14145), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i11735 (.D0(n12347), .D1(n12348), .SD(rom_addr[6]), .Z(n12353));
    L6MUX21 i11736 (.D0(n12349), .D1(n12350), .SD(rom_addr[6]), .Z(n12354));
    LUT4 i11385_4_lut_4_lut (.A(n14113), .B(rom_addr[4]), .C(n5124), .D(n684_adj_705), 
         .Z(n12003)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11385_4_lut_4_lut.init = 16'h7340;
    PFUMX i11753 (.BLUT(n12367), .ALUT(n12368), .C0(rom_addr[6]), .Z(n12371));
    LUT4 i12238_3_lut (.A(n14188), .B(n14225), .C(rom_addr[5]), .Z(n2492_adj_684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12238_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14066), 
         .B(rom_addr[5]), .C(n13979), .D(n14082), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 i12121_3_lut (.A(n15364), .B(n2298_adj_570), .C(rom_addr[4]), 
         .Z(n2299_adj_706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12121_3_lut.init = 16'hcaca;
    L6MUX21 i11754 (.D0(n13912), .D1(n12370), .SD(rom_addr[6]), .Z(n12372));
    LUT4 i4625_3_lut_4_lut_4_lut (.A(n14066), .B(n14003), .C(rom_addr[5]), 
         .D(n14082), .Z(n5436)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4625_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_668), .B(n1786_adj_605), 
         .C(rom_addr[5]), .Z(n1915_adj_678)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7780_4_lut (.A(rom_addr[0]), .B(n14034), .C(n5977), .D(rom_addr[5]), 
         .Z(n1852_adj_677)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7780_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_626), .B(n1211), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    L6MUX21 i11761 (.D0(n12376), .D1(n12377), .SD(rom_addr[6]), .Z(n12379));
    L6MUX21 i11767 (.D0(n12381), .D1(n12382), .SD(rom_addr[6]), .Z(n12385));
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    L6MUX21 i11768 (.D0(n12383), .D1(n12384), .SD(rom_addr[6]), .Z(n12386));
    LUT4 i4941_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14197)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4941_3_lut_4_lut_4_lut_then_4_lut.init = 16'hfdff;
    L6MUX21 i11791 (.D0(n12406), .D1(n12407), .SD(rom_addr[6]), .Z(n12409));
    PFUMX i11797 (.BLUT(n12411), .ALUT(n12412), .C0(rom_addr[6]), .Z(n12415));
    LUT4 i12057_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n11953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12057_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15367), .B(n444_adj_707), 
         .C(rom_addr[5]), .Z(n445_adj_708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11798 (.D0(n12413), .D1(n12414), .SD(rom_addr[6]), .Z(n12416));
    LUT4 i12312_3_lut (.A(n445_adj_708), .B(n12906), .C(rom_addr[6]), 
         .Z(n12234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12312_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_18 (.A(n13934), .B(rom_addr[7]), .C(n6428), .D(rom_addr[5]), 
         .Z(n10637)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hcfee;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n13949), 
         .C(n6075), .D(rom_addr[6]), .Z(n2110)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 i12105_3_lut (.A(n12479), .B(n12480), .C(rom_addr[4]), .Z(n1978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12105_3_lut.init = 16'hcaca;
    LUT4 i11300_3_lut_4_lut (.A(rom_addr[0]), .B(n13949), .C(rom_addr[5]), 
         .D(n1851_adj_9), .Z(n11918)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11300_3_lut_4_lut.init = 16'hf202;
    LUT4 i11737_3_lut (.A(n13455), .B(n12352), .C(rom_addr[7]), .Z(n12355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11737_3_lut.init = 16'hcaca;
    PFUMX i11804 (.BLUT(n12418), .ALUT(n12419), .C0(rom_addr[6]), .Z(n12422));
    LUT4 i2_3_lut_4_lut (.A(n14098), .B(n14145), .C(rom_addr[5]), .D(rom_addr[0]), 
         .Z(n10390)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 i11723_3_lut (.A(n13325), .B(n12339), .C(rom_addr[7]), .Z(n12341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11723_3_lut.init = 16'hcaca;
    LUT4 i8090_2_lut_3_lut_4_lut_4_lut (.A(n14066), .B(rom_addr[5]), .C(rom_addr[0]), 
         .D(n14028), .Z(n2237_adj_710)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8090_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i12078_3_lut (.A(n14152), .B(n635), .C(rom_addr[4]), .Z(n12465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12078_3_lut.init = 16'hcaca;
    LUT4 i12347_4_lut (.A(n2573_adj_711), .B(n15354), .C(rom_addr[6]), 
         .D(n14085), .Z(n2685_adj_712)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12347_4_lut.init = 16'hccca;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341_adj_692), .ALUT(n10372), 
          .C0(rom_addr[6]), .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11715_3_lut (.A(n12329), .B(n13308), .C(rom_addr[7]), .Z(n12333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11715_3_lut.init = 16'hcaca;
    LUT4 i7710_4_lut (.A(rom_addr[0]), .B(n14005), .C(n13961), .D(n6868), 
         .Z(n2237_adj_702)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7710_4_lut.init = 16'h0a88;
    PFUMX i11304 (.BLUT(n11918), .ALUT(n11919), .C0(rom_addr[6]), .Z(n11922));
    LUT4 i6017_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6868)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6017_2_lut.init = 16'heeee;
    LUT4 i4941_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14196)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4941_3_lut_4_lut_4_lut_else_4_lut.init = 16'hfff6;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11727), .Z(n1212_adj_667)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i12457_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11850)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12457_2_lut.init = 16'hbbbb;
    L6MUX21 i11838 (.D0(n12156), .D1(n12439), .SD(rom_addr[6]), .Z(n12456));
    PFUMX i11305 (.BLUT(n11920), .ALUT(n11921), .C0(rom_addr[6]), .Z(n11923));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n14195), .B(n444_adj_707), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i11688_3_lut (.A(n12302), .B(n12303), .C(rom_addr[7]), .Z(n12306)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11688_3_lut.init = 16'hcaca;
    L6MUX21 i11855 (.D0(n12448), .D1(n12466), .SD(rom_addr[6]), .Z(n12473));
    LUT4 i11545_3_lut (.A(n12460), .B(n508_adj_713), .C(rom_addr[6]), 
         .Z(n12163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11545_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n14204), .B(n507), .C(rom_addr[5]), 
         .Z(n508_adj_713)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 i11580_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14255), 
         .Z(n12198)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11580_4_lut.init = 16'hca0a;
    LUT4 i7660_4_lut_4_lut (.A(n14034), .B(rom_addr[4]), .C(n4004), .D(rom_addr[0]), 
         .Z(n1978_adj_714)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7660_4_lut_4_lut.init = 16'h7400;
    LUT4 i11618_3_lut (.A(n12091), .B(n12094), .C(rom_addr[6]), .Z(n12236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11618_3_lut.init = 16'hcaca;
    LUT4 i11619_4_lut (.A(rom_addr[0]), .B(n12989), .C(rom_addr[6]), .D(n14231), 
         .Z(n12237)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11619_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n14006), .B(n14083), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466_adj_607)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14200)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3392), .Z(n10597)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14199)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    L6MUX21 i12637 (.D0(n13011), .D1(n13008), .SD(rom_addr[9]), .Z(n13012));
    LUT4 i11706_3_lut (.A(n14140), .B(n13983), .C(rom_addr[3]), .Z(n12324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11706_3_lut.init = 16'hcaca;
    PFUMX i11333 (.BLUT(n11949), .ALUT(n11950), .C0(rom_addr[6]), .Z(n11951));
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14043), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707), .Z(n1723_adj_715)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n13923), .B(n13999), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860_adj_653)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    PFUMX i11783 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12401));
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14043), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946_adj_556), .Z(n1947_adj_716)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 n1340_bdd_3_lut_13034_4_lut (.A(n14004), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n13977), .Z(n13516)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_13034_4_lut.init = 16'h8f80;
    LUT4 i11871_4_lut (.A(n13954), .B(n1276), .C(rom_addr[6]), .D(n4_adj_717), 
         .Z(n12489)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11871_4_lut.init = 16'hcac0;
    L6MUX21 i11346 (.D0(n11962), .D1(n11963), .SD(rom_addr[6]), .Z(n11964));
    LUT4 i11870_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n13946), 
         .Z(n12488)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11870_4_lut.init = 16'h0aca;
    L6MUX21 i11355 (.D0(n11971), .D1(n11972), .SD(rom_addr[6]), .Z(n11973));
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n13992), 
         .C(rom_addr[5]), .D(n2205_adj_672), .Z(n2237_adj_700)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 i12333_3_lut (.A(n12485), .B(n12486), .C(rom_addr[7]), .Z(n1021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12333_3_lut.init = 16'hcaca;
    LUT4 i11856_4_lut (.A(n12469), .B(rom_addr[0]), .C(rom_addr[6]), .D(n5436), 
         .Z(n12474)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11856_4_lut.init = 16'h0aca;
    LUT4 i11810_4_lut (.A(n14201), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12428)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11810_4_lut.init = 16'hcac0;
    PFUMX i11364 (.BLUT(n11980), .ALUT(n11981), .C0(rom_addr[6]), .Z(n11982));
    LUT4 i11839_3_lut (.A(n12455), .B(n12456), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11839_3_lut.init = 16'hcaca;
    LUT4 i11369_3_lut (.A(n1069), .B(n1084_adj_718), .C(rom_addr[4]), 
         .Z(n11987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11369_3_lut.init = 16'hcaca;
    LUT4 i11802_3_lut (.A(n14185), .B(n1978_adj_714), .C(rom_addr[5]), 
         .Z(n12420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11802_3_lut.init = 16'hcaca;
    LUT4 i2254_3_lut_4_lut (.A(rom_addr[5]), .B(n13949), .C(rom_addr[6]), 
         .D(n6075), .Z(n3065)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2254_3_lut_4_lut.init = 16'h0efe;
    LUT4 i1_2_lut_adj_19 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n11676)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i11510_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14203)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B+(C)))) */ ;
    defparam i11510_then_4_lut.init = 16'h2129;
    L6MUX21 i11711 (.D0(n12036), .D1(n2173), .SD(rom_addr[6]), .Z(n12329));
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14066), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n12889)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    PFUMX i11684 (.BLUT(n12159), .ALUT(n2173_adj_563), .C0(rom_addr[6]), 
          .Z(n12302));
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14144), .Z(n1691_adj_648)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11837_4_lut (.A(n12153), .B(n380_adj_719), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12455)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11837_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14078), .B(n13973), .C(rom_addr[4]), 
         .D(n14111), .Z(n380_adj_719)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 rom_addr_1__bdd_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n15364)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_1__bdd_4_lut.init = 16'hc140;
    PFUMX i13337 (.BLUT(n14189), .ALUT(n14190), .C0(rom_addr[2]), .Z(n14191));
    LUT4 i11510_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n14202)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11510_else_4_lut.init = 16'h8888;
    L6MUX21 i11377 (.D0(n11993), .D1(n11994), .SD(rom_addr[6]), .Z(n11995));
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14048), .Z(n1707_adj_639)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 i11703_3_lut (.A(n12318), .B(n12319), .C(rom_addr[7]), .Z(n12321)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11703_3_lut.init = 16'hcaca;
    LUT4 i12869_then_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14206)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C+(D))))) */ ;
    defparam i12869_then_4_lut.init = 16'h0201;
    LUT4 i12869_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14205)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam i12869_else_4_lut.init = 16'h0018;
    LUT4 i7796_2_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n723)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7796_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i12517_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n11834)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12517_3_lut.init = 16'h7f7f;
    PFUMX i12635 (.BLUT(n13010), .ALUT(n13009), .C0(rom_addr[8]), .Z(n13011));
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14004), .Z(n589_adj_541)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11540_4_lut (.A(n5124), .B(n13925), .C(rom_addr[4]), .D(n14066), 
         .Z(n12158)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11540_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14140), .Z(n1435)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11537_3_lut (.A(n428_adj_635), .B(n684_adj_559), .C(rom_addr[4]), 
         .Z(n12155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11537_3_lut.init = 16'hcaca;
    LUT4 i11615_3_lut (.A(n12063), .B(n12073), .C(rom_addr[6]), .Z(n12233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11615_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[4]), .D(n14016), .Z(n1676_adj_608)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11390 (.D0(n12006), .D1(n12007), .SD(rom_addr[6]), .Z(n12008));
    L6MUX21 i11613 (.D0(n12051), .D1(n12054), .SD(rom_addr[6]), .Z(n12231));
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14004), .Z(n475_adj_681)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14021), .Z(n1435_adj_720)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11524_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(rom_addr[4]), 
         .D(n2283_adj_558), .Z(n12142)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11524_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427_adj_701)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i11536_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n12154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11536_3_lut.init = 16'hcaca;
    PFUMX i13335 (.BLUT(n14186), .ALUT(n14187), .C0(rom_addr[3]), .Z(n14188));
    LUT4 i11612_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15366)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11612_then_4_lut.init = 16'h5924;
    LUT4 i11400_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[4]), 
         .D(n14035), .Z(n12018)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;
    defparam i11400_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n14209)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_then_3_lut.init = 16'h0808;
    LUT4 i7716_4_lut (.A(rom_addr[0]), .B(n14053), .C(n4497), .D(rom_addr[4]), 
         .Z(n2523_adj_721)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7716_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14120), 
         .C(rom_addr[4]), .D(n14045), .Z(n1628_c)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), 
         .C(rom_addr[5]), .D(n12325), .Z(n1660_adj_722)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i11573 (.D0(n63), .D1(n11954), .SD(rom_addr[6]), .Z(n12191));
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14021), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_682), .Z(n2523_adj_723)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12889 (.D0(n13366), .D1(n13364), .SD(rom_addr[6]), .Z(n13367));
    L6MUX21 i11399 (.D0(n12015), .D1(n12016), .SD(rom_addr[6]), .Z(n12017));
    L6MUX21 i11542 (.D0(n63_adj_600), .D1(n12451), .SD(rom_addr[6]), .Z(n12160));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n14085), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11523_3_lut (.A(n2444_adj_724), .B(n2459), .C(rom_addr[4]), 
         .Z(n12141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11523_3_lut.init = 16'hcaca;
    LUT4 i11329_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(rom_addr[4]), 
         .D(n14111), .Z(n11947)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11329_3_lut_4_lut.init = 16'hf202;
    LUT4 i11514_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(rom_addr[4]), 
         .D(n2588), .Z(n12132)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11514_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14139), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    LUT4 i5826_3_lut_4_lut (.A(n14021), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6666), .Z(n6667)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5826_3_lut_4_lut.init = 16'hf808;
    LUT4 i12324_3_lut (.A(n12428), .B(n13543), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12324_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n14208)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut.init = 16'h8080;
    LUT4 i11822_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(rom_addr[4]), 
         .D(n2522), .Z(n12440)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11822_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14021), .Z(n397)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11817_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(rom_addr[4]), 
         .D(n13991), .Z(n12435)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11817_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11515_3_lut (.A(n2283), .B(n2298_adj_604), .C(rom_addr[4]), 
         .Z(n12133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11515_3_lut.init = 16'hcaca;
    L6MUX21 i11412 (.D0(n12028), .D1(n12029), .SD(rom_addr[6]), .Z(n12030));
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), 
         .C(n14100), .D(n2283), .Z(n2492_adj_693)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11430 (.BLUT(n12046), .ALUT(n12047), .C0(rom_addr[6]), .Z(n12048));
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[3]), .D(n14004), .Z(n604_adj_725)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX i12633 (.BLUT(n13007), .ALUT(n13006), .C0(rom_addr[8]), .Z(n13008));
    LUT4 i12219_3_lut (.A(n12132), .B(n12133), .C(rom_addr[5]), .Z(n12134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12219_3_lut.init = 16'hcaca;
    LUT4 i11792_3_lut (.A(n13518), .B(n12409), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11792_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n13932), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_726)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13583), 
         .C(rom_addr[7]), .D(n3516), .Z(n1278_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 i11776_3_lut (.A(n1789_adj_704), .B(n2044), .C(rom_addr[8]), 
         .Z(n12394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11776_3_lut.init = 16'hcaca;
    LUT4 i5869_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14212)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5869_3_lut_4_lut_then_4_lut.init = 16'h5285;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14021), .Z(n2380)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hf202;
    PFUMX i12887 (.BLUT(n1181), .ALUT(n13365), .C0(rom_addr[5]), .Z(n13366));
    LUT4 i2581_4_lut (.A(rom_addr[1]), .B(n13934), .C(rom_addr[5]), .D(n14028), 
         .Z(n3392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2581_4_lut.init = 16'hcfca;
    LUT4 i6024_3_lut_4_lut (.A(rom_addr[0]), .B(n13961), .C(n14091), .D(n2426), 
         .Z(n2428_adj_688)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6024_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_727), .ALUT(n1883_adj_728), 
          .C0(n14085), .Z(n1915_adj_625)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11466_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12084)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11466_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14004), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_10), 
          .C0(n11869), .Z(n1597_adj_624)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11696_3_lut (.A(n12311), .B(n12312), .C(rom_addr[7]), .Z(n12314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11696_3_lut.init = 16'hcaca;
    LUT4 i11372_3_lut_4_lut (.A(n14122), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n11990)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11372_3_lut_4_lut.init = 16'hf909;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n14141), .Z(n2283_adj_641)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 i11695_3_lut (.A(n12309), .B(n12310), .C(rom_addr[7]), .Z(n12313)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11695_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14122), 
         .C(rom_addr[3]), .D(n13999), .Z(n1466_adj_657)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 i5869_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14211)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5869_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14132), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14139), .Z(n1084_adj_718)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_552), .B(n684_adj_559), 
         .C(rom_addr[4]), .Z(n444_adj_707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i11682_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3123), 
         .Z(n12300)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11682_4_lut.init = 16'hca0a;
    PFUMX i13333 (.BLUT(n14183), .ALUT(n14184), .C0(rom_addr[0]), .Z(n14185));
    LUT4 i11505_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n12123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11505_3_lut.init = 16'hcaca;
    LUT4 i11681_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3065), 
         .Z(n12299)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11681_4_lut.init = 16'hc0ca;
    LUT4 i11857_3_lut (.A(n12473), .B(n12474), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11857_3_lut.init = 16'hcaca;
    PFUMX i12885 (.BLUT(n13363), .ALUT(n13362), .C0(rom_addr[5]), .Z(n13364));
    LUT4 i11705_3_lut_4_lut (.A(n14132), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14063), .Z(n12323)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11705_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_730), .ALUT(n1117_adj_731), 
          .C0(n14085), .Z(n1149_adj_623)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11657_3_lut (.A(n13693), .B(n12101), .C(rom_addr[7]), .Z(n12275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11657_3_lut.init = 16'hcaca;
    LUT4 i11656_3_lut (.A(n12079), .B(n6724), .C(rom_addr[7]), .Z(n12274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11656_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n13932), 
         .C(rom_addr[5]), .D(n2396_adj_640), .Z(n2428_adj_695)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11651_3_lut (.A(n11973), .B(n11982), .C(rom_addr[7]), .Z(n12269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11651_3_lut.init = 16'hcaca;
    LUT4 i11650_3_lut (.A(n11951), .B(n11964), .C(rom_addr[7]), .Z(n12268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11650_3_lut.init = 16'hcaca;
    LUT4 i11659_3_lut (.A(n12270), .B(n12271), .C(rom_addr[8]), .Z(n12277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11659_3_lut.init = 16'hcaca;
    LUT4 i11632_3_lut (.A(n12237), .B(n12238), .C(rom_addr[7]), .Z(n12250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11632_3_lut.init = 16'hcaca;
    LUT4 i11631_3_lut (.A(n12235), .B(n12236), .C(rom_addr[7]), .Z(n12249)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11631_3_lut.init = 16'hcaca;
    LUT4 i12360_3_lut (.A(n12249), .B(n12250), .C(rom_addr[8]), .Z(n12256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12360_3_lut.init = 16'hcaca;
    LUT4 i11592_3_lut (.A(n12197), .B(n12198), .C(rom_addr[7]), .Z(n12210)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11592_3_lut.init = 16'hcaca;
    LUT4 i11590_3_lut (.A(n12193), .B(n12194), .C(rom_addr[7]), .Z(n12208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11590_3_lut.init = 16'hcaca;
    LUT4 i11589_3_lut (.A(n12191), .B(n13290), .C(rom_addr[7]), .Z(n12207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11589_3_lut.init = 16'hcaca;
    LUT4 i11598_3_lut (.A(n12209), .B(n12210), .C(rom_addr[8]), .Z(n12216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11598_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), 
         .C(rom_addr[3]), .D(n14138), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i11565_3_lut (.A(n12174), .B(n12175), .C(rom_addr[7]), .Z(n12183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11565_3_lut.init = 16'hcaca;
    LUT4 i11564_3_lut (.A(n12172), .B(n12173), .C(rom_addr[7]), .Z(n12182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11564_3_lut.init = 16'hcaca;
    LUT4 i5147_4_lut (.A(n14145), .B(n14034), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n5977)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5147_4_lut.init = 16'h3530;
    LUT4 i11559_3_lut (.A(n12162), .B(n12163), .C(rom_addr[7]), .Z(n12177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11559_3_lut.init = 16'hcaca;
    PFUMX i11419 (.BLUT(n1054), .ALUT(n1085_adj_732), .C0(rom_addr[5]), 
          .Z(n12037));
    LUT4 i11558_3_lut (.A(n12160), .B(n12161), .C(rom_addr[7]), .Z(n12176)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11558_3_lut.init = 16'hcaca;
    L6MUX21 i12879 (.D0(n13353), .D1(n13351), .SD(rom_addr[6]), .Z(n13354));
    LUT4 i7597_4_lut (.A(rom_addr[0]), .B(n3000), .C(n12478), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7597_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n13999), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_c), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11690_3_lut (.A(n12306), .B(n12307), .C(rom_addr[8]), .Z(n12308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11690_3_lut.init = 16'hcaca;
    LUT4 i12227_3_lut (.A(n2523_adj_721), .B(n2554_adj_676), .C(rom_addr[5]), 
         .Z(n2555_adj_694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12227_3_lut.init = 16'hcaca;
    LUT4 i7871_2_lut_rep_175_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13977)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7871_2_lut_rep_175_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14215)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    L6MUX21 i11452 (.D0(n12068), .D1(n12069), .SD(rom_addr[6]), .Z(n12070));
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14214)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    L6MUX21 i11461 (.D0(n12077), .D1(n12078), .SD(rom_addr[6]), .Z(n12079));
    LUT4 i8053_4_lut (.A(n12390), .B(n14068), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_576)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8053_4_lut.init = 16'hc088;
    LUT4 i11671_3_lut (.A(n12287), .B(n12288), .C(rom_addr[10]), .Z(n12289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11671_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_726), 
          .C0(n14085), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11865_3_lut_4_lut (.A(rom_addr[0]), .B(n14118), .C(rom_addr[3]), 
         .D(n13999), .Z(n12483)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11865_3_lut_4_lut.init = 16'hf808;
    LUT4 i11983_3_lut (.A(n716), .B(n731_adj_586), .C(rom_addr[4]), .Z(n12092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11983_3_lut.init = 16'hcaca;
    LUT4 i11664_3_lut (.A(n12280), .B(n12281), .C(rom_addr[10]), .Z(n12282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11664_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14100), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11465_3_lut (.A(n301), .B(n604_adj_725), .C(rom_addr[4]), .Z(n12083)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11465_3_lut.init = 16'hcaca;
    PFUMX i12877 (.BLUT(n13352), .ALUT(n1692_adj_609), .C0(n14085), .Z(n13353));
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12397), .B(n3070_adj_734), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 i11446_3_lut_4_lut (.A(rom_addr[0]), .B(n13967), .C(rom_addr[4]), 
         .D(n1435_adj_720), .Z(n12064)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11446_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i11483 (.D0(n12099), .D1(n12100), .SD(rom_addr[6]), .Z(n12101));
    LUT4 i7598_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7598_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(n15360), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11861_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12479)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11861_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i11317_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14238)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11317_3_lut_4_lut_else_4_lut.init = 16'h4101;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n11869), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12482_2_lut_rep_266 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14068)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12482_2_lut_rep_266.init = 16'h1111;
    LUT4 i11987_3_lut (.A(n12222), .B(n12223), .C(rom_addr[4]), .Z(n12224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11987_3_lut.init = 16'hcaca;
    LUT4 i7972_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13302), 
         .Z(n3069_adj_571)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7972_2_lut_3_lut.init = 16'h1010;
    LUT4 i7927_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_712), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7927_2_lut_3_lut.init = 16'h1010;
    LUT4 i7757_2_lut_rep_157_3_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13959)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7757_2_lut_rep_157_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i7892_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13341), 
         .Z(n3069_adj_11)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7892_2_lut_3_lut.init = 16'h1010;
    LUT4 i11747_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14224)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11747_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i11749_3_lut_4_lut (.A(rom_addr[0]), .B(n13934), .C(rom_addr[5]), 
         .D(n14148), .Z(n12367)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11749_3_lut_4_lut.init = 16'h1f10;
    LUT4 i8173_2_lut_rep_146_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n13948)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8173_2_lut_rep_146_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i8159_2_lut_rep_155_3_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13957)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8159_2_lut_rep_155_3_lut_3_lut_3_lut.init = 16'h0d0d;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .Z(n1228_adj_737)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i11463_3_lut (.A(n557_adj_738), .B(n428_adj_552), .C(rom_addr[4]), 
         .Z(n12081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11463_3_lut.init = 16'hcaca;
    PFUMX i12875 (.BLUT(n13933), .ALUT(n13350), .C0(rom_addr[5]), .Z(n13351));
    LUT4 address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14043), 
         .C(rom_addr[3]), .D(n14132), .Z(n1402)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11462_3_lut (.A(n526_adj_739), .B(n13926), .C(rom_addr[4]), 
         .Z(n12080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11462_3_lut.init = 16'hcaca;
    LUT4 i12417_2_lut_rep_298 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14100)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12417_2_lut_rep_298.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12315), .B(n12871), .C(rom_addr[9]), 
         .D(n14068), .Z(n3070_adj_734)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 i5840_3_lut_4_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n6681)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5840_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h1414;
    LUT4 i11747_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14223)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11747_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i1_2_lut_rep_179_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13981)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_179_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_172_3_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13974)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_172_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14033), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12866 (.BLUT(n13340), .ALUT(n13337), .C0(rom_addr[6]), .Z(n13341));
    LUT4 i12316_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1403), 
         .D(n1387), .Z(n1404)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12316_3_lut_4_lut.init = 16'hf2d0;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_741)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_160_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13962)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_160_3_lut_3_lut.init = 16'h4040;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n14077), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13329 (.BLUT(n14177), .ALUT(n14178), .C0(rom_addr[2]), .Z(n14179));
    LUT4 i7896_2_lut_rep_129_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13931)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7896_2_lut_rep_129_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 n221_bdd_4_lut (.A(n13922), .B(n5354), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n13542)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut.init = 16'haa30;
    LUT4 i7897_2_lut_rep_268 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14070)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7897_2_lut_rep_268.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475_adj_681), .C(rom_addr[4]), 
         .Z(n476_adj_743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12268_3_lut (.A(n476_adj_743), .B(n14246), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12268_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n14077), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_545)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i3909_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n4720)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3909_3_lut_4_lut_4_lut_3_lut.init = 16'he4e4;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_710), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i7798_4_lut (.A(n14013), .B(rom_addr[4]), .C(n14122), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7798_4_lut.init = 16'hc088;
    LUT4 i4116_3_lut_rep_168_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13970)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4116_3_lut_rep_168_4_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i12479_2_lut_rep_166_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13968)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12479_2_lut_rep_166_3_lut_3_lut.init = 16'h0202;
    PFUMX i12864 (.BLUT(n13338), .ALUT(n14139), .C0(rom_addr[3]), .Z(n13339));
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_181_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13983)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_181_3_lut.init = 16'h3e3e;
    LUT4 i5920_2_lut_rep_311 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14113)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5920_2_lut_rep_311.init = 16'h6666;
    LUT4 i3939_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n4750)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3939_3_lut_4_lut_3_lut.init = 16'hb9b9;
    PFUMX i11543 (.BLUT(n190_adj_669), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12161));
    LUT4 i3193_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n4004)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3193_3_lut_4_lut_4_lut_3_lut.init = 16'h2828;
    PFUMX i12855 (.BLUT(n13324), .ALUT(n2427_adj_701), .C0(rom_addr[6]), 
          .Z(n13325));
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_720), .B(n14140), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_225_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14027)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_225_3_lut.init = 16'hc1c1;
    LUT4 i11347_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n4247), .Z(n11965)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11347_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12223_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n12890), 
         .D(n2538), .Z(n2555_adj_697)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12223_3_lut_4_lut.init = 16'hf2d0;
    L6MUX21 i11544 (.D0(n12454), .D1(n381_adj_597), .SD(rom_addr[6]), 
            .Z(n12162));
    L6MUX21 i11547 (.D0(n11917), .D1(n764), .SD(rom_addr[6]), .Z(n12165));
    LUT4 i7917_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14066), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7917_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_731)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i11644_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12262)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11644_3_lut_4_lut.init = 16'hf808;
    LUT4 i12488_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n11908)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12488_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i12853 (.BLUT(n13321), .ALUT(n13969), .C0(rom_addr[4]), .Z(n13322));
    L6MUX21 i11548 (.D0(n829_adj_581), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12166));
    PFUMX i11550 (.BLUT(n11927), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12168));
    PFUMX i12851 (.BLUT(n13319), .ALUT(n13318), .C0(rom_addr[4]), .Z(n13320));
    LUT4 rom_addr_0__bdd_3_lut_13235_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[6]), .D(n14044), .Z(n13484)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_13235_4_lut_4_lut.init = 16'h0020;
    LUT4 i8010_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(n14011), .D(rom_addr[0]), .Z(n13916)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8010_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    L6MUX21 i11551 (.D0(n1213), .D1(n11930), .SD(rom_addr[6]), .Z(n12169));
    LUT4 i7772_2_lut_rep_250_2_lut (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n14052)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7772_2_lut_rep_250_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n12600), .Z(n1883_adj_728)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11449_3_lut (.A(n2077), .B(n1529_adj_631), .C(rom_addr[4]), 
         .Z(n12067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11449_3_lut.init = 16'hcaca;
    LUT4 i8172_2_lut_rep_215_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14017)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8172_2_lut_rep_215_2_lut.init = 16'hdddd;
    LUT4 i8147_2_lut_rep_316 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14118)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8147_2_lut_rep_316.init = 16'h8888;
    PFUMX i11554 (.BLUT(n1597_adj_665), .ALUT(n1660_adj_722), .C0(rom_addr[6]), 
          .Z(n12172));
    LUT4 i11447_3_lut (.A(n1451), .B(n1676_adj_647), .C(rom_addr[4]), 
         .Z(n12065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11447_3_lut.init = 16'hcaca;
    LUT4 i7894_2_lut_rep_176_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13978)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7894_2_lut_rep_176_3_lut_4_lut_4_lut.init = 16'h0008;
    L6MUX21 i11555 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n12173));
    PFUMX i11556 (.BLUT(n11936), .ALUT(n1915), .C0(rom_addr[6]), .Z(n12174));
    LUT4 i7664_2_lut_rep_325 (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n14127)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7664_2_lut_rep_325.init = 16'h4141;
    LUT4 n2203_bdd_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13148)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2203_bdd_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_rep_201_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14003)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_201_3_lut_4_lut.init = 16'h8000;
    LUT4 i11357_3_lut (.A(n684_adj_705), .B(n699_adj_747), .C(rom_addr[4]), 
         .Z(n11975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11357_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_595)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    LUT4 i7854_2_lut_rep_261_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14063)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7854_2_lut_rep_261_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n716_adj_583)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut_4_lut.init = 16'h0851;
    LUT4 i2_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n6428)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0008;
    L6MUX21 i11557 (.D0(n11939), .D1(n11945), .SD(rom_addr[6]), .Z(n12175));
    PFUMX i2312 (.BLUT(n11601), .ALUT(n3122), .C0(rom_addr[6]), .Z(n3123));
    LUT4 i7734_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_748)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i7734_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i11444_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12062)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11444_3_lut.init = 16'hcaca;
    LUT4 i11443_3_lut (.A(n270_c), .B(n285), .C(rom_addr[4]), .Z(n12061)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11443_3_lut.init = 16'hcaca;
    PFUMX i11646 (.BLUT(n12262), .ALUT(n12263), .C0(rom_addr[5]), .Z(n12264));
    LUT4 i3173_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n3984)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3173_3_lut_3_lut.init = 16'h7474;
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut.init = 16'h20d0;
    LUT4 n1211_bdd_3_lut_13031_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13539)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam n1211_bdd_3_lut_13031_3_lut_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14227)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 i3956_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n4767)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3956_3_lut_4_lut_3_lut.init = 16'hd9d9;
    LUT4 i11441_3_lut (.A(n236), .B(n251_adj_557), .C(rom_addr[4]), .Z(n12059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11441_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n333)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut_4_lut.init = 16'h6202;
    LUT4 i7619_2_lut_rep_180_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n13982)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7619_2_lut_rep_180_3_lut.init = 16'he0e0;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14226)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    PFUMX i11649 (.BLUT(n12265), .ALUT(n12266), .C0(rom_addr[5]), .Z(n12267));
    LUT4 i11440_3_lut (.A(n205), .B(n220_adj_749), .C(rom_addr[4]), .Z(n12058)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11440_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n308)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut.init = 16'h4646;
    PFUMX i12839 (.BLUT(n2237_adj_702), .ALUT(n13307), .C0(rom_addr[6]), 
          .Z(n13308));
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220_adj_749)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14017), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14027), .Z(n61_adj_598)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 i7623_2_lut_rep_158_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13960)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i7623_2_lut_rep_158_3_lut_4_lut.init = 16'hf8f0;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut.init = 16'h7870;
    PFUMX i11727 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12345));
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_750)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h5bf0;
    PFUMX i12837 (.BLUT(n13305), .ALUT(n13304), .C0(rom_addr[4]), .Z(n13306));
    LUT4 i5906_2_lut_rep_318 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14120)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5906_2_lut_rep_318.init = 16'h8888;
    PFUMX i11728 (.BLUT(n2268_adj_751), .ALUT(n2299_adj_706), .C0(rom_addr[5]), 
          .Z(n12346));
    LUT4 i7937_2_lut_rep_189_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n13991)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7937_2_lut_rep_189_3_lut_4_lut.init = 16'h0880;
    LUT4 i7949_2_lut_rep_253_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14055)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7949_2_lut_rep_253_3_lut.init = 16'h0808;
    LUT4 i5881_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5881_4_lut_4_lut_4_lut.init = 16'h8055;
    PFUMX i11729 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12347));
    PFUMX i11730 (.BLUT(n6728), .ALUT(n2427), .C0(rom_addr[5]), .Z(n12348));
    LUT4 n6148_bdd_4_lut (.A(n14010), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n3230), .Z(n13483)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n6148_bdd_4_lut.init = 16'hf808;
    PFUMX i11731 (.BLUT(n2460), .ALUT(n2491_adj_659), .C0(rom_addr[5]), 
          .Z(n12349));
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n890_adj_643)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(n14078), 
         .D(rom_addr[3]), .Z(n11638)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i11432_3_lut (.A(n46_adj_3), .B(n61_adj_752), .C(rom_addr[4]), 
         .Z(n12050)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11432_3_lut.init = 16'hcaca;
    PFUMX i12834 (.BLUT(n13301), .ALUT(n15355), .C0(rom_addr[6]), .Z(n13302));
    LUT4 i12530_2_lut_rep_273 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14075)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12530_2_lut_rep_273.init = 16'h1111;
    LUT4 i11612_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15365)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11612_else_4_lut.init = 16'h5092;
    LUT4 i11093_2_lut_rep_328 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14130)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11093_2_lut_rep_328.init = 16'h2222;
    PFUMX i11732 (.BLUT(n2523_adj_723), .ALUT(n2554_adj_634), .C0(rom_addr[5]), 
          .Z(n12350));
    LUT4 i11371_3_lut (.A(n526_adj_750), .B(n14008), .C(rom_addr[4]), 
         .Z(n11989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11371_3_lut.init = 16'hcaca;
    LUT4 i7969_2_lut_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n348)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7969_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_654), 
         .C(rom_addr[4]), .Z(n1244_adj_753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i12165_3_lut (.A(n1244_adj_753), .B(n15363), .C(rom_addr[5]), 
         .Z(n12047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12165_3_lut.init = 16'hcaca;
    LUT4 i11094_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n236)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11094_3_lut_4_lut_3_lut_4_lut.init = 16'h0d20;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14006), .D(n14123), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n15357), 
         .C(rom_addr[3]), .D(n14078), .Z(n2332)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 i1_2_lut_rep_208_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14010)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_208_3_lut_4_lut.init = 16'h2000;
    LUT4 n1913_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14098), .D(rom_addr[0]), .Z(n13226)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1913_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut_adj_20 (.A(rom_addr[0]), .B(n14001), 
         .C(n14011), .D(rom_addr[5]), .Z(n10391)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_4_lut_4_lut_adj_20.init = 16'h0040;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14043), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_660)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i11425_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n12043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11425_3_lut.init = 16'hcaca;
    PFUMX i11752 (.BLUT(n1499_adj_662), .ALUT(n1530_adj_632), .C0(rom_addr[5]), 
          .Z(n12370));
    LUT4 i1_2_lut_2_lut (.A(rom_addr[0]), .B(rom_addr[4]), .Z(n11627)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14027), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[5]), .Z(n4_c)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h2022;
    LUT4 i7904_2_lut_rep_243_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14045)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7904_2_lut_rep_243_3_lut.init = 16'h2020;
    LUT4 i7853_2_lut_rep_173_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13975)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7853_2_lut_rep_173_3_lut_4_lut.init = 16'h2000;
    PFUMX i12832 (.BLUT(n13977), .ALUT(n13299), .C0(rom_addr[4]), .Z(n13300));
    LUT4 i12520_2_lut_rep_275 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14077)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12520_2_lut_rep_275.init = 16'hdddd;
    LUT4 i11496_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4767), 
         .D(n13976), .Z(n12114)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11496_4_lut_4_lut.init = 16'h7340;
    LUT4 i12514_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11838)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12514_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i12548 (.BLUT(n12868), .ALUT(n14046), .C0(rom_addr[4]), .Z(n12869));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n11618), 
         .D(n14066), .Z(n2684_adj_754)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_213_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14015)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_213_3_lut_4_lut.init = 16'h0d00;
    LUT4 i12398_2_lut_rep_276 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14078)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12398_2_lut_rep_276.init = 16'h9999;
    L6MUX21 i12822 (.D0(n13289), .D1(n13287), .SD(rom_addr[6]), .Z(n13290));
    LUT4 i7784_2_lut_rep_205_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14007)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7784_2_lut_rep_205_2_lut.init = 16'h4444;
    PFUMX i11758 (.BLUT(n1692), .ALUT(n1723_adj_715), .C0(rom_addr[5]), 
          .Z(n12376));
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2444_adj_724)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    PFUMX i11759 (.BLUT(n1755_c), .ALUT(n1786_adj_673), .C0(rom_addr[5]), 
          .Z(n12377));
    PFUMX i12820 (.BLUT(n158_adj_12), .ALUT(n13288), .C0(rom_addr[5]), 
          .Z(n13289));
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14043), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 i11849_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n13962), .Z(n12467)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11849_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n13927), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n13967), 
         .C(n14003), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    PFUMX i11763 (.BLUT(n1820_adj_630), .ALUT(n1851_adj_589), .C0(rom_addr[5]), 
          .Z(n12381));
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n13928), .D(n4303), .Z(n924_adj_544)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1982_2_lut_rep_330 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14132)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1982_2_lut_rep_330.init = 16'h6666;
    LUT4 i11340_3_lut_4_lut (.A(rom_addr[0]), .B(n13967), .C(rom_addr[4]), 
         .D(n14026), .Z(n11958)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11340_3_lut_4_lut.init = 16'hf202;
    LUT4 i11307_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n13983), .C(rom_addr[3]), 
         .Z(n14149)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11307_3_lut_4_lut_else_4_lut.init = 16'h0404;
    PFUMX i12818 (.BLUT(n13286), .ALUT(n13285), .C0(rom_addr[5]), .Z(n13287));
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_622)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    LUT4 i7800_4_lut (.A(rom_addr[0]), .B(n14053), .C(n13974), .D(rom_addr[4]), 
         .Z(n1117_adj_543)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7800_4_lut.init = 16'h0a22;
    LUT4 i7965_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n684)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7965_2_lut_3_lut_4_lut.init = 16'h0600;
    PFUMX i13297 (.BLUT(n13899), .ALUT(n13898), .C0(rom_addr[5]), .Z(n13900));
    PFUMX i11764 (.BLUT(n1883), .ALUT(n1914_adj_741), .C0(rom_addr[5]), 
          .Z(n12382));
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_637)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 i12042_3_lut (.A(n1038_adj_748), .B(n1053), .C(rom_addr[4]), 
         .Z(n11986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12042_3_lut.init = 16'hcaca;
    PFUMX i11765 (.BLUT(n1947_adj_716), .ALUT(n1978), .C0(rom_addr[5]), 
          .Z(n12383));
    LUT4 n2286_bdd_4_lut_13305_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n684_adj_705)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2286_bdd_4_lut_13305_4_lut.init = 16'hc39c;
    L6MUX21 i13396 (.D0(n14275), .D1(n14272), .SD(rom_addr[8]), .Z(n14276));
    PFUMX i11766 (.BLUT(n2010), .ALUT(n6664), .C0(rom_addr[5]), .Z(n12384));
    L6MUX21 i12619 (.D0(n12988), .D1(n12985), .SD(rom_addr[5]), .Z(n12989));
    LUT4 i12502_2_lut_rep_118_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14044), .Z(n13920)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12502_2_lut_rep_118_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i7869_2_lut_rep_224_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14026)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7869_2_lut_rep_224_3_lut_4_lut.init = 16'h0060;
    PFUMX i11772 (.BLUT(n12388), .ALUT(n12389), .C0(rom_addr[5]), .Z(n12390));
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    LUT4 i1_2_lut_rep_185_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n13987)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_185_3_lut.init = 16'h9090;
    LUT4 rom_addr_1__bdd_4_lut_13323 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14152)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;
    defparam rom_addr_1__bdd_4_lut_13323.init = 16'h6414;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_then_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14154)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_then_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_154_3_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n13956)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_154_3_lut_3_lut_3_lut.init = 16'h0404;
    PFUMX i11782 (.BLUT(n12398), .ALUT(n12399), .C0(rom_addr[5]), .Z(n2237));
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_594)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 i4957_2_lut_rep_196_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n13998)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4957_2_lut_rep_196_3_lut.init = 16'hf9f9;
    LUT4 i11673_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12291)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11673_3_lut_4_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n14078), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14063), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7940_2_lut_rep_200_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14002)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i7940_2_lut_rep_200_3_lut_4_lut.init = 16'h0888;
    LUT4 i8162_2_lut_rep_343 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14145)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8162_2_lut_rep_343.init = 16'h8888;
    LUT4 n13159_bdd_3_lut_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14230)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam n13159_bdd_3_lut_4_lut_then_4_lut.init = 16'h1540;
    PFUMX i11784 (.BLUT(n10391), .ALUT(n10390), .C0(rom_addr[6]), .Z(n12402));
    LUT4 n1275_bdd_3_lut (.A(n1243), .B(n1228), .C(rom_addr[4]), .Z(n13579)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n13581)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    PFUMX i11788 (.BLUT(n1436), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12406));
    LUT4 i11435_3_lut_4_lut (.A(n14145), .B(n14081), .C(rom_addr[4]), 
         .D(n124_adj_633), .Z(n12053)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11435_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444_adj_578), .Z(n2268_adj_751)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 n730_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n13319)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13977), 
         .C(rom_addr[4]), .D(n14045), .Z(n1275)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11222_2_lut_rep_333 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14135)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11222_2_lut_rep_333.init = 16'h2222;
    LUT4 i8143_2_lut_rep_320 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14122)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8143_2_lut_rep_320.init = 16'heeee;
    PFUMX i11789 (.BLUT(n1499), .ALUT(n1530_adj_651), .C0(rom_addr[5]), 
          .Z(n12407));
    LUT4 i11298_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684_adj_559), .C(rom_addr[4]), 
         .D(n13962), .Z(n11916)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11298_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11413_4_lut (.A(n14046), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4497), 
         .Z(n12031)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11413_4_lut.init = 16'h0aca;
    LUT4 n13159_bdd_3_lut_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14229)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C+!(D))+!B !(C)))) */ ;
    defparam n13159_bdd_3_lut_4_lut_else_4_lut.init = 16'h4345;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_else_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14153)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C (D))+!B !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_else_4_lut.init = 16'hc0b3;
    LUT4 i12044_3_lut (.A(n844), .B(n859_adj_757), .C(rom_addr[4]), .Z(n11983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12044_3_lut.init = 16'hcaca;
    LUT4 i12156_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1076), 
         .D(n1084), .Z(n1085_adj_732)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12156_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_593)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 i7964_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_663)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7964_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5143_2_lut_rep_255_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14057)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5143_2_lut_rep_255_3_lut.init = 16'h1e1e;
    PFUMX i13327 (.BLUT(n14174), .ALUT(n14175), .C0(rom_addr[0]), .Z(n14176));
    LUT4 rom_addr_6__bdd_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13486)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam rom_addr_6__bdd_2_lut_3_lut_4_lut.init = 16'hf0e1;
    PFUMX i11795 (.BLUT(n1692_adj_649), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12413));
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut.init = 16'hf1e1;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14006), 
         .C(rom_addr[3]), .D(n14078), .Z(n364)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_241_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14043)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_241_3_lut.init = 16'hfefe;
    LUT4 i8054_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n14130), .D(n14098), .Z(n2684)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8054_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    PFUMX i11796 (.BLUT(n1755), .ALUT(n1786_adj_646), .C0(rom_addr[5]), 
          .Z(n12414));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_727)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i7882_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13923)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7882_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7855_2_lut_rep_204_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14006)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7855_2_lut_rep_204_3_lut.init = 16'h1010;
    LUT4 i7901_2_lut_rep_183_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n13985)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i7901_2_lut_rep_183_3_lut_4_lut.init = 16'h8008;
    LUT4 i7971_2_lut_rep_238_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14040)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7971_2_lut_rep_238_3_lut.init = 16'h8080;
    LUT4 i12021_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n12026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12021_3_lut.init = 16'hcaca;
    LUT4 n1692_bdd_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n15357), .C(rom_addr[3]), 
         .D(n14017), .Z(n13352)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1692_bdd_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n1210)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1210_3_lut_4_lut_3_lut.init = 16'hd9d9;
    LUT4 i1_2_lut_2_lut_adj_21 (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n4_adj_717)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut_adj_21.init = 16'h4444;
    LUT4 i7994_2_lut_rep_335 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14137)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7994_2_lut_rep_335.init = 16'h8888;
    LUT4 i7985_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_757)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i7985_3_lut_3_lut_4_lut.init = 16'hf010;
    LUT4 i7895_2_lut_rep_177_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n13979)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7895_2_lut_rep_177_3_lut_3_lut.init = 16'h4040;
    LUT4 i11407_3_lut (.A(n2009_adj_642), .B(n954), .C(rom_addr[4]), .Z(n12025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11407_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_132_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13934)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_132_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14086), 
         .C(rom_addr[3]), .D(n14124), .Z(n1101_adj_730)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    PFUMX i11809 (.BLUT(n12425), .ALUT(n12426), .C0(rom_addr[5]), .Z(n2300_adj_686));
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i8061_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n13990), 
         .D(rom_addr[3]), .Z(n3230)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8061_4_lut_4_lut.init = 16'hd100;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6708), 
         .C(rom_addr[5]), .D(n12295), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13926), 
         .C(rom_addr[4]), .D(n13962), .Z(n507_adj_619)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_246_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14048)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_246_3_lut.init = 16'h7c7c;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h0843;
    PFUMX i12617 (.BLUT(n12987), .ALUT(n12986), .C0(rom_addr[4]), .Z(n12988));
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14078), .D(n14063), .Z(n1483)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    PFUMX i11818 (.BLUT(n12434), .ALUT(n12435), .C0(rom_addr[5]), .Z(n2492_adj_689));
    LUT4 i4040_3_lut_rep_164_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13966)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4040_3_lut_rep_164_4_lut_4_lut_3_lut.init = 16'h5858;
    LUT4 n2545_bdd_3_lut_12847_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n12986)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n2545_bdd_3_lut_12847_3_lut_4_lut.init = 16'hf011;
    LUT4 i11406_3_lut (.A(n908), .B(n13926), .C(rom_addr[4]), .Z(n12024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11406_3_lut.init = 16'hcaca;
    LUT4 i11813_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14233)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11813_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    L6MUX21 i11296 (.D0(n11912), .D1(n11913), .SD(rom_addr[5]), .Z(n11914));
    LUT4 i1_2_lut_adj_22 (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n11618)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n11639), 
         .D(rom_addr[2]), .Z(n11640)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    PFUMX i11821 (.BLUT(n12437), .ALUT(n12438), .C0(rom_addr[5]), .Z(n12439));
    LUT4 i7900_2_lut_rep_231_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14033)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i7900_2_lut_rep_231_3_lut_4_lut.init = 16'h8880;
    LUT4 i12496_2_lut_rep_163_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13965)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12496_2_lut_rep_163_2_lut_3_lut_4_lut.init = 16'h0111;
    PFUMX i11299 (.BLUT(n11915), .ALUT(n11916), .C0(rom_addr[5]), .Z(n11917));
    LUT4 i4952_3_lut_rep_159_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n13961)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4952_3_lut_rep_159_4_lut_4_lut_3_lut.init = 16'hbebe;
    LUT4 i11426_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14164)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam i11426_4_lut_then_4_lut.init = 16'hb8a4;
    LUT4 n2968_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13690)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2968_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    PFUMX i11824 (.BLUT(n12440), .ALUT(n12441), .C0(rom_addr[5]), .Z(n2555_adj_690));
    LUT4 i7542_2_lut_rep_278 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n14080)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7542_2_lut_rep_278.init = 16'heeee;
    LUT4 i11403_4_lut (.A(n6700), .B(n13933), .C(rom_addr[4]), .D(n14118), 
         .Z(n12021)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11403_4_lut.init = 16'hcac0;
    LUT4 i7908_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14028), .Z(n5251)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7908_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11813_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14232)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11813_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i3492_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4303)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3492_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i5862_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5862_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7610_2_lut_rep_279 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14081)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7610_2_lut_rep_279.init = 16'h4444;
    LUT4 i7694_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14122), .Z(n1181_adj_573)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i7694_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 n13487_bdd_3_lut (.A(n13487), .B(n13484), .C(rom_addr[4]), .Z(n13488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13487_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5124), .B(n15360), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699_adj_747)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    L6MUX21 i12782 (.D0(n13238), .D1(n13235), .SD(rom_addr[6]), .Z(n13239));
    PFUMX i11830 (.BLUT(n12446), .ALUT(n12447), .C0(rom_addr[5]), .Z(n12448));
    LUT4 rom_addr_2__bdd_4_lut_13459 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14156)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13459.init = 16'h98d1;
    PFUMX i13325 (.BLUT(n14171), .ALUT(n14172), .C0(rom_addr[4]), .Z(n14173));
    LUT4 rom_addr_6__bdd_3_lut_12998_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13485)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam rom_addr_6__bdd_3_lut_12998_4_lut_4_lut_4_lut.init = 16'h01a0;
    LUT4 n1699_bdd_2_lut_12836_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13304)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam n1699_bdd_2_lut_12836_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i7614_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_631)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7614_4_lut_4_lut.init = 16'hc700;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_626)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    PFUMX i12780 (.BLUT(n13237), .ALUT(n13236), .C0(n14085), .Z(n13238));
    PFUMX i11833 (.BLUT(n12449), .ALUT(n12450), .C0(rom_addr[5]), .Z(n12451));
    LUT4 i12404_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5124)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12404_2_lut.init = 16'h9999;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n11727)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B ((D)+!C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h8073;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14158)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut.init = 16'h1500;
    LUT4 i5046_2_lut_rep_301 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14103)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5046_2_lut_rep_301.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i12615 (.BLUT(n12984), .ALUT(n12983), .C0(rom_addr[4]), .Z(n12985));
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14043), .Z(n1676_adj_647)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    L6MUX21 i13686 (.D0(n14755), .D1(n14752), .SD(rom_addr[6]), .Z(n14756));
    PFUMX i11836 (.BLUT(n12452), .ALUT(n12453), .C0(rom_addr[5]), .Z(n12454));
    LUT4 i1_2_lut_rep_214_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14016)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_214_3_lut_4_lut.init = 16'h0880;
    PFUMX i12778 (.BLUT(n13920), .ALUT(n13234), .C0(rom_addr[5]), .Z(n13235));
    PFUMX i13684 (.BLUT(n14754), .ALUT(n14753), .C0(rom_addr[5]), .Z(n14755));
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1946)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut_4_lut.init = 16'h3883;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 i7681_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_661)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7681_2_lut_3_lut.init = 16'h9090;
    L6MUX21 i11842 (.D0(n12458), .D1(n12459), .SD(rom_addr[5]), .Z(n12460));
    PFUMX i12776 (.BLUT(n924), .ALUT(n13231), .C0(rom_addr[5]), .Z(n13232));
    LUT4 i12030_3_lut (.A(n12326), .B(n12327), .C(rom_addr[4]), .Z(n12328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12030_3_lut.init = 16'hcaca;
    LUT4 i5877_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n6718)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i5877_3_lut_3_lut_4_lut_3_lut.init = 16'h1818;
    PFUMX i13240 (.BLUT(n13810), .ALUT(n14046), .C0(rom_addr[4]), .Z(n13811));
    LUT4 i7785_4_lut (.A(n14006), .B(rom_addr[4]), .C(n14144), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7785_4_lut.init = 16'hc088;
    LUT4 i7635_2_lut_rep_219_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14021)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7635_2_lut_rep_219_3_lut.init = 16'hf8f8;
    PFUMX i11845 (.BLUT(n12461), .ALUT(n12462), .C0(rom_addr[5]), .Z(n12463));
    PFUMX i13681 (.BLUT(n14751), .ALUT(n14750), .C0(rom_addr[5]), .Z(n14752));
    LUT4 i11382_4_lut (.A(n13977), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12000)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11382_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_280 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14082)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_280.init = 16'heeee;
    PFUMX i11453 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n12071));
    LUT4 i11488_3_lut_4_lut (.A(n14130), .B(n14123), .C(rom_addr[4]), 
         .D(n890), .Z(n12106)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11488_3_lut_4_lut.init = 16'h4f40;
    LUT4 n1181_bdd_3_lut_13120_4_lut (.A(n15356), .B(n14137), .C(rom_addr[4]), 
         .D(n1196), .Z(n13365)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1181_bdd_3_lut_13120_4_lut.init = 16'h8f80;
    LUT4 i2_2_lut_rep_147_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_147_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i13236 (.BLUT(n13803), .ALUT(n13802), .C0(rom_addr[0]), .Z(n13804));
    LUT4 i7903_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13925)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7903_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    PFUMX i12774 (.BLUT(n668), .ALUT(n13228), .C0(rom_addr[4]), .Z(n13229));
    PFUMX i12559 (.BLUT(n14033), .ALUT(n12889), .C0(n14099), .Z(n12890));
    LUT4 i12447_2_lut_rep_281 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14083)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12447_2_lut_rep_281.init = 16'h7777;
    LUT4 i11387_4_lut (.A(n15356), .B(n14064), .C(rom_addr[4]), .D(n14081), 
         .Z(n12005)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11387_4_lut.init = 16'hcac0;
    LUT4 n2552_bdd_2_lut_13128_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n12994)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_13128_3_lut_4_lut.init = 16'h0007;
    LUT4 i3948_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4759)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i3948_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i12451_2_lut_rep_283 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14085)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12451_2_lut_rep_283.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668_adj_627)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 i3686_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4497)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i3686_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 rom_addr_0__bdd_4_lut_13308_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n13803)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_13308_4_lut_4_lut.init = 16'h0a01;
    LUT4 i12244_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_612), 
         .D(n1676_c), .Z(n1724_adj_675)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12244_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3534_3_lut_rep_284 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3534_3_lut_rep_284.init = 16'hcaca;
    LUT4 i7906_2_lut_rep_321 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14123)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7906_2_lut_rep_321.init = 16'h2222;
    LUT4 i7831_2_lut_rep_199_2_lut (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n14001)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7831_2_lut_rep_199_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n2573), 
         .C(rom_addr[4]), .D(n14045), .Z(n1309)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14236)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13978), 
         .C(rom_addr[4]), .D(n13956), .Z(n2620)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_197_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n13999)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_197_4_lut_3_lut.init = 16'h4242;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_202_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14004)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_202_4_lut_3_lut.init = 16'h2424;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n14137), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14043), .Z(n61_adj_752)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 i11426_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14163)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11426_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14235)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i11359_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n11977)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11359_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_739)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    PFUMX i11848 (.BLUT(n12464), .ALUT(n12465), .C0(rom_addr[5]), .Z(n12466));
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_256_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14058)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_256_3_lut.init = 16'hc2c2;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(n14135), .D(rom_addr[5]), .Z(n11601)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14157)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut.init = 16'h0400;
    LUT4 i12475_2_lut_rep_306 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14025)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12475_2_lut_rep_306.init = 16'h4444;
    LUT4 i11604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n12222)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11604_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 i7678_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7678_2_lut_4_lut_4_lut.init = 16'hc020;
    PFUMX i11851 (.BLUT(n12467), .ALUT(n12468), .C0(rom_addr[5]), .Z(n12469));
    LUT4 i7625_2_lut_rep_161_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13963)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7625_2_lut_rep_161_4_lut_4_lut_4_lut.init = 16'h0083;
    LUT4 i11317_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14239)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11317_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i5919_2_lut_rep_322 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14124)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5919_2_lut_rep_322.init = 16'h6666;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n557_adj_738)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i11250_2_lut_rep_289 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14091)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11250_2_lut_rep_289.init = 16'h8888;
    LUT4 i11251_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n11869)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11251_1_lut_2_lut.init = 16'h7777;
    PFUMX i13394 (.BLUT(n14274), .ALUT(n14273), .C0(rom_addr[7]), .Z(n14275));
    PFUMX i12772 (.BLUT(n2684_adj_754), .ALUT(n13226), .C0(rom_addr[6]), 
          .Z(n13227));
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_336 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14138)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_336.init = 16'h8181;
    PFUMX i11454 (.BLUT(n364_adj_555), .ALUT(n379_adj_582), .C0(rom_addr[4]), 
          .Z(n12072));
    PFUMX i11854 (.BLUT(n12470), .ALUT(n12471), .C0(rom_addr[5]), .Z(n12472));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054_adj_606), .ALUT(n1085), 
          .C0(rom_addr[5]), .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_602)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_337 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14139)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_337.init = 16'h1818;
    PFUMX i11860 (.BLUT(n12476), .ALUT(n12477), .C0(rom_addr[7]), .Z(n12478));
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n13983), .B(n603), .C(rom_addr[3]), 
         .Z(n699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i12037_3_lut (.A(n1228_adj_737), .B(n1243_adj_655), .C(rom_addr[4]), 
         .Z(n11999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12037_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_338 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14140)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_338.init = 16'h8383;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_339 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14141)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_339.init = 16'h3838;
    LUT4 i7663_2_lut_rep_254_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14056)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7663_2_lut_rep_254_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i11379_4_lut (.A(n14055), .B(n14118), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n11997)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11379_4_lut.init = 16'hfaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[6]), .Z(n4)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h9990;
    LUT4 i1_2_lut_rep_296 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14098)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_296.init = 16'h8888;
    LUT4 i7626_2_lut_rep_169_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13971)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7626_2_lut_rep_169_3_lut_4_lut.init = 16'hf9f0;
    LUT4 i3731_3_lut_rep_206_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14008)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3731_3_lut_rep_206_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .D(n14130), .Z(n6074)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h8000;
    LUT4 i12536_2_lut_rep_151_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .D(n14130), .Z(n13953)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12536_2_lut_rep_151_3_lut_4_lut.init = 16'hf7ff;
    L6MUX21 i13151 (.D0(n13692), .D1(n13689), .SD(rom_addr[5]), .Z(n13693));
    PFUMX i13149 (.BLUT(n13691), .ALUT(n13690), .C0(rom_addr[6]), .Z(n13692));
    LUT4 i7617_2_lut_rep_188_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n13990)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7617_2_lut_rep_188_3_lut.init = 16'hf6f6;
    LUT4 i7735_2_lut_rep_230_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14032)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7735_2_lut_rep_230_2_lut_3_lut.init = 16'h6f6f;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_342 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14144)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_342.init = 16'he8e8;
    LUT4 i4013_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4824)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4013_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i7787_2_lut_rep_211_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14013)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7787_2_lut_rep_211_2_lut_3_lut.init = 16'h0606;
    LUT4 i3702_2_lut_rep_203_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14005)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3702_2_lut_rep_203_3_lut.init = 16'h6060;
    PFUMX i13147 (.BLUT(n5251), .ALUT(n13688), .C0(rom_addr[6]), .Z(n13689));
    LUT4 i7702_2_lut_rep_167_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13969)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7702_2_lut_rep_167_3_lut_4_lut.init = 16'h0090;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 i3612_2_lut_rep_233_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14035)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3612_2_lut_rep_233_2_lut_3_lut.init = 16'h6f6f;
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13802)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    L6MUX21 i13135 (.D0(n13662), .D1(n13660), .SD(rom_addr[6]), .Z(n13663));
    PFUMX i13380 (.BLUT(n14253), .ALUT(n14254), .C0(rom_addr[2]), .Z(n14255));
    LUT4 i5837_2_lut_rep_232_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14034)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5837_2_lut_rep_232_3_lut.init = 16'hf6f6;
    PFUMX i12722 (.BLUT(n13153), .ALUT(n13150), .C0(rom_addr[6]), .Z(n13154));
    PFUMX i11312 (.BLUT(n11928), .ALUT(n11929), .C0(rom_addr[5]), .Z(n11930));
    PFUMX i12720 (.BLUT(n14037), .ALUT(n13151), .C0(rom_addr[4]), .Z(n13152));
    PFUMX i13378 (.BLUT(n14250), .ALUT(n14251), .C0(rom_addr[5]), .Z(n14252));
    PFUMX i13133 (.BLUT(n13661), .ALUT(n13920), .C0(rom_addr[5]), .Z(n13662));
    PFUMX i13131 (.BLUT(n13659), .ALUT(n1403_adj_703), .C0(rom_addr[5]), 
          .Z(n13660));
    PFUMX i13376 (.BLUT(n14247), .ALUT(n14248), .C0(rom_addr[3]), .Z(n14249));
    PFUMX i13374 (.BLUT(n14244), .ALUT(n14245), .C0(rom_addr[0]), .Z(n14246));
    PFUMX i13372 (.BLUT(n14241), .ALUT(n14242), .C0(rom_addr[0]), .Z(n1565_adj_8));
    LUT4 i7721_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n46)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7721_4_lut_4_lut_4_lut.init = 16'h30d0;
    PFUMX i12718 (.BLUT(n13148), .ALUT(n13147), .C0(rom_addr[4]), .Z(n13149));
    LUT4 i11416_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1211), .Z(n12034)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11416_3_lut_4_lut.init = 16'hf808;
    LUT4 i3436_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4247)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3436_3_lut_3_lut.init = 16'hd3d3;
    PFUMX i11321 (.BLUT(n11937), .ALUT(n11938), .C0(rom_addr[5]), .Z(n11939));
    PFUMX i13391 (.BLUT(n14271), .ALUT(n14270), .C0(rom_addr[7]), .Z(n14272));
    PFUMX i11327 (.BLUT(n11943), .ALUT(n11944), .C0(rom_addr[5]), .Z(n11945));
    PFUMX i12550 (.BLUT(n12870), .ALUT(n2684_adj_754), .C0(rom_addr[6]), 
          .Z(n12871));
    PFUMX i11330 (.BLUT(n11946), .ALUT(n11947), .C0(rom_addr[5]), .Z(n11948));
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_711)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    PFUMX i11336 (.BLUT(n11952), .ALUT(n11953), .C0(rom_addr[5]), .Z(n11954));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_adj_13), .ALUT(n11638), 
          .C0(rom_addr[5]), .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11344 (.BLUT(n11958), .ALUT(n11959), .C0(rom_addr[5]), .Z(n11962));
    PFUMX i11345 (.BLUT(n11960), .ALUT(n11961), .C0(rom_addr[5]), .Z(n11963));
    LUT4 n221_bdd_3_lut_13186 (.A(n221), .B(n13540), .C(rom_addr[5]), 
         .Z(n13541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_13186.init = 16'hcaca;
    
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
    
    wire en_write_N_95, n13808, n13807;
    
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
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n13808)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n13807)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
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
    PFUMX i13238 (.BLUT(n13808), .ALUT(n13807), .C0(\state[5] ), .Z(en_write_N_95));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (cnt1, sys_clk_50MHz, sys_clk_50MHz_enable_12, 
            \state_3__N_368[1] , \end_x_8__N_295[6] , n6883, \ascii_num[0] , 
            \state[5] , n5, \end_x_8__N_295[3] , \end_y_8__N_313[4] , 
            \end_x_8__N_295[5] , \end_x_8__N_295[4] , \end_y_8__N_313[5] , 
            \ascii_num[6] , \ascii_num[4] , \ascii_num[3] , \ascii_num[2] , 
            \ascii_num[1] , \state[3] , \end_x_8__N_295[7] ) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_12;
    output \state_3__N_368[1] ;
    output \end_x_8__N_295[6] ;
    input n6883;
    output \ascii_num[0] ;
    input \state[5] ;
    input n5;
    output \end_x_8__N_295[3] ;
    output \end_y_8__N_313[4] ;
    output \end_x_8__N_295[5] ;
    output \end_x_8__N_295[4] ;
    output \end_y_8__N_313[5] ;
    output \ascii_num[6] ;
    output \ascii_num[4] ;
    output \ascii_num[3] ;
    output \ascii_num[2] ;
    output \ascii_num[1] ;
    input \state[3] ;
    output \end_x_8__N_295[7] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [1:0]n7;
    wire [8:0]start_x_8__N_522;
    wire [6:0]ascii_num_6__N_515;
    
    wire show_char_flag_N_540;
    wire [8:0]start_y_8__N_531;
    wire [31:0]n225;
    
    wire cnt_ascii_num_4__N_514, n6879;
    wire [5:0]n1504;
    
    wire n5923, n13, n14049, n11651, n14051, n14116, n14115, n13821, 
        n14072, n6503;
    wire [4:0]n1532;
    
    wire n14097, n14096, n11568, n11683, n6, n14069, n6499, n14114, 
        n14084, n14117, n14089, n8382, n1095, n13938, n13984, 
        n12, n2857, n2811, n13618, sys_clk_50MHz_enable_105, n14090, 
        n13619;
    
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_50MHz_enable_12), .CD(\state_3__N_368[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[10] 72[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_522[6]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_x_8__N_295[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_515[0]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_368[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(67[10] 72[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_x__i1 (.D(start_x_8__N_522[3]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_x_8__N_295[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_40 (.D(show_char_flag_N_540), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_368[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(77[10] 80[32])
    defparam show_char_flag_40.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_531[4]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_y_8__N_313[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(213[10] 238[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_522[5]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_x_8__N_295[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i0 (.D(n6879), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_514), 
            .Q(n225[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i0.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_522[4]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_x_8__N_295[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1S3IX start_y__i2 (.D(start_y_8__N_531[5]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_y_8__N_313[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(213[10] 238[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_515[6]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_515[4]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_515[3]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_515[2]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_515[1]), .SP(\state[5] ), .CK(sys_clk_50MHz), 
            .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(95[10] 118[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    LUT4 mux_801_i4_4_lut (.A(n1504[3]), .B(n5923), .C(n13), .D(n14049), 
         .Z(ascii_num_6__N_515[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam mux_801_i4_4_lut.init = 16'h0aca;
    LUT4 n11651_bdd_4_lut (.A(n11651), .B(n14051), .C(n14116), .D(n14115), 
         .Z(n13821)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam n11651_bdd_4_lut.init = 16'hffef;
    LUT4 i7555_2_lut (.A(cnt_ascii_num_4__N_514), .B(n225[18]), .Z(n1504[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i7555_2_lut.init = 16'h4444;
    LUT4 i12421_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(77[13:24])
    defparam i12421_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(n225[15]), .B(n14072), .C(n6503), .D(n225[18]), 
         .Z(start_y_8__N_531[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    PFUMX mux_801_i3 (.BLUT(n1504[2]), .ALUT(n1532[2]), .C0(n13), .Z(ascii_num_6__N_515[2]));
    LUT4 mux_801_i1_4_lut (.A(n14097), .B(n1532[0]), .C(n13), .D(n14096), 
         .Z(ascii_num_6__N_515[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam mux_801_i1_4_lut.init = 16'hc0ca;
    LUT4 i4_4_lut (.A(n11568), .B(n11683), .C(n225[0]), .D(n6), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n225[13]), .B(n225[14]), .C(n225[12]), .Z(n6503)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(n14069), .B(n225[18]), .C(n6499), .D(n225[5]), 
         .Z(start_x_8__N_522[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 n13821_bdd_4_lut (.A(n13821), .B(n14114), .C(n1504[3]), .D(n13), 
         .Z(ascii_num_6__N_515[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n13821_bdd_4_lut.init = 16'h22f0;
    LUT4 i3_4_lut (.A(n225[12]), .B(n14097), .C(n6499), .D(n14084), 
         .Z(start_x_8__N_522[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i5093_4_lut_4_lut (.A(n225[11]), .B(n14117), .C(n14089), .D(n8382), 
         .Z(n5923)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5093_4_lut_4_lut.init = 16'h3233;
    LUT4 i541_2_lut_3_lut_4_lut (.A(n225[11]), .B(n14117), .C(n14114), 
         .D(n14115), .Z(n1095)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i541_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i998_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(70[17:28])
    defparam i998_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_10 (.A(n13938), .B(n13984), .C(n11651), .D(n11683), 
         .Z(start_y_8__N_531[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_10.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_11 (.A(n225[6]), .B(n225[2]), .C(n225[0]), 
         .D(n225[4]), .Z(n6499)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(n225[6]), .B(n225[2]), .C(n14089), .Z(n11568)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_267 (.A(n225[1]), .B(n225[3]), .Z(n14069)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_267.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(n225[1]), .B(n225[3]), .C(n225[8]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'hfefe;
    LUT4 i2_3_lut_rep_136_4_lut (.A(n225[1]), .B(n225[3]), .C(n6499), 
         .D(n225[18]), .Z(n13938)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_136_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(n13984), .B(n12), .C(n225[6]), .D(n225[5]), .Z(start_x_8__N_522[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(n225[3]), .B(n225[11]), .C(n225[4]), .D(n225[14]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    PFUMX mux_797_i1 (.BLUT(n2857), .ALUT(n2811), .C0(n1095), .Z(n1532[0]));
    LUT4 i1_2_lut_rep_312 (.A(n225[14]), .B(n225[2]), .Z(n14114)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_312.init = 16'heeee;
    LUT4 n737_bdd_3_lut_13095_4_lut (.A(n225[14]), .B(n225[2]), .C(n14115), 
         .D(n14117), .Z(n13618)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam n737_bdd_3_lut_13095_4_lut.init = 16'h1110;
    LUT4 i2003_3_lut_4_lut (.A(n225[14]), .B(n225[2]), .C(n14117), .D(n14115), 
         .Z(n2811)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i2003_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_2_lut_rep_313 (.A(n225[13]), .B(n225[3]), .Z(n14115)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_313.init = 16'heeee;
    LUT4 i533_2_lut_rep_247_3_lut_4_lut (.A(n225[13]), .B(n225[3]), .C(n225[2]), 
         .D(n225[14]), .Z(n14049)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i533_2_lut_rep_247_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_314 (.A(n225[7]), .B(n225[1]), .Z(n14116)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_314.init = 16'heeee;
    LUT4 i2046_3_lut_3_lut_4_lut (.A(n225[7]), .B(n225[1]), .C(n14089), 
         .D(n225[8]), .Z(n2857)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i2046_3_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i7540_2_lut_3_lut (.A(n225[7]), .B(n225[1]), .C(n225[8]), .Z(n8382)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i7540_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_315 (.A(n225[12]), .B(n225[0]), .Z(n14117)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i1_2_lut_rep_315.init = 16'heeee;
    LUT4 i531_2_lut_rep_249_3_lut (.A(n225[12]), .B(n225[0]), .C(n225[11]), 
         .Z(n14051)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(96[9] 118[16])
    defparam i531_2_lut_rep_249_3_lut.init = 16'hfefe;
    LUT4 i19_2_lut_rep_269 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_105)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(87[13:40])
    defparam i19_2_lut_rep_269.init = 16'h8888;
    LUT4 i6026_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n225[0]), 
         .Z(n6879)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(87[13:40])
    defparam i6026_2_lut_3_lut.init = 16'h7070;
    LUT4 i3_2_lut_rep_270 (.A(n225[16]), .B(n225[17]), .Z(n14072)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut_rep_270.init = 16'heeee;
    LUT4 i1_2_lut_rep_182_3_lut (.A(n225[16]), .B(n225[17]), .C(n225[15]), 
         .Z(n13984)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_182_3_lut.init = 16'hfefe;
    LUT4 mux_797_i3_4_lut_4_lut (.A(n225[8]), .B(n14089), .C(n1095), .D(n14114), 
         .Z(n1532[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam mux_797_i3_4_lut_4_lut.init = 16'hfd0d;
    FD1S3IX start_x__i5 (.D(start_x_8__N_522[7]), .CK(sys_clk_50MHz), .CD(n6883), 
            .Q(\end_x_8__N_295[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=153 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(183[10] 208[24])
    defparam start_x__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_282 (.A(n225[8]), .B(n225[10]), .Z(n14084)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_282.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_13 (.A(n225[8]), .B(n225[10]), .C(n225[9]), 
         .D(n14090), .Z(start_x_8__N_522[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_13.init = 16'hfffe;
    LUT4 i2_3_lut_rep_287 (.A(n225[9]), .B(n225[5]), .C(n225[10]), .Z(n14089)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_287.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(n225[9]), .B(n225[5]), .C(n225[10]), 
         .D(n225[8]), .Z(n11651)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_14.init = 16'hfffe;
    LUT4 i1_2_lut_rep_288 (.A(n225[11]), .B(n225[7]), .Z(n14090)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_288.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(n225[11]), .B(n225[7]), .C(n6503), 
         .Z(n11683)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_15.init = 16'hfefe;
    LUT4 i3_4_lut_adj_16 (.A(n225[1]), .B(n11568), .C(n225[13]), .D(n14072), 
         .Z(start_x_8__N_522[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_16.init = 16'hfffe;
    LUT4 i537_2_lut_rep_294 (.A(n225[18]), .B(cnt_ascii_num_4__N_514), .Z(n14096)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i537_2_lut_rep_294.init = 16'heeee;
    LUT4 i8125_2_lut_3_lut (.A(n225[18]), .B(cnt_ascii_num_4__N_514), .C(n13), 
         .Z(ascii_num_6__N_515[6])) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i8125_2_lut_3_lut.init = 16'hf1f1;
    LUT4 reduce_or_677_i5_2_lut_rep_295 (.A(n225[15]), .B(n225[17]), .Z(n14097)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_677_i5_2_lut_rep_295.init = 16'heeee;
    LUT4 n737_bdd_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(n225[18]), 
         .D(cnt_ascii_num_4__N_514), .Z(n13619)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam n737_bdd_3_lut_4_lut.init = 16'h00f1;
    LUT4 i8133_2_lut_3_lut_4_lut (.A(n225[15]), .B(n225[17]), .C(cnt_ascii_num_4__N_514), 
         .D(n225[18]), .Z(n1504[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8133_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i13096 (.BLUT(n13619), .ALUT(n13618), .C0(n13), .Z(ascii_num_6__N_515[4]));
    FD1P3IX cnt_ascii_num_FSM_i19 (.D(n225[18]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_514));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i19.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i18 (.D(n225[17]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i18.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i17 (.D(n225[16]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i17.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i16 (.D(n225[15]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i16.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i15 (.D(n225[14]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i14 (.D(n225[13]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n225[12]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n225[11]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n225[10]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n225[9]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n225[8]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n225[7]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n225[6]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n225[5]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n225[4]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n225[3]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n225[2]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n225[1]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i1 (.D(n225[0]), .SP(sys_clk_50MHz_enable_105), 
            .CD(cnt_ascii_num_4__N_514), .CK(sys_clk_50MHz), .Q(n225[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(88[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    
endmodule
