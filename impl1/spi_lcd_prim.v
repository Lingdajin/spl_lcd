// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 18:48:09 2025
//
// Verilog Description of module spi_lcd
//

module spi_lcd (sys_clk, sys_rst_n, lcd_rst, lcd_dc, lcd_sclk, lcd_mosi, 
            lcd_cs, lcd_led, debug_led1, debug_led2, segment_led) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(18[9:16])
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
    output [8:0]segment_led;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire GND_net, VCC_net, sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, 
        lcd_mosi_c, lcd_cs_c, segment_led_c_6, segment_led_c_5, segment_led_c_4, 
        segment_led_c_3, segment_led_c_2, segment_led_c_1, segment_led_c_0;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(34[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(38[17:26])
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(44[17:26])
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(48[17:31])
    wire [3:0]count;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(58[11:16])
    
    wire count_3__N_11;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_36;
    
    wire debug_led1_c_5;
    wire [5:0]state_adj_827;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_251;
    wire [3:0]state_adj_832;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [8:0]end_x_8__N_297;
    wire [8:0]end_y_8__N_315;
    wire [3:0]state_3__N_379;
    wire [1:0]cnt1_adj_840;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_44, n5, n1, n6, sys_clk_c_enable_43, 
        n1498, sys_clk_50MHz_enable_19, n15874, sys_clk_c_enable_10, 
        n8797, n14556, n6998, n22, n23;
    
    VHI i2 (.Z(VCC_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .lcd_sclk_c(lcd_sclk_c), .lcd_cs_c(lcd_cs_c), .\state[2] (state[2]), 
            .n14556(n14556), .\cnt_sclk[3] (cnt_sclk[3]), .\cnt_sclk[2] (cnt_sclk[2]), 
            .\state_3__N_36[1] (state_3__N_36[1]), .\data[7] (data[7]), 
            .\data[0] (data[0]), .\data[1] (data[1]), .\data[2] (data[2]), 
            .\data[3] (data[3]), .\data[4] (data[4]), .\data[5] (data[5]), 
            .\data[6] (data[6]), .sys_clk_50MHz_enable_44(sys_clk_50MHz_enable_44), 
            .n1498(n1498), .lcd_mosi_c(lcd_mosi_c)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(84[12] 96[2])
    ROM128X1A mux_298_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_298_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_298_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_298_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    ROM128X1A mux_298_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_298_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_298_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_298_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    lcd_init lcd_init_inst (.sys_clk_50MHz(sys_clk_50MHz), .init_data({init_data}), 
            .\state[2] (state_adj_827[2]), .cnt_s2_num({cnt_s2_num}), .sys_clk_50MHz_enable_19(sys_clk_50MHz_enable_19), 
            .n1498(n1498), .debug_led1_c_5(debug_led1_c_5), .n15874(n15874), 
            .lcd_rst_c(lcd_rst_c), .GND_net(GND_net), .\state[4] (state_adj_827[4]), 
            .\init_data_8__N_251[5] (init_data_8__N_251[5]), .\init_data_8__N_251[4] (init_data_8__N_251[4]), 
            .\init_data_8__N_251[2] (init_data_8__N_251[2]), .\init_data_8__N_251[0] (init_data_8__N_251[0]), 
            .wr_done(wr_done), .n6998(n6998)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(112[11] 122[2])
    LUT4 m1_lut (.Z(n15874)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i756_4_lut_rep_282 (.A(debug_led1_c_5), .B(state_3__N_379[1]), 
         .C(cnt1_adj_840[0]), .D(cnt1_adj_840[1]), .Z(sys_clk_c_enable_10)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i756_4_lut_rep_282.init = 16'hceee;
    LUT4 i2027_2_lut_4_lut (.A(debug_led1_c_5), .B(state_3__N_379[1]), .C(cnt1_adj_840[0]), 
         .D(cnt1_adj_840[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2027_2_lut_4_lut.init = 16'h3e1e;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i750_2_lut (.A(wr_done), .B(state_adj_827[4]), .Z(sys_clk_50MHz_enable_19)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i750_2_lut.init = 16'hbbbb;
    LUT4 i753_4_lut (.A(state_adj_832[2]), .B(length_num_flag), .C(n8797), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_c_enable_43)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i753_4_lut.init = 16'hceee;
    LUT4 i10014_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i10014_3_lut_4_lut.init = 16'h7f80;
    LUT4 i10007_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i10007_2_lut_3_lut.init = 16'h7878;
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(78[5] 82[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14556), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_44)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    FD1S3IX count_715__i3 (.D(n22), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_715__i3.GSR = "ENABLED";
    FD1S3IX count_715__i2 (.D(n23), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_715__i2.GSR = "ENABLED";
    FD1S3IX count_715__i1 (.D(n6), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_715__i1.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX count_715__i0 (.D(n1), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_715__i0.GSR = "ENABLED";
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    VLO i1 (.Z(GND_net));
    lcd_show_char lcd_show_char_inst (.\ascii_num[2] (ascii_num[2]), .\ascii_num[3] (ascii_num[3]), 
            .GND_net(GND_net), .\ascii_num[4] (ascii_num[4]), .cnt_rom_prepare({cnt_rom_prepare}), 
            .sys_clk_c(sys_clk_c), .wr_done(wr_done), .length_num_flag(length_num_flag), 
            .show_char_data({show_char_data}), .\ascii_num[0] (ascii_num[0]), 
            .\ascii_num[1] (ascii_num[1]), .\state[1] (state_adj_832[1]), 
            .debug_led2_c_3(debug_led2_c_3), .\state_3__N_379[1] (state_3__N_379[1]), 
            .\state[2] (state_adj_832[2]), .\end_x_8__N_297[5] (end_x_8__N_297[5]), 
            .sys_clk_c_enable_43(sys_clk_c_enable_43), .n8797(n8797), .\end_y_8__N_315[5] (end_y_8__N_315[5]), 
            .\end_x_8__N_297[4] (end_x_8__N_297[4]), .\end_y_8__N_315[4] (end_y_8__N_315[4]), 
            .\end_x_8__N_297[3] (end_x_8__N_297[3]), .\end_x_8__N_297[6] (end_x_8__N_297[6]), 
            .\end_x_8__N_297[7] (end_x_8__N_297[7]), .\ascii_num[6] (ascii_num[6])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(124[16] 138[2])
    show_string_number_ctrl show_string_number_ctrl_inst (.sys_clk_c(sys_clk_c), 
            .\ascii_num[0] (ascii_num[0]), .debug_led1_c_5(debug_led1_c_5), 
            .cnt1({cnt1_adj_840}), .\state_3__N_379[1] (state_3__N_379[1]), 
            .n5(n5), .\end_y_8__N_315[4] (end_y_8__N_315[4]), .n6998(n6998), 
            .sys_clk_c_enable_10(sys_clk_c_enable_10), .\ascii_num[6] (ascii_num[6]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[1] (ascii_num[1]), 
            .debug_led2_c_3(debug_led2_c_3), .\end_x_8__N_297[3] (end_x_8__N_297[3]), 
            .\end_y_8__N_315[5] (end_y_8__N_315[5]), .\end_x_8__N_297[7] (end_x_8__N_297[7]), 
            .\end_x_8__N_297[6] (end_x_8__N_297[6]), .\end_x_8__N_297[5] (end_x_8__N_297[5]), 
            .\end_x_8__N_297[4] (end_x_8__N_297[4])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(140[26] 152[2])
    segment_led segment_led_inst (.count({count}), .n6(n6), .segment_led_c_0(segment_led_c_0), 
            .segment_led_c_1(segment_led_c_1), .segment_led_c_2(segment_led_c_2), 
            .segment_led_c_3(segment_led_c_3), .segment_led_c_5(segment_led_c_5), 
            .segment_led_c_6(segment_led_c_6), .n1(n1), .count_3__N_11(count_3__N_11), 
            .segment_led_c_4(segment_led_c_4)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(72[13] 76[2])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(28[21:28])
    OB debug_led1_pad (.I(debug_led1_c_5), .O(debug_led1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(29[21:31])
    OB debug_led2_pad (.I(debug_led2_c_3), .O(debug_led2));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(30[21:31])
    OB segment_led_pad_8 (.I(GND_net), .O(segment_led[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_7 (.I(GND_net), .O(segment_led[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_6 (.I(segment_led_c_6), .O(segment_led[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_5 (.I(segment_led_c_5), .O(segment_led[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_4 (.I(segment_led_c_4), .O(segment_led[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_3 (.I(segment_led_c_3), .O(segment_led[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_2 (.I(segment_led_c_2), .O(segment_led[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_1 (.I(segment_led_c_1), .O(segment_led[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    OB segment_led_pad_0 (.I(segment_led_c_0), .O(segment_led[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(31[21:32])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(21[21:30])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_36[1] (state_3__N_36[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .\state[2] (state_adj_827[2]), .\state[4] (state_adj_827[4]), 
            .\state[1] (state_adj_832[1]), .cnt_rom_prepare({cnt_rom_prepare}), 
            .init_data({init_data}), .show_char_data({show_char_data}), 
            .debug_led1_c_5(debug_led1_c_5)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(98[10] 110[2])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, lcd_sclk_c, lcd_cs_c, \state[2] , 
            n14556, \cnt_sclk[3] , \cnt_sclk[2] , \state_3__N_36[1] , 
            \data[7] , \data[0] , \data[1] , \data[2] , \data[3] , 
            \data[4] , \data[5] , \data[6] , sys_clk_50MHz_enable_44, 
            n1498, lcd_mosi_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_sclk_c;
    output lcd_cs_c;
    output \state[2] ;
    output n14556;
    output \cnt_sclk[3] ;
    output \cnt_sclk[2] ;
    input \state_3__N_36[1] ;
    input \data[7] ;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[4] ;
    input \data[5] ;
    input \data[6] ;
    input sys_clk_50MHz_enable_44;
    output n1498;
    output lcd_mosi_c;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire sclk_flag, sclk_flag_N_81;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    
    wire sclk_N_64;
    wire [3:0]state_3__N_44;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n7003;
    wire [4:0]n25;
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    
    wire n14466;
    wire [3:0]n15;
    
    wire n1, n2956, n2953, n2948, n14558, mosi_N_76;
    wire [3:0]state_3__N_40;
    
    wire n6;
    wire [3:0]n100;
    
    wire n2929, mosi_N_67, n12251, mosi_N_66;
    wire [15:0]n155;
    
    wire sys_clk_50MHz_enable_26, n14453, n6002, n6003, mosi_N_74, 
        mosi_N_75;
    wire [0:0]n1075;
    
    wire sys_clk_50MHz_enable_41, mosi_N_72, n6004, mosi_N_69, mosi_N_70, 
        n12248, n12240, mosi_N_71, mosi_N_73, n12180, n12224, sys_clk_50MHz_enable_45, 
        n13, n14, n1631;
    
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_64), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_44[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_717__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n7003), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_717__i4.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14466), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_44[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2956), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2953), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2948), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_279 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14556)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_279.init = 16'heeee;
    LUT4 i10064_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10064_2_lut.init = 16'h6666;
    LUT4 i12771_3_lut_rep_189_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(\cnt_sclk[3] ), 
         .D(\cnt_sclk[2] ), .Z(n14466)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i12771_3_lut_rep_189_4_lut.init = 16'h0100;
    LUT4 i10067_2_lut_rep_281 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14558)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10067_2_lut_rep_281.init = 16'h8888;
    LUT4 i10078_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10078_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i10071_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10071_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_1_lut (.A(mosi_N_76), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i2073_2_lut (.A(state[0]), .B(\state_3__N_36[1] ), .Z(n2956)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2073_2_lut.init = 16'h2222;
    LUT4 i2070_4_lut (.A(state[1]), .B(\state_3__N_36[1] ), .C(state_3__N_40[1]), 
         .D(state[0]), .Z(n2953)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2070_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_40[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i873_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .D(\cnt_sclk[3] ), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i873_3_lut_4_lut.init = 16'h7f80;
    LUT4 i866_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i866_2_lut_3_lut.init = 16'h7878;
    PFUMX mosi_I_1 (.BLUT(n2929), .ALUT(mosi_N_67), .C0(n12251), .Z(mosi_N_66)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_76), .SP(sys_clk_50MHz_enable_26), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 state_3__N_32_I_0_2_lut_rep_176 (.A(state[1]), .B(state_3__N_40[1]), 
         .Z(n14453)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_32_I_0_2_lut_rep_176.init = 16'h2222;
    LUT4 i5097_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(\data[7] ), 
         .D(n6002), .Z(n6003)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5097_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2065_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(state_3__N_44[3]), 
         .D(\state[2] ), .Z(n2948)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2065_3_lut_4_lut.init = 16'h2f22;
    LUT4 i12768_4_lut (.A(cnt_sclk[0]), .B(\cnt_sclk[3] ), .C(\cnt_sclk[2] ), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_81)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12768_4_lut.init = 16'h0200;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_64)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 state_3__N_33_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_33_I_0_118_1_lut.init = 16'h5555;
    LUT4 i2059_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_74), .D(mosi_N_75), 
         .Z(n1075[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2059_4_lut.init = 16'hcac0;
    LUT4 i32_2_lut_rep_141_4_lut (.A(n14556), .B(\cnt_sclk[2] ), .C(\cnt_sclk[3] ), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_41)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_141_4_lut.init = 16'h0400;
    LUT4 i10085_3_lut_4_lut (.A(cnt_delay[2]), .B(n14558), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10085_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5098_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_72), .Z(n6004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5098_3_lut.init = 16'hcaca;
    LUT4 i11549_2_lut (.A(mosi_N_69), .B(mosi_N_70), .Z(n12248)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11549_2_lut.init = 16'h1111;
    LUT4 i12890_4_lut (.A(n14453), .B(mosi_N_69), .C(mosi_N_70), .D(n12240), 
         .Z(n12251)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12890_4_lut.init = 16'hfffe;
    LUT4 i11541_3_lut (.A(mosi_N_71), .B(mosi_N_72), .C(mosi_N_73), .Z(n12240)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11541_3_lut.init = 16'h0101;
    LUT4 i5099_3_lut (.A(n6004), .B(\data[4] ), .C(mosi_N_71), .Z(n2929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5099_3_lut.init = 16'hcaca;
    LUT4 i12622_4_lut_4_lut (.A(n14453), .B(n12248), .C(n6003), .D(n1075[0]), 
         .Z(mosi_N_67)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12622_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i10062_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10062_1_lut.init = 16'h5555;
    LUT4 i5096_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_69), .Z(n6002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5096_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14466), .C(state[1]), .Z(sys_clk_50MHz_enable_26)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i12881_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n12180), .D(cnt_delay[2]), 
         .Z(n7003)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12881_4_lut.init = 16'hfffb;
    LUT4 i859_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i859_2_lut.init = 16'h6666;
    LUT4 i12765_4_lut (.A(state[0]), .B(state_3__N_40[1]), .C(n12224), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12765_4_lut.init = 16'hfbfa;
    LUT4 i11526_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n12224)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i11526_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_76), .B(mosi_N_74), .C(mosi_N_70), .D(mosi_N_72), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_73), .B(mosi_N_75), .C(mosi_N_71), .D(mosi_N_69), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7313_2_lut (.A(mosi_N_66), .B(state[0]), .Z(n1631)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7313_2_lut.init = 16'h2222;
    LUT4 i11484_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n12180)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11484_2_lut.init = 16'heeee;
    LUT4 i2032_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_44), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2032_2_lut.init = 16'h6666;
    LUT4 i770_1_lut (.A(wr_done), .Z(n1498)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i770_1_lut.init = 16'h5555;
    FD1S3IX cnt_delay_717__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n7003), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_717__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_717__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n7003), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_717__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_717__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n7003), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_717__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n155[14]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_76));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_75), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n155[12]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_75));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_74), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n155[10]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_74));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_73), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n155[8]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_73));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_72), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n155[6]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_72));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_71), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n155[4]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_71));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_70), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n155[2]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_70));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_69), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n155[0]), .SP(sys_clk_50MHz_enable_41), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_69));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_717__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n7003), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_717__i0.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_44), .CD(n14466), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_44), .CD(n14466), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_44), .CD(n14466), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1P3AX mosi_100 (.D(n1631), .SP(sys_clk_50MHz_enable_45), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module lcd_init
//

module lcd_init (sys_clk_50MHz, init_data, \state[2] , cnt_s2_num, sys_clk_50MHz_enable_19, 
            n1498, debug_led1_c_5, n15874, lcd_rst_c, GND_net, \state[4] , 
            \init_data_8__N_251[5] , \init_data_8__N_251[4] , \init_data_8__N_251[2] , 
            \init_data_8__N_251[0] , wr_done, n6998) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output [8:0]init_data;
    output \state[2] ;
    output [6:0]cnt_s2_num;
    input sys_clk_50MHz_enable_19;
    input n1498;
    output debug_led1_c_5;
    input n15874;
    output lcd_rst_c;
    input GND_net;
    output \state[4] ;
    input \init_data_8__N_251[5] ;
    input \init_data_8__N_251[4] ;
    input \init_data_8__N_251[2] ;
    input \init_data_8__N_251[0] ;
    input wr_done;
    output n6998;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire cnt_150ms_22__N_232;
    wire [22:0]n97;
    wire [8:0]init_data_8__N_108;
    
    wire n14896, n14390, n14586;
    wire [6:0]n24;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1510;
    wire [17:0]n357;
    wire [5:0]state_5__N_191;
    
    wire cnt_s2_num_done_N_283, n12108, n15852, sys_clk_50MHz_enable_2, 
        lcd_rst_high_flag, sys_clk_50MHz_enable_25;
    wire [6:0]n159;
    
    wire n14596, n10762, n10763, n14478, n10757, n10758, n86, 
        n14395, n88;
    wire [8:0]init_data_8__N_242;
    
    wire n7002, lcd_rst_high_flag_N_281, n4, n10;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n14397;
    wire [5:0]state_5__N_185;
    
    wire n2979, n5, n12102, n14471, n10_adj_807, n12100;
    wire [8:0]init_data_8__N_251;
    
    wire n6571, n73, n84, n5_adj_808, n11, n14894, n30, n31, 
        n12256, n63, n46, n30_adj_809, n14730, n10756, n5_adj_810, 
        n14616, n10798, n12907, n10827, n12906, n12098, n69, n4_adj_811, 
        n14446, n14731, n15, n12918, n7, n11920, n12055, n12919, 
        n14339, n14536, n14338;
    wire [5:0]state_5__N_203;
    
    wire cnt_s4_num_done_N_285, n10828, n14659, n14658, n20_adj_812, 
        n12126, n12002, n4_adj_813, n13862, n10_adj_814, n20_adj_815, 
        n12198, n12131, n18, n6758, n6730, n8704, n2981, n12154;
    wire [5:0]state_5__N_197;
    
    wire n2983, n14605, n9, n12226, n14413, n2976, n11976, n10977, 
        n14470, n14588, n12027, n7_adj_816, n8, n2985, n8925, 
        n10764, n10759, n10760, n14342, n14394, n10784, n10783, 
        n14660, n30_adj_817, n12905, n10782, n10781, n14479, n14341, 
        n14343, n14340, n14344, n10780, n14120, n14729, n12920, 
        n10779, n10778, n10777, n10776, n10775, n10774, n10761;
    
    FD1S3IX cnt_150ms_719__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i22.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_108[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    PFUMX i13820 (.BLUT(n14896), .ALUT(n14390), .C0(\state[2] ), .Z(init_data_8__N_108[8]));
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14586), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_283), .CK(sys_clk_50MHz), 
            .CD(n1498), .Q(state_5__N_191[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_354 (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), .C(n12108), 
         .Z(n15852)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_rep_354.init = 16'hfefe;
    FD1P3AX state_FSM_i1 (.D(n15874), .SP(sys_clk_50MHz_enable_2), .CK(sys_clk_50MHz), 
            .Q(debug_led1_c_5));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_108[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_108[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n15874), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_19), 
            .CD(n1510), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_108[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_108[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_108[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_108[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_108[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_19), .CD(n1510), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_108[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14596), .SP(sys_clk_50MHz_enable_25), .CD(n14586), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    LUT4 i888_2_lut_rep_319 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14596)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i888_2_lut_rep_319.init = 16'h6666;
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10762), .COUT(n10763), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 i12781_4_lut (.A(cnt_s2_num[5]), .B(n14478), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_283)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12781_4_lut.init = 16'h1000;
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10757), .COUT(n10758), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    LUT4 i7346_4_lut (.A(n86), .B(\state[4] ), .C(n14395), .D(n88), 
         .Z(init_data_8__N_242[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7346_4_lut.init = 16'hccc8;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_281), .CK(sys_clk_50MHz), 
            .CD(n7002), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(cnt_s4_num[2]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_3_lut.init = 16'h8484;
    LUT4 i4_4_lut (.A(cnt_150ms[3]), .B(cnt_150ms[4]), .C(cnt_150ms[22]), 
         .D(cnt_150ms[2]), .Z(n10)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i2096_4_lut (.A(state[1]), .B(n14397), .C(state_5__N_185[1]), 
         .D(state[0]), .Z(n2979)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2096_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut (.A(n5), .B(n12102), .C(cnt_150ms[13]), .D(n14471), 
         .Z(state_5__N_185[1])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut.init = 16'hffef;
    LUT4 i5_4_lut (.A(cnt_150ms[21]), .B(n10_adj_807), .C(n12100), .D(cnt_150ms[12]), 
         .Z(n12102)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_4_lut.init = 16'hfdff;
    PFUMX init_data_8__I_0_i2 (.BLUT(init_data_8__N_242[1]), .ALUT(init_data_8__N_251[1]), 
          .C0(\state[2] ), .Z(init_data_8__N_108[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;
    LUT4 i4_4_lut_adj_37 (.A(cnt_150ms[11]), .B(cnt_150ms[5]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[8]), .Z(n10_adj_807)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_37.init = 16'hfffb;
    PFUMX i89 (.BLUT(n6571), .ALUT(n73), .C0(cnt_s4_num[3]), .Z(n84));
    PFUMX i18 (.BLUT(n4), .ALUT(n5_adj_808), .C0(cnt_s4_num[3]), .Z(n11));
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_242[3]), .ALUT(init_data_8__N_251[3]), 
          .C0(\state[2] ), .Z(init_data_8__N_108[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;
    LUT4 i1_2_lut (.A(cnt_150ms[18]), .B(cnt_150ms[9]), .Z(n12100)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 segment_led_0_bdd_2_lut_13845_3_lut (.A(n14894), .B(n15852), .C(\state[4] ), 
         .Z(n14896)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam segment_led_0_bdd_2_lut_13845_3_lut.init = 16'he0e0;
    PFUMX mux_298_Mux_7_i63 (.BLUT(n30), .ALUT(n31), .C0(n12256), .Z(n63));
    LUT4 mux_298_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_298_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 mux_298_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30_adj_809)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_298_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n15852), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n14730)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'heeae;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10756), .COUT(n10757), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 init_data_8__I_0_i8_4_lut (.A(init_data_8__N_242[7]), .B(n63), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i7326_4_lut (.A(n15852), .B(\state[4] ), .C(n5_adj_810), .D(n14616), 
         .Z(init_data_8__N_242[7])) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7326_4_lut.init = 16'hc888;
    LUT4 n14407_bdd_4_lut_14387 (.A(cnt_s4_num[0]), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[3]), .Z(n14894)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B+(C))) */ ;
    defparam n14407_bdd_4_lut_14387.init = 16'hdef4;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n10798)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 init_data_8__I_0_i7_4_lut (.A(init_data_8__N_242[7]), .B(n12907), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i7_4_lut.init = 16'h0aca;
    PFUMX i12207 (.BLUT(n46), .ALUT(n10827), .C0(cnt_s2_num[4]), .Z(n12906));
    LUT4 init_data_8__I_0_i6_4_lut (.A(n12098), .B(\init_data_8__N_251[5] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_38 (.A(n69), .B(n14395), .C(n88), .D(n4_adj_811), 
         .Z(n12098)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_38.init = 16'hfefc;
    LUT4 i1_2_lut_adj_39 (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .Z(n4_adj_811)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_adj_39.init = 16'h4444;
    LUT4 i1_2_lut_adj_40 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n69)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_40.init = 16'hdddd;
    LUT4 i923_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n14446), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i923_3_lut_4_lut.init = 16'h7f80;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n14731), .B(\init_data_8__N_251[4] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    PFUMX i12219 (.BLUT(n15), .ALUT(n30_adj_809), .C0(cnt_s2_num[4]), 
          .Z(n12918));
    LUT4 init_data_8__I_0_i3_4_lut (.A(\state[4] ), .B(\init_data_8__N_251[2] ), 
         .C(\state[2] ), .D(n7), .Z(init_data_8__N_108[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    PFUMX i12220 (.BLUT(n11920), .ALUT(n12055), .C0(cnt_s2_num[4]), .Z(n12919));
    LUT4 cnt_s2_num_5__bdd_3_lut_13647 (.A(cnt_s2_num[5]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[4]), .Z(n14339)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam cnt_s2_num_5__bdd_3_lut_13647.init = 16'h4848;
    LUT4 i916_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14536), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i916_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 cnt_s2_num_5__bdd_4_lut_13648 (.A(cnt_s2_num[5]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[4]), .Z(n14338)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B ((D)+!C)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut_13648.init = 16'h462c;
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_285), .CK(sys_clk_50MHz), 
            .CD(n1498), .Q(state_5__N_203[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    LUT4 i12908_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_232)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12908_3_lut.init = 16'h0101;
    LUT4 i3_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n10828)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 n3027_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n14659)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n3027_bdd_3_lut_4_lut_then_4_lut.init = 16'hf3fb;
    LUT4 n3027_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n14658)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n3027_bdd_3_lut_4_lut_else_4_lut.init = 16'hb7f2;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n20_adj_812), .B(\init_data_8__N_251[0] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_41 (.A(cnt_s4_num[17]), .B(n12126), .C(n12002), 
         .D(n4_adj_813), .Z(n12108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hfffe;
    LUT4 i1_2_lut_adj_42 (.A(cnt_s4_num[12]), .B(cnt_s4_num[11]), .Z(n4_adj_813)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut_adj_42.init = 16'heeee;
    LUT4 cnt_s4_num_0__bdd_4_lut_14386 (.A(cnt_s4_num[0]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[2]), .Z(n13862)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C (D))+!B (C+!(D))))) */ ;
    defparam cnt_s4_num_0__bdd_4_lut_14386.init = 16'h276e;
    LUT4 i5_3_lut (.A(cnt_s4_num[9]), .B(n10_adj_814), .C(cnt_s4_num[8]), 
         .Z(n12126)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_43 (.A(cnt_s4_num[5]), .B(cnt_s4_num[4]), .C(cnt_s4_num[6]), 
         .D(cnt_s4_num[7]), .Z(n10_adj_814)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_43.init = 16'hfffe;
    LUT4 i6074_1_lut (.A(state[0]), .Z(n7002)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6074_1_lut.init = 16'h5555;
    LUT4 i12789_4_lut (.A(cnt_150ms[4]), .B(n20_adj_815), .C(n12198), 
         .D(cnt_150ms[3]), .Z(lcd_rst_high_flag_N_281)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12789_4_lut.init = 16'h2000;
    LUT4 i9_4_lut (.A(n12131), .B(n18), .C(cnt_150ms[5]), .D(n6758), 
         .Z(n20_adj_815)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i9_4_lut.init = 16'hffef;
    LUT4 i11501_2_lut (.A(cnt_150ms[0]), .B(cnt_150ms[2]), .Z(n12198)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11501_2_lut.init = 16'h8888;
    LUT4 i7_4_lut (.A(cnt_150ms[22]), .B(n6730), .C(cnt_150ms[6]), .D(cnt_150ms[1]), 
         .Z(n18)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i7_4_lut.init = 16'hfdff;
    LUT4 i3_4_lut_adj_44 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n6730)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_44.init = 16'hfffb;
    LUT4 i3_4_lut_adj_45 (.A(cnt_150ms[20]), .B(cnt_150ms[17]), .C(cnt_150ms[7]), 
         .D(n8704), .Z(n12131)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_45.init = 16'hfeff;
    LUT4 i2098_4_lut (.A(\state[2] ), .B(state_5__N_185[1]), .C(state_5__N_191[3]), 
         .D(state[1]), .Z(n2981)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2098_4_lut.init = 16'h3b0a;
    LUT4 i7784_2_lut (.A(cnt_150ms[18]), .B(cnt_150ms[9]), .Z(n8704)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7784_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_46 (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .C(cnt_150ms[13]), 
         .D(n12154), .Z(n6758)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_46.init = 16'hfeff;
    LUT4 i11458_3_lut (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .Z(n12154)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11458_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_adj_47 (.A(cnt_s4_num[13]), .B(cnt_s4_num[16]), .C(cnt_s4_num[15]), 
         .Z(n12002)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i2_3_lut_adj_47.init = 16'hfefe;
    LUT4 i2100_4_lut (.A(state[3]), .B(state_5__N_191[3]), .C(state_5__N_197[3]), 
         .D(\state[2] ), .Z(n2983)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2100_4_lut.init = 16'heca0;
    LUT4 i749_1_lut (.A(\state[4] ), .Z(n1510)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i749_1_lut.init = 16'h5555;
    LUT4 i909_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14605), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i909_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5_4_lut_adj_48 (.A(n9), .B(cnt_150ms[14]), .C(n12226), .D(cnt_150ms[6]), 
         .Z(state_5__N_197[3])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i5_4_lut_adj_48.init = 16'hffef;
    LUT4 i2093_2_lut_4_lut (.A(n12131), .B(n14413), .C(n14471), .D(state[0]), 
         .Z(n2976)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2093_2_lut_4_lut.init = 16'hfe00;
    LUT4 i1_4_lut_adj_49 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[1]), .Z(n11976)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_49.init = 16'ha088;
    LUT4 i12291_3_lut (.A(n11976), .B(n10977), .C(cnt_s2_num[5]), .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12291_3_lut.init = 16'hcaca;
    LUT4 i11528_4_lut (.A(n10798), .B(cnt_150ms[16]), .C(cnt_150ms[10]), 
         .D(cnt_150ms[15]), .Z(n12226)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11528_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_136 (.A(n14470), .B(cnt_150ms[5]), .C(n6758), .Z(n14413)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut_rep_136.init = 16'hfefe;
    LUT4 i3_2_lut_4_lut (.A(n14470), .B(cnt_150ms[5]), .C(n6758), .D(n12100), 
         .Z(n9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i3_2_lut_4_lut.init = 16'hfffe;
    LUT4 i12879_2_lut (.A(cnt_s2_num[5]), .B(cnt_s2_num[4]), .Z(n12256)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i12879_2_lut.init = 16'hbbbb;
    LUT4 i5_3_lut_rep_193 (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[1]), 
         .Z(n14470)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_3_lut_rep_193.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[1]), 
         .D(n10798), .Z(n5)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_194 (.A(n6730), .B(cnt_150ms[6]), .Z(n14471)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_194.init = 16'hbbbb;
    LUT4 i2_3_lut_rep_120_4_lut (.A(n6730), .B(cnt_150ms[6]), .C(n14413), 
         .D(n12131), .Z(n14397)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_3_lut_rep_120_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_118_3_lut_4_lut (.A(cnt_s4_num[3]), .B(n14616), .C(n14588), 
         .D(n12108), .Z(n14395)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_118_3_lut_4_lut.init = 16'hfff8;
    LUT4 i3_4_lut_adj_50 (.A(cnt_s4_num[14]), .B(cnt_s4_num[12]), .C(cnt_s4_num[17]), 
         .D(n12027), .Z(cnt_s4_num_done_N_285)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_50.init = 16'h8000;
    LUT4 i1_4_lut_adj_51 (.A(n7_adj_816), .B(cnt_s4_num[11]), .C(n8), 
         .D(cnt_s4_num[3]), .Z(n12027)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_51.init = 16'h0400;
    LUT4 i3_3_lut (.A(n12126), .B(n12002), .C(cnt_s4_num[10]), .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i18_3_lut_4_lut_4_lut (.A(cnt_s4_num[3]), .B(n14616), .C(cnt_s4_num[0]), 
         .D(n15852), .Z(n5_adj_810)) /* synthesis lut_function=(A (B+(D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i18_3_lut_4_lut_4_lut.init = 16'hfad8;
    LUT4 i2102_4_lut (.A(\state[4] ), .B(state_5__N_197[3]), .C(state_5__N_203[5]), 
         .D(state[3]), .Z(n2985)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2102_4_lut.init = 16'h3b0a;
    LUT4 i746_1_lut_rep_309 (.A(\state[2] ), .Z(n14586)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i746_1_lut_rep_309.init = 16'h5555;
    LUT4 i7352_4_lut (.A(n15852), .B(\state[4] ), .C(n84), .D(n8925), 
         .Z(init_data_8__N_242[1])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7352_4_lut.init = 16'hccc8;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10764), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i2031_2_lut_3_lut_3_lut (.A(\state[2] ), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2031_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i747_2_lut_rep_233_2_lut (.A(\state[2] ), .B(wr_done), .Z(sys_clk_50MHz_enable_25)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i747_2_lut_rep_233_2_lut.init = 16'hdddd;
    LUT4 i2_2_lut_rep_201_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14478)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_201_3_lut_4_lut.init = 16'hfbff;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(n14596), 
         .D(cnt_s2_num[4]), .Z(n10977)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i6070_1_lut (.A(debug_led1_c_5), .Z(n6998)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6070_1_lut.init = 16'h5555;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10759), .COUT(n10760), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_339 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n14616)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_339.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[3]), .Z(n8925)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n12055)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .D(n15852), .Z(n5_adj_808)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'haaa2;
    LUT4 mux_298_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_298_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 cnt_s2_num_5__bdd_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[4]), .Z(n14342)) /* synthesis lut_function=(!((B (C (D))+!B (D))+!A)) */ ;
    defparam cnt_s2_num_5__bdd_4_lut_4_lut.init = 16'h08aa;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11920)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10763), .COUT(n10764), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_311 (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), .Z(n14588)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_311.init = 16'heeee;
    LUT4 i890_2_lut_rep_328 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14605)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i890_2_lut_rep_328.init = 16'h8888;
    LUT4 i897_2_lut_rep_259_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14536)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i897_2_lut_rep_259_3_lut.init = 16'h8080;
    LUT4 i895_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i895_2_lut_3_lut.init = 16'h7878;
    LUT4 i904_2_lut_rep_169_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n14446)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i904_2_lut_rep_169_3_lut_4_lut.init = 16'h8000;
    LUT4 i902_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i902_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_52 (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), 
         .C(n13862), .D(n12108), .Z(n20_adj_812)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_52.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_53 (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), 
         .C(n11), .D(n12108), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_53.init = 16'hfffe;
    LUT4 i12904_2_lut_rep_117_3_lut_4_lut (.A(cnt_s4_num[10]), .B(cnt_s4_num[14]), 
         .C(cnt_s4_num[1]), .D(n12108), .Z(n14394)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12904_2_lut_rep_117_3_lut_4_lut.init = 16'h0001;
    CCU2D cnt_150ms_719_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10784), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10783), .COUT(n10784), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_21.INJECT1_1 = "NO";
    PFUMX i13697 (.BLUT(n14658), .ALUT(n14659), .C0(cnt_s2_num[2]), .Z(n14660));
    PFUMX i12206 (.BLUT(n10828), .ALUT(n30_adj_817), .C0(cnt_s2_num[4]), 
          .Z(n12905));
    CCU2D cnt_150ms_719_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10782), .COUT(n10783), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10781), .COUT(n10782), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_17.INJECT1_1 = "NO";
    LUT4 mux_298_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_817)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_298_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7337_2_lut_rep_202_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n14479)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7337_2_lut_rep_202_2_lut.init = 16'h4444;
    LUT4 mux_298_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_298_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 cnt_s2_num_5__bdd_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n14341)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;
    defparam cnt_s2_num_5__bdd_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n10827)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    L6MUX21 i13651 (.D0(n14343), .D1(n14340), .SD(cnt_s2_num[3]), .Z(n14344));
    PFUMX i13649 (.BLUT(n14342), .ALUT(n14341), .C0(cnt_s2_num[5]), .Z(n14343));
    PFUMX i13645 (.BLUT(n14339), .ALUT(n14338), .C0(cnt_s2_num[0]), .Z(n14340));
    CCU2D cnt_150ms_719_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10780), .COUT(n10781), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_3_lut_3_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[1]), .C(cnt_s4_num[2]), 
         .Z(n7_adj_816)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i2_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[2]), .C(n14395), 
         .D(n14394), .Z(n73)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i1_4_lut_4_lut.init = 16'h5540;
    LUT4 i30_4_lut_4_lut (.A(cnt_s4_num[0]), .B(n69), .C(n14588), .D(n12108), 
         .Z(n6571)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i30_4_lut_4_lut.init = 16'h0008;
    LUT4 n3027_bdd_4_lut (.A(n14479), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n14120)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n3027_bdd_4_lut.init = 16'h31cf;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(n15852), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n14729)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'haaba;
    LUT4 i268_2_lut (.A(state_5__N_203[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i268_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_54 (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n86)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_54.init = 16'h00d1;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n88)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h080b;
    LUT4 i7372_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12920), .Z(init_data_8__N_251[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7372_2_lut_2_lut.init = 16'h4444;
    LUT4 n14121_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n14120), 
         .D(n14660), .Z(n14390)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n14121_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7361_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n14344), .Z(init_data_8__N_251[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7361_2_lut_2_lut.init = 16'h4444;
    FD1S3IX cnt_150ms_719__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i1.GSR = "ENABLED";
    PFUMX i13745 (.BLUT(n14729), .ALUT(n14730), .C0(cnt_s4_num[3]), .Z(n14731));
    CCU2D cnt_150ms_719_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10779), .COUT(n10780), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10778), .COUT(n10779), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10777), .COUT(n10778), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10776), .COUT(n10777), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_7.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10756), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10758), .COUT(n10759), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10775), .COUT(n10776), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10774), .COUT(n10775), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_719_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_719_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10774), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_719_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_719_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_719_add_4_1.INJECT1_1 = "NO";
    L6MUX21 i12208 (.D0(n12905), .D1(n12906), .SD(cnt_s2_num[5]), .Z(n12907));
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10761), .COUT(n10762), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    L6MUX21 i12221 (.D0(n12918), .D1(n12919), .SD(cnt_s2_num[5]), .Z(n12920));
    FD1S3AY state_FSM_i6 (.D(n2976), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n2979), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2981), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2983), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2985), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_719__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_719__i0.GSR = "ENABLED";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10760), .COUT(n10761), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
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
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
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
            .PLLADDR4(GND_net), .CLKOP(sys_clk_50MHz)) /* synthesis FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=82 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(78[5] 82[2])
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
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (\ascii_num[2] , \ascii_num[3] , GND_net, \ascii_num[4] , 
            cnt_rom_prepare, sys_clk_c, wr_done, length_num_flag, show_char_data, 
            \ascii_num[0] , \ascii_num[1] , \state[1] , debug_led2_c_3, 
            \state_3__N_379[1] , \state[2] , \end_x_8__N_297[5] , sys_clk_c_enable_43, 
            n8797, \end_y_8__N_315[5] , \end_x_8__N_297[4] , \end_y_8__N_315[4] , 
            \end_x_8__N_297[3] , \end_x_8__N_297[6] , \end_x_8__N_297[7] , 
            \ascii_num[6] ) /* synthesis syn_module_defined=1 */ ;
    input \ascii_num[2] ;
    input \ascii_num[3] ;
    input GND_net;
    input \ascii_num[4] ;
    output [2:0]cnt_rom_prepare;
    input sys_clk_c;
    input wr_done;
    output length_num_flag;
    output [8:0]show_char_data;
    input \ascii_num[0] ;
    input \ascii_num[1] ;
    output \state[1] ;
    output debug_led2_c_3;
    input \state_3__N_379[1] ;
    output \state[2] ;
    input \end_x_8__N_297[5] ;
    input sys_clk_c_enable_43;
    output n8797;
    input \end_y_8__N_315[5] ;
    input \end_x_8__N_297[4] ;
    input \end_y_8__N_315[4] ;
    input \end_x_8__N_297[3] ;
    input \end_x_8__N_297[6] ;
    input \end_x_8__N_297[7] ;
    input \ascii_num[6] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n10771;
    wire [7:0]n2_adj_806;
    
    wire n10772;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire n8913, n14538, n1403, n14555, the1_wr_done;
    wire [3:0]state_3__N_383;
    
    wire state1_finish_flag_N_469;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_c_enable_26;
    wire [7:0]temp_7__N_356;
    
    wire length_num_flag_N_471, sys_clk_c_enable_52;
    wire [8:0]show_char_data_8__N_286;
    wire [2:0]n12;
    
    wire n14467;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_449;
    wire [5:0]n21;
    
    wire sys_clk_c_enable_54;
    wire [11:0]rom_addr_11__N_398;
    
    wire n15878, n14644, n14645, n125, state1_finish_flag_N_470, sys_clk_c_enable_25, 
        n1380, sys_clk_c_enable_44, n7001;
    wire [15:0]n2;
    
    wire n6_adj_787, n743, n8698, n12044;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n355;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2986, n2989, cnt_length_num_4__N_440, n2991;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n7000, n10769, n1, n14485, n14472, n6111, n14573, n6123, 
        n891, n13614, n14442, n6056;
    wire [8:0]show_char_data_8__N_459;
    
    wire n12346, n10768, n2652, n14402, n2621, n13, n12206, n10767, 
        n14398;
    wire [4:0]n25;
    
    wire n7_adj_788, n259, n14469;
    wire [5:0]n427;
    
    wire sys_clk_c_enable_41, n14414, n14560, n14415, n12060, n7348, 
        n1241, n14585, n14561, n6120, n14593, n12085, n189, n14427, 
        n11192, n10766, n14562, n6071, n14584, n14619, n40, n4_adj_789, 
        n119;
    wire [2:0]n137;
    
    wire n14484, n1341, n1405, n14468, n12010, n6058, n14572, 
        n8_adj_791, n12188, n14553, n12192, n13749, n14542, n15856, 
        n12369, n14544, n12088, n14434, n14047, n14406, n14571, 
        n13726, n270, n14525, n12902, n14473, n14456, n14081, 
        n14411, n14426, n1851, n1834, n6851, n14076, n1529, n14610, 
        n12382, n14450, n14408, n14437, n12398, n14475, n4_adj_792, 
        n14432, n14452, n14403, n14419, n14521, n14522, n2141, 
        n308, n301, n317, n859, n12023, n1172, n2025, n12579, 
        n603, n14435, n12190, n12884, n15854, n94, n1723, n14589, 
        n12075, n14600, n1436, n78, n94_adj_793, n1148, n1101, 
        n1149, n14461, n14539, n1148_adj_794, n12186, n13850, n14489, 
        n14497, n126, n14591, n14431, n2428, n796, n14496, n828, 
        n2684, n14480, n508, n4_adj_795, n14447, n380, n12047, 
        n5948, n158, n892, n11068, n1534, n875, n13641, n12298, 
        n1069, n14540, n1084, n723, n1565, n14624, n13996, n14425, 
        n46, n62, n14493, n14429, n14032, n14535, n158_adj_796, 
        n1275, n13608, n13607, n15851, n14612, n14457, n1851_adj_797, 
        n14494, n14436, n3601, n46_adj_798, n62_adj_799, n14441, 
        n14443, n2555, n14546, n6832, n6630, n14629, n14404, n2332, 
        n2364, n14506, n11008, n509, n1483, n14410, n1530, n14420, 
        n379, n380_adj_800, n5199, n14515, n828_adj_801, n1661, 
        n13750, n6794, n4415, n1467, n14422, n3479, n12736, n12739, 
        n510, n127, n12594, n14430, n1565_adj_802, n2395, n1596, 
        n2300, n11066, n1643, n1530_adj_803, n14391, n12711, n4094, 
        n12053, n12658, n4094_adj_804, n3069, n12661, n4094_adj_805, 
        n10773;
    
    CCU2D add_2012_4 (.A0(\ascii_num[2] ), .B0(\ascii_num[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[3] ), .B1(\ascii_num[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n10771), .COUT(n10772), .S0(n2_adj_806[3]), 
          .S1(n2_adj_806[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2012_4.INIT0 = 16'h5666;
    defparam add_2012_4.INIT1 = 16'h5666;
    defparam add_2012_4.INJECT1_0 = "NO";
    defparam add_2012_4.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8913), 
         .C(rom_addr[4]), .D(n14538), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i1_2_lut_rep_278 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14555)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_278.init = 16'hbbbb;
    FD1S3AX the1_wr_done_179 (.D(wr_done), .CK(sys_clk_c), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_179.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_181 (.D(state1_finish_flag_N_469), .CK(sys_clk_c), 
            .Q(state_3__N_383[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_181.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_356[0]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_185 (.D(length_num_flag_N_471), .CK(sys_clk_c), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_185.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_286[0]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_c), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    CCU2D add_2012_2 (.A0(\ascii_num[0] ), .B0(\ascii_num[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[1] ), .B1(\ascii_num[2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n10771), .S1(n2_adj_806[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2012_2.INIT0 = 16'h7000;
    defparam add_2012_2.INIT1 = 16'h5666;
    defparam add_2012_2.INJECT1_0 = "NO";
    defparam add_2012_2.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_190_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14467)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_190_3_lut.init = 16'hbfbf;
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_c), .CD(cnt_wr_color_data_5__N_449), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    LUT4 i12792_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_54)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12792_2_lut_3_lut.init = 16'h0404;
    FD1P3AX rom_addr_i0_i1_rep_360 (.D(rom_addr_11__N_398[1]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(n15878)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1_rep_360.GSR = "ENABLED";
    PFUMX i13688 (.BLUT(n14644), .ALUT(n14645), .C0(rom_addr[3]), .Z(n125));
    LUT4 state1_finish_flag_I_0_2_lut (.A(state1_finish_flag_N_470), .B(the1_wr_done), 
         .Z(state1_finish_flag_N_469)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    FD1P3AX temp_i6 (.D(temp_7__N_356[6]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_356[5]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_356[4]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_356[3]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_356[2]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_356[1]), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 i28_2_lut_rep_318 (.A(\state[1] ), .B(the1_wr_done), .Z(sys_clk_c_enable_25)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i28_2_lut_rep_318.init = 16'h8888;
    LUT4 i12807_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1380), .D(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_26)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12807_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 temp_7__N_434_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(debug_led2_c_3), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_449)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_434_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_2_lut_3_lut (.A(\state[1] ), .B(the1_wr_done), .C(state_3__N_383[2]), 
         .Z(sys_clk_c_enable_44)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6073_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1380), .D(cnt_rom_prepare[1]), .Z(n7001)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6073_2_lut_3_lut_4_lut.init = 16'h0b0f;
    FD1P3IX cnt_set_windows_FSM_i15 (.D(n2[14]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i14 (.D(n2[13]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i13 (.D(n2[12]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i12 (.D(n2[11]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i12.GSR = "ENABLED";
    LUT4 i12832_4_lut (.A(n2[15]), .B(n2[11]), .C(n2[13]), .D(n6_adj_787), 
         .Z(n743)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12832_4_lut.init = 16'h0001;
    FD1P3IX cnt_set_windows_FSM_i11 (.D(state1_finish_flag_N_470), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i10 (.D(n2[9]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(state1_finish_flag_N_470));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i9 (.D(n2[8]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i9.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n2[12]), .B(n2[14]), .Z(n6_adj_787)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX cnt_set_windows_FSM_i8 (.D(n2[7]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i7 (.D(n2[6]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i6 (.D(n2[5]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n8698), .B(n12044), .C(cnt_length_num[3]), .D(cnt_length_num[2]), 
         .Z(n355)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0c4c;
    FD1P3IX cnt_set_windows_FSM_i5 (.D(n2[4]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i4 (.D(n2[3]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i3 (.D(n2[2]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i2 (.D(n2[1]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i1 (.D(n2[0]), .SP(sys_clk_c_enable_25), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i1.GSR = "ENABLED";
    LUT4 i7778_2_lut (.A(rom_addr_11__N_398[0]), .B(rom_addr_11__N_398[1]), 
         .Z(n8698)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7778_2_lut.init = 16'h8888;
    LUT4 i2103_2_lut (.A(state[0]), .B(\state_3__N_379[1] ), .Z(n2986)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2103_2_lut.init = 16'h2222;
    LUT4 i2106_4_lut (.A(\state[1] ), .B(\state_3__N_379[1] ), .C(state_3__N_383[2]), 
         .D(state[0]), .Z(n2989)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2106_4_lut.init = 16'hce0a;
    LUT4 i2108_4_lut (.A(\state[2] ), .B(state_3__N_383[2]), .C(cnt_length_num_4__N_440), 
         .D(\state[1] ), .Z(n2991)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2108_4_lut.init = 16'hce0a;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_c_enable_26), .CD(n7001), 
            .CK(sys_clk_c), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1S3IX state_FSM_i1 (.D(cnt_length_num_4__N_440), .CK(sys_clk_c), .CD(n7000), 
            .Q(debug_led2_c_3));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(rom_addr_11__N_398[11]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    CCU2D mult_33_add_1_add_2_10 (.A0(n1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10769), .S0(rom_addr_11__N_398[10]), .S1(rom_addr_11__N_398[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_33_add_1_add_2_10.INIT0 = 16'h5aaa;
    defparam mult_33_add_1_add_2_10.INIT1 = 16'h0000;
    defparam mult_33_add_1_add_2_10.INJECT1_0 = "NO";
    defparam mult_33_add_1_add_2_10.INJECT1_1 = "NO";
    LUT4 i5203_3_lut_4_lut (.A(n2[5]), .B(n14485), .C(n14472), .D(n2[9]), 
         .Z(n6111)) /* synthesis lut_function=(A ((D)+!C)+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i5203_3_lut_4_lut.init = 16'hff0b;
    LUT4 i1_3_lut_4_lut (.A(n2[5]), .B(n14485), .C(n14573), .D(\end_x_8__N_297[5] ), 
         .Z(n6123)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut.init = 16'hfbbb;
    LUT4 i7487_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7487_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 n2203_bdd_2_lut_13083_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13614)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n2203_bdd_2_lut_13083_4_lut_4_lut_4_lut.init = 16'h0151;
    LUT4 i7363_2_lut_rep_165_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n14442)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7363_2_lut_rep_165_4_lut_4_lut_4_lut.init = 16'h4001;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n6056), .ALUT(show_char_data_8__N_459[5]), 
          .C0(n12346), .Z(show_char_data_8__N_286[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;
    CCU2D mult_33_add_1_add_2_8 (.A0(n2_adj_806[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_806[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10768), .COUT(n10769), .S0(rom_addr_11__N_398[8]), 
          .S1(rom_addr_11__N_398[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_33_add_1_add_2_8.INIT0 = 16'h5aaa;
    defparam mult_33_add_1_add_2_8.INIT1 = 16'h5aaa;
    defparam mult_33_add_1_add_2_8.INJECT1_0 = "NO";
    defparam mult_33_add_1_add_2_8.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n14402), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i7_4_lut (.A(n13), .B(n12206), .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[5]), 
         .Z(length_num_flag_N_471)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i7_4_lut.init = 16'h0020;
    CCU2D mult_33_add_1_add_2_6 (.A0(n2_adj_806[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_806[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10767), .COUT(n10768), .S0(rom_addr_11__N_398[6]), 
          .S1(rom_addr_11__N_398[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_33_add_1_add_2_6.INIT0 = 16'h5aaa;
    defparam mult_33_add_1_add_2_6.INIT1 = 16'h5aaa;
    defparam mult_33_add_1_add_2_6.INJECT1_0 = "NO";
    defparam mult_33_add_1_add_2_6.INJECT1_1 = "NO";
    LUT4 i10049_3_lut_4_lut (.A(cnt_length_num[2]), .B(n14398), .C(cnt_length_num[3]), 
         .D(cnt_length_num[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10049_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX rom_addr_i0_i10 (.D(rom_addr_11__N_398[10]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(rom_addr_11__N_398[9]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    LUT4 i6072_1_lut (.A(\state[2] ), .Z(n7000)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6072_1_lut.init = 16'h5555;
    LUT4 i2028_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_c_enable_43), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2028_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(n7_adj_788), .B(n12044), .C(rom_addr_11__N_398[1]), 
         .D(cnt_length_num[2]), .Z(cnt_length_num_4__N_440)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_2_lut (.A(cnt_length_num[3]), .B(rom_addr_11__N_398[0]), .Z(n7_adj_788)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_23 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(n12044)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_23.init = 16'h2222;
    FD1P3AX rom_addr_i0_i8 (.D(rom_addr_11__N_398[8]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    LUT4 i2030_2_lut_4_lut (.A(debug_led2_c_3), .B(n259), .C(n14467), 
         .D(cnt_wr_color_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2030_2_lut_4_lut.init = 16'h10ef;
    LUT4 i988_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14469), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n427[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i988_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_rep_135_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), .C(n259), 
         .D(debug_led2_c_3), .Z(sys_clk_c_enable_41)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_135_4_lut.init = 16'hfff2;
    LUT4 i10022_2_lut_rep_137 (.A(n355), .B(rom_addr_11__N_398[0]), .Z(n14414)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10022_2_lut_rep_137.init = 16'h8888;
    FD1P3AX rom_addr_i0_i7 (.D(rom_addr_11__N_398[7]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_356[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i962_2_lut_rep_283 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14560)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i962_2_lut_rep_283.init = 16'h8888;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_356[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10028_2_lut_3_lut (.A(n355), .B(rom_addr_11__N_398[0]), .C(rom_addr_11__N_398[1]), 
         .Z(n25[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10028_2_lut_3_lut.init = 16'h7878;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_356[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10031_2_lut_rep_121_3_lut (.A(n355), .B(rom_addr_11__N_398[0]), 
         .C(rom_addr_11__N_398[1]), .Z(n14398)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10031_2_lut_rep_121_3_lut.init = 16'h8080;
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_11__N_398[6]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_356[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_356[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10035_2_lut_3_lut_4_lut (.A(n355), .B(rom_addr_11__N_398[0]), 
         .C(cnt_length_num[2]), .D(rom_addr_11__N_398[1]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10035_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i598_2_lut_rep_138 (.A(state1_finish_flag_N_470), .B(n743), .Z(n14415)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i598_2_lut_rep_138.init = 16'hbbbb;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_356[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6419_4_lut_4_lut (.A(state1_finish_flag_N_470), .B(n743), .C(n2[9]), 
         .D(n12060), .Z(n7348)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i6419_4_lut_4_lut.init = 16'hccc8;
    LUT4 i12814_2_lut_3_lut (.A(state1_finish_flag_N_470), .B(n743), .C(\state[1] ), 
         .Z(n12346)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12814_2_lut_3_lut.init = 16'hbfbf;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14555), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_356[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_24 (.A(n2[9]), .B(n2[7]), .Z(n1241)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_adj_24.init = 16'heeee;
    LUT4 i1_2_lut_rep_308 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14585)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_308.init = 16'h8888;
    LUT4 i10042_2_lut_3_lut_4_lut (.A(rom_addr_11__N_398[1]), .B(n14414), 
         .C(cnt_length_num[3]), .D(cnt_length_num[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10042_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i981_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14560), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n427[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i981_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7876_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8797)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7876_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_25 (.A(n14561), .B(n2[7]), .C(n2[5]), .D(n6120), 
         .Z(n12060)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_25.init = 16'h2220;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(n14593), 
         .D(rom_addr[3]), .Z(n12085)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i10020_2_lut (.A(n355), .B(rom_addr_11__N_398[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i10020_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_26 (.A(rom_addr[5]), .B(n189), .C(n14427), .D(rom_addr[7]), 
         .Z(n11192)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    defparam i1_4_lut_adj_26.init = 16'ha088;
    LUT4 i1_2_lut_adj_27 (.A(\state[2] ), .B(\state[1] ), .Z(sys_clk_c_enable_52)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_27.init = 16'heeee;
    CCU2D mult_33_add_1_add_2_4 (.A0(n2_adj_806[2]), .B0(cnt_length_num[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_806[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n10766), .COUT(n10767), .S0(rom_addr_11__N_398[4]), 
          .S1(rom_addr_11__N_398[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_33_add_1_add_2_4.INIT0 = 16'h5666;
    defparam mult_33_add_1_add_2_4.INIT1 = 16'h5aaa;
    defparam mult_33_add_1_add_2_4.INJECT1_0 = "NO";
    defparam mult_33_add_1_add_2_4.INJECT1_1 = "NO";
    CCU2D mult_33_add_1_add_2_2 (.A0(\ascii_num[0] ), .B0(cnt_length_num[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_806[1]), .B1(cnt_length_num[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n10766), .S1(rom_addr_11__N_398[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_33_add_1_add_2_2.INIT0 = 16'h7000;
    defparam mult_33_add_1_add_2_2.INIT1 = 16'h5666;
    defparam mult_33_add_1_add_2_2.INJECT1_0 = "NO";
    defparam mult_33_add_1_add_2_2.INJECT1_1 = "NO";
    LUT4 i969_2_lut_rep_192_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14469)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i969_2_lut_rep_192_3_lut.init = 16'h8080;
    LUT4 i10092_2_lut (.A(\ascii_num[0] ), .B(\ascii_num[1] ), .Z(n2_adj_806[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10092_2_lut.init = 16'h6666;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n14562), .B(n6071), .C(\state[1] ), 
         .D(n14415), .Z(show_char_data_8__N_286[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_28 (.A(n2[5]), .B(n2[9]), .C(n14472), .D(n2[4]), 
         .Z(n6071)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_28.init = 16'hcfce;
    LUT4 i5150_4_lut (.A(n6123), .B(\end_y_8__N_315[5] ), .C(n1241), .D(n14561), 
         .Z(n6056)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5150_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_29 (.A(rom_addr[5]), .B(n14584), .C(n14619), 
         .D(rom_addr[0]), .Z(n40)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_29.init = 16'h1000;
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_11__N_398[5]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    LUT4 i10091_2_lut (.A(\ascii_num[0] ), .B(cnt_length_num[2]), .Z(rom_addr_11__N_398[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10091_2_lut.init = 16'h6666;
    LUT4 i967_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n427[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i967_2_lut_3_lut.init = 16'h7878;
    LUT4 i974_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n427[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i974_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i12888_2_lut_rep_284 (.A(n2[6]), .B(n2[8]), .Z(n14561)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12888_2_lut_rep_284.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(n2[6]), .B(n2[8]), .C(n14573), 
         .D(n2[5]), .Z(n4_adj_789)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'h0010;
    LUT4 i960_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n427[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i960_2_lut.init = 16'h6666;
    LUT4 i11507_2_lut_rep_195_3_lut (.A(n2[6]), .B(n2[8]), .C(n2[7]), 
         .Z(n14472)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11507_2_lut_rep_195_3_lut.init = 16'hfefe;
    LUT4 i132_2_lut_3_lut_4_lut (.A(n2[6]), .B(n2[8]), .C(n2[9]), .D(n2[7]), 
         .Z(n119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i132_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i945_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n137[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i945_3_lut.init = 16'h6a6a;
    LUT4 i938_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n137[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i938_2_lut.init = 16'h6666;
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_11__N_398[4]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    LUT4 i154_2_lut_rep_285 (.A(\state[2] ), .B(temp[0]), .Z(n14562)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i154_2_lut_rep_285.init = 16'h2222;
    LUT4 i1_2_lut_rep_207_3_lut (.A(\state[2] ), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n14484)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i1_2_lut_rep_207_3_lut.init = 16'h2f2f;
    PFUMX i7247 (.BLUT(n1341), .ALUT(n40), .C0(rom_addr[6]), .Z(n1405));
    LUT4 i3_4_lut (.A(\state[1] ), .B(n14415), .C(n14468), .D(n119), 
         .Z(n12010)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 i5_4_lut (.A(\state[2] ), .B(cnt_wr_color_data[0]), .C(cnt_wr_color_data[1]), 
         .D(the1_wr_done), .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14484), .B(n6058), .C(\state[1] ), 
         .D(n14415), .Z(show_char_data_8__N_286[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i5152_4_lut (.A(\end_x_8__N_297[4] ), .B(\end_y_8__N_315[4] ), 
         .C(n1241), .D(n4_adj_789), .Z(n6058)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5152_4_lut.init = 16'hcac0;
    LUT4 i5212_3_lut (.A(n14572), .B(\end_x_8__N_297[3] ), .C(n14573), 
         .Z(n6120)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5212_3_lut.init = 16'hc5c5;
    LUT4 show_char_data_8__I_0_i3_4_lut (.A(n14562), .B(n743), .C(\state[1] ), 
         .D(n8_adj_791), .Z(show_char_data_8__N_286[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i3_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_31 (.A(n12188), .B(state1_finish_flag_N_470), .C(n2[4]), 
         .D(n14472), .Z(n8_adj_791)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_4_lut_adj_31.init = 16'hccdc;
    LUT4 i11492_2_lut (.A(n2[9]), .B(n2[5]), .Z(n12188)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11492_2_lut.init = 16'heeee;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14562), .B(n6111), .C(\state[1] ), 
         .D(n14415), .Z(show_char_data_8__N_286[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 n1627_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(n14553), 
         .D(n12192), .Z(n13749)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1627_bdd_4_lut_4_lut.init = 16'h0400;
    LUT4 i11670_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14542), .C(rom_addr[4]), 
         .D(n15856), .Z(n12369)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11670_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(n14544), .D(rom_addr[5]), .Z(n12088)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 n3022_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15856), .C(rom_addr[4]), 
         .D(n14434), .Z(n14047)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n3022_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 i7653_2_lut_rep_129_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14406)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7653_2_lut_rep_129_3_lut_4_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 n12542_bdd_3_lut_13163_3_lut_3_lut (.A(rom_addr[3]), .B(n14571), 
         .C(rom_addr[4]), .Z(n13726)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12542_bdd_3_lut_13163_3_lut_3_lut.init = 16'h0404;
    LUT4 i12383_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14525), .Z(n12902)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12383_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n506_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14473), 
         .D(n14456), .Z(n14081)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n506_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14411), .D(n14426), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n6851_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1834), 
         .D(n6851), .Z(n14076)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n6851_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 i11683_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n14610), .Z(n12382)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11683_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7428_2_lut_rep_173_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14450)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7428_2_lut_rep_173_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 i11699_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14408), 
         .D(n14437), .Z(n12398)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11699_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5973_2_lut_rep_198_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14475)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5973_2_lut_rep_198_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i1_3_lut_4_lut_adj_32 (.A(n2[4]), .B(n14572), .C(n2[5]), .D(n14561), 
         .Z(n4_adj_792)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut_adj_32.init = 16'h0eff;
    LUT4 i12896_3_lut_rep_155_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n15878), 
         .C(n14585), .D(rom_addr[5]), .Z(n14432)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12896_3_lut_rep_155_4_lut_4_lut_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut_rep_175_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(n15878), .Z(n14452)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_175_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14544), 
         .C(rom_addr[5]), .D(rom_addr[1]), .Z(n14403)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_126_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n15878), .D(rom_addr[2]), .Z(n14419)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_244_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n14521)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_244_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14522), .D(n14456), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i7699_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n859)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7699_3_lut_4_lut_4_lut.init = 16'h888c;
    LUT4 i3_4_lut_adj_33 (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[4]), .D(n12023), .Z(n1380)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_33.init = 16'hfffb;
    LUT4 i11880_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12579)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11880_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_4_lut_adj_34 (.A(n259), .B(cnt_wr_color_data[3]), .C(cnt_wr_color_data[2]), 
         .D(cnt_wr_color_data[1]), .Z(n12023)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_34.init = 16'hddd5;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n14456), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_158_3_lut_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n14435)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_158_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\state[1] ), .B(\end_x_8__N_297[6] ), 
         .C(n12010), .D(n14484), .Z(show_char_data_8__N_286[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd5c0;
    LUT4 i12185_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n12190), .C(rom_addr[4]), 
         .D(n15856), .Z(n12884)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12185_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14434), .D(n15854), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_3_lut_4_lut_4_lut_adj_35 (.A(\state[1] ), .B(\end_x_8__N_297[7] ), 
         .C(n12010), .D(n14484), .Z(show_char_data_8__N_286[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_4_lut_adj_35.init = 16'hd5c0;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n14610), .C(rom_addr[4]), .D(n14538), .Z(n1723)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14589), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n12075)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i1_4_lut_4_lut (.A(\state[1] ), .B(n4_adj_792), .C(n1241), .D(n14415), 
         .Z(show_char_data_8__N_286[8])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_4_lut_4_lut.init = 16'h55fd;
    LUT4 i7960_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n14600), .D(rom_addr[4]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7960_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n78), 
         .C(rom_addr[4]), .D(n14610), .Z(n94_adj_793)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n1148), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i7567_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14461), 
         .D(n14539), .Z(n1148_adj_794)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7567_4_lut_4_lut.init = 16'h5140;
    LUT4 i11490_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n12186)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11490_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_342 (.A(rom_addr[3]), .B(n15878), .Z(n14619)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_342.init = 16'h4444;
    LUT4 n29_bdd_3_lut_13553_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13850)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n29_bdd_3_lut_13553_4_lut_4_lut_4_lut.init = 16'h4033;
    LUT4 i5151_3_lut_4_lut_4_lut (.A(\state[1] ), .B(n743), .C(n14562), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_459[5])) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i5151_3_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i1_3_lut_4_lut_3_lut (.A(\state[1] ), .B(n7348), .C(n14484), 
         .Z(show_char_data_8__N_286[3])) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_3_lut.init = 16'hd8d8;
    LUT4 i2_3_lut_rep_295 (.A(n2[2]), .B(n2[1]), .C(n2[3]), .Z(n14572)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_295.init = 16'hfefe;
    LUT4 i1_2_lut_rep_208_4_lut (.A(n2[2]), .B(n2[1]), .C(n2[3]), .D(n2[4]), 
         .Z(n14485)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_208_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_296 (.A(n2[2]), .B(n2[4]), .C(n2[3]), .Z(n14573)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_rep_296.init = 16'hcece;
    LUT4 i1_2_lut_rep_191_4_lut (.A(n2[2]), .B(n2[4]), .C(n2[3]), .D(n2[5]), 
         .Z(n14468)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_rep_191_4_lut.init = 16'h00ce;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n14489), 
         .C(n14497), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 i67_2_lut (.A(\state[2] ), .B(the1_wr_done), .Z(n259)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[13:56])
    defparam i67_2_lut.init = 16'h8888;
    LUT4 i2239_1_lut_rep_314 (.A(rom_addr[5]), .Z(n14591)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2239_1_lut_rep_314.init = 16'h5555;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n14431), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14496), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_5_i508_3_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n2684), 
         .C(n14480), .D(n14544), .Z(n508)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i508_3_lut_4_lut_4_lut.init = 16'he444;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_795), 
         .C(rom_addr[4]), .D(n14447), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n12047), 
         .C(n5948), .D(n158), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7758_3_lut_3_lut (.A(rom_addr[6]), .B(n11068), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7758_3_lut_3_lut.init = 16'h0202;
    LUT4 n875_bdd_3_lut_13139_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n875), 
         .Z(n13641)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n875_bdd_3_lut_13139_3_lut.init = 16'h2020;
    LUT4 i12855_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n12298)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12855_3_lut_3_lut.init = 16'hfbfb;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14540), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i7688_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n723), .C(rom_addr[3]), 
         .D(n14538), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7688_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 n1643_bdd_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14624), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13996)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1643_bdd_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n14425), 
         .C(rom_addr[0]), .D(n46), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 n1403_bdd_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14493), 
         .D(n14429), .Z(n14032)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1403_bdd_4_lut_4_lut.init = 16'h5410;
    LUT4 i7555_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14525), .C(rom_addr[3]), 
         .D(n14535), .Z(n158_adj_796)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7555_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i7675_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n14538), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7675_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 n13608_bdd_4_lut (.A(n13608), .B(n13607), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n15851)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n13608_bdd_4_lut.init = 16'h00ca;
    LUT4 i7541_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14612), 
         .D(n14457), .Z(n1851_adj_797)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7541_4_lut_4_lut.init = 16'h5140;
    LUT4 i2718_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n14494), 
         .D(n14436), .Z(n3601)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2718_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_798), 
         .C(n14435), .D(rom_addr[1]), .Z(n62_adj_799)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut_4_lut (.A(rom_addr[4]), .B(n14441), 
         .C(rom_addr[5]), .D(n14443), .Z(n2555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i2555_4_lut_4_lut.init = 16'h4f40;
    LUT4 i5919_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14546), 
         .D(n14522), .Z(n6832)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5919_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_36 (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n6630)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_36.init = 16'h0040;
    LUT4 i1_2_lut_rep_127_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14629), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n14404)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_127_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n14434), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i11497_2_lut_rep_229_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14506)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11497_2_lut_rep_229_2_lut.init = 16'hdddd;
    LUT4 i7442_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14645)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7442_4_lut_4_lut_then_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_220_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .Z(n14497)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_220_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i7442_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14644)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7442_4_lut_4_lut_else_4_lut.init = 16'h0010;
    LUT4 i12630_3_lut_3_lut (.A(rom_addr[7]), .B(n11008), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12630_3_lut_3_lut.init = 16'he4e4;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1483), 
         .C(n14410), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i1_2_lut_rep_143_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14624), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14420)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_143_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14521), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_800)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n12047), 
         .C(n5199), .D(n14515), .Z(n828_adj_801)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 i12628_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n13750), .Z(n6794)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12628_3_lut_3_lut.init = 16'he4e4;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4415), 
         .C(n14410), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 i2596_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n14422), 
         .D(n14404), .Z(n3479)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2596_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i12040_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n12736), .Z(n12739)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12040_4_lut_4_lut.init = 16'h7340;
    LUT4 i11895_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12594)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11895_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_153_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14629), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14430)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_153_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_802), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i7413_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n14447), 
         .D(n14434), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7413_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i11509_2_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[4]), 
         .Z(n12206)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11509_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14629), 
         .C(n14584), .D(rom_addr[7]), .Z(n11066)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n14410), .D(rom_addr[0]), .Z(n1530_adj_803)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i7851_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14391), 
         .D(n12711), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7851_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7405_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n12053), 
         .D(n12658), .Z(n4094_adj_804)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7405_4_lut_4_lut.init = 16'h5140;
    LUT4 i7415_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12661), .Z(n4094_adj_805)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7415_4_lut_4_lut.init = 16'h5140;
    FD1S3IX cnt_length_num_720__i5 (.D(n25[4]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_720__i5.GSR = "ENABLED";
    FD1S3IX cnt_length_num_720__i4 (.D(n25[3]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_720__i4.GSR = "ENABLED";
    FD1S3IX cnt_length_num_720__i3 (.D(n25[2]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_720__i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_720__i2 (.D(n25[1]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(rom_addr_11__N_398[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_720__i2.GSR = "ENABLED";
    FD1S3JX state_FSM_i4 (.D(n2986), .CK(sys_clk_c), .PD(debug_led2_c_3), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    CCU2D add_2012_8 (.A0(\ascii_num[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10773), .S0(n2_adj_806[7]), .S1(n1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2012_8.INIT0 = 16'h5aaa;
    defparam add_2012_8.INIT1 = 16'h0000;
    defparam add_2012_8.INJECT1_0 = "NO";
    defparam add_2012_8.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i3 (.D(n2989), .CK(sys_clk_c), .Q(\state[1] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2991), .CK(sys_clk_c), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_11__N_398[3]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_720__i1 (.D(n25[0]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(rom_addr_11__N_398[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_720__i1.GSR = "ENABLED";
    CCU2D add_2012_6 (.A0(\ascii_num[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10772), .COUT(n10773), .S0(n2_adj_806[5]), 
          .S1(n2_adj_806[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2012_6.INIT0 = 16'h5aaa;
    defparam add_2012_6.INIT1 = 16'hfaaa;
    defparam add_2012_6.INJECT1_0 = "NO";
    defparam add_2012_6.INJECT1_1 = "NO";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_11__N_398[2]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n427[5]), .SP(sys_clk_c_enable_41), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n427[4]), .SP(sys_clk_c_enable_41), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n427[3]), .SP(sys_clk_c_enable_41), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n427[2]), .SP(sys_clk_c_enable_41), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n427[1]), .SP(sys_clk_c_enable_41), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n137[2]), .SP(sys_clk_c_enable_43), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n137[1]), .SP(sys_clk_c_enable_43), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3JX cnt_set_windows_FSM_i0 (.D(n2[15]), .SP(sys_clk_c_enable_44), 
            .PD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n2[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_286[8]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_286[7]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_286[6]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_286[5]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_286[4]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_286[3]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_286[2]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_286[1]), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_11__N_398[1]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_11__N_398[0]), .SP(sys_clk_c_enable_54), 
            .CK(sys_clk_c), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n15878(n15878), .n12711(n12711), 
            .n14406(n14406), .n14546(n14546), .n317(n317), .n14076(n14076), 
            .n1148(n1148_adj_794), .n14047(n14047), .n12382(n12382), .n14434(n14434), 
            .n158(n158_adj_796), .n14032(n14032), .n2141(n2141), .n12075(n12075), 
            .n1851(n1851_adj_797), .n1530(n1530), .n12398(n12398), .n828(n828_adj_801), 
            .n380(n380_adj_800), .n6832(n6832), .n14629(n14629), .n14402(n14402), 
            .n62(n62_adj_799), .n14408(n14408), .n1530_adj_1(n1530_adj_803), 
            .n14624(n14624), .n158_adj_2(n158), .n828_adj_3(n828), .n62_adj_4(n62), 
            .n1565(n1565_adj_802), .n4094(n4094), .rom_q({rom_q}), .n4094_adj_5(n4094_adj_805), 
            .n4094_adj_6(n4094_adj_804), .n12594(n12594), .n14493(n14493), 
            .n94(n94_adj_793), .n12085(n12085), .n46(n46), .n14497(n14497), 
            .n4(n4_adj_795), .n1101(n1101), .n12739(n12739), .n14584(n14584), 
            .n14432(n14432), .n875(n875), .n14431(n14431), .n14456(n14456), 
            .n14447(n14447), .n14461(n14461), .n1643(n1643), .n2395(n2395), 
            .n14436(n14436), .n14496(n14496), .n78(n78), .n12658(n12658), 
            .n12661(n12661), .n14450(n14450), .n14522(n14522), .n12047(n12047), 
            .n4415(n4415), .n14610(n14610), .n13608(n13608), .n15856(n15856), 
            .n1529(n1529), .n301(n301), .n14525(n14525), .n14540(n14540), 
            .n1483(n1483), .n8913(n8913), .n14081(n14081), .n15854(n15854), 
            .n14535(n14535), .n2332(n2332), .n12736(n12736), .n13996(n13996), 
            .n14542(n14542), .n14544(n14544), .n509(n509), .n510(n510), 
            .n6794(n6794), .n14452(n14452), .n14538(n14538), .n1275(n1275), 
            .n14480(n14480), .n14593(n14593), .n14612(n14612), .n2621(n2621), 
            .n14391(n14391), .n14410(n14410), .n2684(n2684), .n14553(n14553), 
            .n14600(n14600), .n14473(n14473), .n14426(n14426), .n1341(n1341), 
            .n14442(n14442), .n379(n379), .n1149(n1149), .n1834(n1834), 
            .n859(n859), .n6630(n6630), .n11008(n11008), .n892(n892), 
            .n14571(n14571), .n3069(n3069), .n14494(n14494), .n12369(n12369), 
            .n12053(n12053), .n12186(n12186), .n1596(n1596), .n2025(n2025), 
            .n2364(n2364), .n12298(n12298), .n189(n189), .n1467(n1467), 
            .n380_adj_7(n380), .n94_adj_8(n94), .n126(n126), .n127(n127), 
            .n891(n891), .n1661(n1661), .n2428(n2428), .n796(n796), 
            .n14411(n14411), .n2300(n2300), .n12192(n12192), .n11066(n11066), 
            .n11068(n11068), .n2555(n2555), .n603(n603), .n14475(n14475), 
            .n14425(n14425), .n14420(n14420), .n1069(n1069), .n12579(n12579), 
            .n1148_adj_9(n1148), .n14403(n14403), .n1851_adj_10(n1851), 
            .n14506(n14506), .n14591(n14591), .n12088(n12088), .n3601(n3601), 
            .n3479(n3479), .n14419(n14419), .n1534(n1534), .n723(n723), 
            .n5199(n5199), .n1565_adj_11(n1565), .n14429(n14429), .n14457(n14457), 
            .n15851(n15851), .n11192(n11192), .n14430(n14430), .n270(n270), 
            .n13607(n13607), .n14441(n14441), .n1403(n1403), .n12190(n12190), 
            .n13850(n13850), .n1436(n1436), .n14515(n14515), .n14589(n14589), 
            .n14422(n14422), .n5948(n5948), .n46_adj_12(n46_adj_798), 
            .n14427(n14427), .n14489(n14489), .n1723(n1723), .n308(n308), 
            .n14437(n14437), .n13749(n13749), .n13750(n13750), .n14443(n14443), 
            .n14539(n14539), .n125(n125), .n13726(n13726), .n1172(n1172), 
            .n1084(n1084), .n14585(n14585), .n14619(n14619), .n13641(n13641), 
            .n12884(n12884), .n12902(n12902), .n13614(n13614), .n6851(n6851)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n15878, n12711, n14406, n14546, n317, 
            n14076, n1148, n14047, n12382, n14434, n158, n14032, 
            n2141, n12075, n1851, n1530, n12398, n828, n380, n6832, 
            n14629, n14402, n62, n14408, n1530_adj_1, n14624, n158_adj_2, 
            n828_adj_3, n62_adj_4, n1565, n4094, rom_q, n4094_adj_5, 
            n4094_adj_6, n12594, n14493, n94, n12085, n46, n14497, 
            n4, n1101, n12739, n14584, n14432, n875, n14431, n14456, 
            n14447, n14461, n1643, n2395, n14436, n14496, n78, 
            n12658, n12661, n14450, n14522, n12047, n4415, n14610, 
            n13608, n15856, n1529, n301, n14525, n14540, n1483, 
            n8913, n14081, n15854, n14535, n2332, n12736, n13996, 
            n14542, n14544, n509, n510, n6794, n14452, n14538, 
            n1275, n14480, n14593, n14612, n2621, n14391, n14410, 
            n2684, n14553, n14600, n14473, n14426, n1341, n14442, 
            n379, n1149, n1834, n859, n6630, n11008, n892, n14571, 
            n3069, n14494, n12369, n12053, n12186, n1596, n2025, 
            n2364, n12298, n189, n1467, n380_adj_7, n94_adj_8, n126, 
            n127, n891, n1661, n2428, n796, n14411, n2300, n12192, 
            n11066, n11068, n2555, n603, n14475, n14425, n14420, 
            n1069, n12579, n1148_adj_9, n14403, n1851_adj_10, n14506, 
            n14591, n12088, n3601, n3479, n14419, n1534, n723, 
            n5199, n1565_adj_11, n14429, n14457, n15851, n11192, 
            n14430, n270, n13607, n14441, n1403, n12190, n13850, 
            n1436, n14515, n14589, n14422, n5948, n46_adj_12, n14427, 
            n14489, n1723, n308, n14437, n13749, n13750, n14443, 
            n14539, n125, n13726, n1172, n1084, n14585, n14619, 
            n13641, n12884, n12902, n13614, n6851) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    input n15878;
    output n12711;
    input n14406;
    output n14546;
    input n317;
    input n14076;
    input n1148;
    input n14047;
    input n12382;
    output n14434;
    input n158;
    input n14032;
    input n2141;
    input n12075;
    input n1851;
    input n1530;
    input n12398;
    input n828;
    input n380;
    input n6832;
    output n14629;
    output n14402;
    input n62;
    output n14408;
    input n1530_adj_1;
    output n14624;
    output n158_adj_2;
    input n828_adj_3;
    input n62_adj_4;
    output n1565;
    input n4094;
    output [7:0]rom_q;
    input n4094_adj_5;
    input n4094_adj_6;
    input n12594;
    output n14493;
    input n94;
    input n12085;
    output n46;
    input n14497;
    output n4;
    output n1101;
    input n12739;
    output n14584;
    input n14432;
    output n875;
    output n14431;
    output n14456;
    output n14447;
    output n14461;
    output n1643;
    output n2395;
    output n14436;
    output n14496;
    output n78;
    output n12658;
    output n12661;
    input n14450;
    output n14522;
    output n12047;
    output n4415;
    output n14610;
    output n13608;
    output n15856;
    output n1529;
    output n301;
    output n14525;
    output n14540;
    output n1483;
    output n8913;
    input n14081;
    output n15854;
    output n14535;
    output n2332;
    output n12736;
    input n13996;
    output n14542;
    output n14544;
    input n509;
    output n510;
    input n6794;
    input n14452;
    output n14538;
    input n1275;
    output n14480;
    output n14593;
    output n14612;
    input n2621;
    output n14391;
    output n14410;
    output n2684;
    output n14553;
    output n14600;
    output n14473;
    output n14426;
    output n1341;
    input n14442;
    output n379;
    input n1149;
    output n1834;
    input n859;
    input n6630;
    output n11008;
    input n892;
    output n14571;
    output n3069;
    output n14494;
    input n12369;
    output n12053;
    input n12186;
    input n1596;
    output n2025;
    input n2364;
    input n12298;
    output n189;
    input n1467;
    input n380_adj_7;
    input n94_adj_8;
    input n126;
    output n127;
    input n891;
    output n1661;
    input n2428;
    output n796;
    output n14411;
    input n2300;
    output n12192;
    input n11066;
    output n11068;
    input n2555;
    output n603;
    input n14475;
    output n14425;
    input n14420;
    output n1069;
    input n12579;
    output n1148_adj_9;
    input n14403;
    input n1851_adj_10;
    input n14506;
    input n14591;
    input n12088;
    input n3601;
    input n3479;
    input n14419;
    input n1534;
    output n723;
    output n5199;
    input n1565_adj_11;
    output n14429;
    output n14457;
    input n15851;
    input n11192;
    input n14430;
    output n270;
    output n13607;
    output n14441;
    input n1403;
    output n12190;
    input n13850;
    input n1436;
    output n14515;
    output n14589;
    output n14422;
    output n5948;
    output n46_adj_12;
    output n14427;
    output n14489;
    input n1723;
    output n308;
    output n14437;
    input n13749;
    output n13750;
    output n14443;
    output n14539;
    input n125;
    input n13726;
    output n1172;
    input n1084;
    input n14585;
    input n14619;
    input n13641;
    input n12884;
    input n12902;
    input n13614;
    output n6851;
    
    
    wire n14537, n14554, n12363, n12364, n12365, n12616, n12617, 
        n12624, n428, n443, n444, n14036, n12861, n12621, n14652, 
        n14647, n14648, n14649, n12826, n12836, n12620, n12709, 
        n12710, n684, n14726, n14727, n14728, n15867, n15868, 
        n15869, n14703, n14079, n14077, n14080, n14078, n12366, 
        n12367, n12368, n557, n526, n12491, n14613, n285, n286, 
        n12613, n12561, n12562, n12569, n14075, n1117, n1149_c, 
        n14723, n14724, n14725, n14433, n1403_c, n12783, n12372, 
        n12373, n12374, n12559, n12560, n12568, n12555, n12556, 
        n12566, n15864, n15865, n15866, n12375, n12376, n12377, 
        n12378, n12379, n12380, n14653, n12782, n12553, n13731, 
        n12565, n14048, n14045, n14049, n14046, n12567, n12572, 
        n12381, n12383, n14533, n14438, n1786, n13555, n13553, 
        n13556, n13554, n1212, n5802, n14044, n14720, n14721, 
        n14722, n12512, n12513, n12520, n15861, n15862, n15863, 
        n14491, n14460, n1085, n12390, n12391, n12394, n189_c, 
        n190, n14035, n14033, n14034, n14405, n14717, n14718, 
        n14719, n12392, n12393, n12395, n1403_adj_552, n14527, n14532, 
        n1054, n2173, n14641, n14642, n14643, n1820, n1852, n1514, 
        n14592, n1531, n12397, n12399, n12400, n12401, n12402, 
        n924, n12058, n956, n14030, n14028, n14031, n12403, n12404, 
        n12405, n14651, n827, n12315, n829, n12406, n12407, n12408, 
        n1181, n14029, n14714, n14715, n14716, n14638, n14639, 
        n14640, n364, n381, n12486, n318, n12415, n12416, n12417, 
        n61, n63, n12418, n12419, n12420, n13552, n13551, n2268, 
        n2299, n2300_c, n15858, n15859, n2620, n1278, n1533, n12596, 
        n14711, n14712, n14713, n12427, n12428, n12429, n1739, 
        n1786_adj_553, n1787, n12430, n12431, n12432, n12433, n12434, 
        n12435, n1514_adj_554, n1531_adj_556, n14634, n14635, n14636, 
        n12436, n12437, n12438, n12439, n12440, n12441, n14486, 
        n1181_adj_557, n1212_adj_558, n1213, n12571, n14027, n1275_c, 
        n12442, n12443, n12444, n12445, n12446, n12447, n859_c, 
        n860, n14581, n892_c, n812, n829_adj_561, n12518, n12519, 
        n12523, n14481, n428_adj_562, n443_adj_563, n12451, n12452, 
        n12453, n716, n732, n14580, n764, n14708, n14709, n14710, 
        n61_adj_564, n63_adj_566, n14705, n14706, n12460, n12461, 
        n12462, n14702, n14704, n12516, n12517, n12522, n14439, 
        n4782, n12630, n14631, n14632, n14633, n12524, n12525, 
        n12526, n12469, n12470, n12471, n12573, n12574, n12575, 
        n12598, n12599, n12600, n12779, n12780, n12781, n2047, 
        n12743, n12472, n12473, n12474, n12595, n12478, n12479, 
        n12480, n12481, n12482, n12483, n12597, n12626, n12627, 
        n12629, n12775, n12776, n1086, n12777, n12778, n12521, 
        n12570, n12490, n12492, n126_c, n14541, n1244, n1867, 
        n475, n2444, n12625, n12628, n14669, n3995, n3070, n12682, 
        n2685, n14552, n14701, n251, n12653, n12654, n12655, n1549, 
        n1228, n12680, n12681, n2283, n12737, n12738, n12741, 
        n12740, n12742, n251_adj_569, n443_adj_570, n14630, n12361, 
        n491, n236, n14159, n1451, n14495, n3115, n14487, n12767, 
        n12768, n6827, n12769, n12770, n12582, n12583, n12584, 
        n3809, n653, n971, n12771, n12772, n557_adj_571, n3070_adj_572, 
        n12773, n12774, n3342, n12696, n3069_c, n3070_adj_573, n220, 
        n14160, n1595, n589, n604, n12357, n2298, n12689, n3069_adj_574, 
        n14504, n12668, n3069_adj_575, n3070_adj_576, n205, n5238, 
        n12355, n5229, n12354, n428_adj_577, n12352, n526_adj_578, 
        n541, n12351, n460, n12348, n12504, n12505, n1466, n379_c, 
        n2298_adj_579, n6844, n12510, n12511, n2396, n2109, n14611, 
        n2523, n747, n1387, n14551, n2078, n1196, n2077, n1770, 
        n2040, n1913, n2252, n12412, n2009, n13985, n1435, n12855, 
        n270_c, n14602, n14516, n12542, n14455, n12908, n2025_c, 
        n12611, n1038, n1054_adj_580, n12622, n12623, n12592, n14465, 
        n14448, n12463, n2522, n14699, n14700, n2475, n13920, 
        n1243, n12656, n12657, n668, n844, n859_adj_581, n12899, 
        n8889, n12659, n12660, n2220, n12897, n12896, n986, n12673, 
        n12674, n12675, n14627, n1882, n1883, n2283_adj_582, n2492, 
        n12730, n12733, n1883_adj_583, n12608, n1435_adj_584, n12601, 
        n1785, n124, n12831, n12832, n2044, n12724, n12727, n2283_adj_585, 
        n668_adj_586, n12877, n13619, n13620, n1308, n109, n12500, 
        n12501, n12514, n1676, n716_adj_587, n731, n12890, n1341_c, 
        n1404, n14444, n2025_adj_588, n2040_adj_589, n12886, n2009_adj_590, 
        n1243_adj_591, n13999, n13997, n14000, n460_adj_592, n1979, 
        n12545, n12546, n12547, n12548, n14502, n14597, n13892, 
        n220_adj_593, n12557, n12558, n2348, n12652, n12718, n12618, 
        n12721, n12795, n12619, n14529, n1946, n15853, n364_adj_594, 
        n14396, n14587, n2428_c, n12732, n1659, n731_adj_595, n908, 
        n604_adj_596, n333, n348, n12862, n14287, n12664, n12665, 
        n12667, n13846, n13618, n12863, n4_adj_597, n604_adj_598, 
        n12871, n2365, n2428_adj_599, n12678, n14733, n14732, n557_adj_600, 
        n428_adj_601, n12869, n526_adj_602, n12868, n12685, n12686, 
        n12688, n14734, n14186, n12690, n12691, n12694, n12707, 
        n12708, n14520, n2298_adj_603, n14451, n14620, n2141_adj_604, 
        n699, n12878, n1785_adj_605, n316, n2589, n15850, n364_adj_606, 
        n13998, n1628, n221, n14505, n2554, n301_adj_607, n1529_adj_608, 
        n12858, n14459, n14162, n13932, n12734, n12735, n78_adj_609, 
        n2009_adj_610, n939, n2333, n14393, n2283_adj_611, n14637, 
        n12843, n1451_adj_612, n1676_adj_613, n12856, n12748, n12749, 
        n2044_adj_614, n14518, n381_adj_615, n12753, n6810, n14519, 
        n1692, n13729, n956_adj_616, n1019, n12758, n12853, n13995, 
        n1676_adj_617, n12885, n12852, n1468, n12762, n1724, n12764, 
        n12800, n12801, n12802, n5603, n12807, n12808, n12809, 
        n12824, n12825, n2009_adj_618, n2010, n12829, n12830, n1851_adj_619, 
        n1565_adj_620, n1597, n12847, n220_adj_621, n12846, n620, 
        n14673, n1835, n1435_adj_622, n1436_c, n507, n12270, n2522_adj_623, 
        n2523_adj_624, n6805, n6806, n14615, n2522_adj_625, n2396_adj_626, 
        n2554_adj_627, n1707, n12260, n1789, n2573, n14608, n12384, 
        n2460, n14445, n1467_c, n1723_c, n14501, n2205, n1612, 
        n1628_adj_628, n13988, n13986, n13989, n12543, n13727, n13616, 
        n13617, n14599, n1466_adj_629, n2141_adj_630, n2173_adj_631, 
        n2173_adj_632, n1243_adj_633, n1244_adj_634, n1755, n13987, 
        n12578, n1149_adj_635, n1597_adj_636, n12606, n12508, n1898, 
        n1914, n12835, n1084_c, n1786_adj_638, n2010_adj_639, n14696, 
        n14697, n14594, n14698, n1914_adj_640, n1628_adj_641, n1915, 
        n2009_adj_642, n14547, n1820_adj_643, n1530_adj_644, n1658, 
        n12605, n1914_adj_645, n12828, n1117_adj_646, n1786_adj_647, 
        n12475, n1084_adj_648, n124_adj_649, n30, n12643, n620_adj_650, 
        n635, n1691, n1692_adj_651, n12848, n1530_adj_652, n14655, 
        n12870, n12873, n12549, n12591, n12910, n12356, n12552, 
        n14416, n12082, n14389, n270_adj_653, n1228_adj_654, n1499, 
        n1660, n14289, n14625, n2205_adj_655, n875_adj_656, n653_adj_657, 
        n2317, n6866, n14576, n14654, n14458, n1724_adj_658, n1787_adj_659, 
        n14606, n12909, n124_adj_660, n1883_adj_661, n14685, n13323, 
        n13325, n14662, n364_adj_662, n380_adj_663, n1852_adj_664, 
        n1915_adj_665, n61_adj_666, n12349, n1002, n12792, n890, 
        n12540, n14661, n13322, n986_adj_667, n12791, n2267, n12614, 
        n12615, n954, n12790, n908_adj_668, n12789, n13930, n2298_adj_669, 
        n14664, n15857, n12637, n12638, n12639, n12593, n12650, 
        n12651, n828_adj_670, n12663, n2365_adj_671, n12386, n14579, 
        n797, n13851, n13852, n15629, n15630, n15632, n15633, 
        n2491, n13337, n2108, n2459, n2411, n2427, n12389, n2364_c, 
        n2110, n12669, n1692_adj_672, n5415, n12670, n12411, n12671, 
        n1466_adj_673, n12602, n1786_adj_674, n1787_adj_675, n12071, 
        n12672, n12649, n12648, n526_adj_677, n12646, n12644, n2555_c, 
        n12679, n14668, n12640, n397, n12633, n12683, n12642, 
        n2428_adj_678, n14667, n14671, n2492_adj_679, n2555_adj_680, 
        n1755_adj_681, n14609, n572, n2110_adj_682, n2173_adj_683, 
        n13890, n14670, n13893, n13894, n2237, n12414, n14693, 
        n14694, n14695, n5929, n14488, n653_adj_684, n2555_adj_685, 
        n12693, n4976, n12610, n6838, n14570, n12607, n12699, 
        n12700, n12706, n557_adj_686, n476, n12701, n12702, n12703, 
        n12704, n12716, n12717, n1676_adj_687, n507_adj_689, n12719, 
        n12720, n14675, n12457, n12458, n12459, n12898, n12350, 
        n12726, n12744, n12745, n14674, n1947, n12746, n12747, 
        n12751, n190_adj_690, n253, n12752, n12756, n12757, n12456, 
        n12759, n14690, n14691, n14692, n12760, n14678, n13919, 
        n1597_adj_692, n1660_adj_693, n12763, n1228_adj_694, n1243_adj_695, 
        n12585, n12580, n13917, n14677, n12465, n1915_adj_696, n12765, 
        n1038_adj_697, n1053, n12576, n14681, n14680, n12766, n12786, 
        n5303, n12466, n12467, n12468, n12784, n12785, n12787, 
        n12793, n12794, n844_adj_698, n12539, n12797, n12798, n12799, 
        n12803, n12804, n12805, n12806, n12485, n2380, n12812, 
        n12813, n12815, n12476, n12477, n731_adj_700, n12536, n12449, 
        n14684, n684_adj_701, n699_adj_702, n12531, n14683, n12819, 
        n12820, n12822, n1085_adj_703, n589_adj_704, n604_adj_705, 
        n12527, n14687, n12827, n14682, n444_adj_706, n445, n1883_adj_707, 
        n12834, n542, n11067, n3871, n1020, n13931, n13933, n14686, 
        n924_adj_708, n987, n12859, n12860, n12874, n12875, n12876, 
        n1692_adj_709, n1851_adj_710, n574, n14955, n14953, n12353, 
        n12359, n12728, n1483_adj_712, n12887, n12888, n12889, n2621_adj_713, 
        n2684_adj_714, n12370, n12371, n9, n12160, n14509, n1931, 
        n12196, n6864, n15635, n12507, n12509, n12662, n14688, 
        n1275_adj_716, n1276, n1789_adj_717, n12883, n13853, n12645, 
        n12845, n1499_adj_718, n508, n12754, n1691_adj_719, n2236, 
        n12755, n13934, n12695, n1596_c, n12496, n12396, n2573_adj_720, 
        n2685_adj_721, n1867_adj_722, n1883_adj_723, n13848, n475_adj_725, 
        n12528, n13895, n12687, n1101_adj_726, n1117_adj_727, n14476, 
        n6417, n2396_adj_729, n6984, n2237_adj_730, n589_adj_731, 
        n252, n253_adj_733, n4463, n190_adj_735, n6803, n12666, 
        n12723, n14954, n1483_adj_737, n12857, n12712, n14676, n2427_adj_739, 
        n2491_adj_740, n14672, n12503, n12879, n12892, n12550, n12530, 
        n12677, n12901, n12551, n1946_adj_741, n1707_adj_742, n14663, 
        n12448, n12450, n12904, n380_adj_743, n12725, n14679, n15872, 
        n14568, n12072, n2429, n6100, n955, n2237_adj_747, n2301, 
        n12632, n6859, n4483, n1978, n2492_adj_749, n2556, n445_adj_751, 
        n12867, n2110_adj_752, n2174, n12498, n508_adj_753, n12499, 
        n1947_adj_754, n1723_adj_755, n12604, n12529, n12532, n12538, 
        n12541, n12502, n12581, n12587, n14650, n635_adj_756, n12358, 
        n12603, n1724_adj_757, n14400, n14577, n14514, n13849, n12609, 
        n12612, n12903, n1402, n1212_adj_758, n12714, n2141_adj_759, 
        n14656, n10795, n13921, n13918, n13922, n4_adj_760, n12537, 
        n12577, n13866, n13643, n12362, n12729, n12586, n12722, 
        n14582, n12713, n13865, n13031, n12854, n12864, n14482, 
        n3602, n3544, n12788, n6860, n2299_adj_763, n12564, n12900, 
        n13338, n12563, n604_adj_764, n12515, n14164, n2045, n14956, 
        n13621, n13557, n13891, n349, n12631, n14628, n12891, 
        n12647, n1692_adj_765, n1596_adj_767, n14454, n6825, n2444_adj_768, 
        n2268_adj_769, n541_adj_770, n1210, n4_adj_771, n15634, n15631, 
        n1309, n12715, n1292, n891_adj_774, n1467_adj_776, n12844, 
        n13847, n2538, n6823, n2554_adj_777, n2523_adj_778, n3709, 
        n14508, n6800, n1914_adj_779, n13326, n12484, n12413, n476_adj_781, 
        n15871, n10797, n12872, n14423, n13730, n13728, n14583, 
        n15870, n1076, n14290, n14288, n1898_adj_784, n13615, n5246, 
        n12360, n13642, n6854, n14163, n14161, n3070_adj_785;
    
    LUT4 i7621_2_lut_rep_260_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(n15878), 
         .Z(n14537)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7621_2_lut_rep_260_3_lut.init = 16'h4040;
    LUT4 i5074_2_lut_rep_277 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14554)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5074_2_lut_rep_277.init = 16'h6666;
    PFUMX i11666 (.BLUT(n12363), .ALUT(n12364), .C0(rom_addr[5]), .Z(n12365));
    LUT4 i12709_3_lut (.A(n12616), .B(n12617), .C(rom_addr[8]), .Z(n12624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12709_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n443), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 i11922_3_lut (.A(n14036), .B(n12861), .C(rom_addr[7]), .Z(n12621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11922_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[0]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14652)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_then_4_lut.init = 16'h4000;
    PFUMX i13690 (.BLUT(n14647), .ALUT(n14648), .C0(rom_addr[0]), .Z(n14649));
    LUT4 i11921_3_lut (.A(n12826), .B(n12836), .C(rom_addr[7]), .Z(n12620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11921_3_lut.init = 16'hcaca;
    LUT4 i12012_3_lut (.A(n12709), .B(n12710), .C(rom_addr[8]), .Z(n12711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12012_3_lut.init = 16'hcaca;
    LUT4 i7680_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n684)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7680_2_lut_3_lut_4_lut.init = 16'h0440;
    PFUMX i13743 (.BLUT(n14726), .ALUT(n14727), .C0(rom_addr[0]), .Z(n14728));
    PFUMX i14450 (.BLUT(n15867), .ALUT(n15868), .C0(rom_addr[0]), .Z(n15869));
    LUT4 i5923_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14703)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5923_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    L6MUX21 i13465 (.D0(n14079), .D1(n14077), .SD(rom_addr[6]), .Z(n14080));
    PFUMX i13463 (.BLUT(n14406), .ALUT(n14078), .C0(rom_addr[5]), .Z(n14079));
    PFUMX i11669 (.BLUT(n12366), .ALUT(n12367), .C0(rom_addr[5]), .Z(n12368));
    LUT4 i11792_3_lut (.A(n557), .B(n526), .C(rom_addr[4]), .Z(n12491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11792_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14546), .B(n14613), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    PFUMX i11914 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12613));
    LUT4 i11870_3_lut (.A(n12561), .B(n12562), .C(rom_addr[8]), .Z(n12569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11870_3_lut.init = 16'hcaca;
    PFUMX i13461 (.BLUT(n14076), .ALUT(n14075), .C0(rom_addr[5]), .Z(n14077));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13741 (.BLUT(n14723), .ALUT(n14724), .C0(rom_addr[0]), .Z(n14725));
    LUT4 i12084_3_lut_4_lut (.A(rom_addr[0]), .B(n14433), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n12783)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12084_3_lut_4_lut.init = 16'hf101;
    PFUMX i11675 (.BLUT(n12372), .ALUT(n12373), .C0(rom_addr[5]), .Z(n12374));
    LUT4 i11869_3_lut (.A(n12559), .B(n12560), .C(rom_addr[7]), .Z(n12568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11869_3_lut.init = 16'hcaca;
    LUT4 i11867_3_lut (.A(n12555), .B(n12556), .C(rom_addr[7]), .Z(n12566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11867_3_lut.init = 16'hcaca;
    PFUMX i14448 (.BLUT(n15864), .ALUT(n15865), .C0(rom_addr[4]), .Z(n15866));
    PFUMX i11678 (.BLUT(n12375), .ALUT(n12376), .C0(rom_addr[5]), .Z(n12377));
    PFUMX i11681 (.BLUT(n12378), .ALUT(n12379), .C0(rom_addr[5]), .Z(n12380));
    LUT4 i12083_3_lut_4_lut (.A(rom_addr[0]), .B(n14433), .C(rom_addr[5]), 
         .D(n14653), .Z(n12782)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12083_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11866_3_lut (.A(n12553), .B(n13731), .C(rom_addr[7]), .Z(n12565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11866_3_lut.init = 16'hcaca;
    L6MUX21 i13436 (.D0(n14048), .D1(n14045), .SD(rom_addr[5]), .Z(n14049));
    PFUMX i13434 (.BLUT(n14047), .ALUT(n14046), .C0(rom_addr[6]), .Z(n14048));
    LUT4 i11873_3_lut (.A(n12567), .B(n12568), .C(rom_addr[8]), .Z(n12572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11873_3_lut.init = 16'hcaca;
    PFUMX i11684 (.BLUT(n12381), .ALUT(n12382), .C0(rom_addr[5]), .Z(n12383));
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14533), 
         .C(rom_addr[4]), .D(n14438), .Z(n1786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13042 (.D0(n13555), .D1(n13553), .SD(rom_addr[6]), .Z(n13556));
    PFUMX i13040 (.BLUT(n13554), .ALUT(n1212), .C0(rom_addr[5]), .Z(n13555));
    PFUMX i13432 (.BLUT(n5802), .ALUT(n14044), .C0(rom_addr[6]), .Z(n14045));
    PFUMX i13739 (.BLUT(n14720), .ALUT(n14721), .C0(rom_addr[0]), .Z(n14722));
    LUT4 i12717_3_lut (.A(n12512), .B(n12513), .C(rom_addr[8]), .Z(n12520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12717_3_lut.init = 16'hcaca;
    PFUMX i14446 (.BLUT(n15861), .ALUT(n15862), .C0(rom_addr[0]), .Z(n15863));
    LUT4 i7391_4_lut (.A(rom_addr[0]), .B(n14491), .C(n14460), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7391_4_lut.init = 16'h0a22;
    PFUMX i11695 (.BLUT(n12390), .ALUT(n12391), .C0(rom_addr[5]), .Z(n12394));
    LUT4 i7617_2_lut_rep_157_3_lut_4_lut (.A(n15878), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n14434)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7617_2_lut_rep_157_3_lut_4_lut.init = 16'h0010;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189_c), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i13425 (.D0(n14035), .D1(n14033), .SD(rom_addr[6]), .Z(n14036));
    PFUMX i13423 (.BLUT(n14034), .ALUT(n14405), .C0(rom_addr[5]), .Z(n14035));
    PFUMX i13737 (.BLUT(n14717), .ALUT(n14718), .C0(rom_addr[0]), .Z(n14719));
    PFUMX i11696 (.BLUT(n12392), .ALUT(n12393), .C0(rom_addr[5]), .Z(n12395));
    PFUMX i13421 (.BLUT(n14032), .ALUT(n1403_adj_552), .C0(rom_addr[5]), 
          .Z(n14033));
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14527), 
         .C(rom_addr[4]), .D(n14532), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n12075), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13686 (.BLUT(n14641), .ALUT(n14642), .C0(rom_addr[0]), .Z(n14643));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14592), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11700 (.BLUT(n12397), .ALUT(n12398), .C0(rom_addr[5]), .Z(n12399));
    PFUMX i11703 (.BLUT(n12400), .ALUT(n12401), .C0(rom_addr[5]), .Z(n12402));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924), .ALUT(n12058), .C0(rom_addr[5]), 
          .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i13419 (.D0(n14030), .D1(n14028), .SD(rom_addr[6]), .Z(n14031));
    PFUMX i11706 (.BLUT(n12403), .ALUT(n12404), .C0(rom_addr[5]), .Z(n12405));
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[0]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14651)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut_4_lut_else_4_lut.init = 16'h2002;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n12315), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11709 (.BLUT(n12406), .ALUT(n12407), .C0(rom_addr[5]), .Z(n12408));
    PFUMX i13417 (.BLUT(n1181), .ALUT(n14029), .C0(rom_addr[5]), .Z(n14030));
    PFUMX i13735 (.BLUT(n14714), .ALUT(n14715), .C0(rom_addr[3]), .Z(n14716));
    PFUMX i13684 (.BLUT(n14638), .ALUT(n14639), .C0(rom_addr[2]), .Z(n14640));
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364), .ALUT(n380), .C0(n14592), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n12486), .ALUT(n6832), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7613_2_lut_rep_125_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14629), .Z(n14402)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i7613_2_lut_rep_125_3_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i11718 (.BLUT(n12415), .ALUT(n12416), .C0(rom_addr[5]), .Z(n12417));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n12315), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11721 (.BLUT(n12418), .ALUT(n12419), .C0(rom_addr[5]), .Z(n12420));
    PFUMX i13038 (.BLUT(n13552), .ALUT(n13551), .C0(rom_addr[5]), .Z(n13553));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i14444 (.BLUT(n15858), .ALUT(n15859), .C0(rom_addr[2]), .Z(n2620));
    LUT4 i1_2_lut_rep_131_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n14408)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_131_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i12724_3_lut (.A(n1278), .B(n1533), .C(rom_addr[8]), .Z(n12596)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12724_3_lut.init = 16'hcaca;
    PFUMX i13733 (.BLUT(n14711), .ALUT(n14712), .C0(rom_addr[2]), .Z(n14713));
    PFUMX i11730 (.BLUT(n12427), .ALUT(n12428), .C0(rom_addr[5]), .Z(n12429));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786_adj_553), 
          .C0(rom_addr[5]), .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11733 (.BLUT(n12430), .ALUT(n12431), .C0(rom_addr[5]), .Z(n12432));
    PFUMX i11736 (.BLUT(n12433), .ALUT(n12434), .C0(rom_addr[5]), .Z(n12435));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_554), .ALUT(n1530_adj_1), 
          .C0(n14592), .Z(n1531_adj_556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13682 (.BLUT(n14634), .ALUT(n14635), .C0(rom_addr[1]), .Z(n14636));
    L6MUX21 i11739 (.D0(n12436), .D1(n12437), .SD(rom_addr[5]), .Z(n12438));
    PFUMX i11742 (.BLUT(n12439), .ALUT(n12440), .C0(rom_addr[7]), .Z(n12441));
    LUT4 i1_2_lut_rep_209_2_lut (.A(rom_addr[2]), .B(n15878), .Z(n14486)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_209_2_lut.init = 16'h4444;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181_adj_557), .ALUT(n1212_adj_558), 
          .C0(rom_addr[5]), .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12727_3_lut (.A(n12565), .B(n12566), .C(rom_addr[8]), .Z(n12571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12727_3_lut.init = 16'hcaca;
    PFUMX i13415 (.BLUT(n14027), .ALUT(n1275_c), .C0(rom_addr[5]), .Z(n14028));
    PFUMX i11745 (.BLUT(n12442), .ALUT(n12443), .C0(rom_addr[5]), .Z(n12444));
    L6MUX21 i11748 (.D0(n12445), .D1(n12446), .SD(rom_addr[5]), .Z(n12447));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859_c), .ALUT(n860), .C0(n14581), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7711_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[0]), 
         .D(n14624), .Z(n158_adj_2)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7711_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_3), .C0(n14592), 
          .Z(n829_adj_561)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11824_3_lut (.A(n12518), .B(n12519), .C(rom_addr[8]), .Z(n12523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11824_3_lut.init = 16'hcaca;
    LUT4 i12874_2_lut_rep_204_3_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n14481)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i12874_2_lut_rep_204_3_lut.init = 16'h0101;
    PFUMX i11738 (.BLUT(n428_adj_562), .ALUT(n443_adj_563), .C0(rom_addr[4]), 
          .Z(n12437));
    PFUMX i11754 (.BLUT(n12451), .ALUT(n12452), .C0(rom_addr[5]), .Z(n12453));
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n14580), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13731 (.BLUT(n14708), .ALUT(n14709), .C0(rom_addr[0]), .Z(n14710));
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_564), .ALUT(n62_adj_4), 
          .C0(n12315), .Z(n63_adj_566)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13729 (.BLUT(n14705), .ALUT(n14706), .C0(rom_addr[0]), .Z(n1565));
    PFUMX i11763 (.BLUT(n12460), .ALUT(n12461), .C0(rom_addr[5]), .Z(n12462));
    PFUMX i13727 (.BLUT(n14702), .ALUT(n14703), .C0(rom_addr[0]), .Z(n14704));
    LUT4 i11823_3_lut (.A(n12516), .B(n12517), .C(rom_addr[8]), .Z(n12522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11823_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n14439), .D(n4782), .Z(n924)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12630), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13680 (.BLUT(n14631), .ALUT(n14632), .C0(n14629), .Z(n14633));
    L6MUX21 i11827 (.D0(n12524), .D1(n12525), .SD(rom_addr[10]), .Z(n12526));
    PFUMX i11772 (.BLUT(n12469), .ALUT(n12470), .C0(rom_addr[5]), .Z(n12471));
    L6MUX21 i11876 (.D0(n12573), .D1(n12574), .SD(rom_addr[10]), .Z(n12575));
    L6MUX21 i11901 (.D0(n12598), .D1(n12599), .SD(rom_addr[10]), .Z(n12600));
    L6MUX21 i12082 (.D0(n12779), .D1(n12780), .SD(rom_addr[10]), .Z(n12781));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_5), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12743), .ALUT(n4094_adj_6), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11775 (.BLUT(n12472), .ALUT(n12473), .C0(rom_addr[5]), .Z(n12474));
    PFUMX i11826 (.BLUT(n12522), .ALUT(n12523), .C0(rom_addr[9]), .Z(n12525));
    PFUMX i11875 (.BLUT(n12571), .ALUT(n12572), .C0(rom_addr[9]), .Z(n12574));
    PFUMX i11899 (.BLUT(n12594), .ALUT(n12595), .C0(rom_addr[9]), .Z(n12598));
    PFUMX i11781 (.BLUT(n12478), .ALUT(n12479), .C0(rom_addr[5]), .Z(n12480));
    PFUMX i11784 (.BLUT(n12481), .ALUT(n12482), .C0(rom_addr[5]), .Z(n12483));
    PFUMX i11900 (.BLUT(n12596), .ALUT(n12597), .C0(rom_addr[9]), .Z(n12599));
    L6MUX21 i11930 (.D0(n12626), .D1(n12627), .SD(rom_addr[9]), .Z(n12629));
    L6MUX21 i12080 (.D0(n12775), .D1(n12776), .SD(rom_addr[9]), .Z(n12779));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i12081 (.D0(n12777), .D1(n12778), .SD(rom_addr[9]), .Z(n12780));
    PFUMX i11825 (.BLUT(n12520), .ALUT(n12521), .C0(rom_addr[9]), .Z(n12524));
    PFUMX i11874 (.BLUT(n12569), .ALUT(n12570), .C0(rom_addr[9]), .Z(n12573));
    PFUMX i11793 (.BLUT(n12490), .ALUT(n12491), .C0(rom_addr[5]), .Z(n12492));
    LUT4 i7553_2_lut_rep_216_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n14493)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7553_2_lut_rep_216_3_lut_3_lut.init = 16'h5151;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94), .ALUT(n12085), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14541), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11927 (.BLUT(n12620), .ALUT(n12621), .C0(rom_addr[8]), .Z(n12626));
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1867)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h6544;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h5818;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n475)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    PFUMX i11929 (.BLUT(n12624), .ALUT(n12625), .C0(rom_addr[9]), .Z(n12628));
    LUT4 i3112_3_lut_4_lut (.A(n14624), .B(n14497), .C(rom_addr[6]), .D(n14669), 
         .Z(n3995)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3112_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0110;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12781), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12682), .B(n2685), .C(rom_addr[9]), 
         .D(n14552), .Z(n3070)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n12480), .B(n14701), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h40b0;
    PFUMX i11956 (.BLUT(n12653), .ALUT(n12654), .C0(rom_addr[9]), .Z(n12655));
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1549)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h1012;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1228)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'he0e2;
    PFUMX i11983 (.BLUT(n12680), .ALUT(n12681), .C0(rom_addr[8]), .Z(n12682));
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15878), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(D)))) */ ;
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h2811;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    L6MUX21 i12042 (.D0(n12737), .D1(n12738), .SD(rom_addr[9]), .Z(n12741));
    PFUMX i12043 (.BLUT(n12739), .ALUT(n12740), .C0(rom_addr[9]), .Z(n12742));
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n251_adj_569)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h4808;
    LUT4 i11662_4_lut (.A(n443_adj_570), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14630), .Z(n12361)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11662_4_lut.init = 16'hca0a;
    LUT4 n220_bdd_3_lut_13517 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n14159)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_13517.init = 16'hacac;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1451)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h2442;
    LUT4 i2232_3_lut_4_lut_4_lut (.A(n14629), .B(n14495), .C(rom_addr[5]), 
         .D(n14584), .Z(n3115)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2232_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i1_2_lut_rep_210_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14487)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_210_3_lut_4_lut.init = 16'h4000;
    PFUMX i12076 (.BLUT(n12767), .ALUT(n12768), .C0(rom_addr[8]), .Z(n12775));
    LUT4 i11487_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n15878), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n236)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11487_3_lut_4_lut_3_lut_4_lut.init = 16'h2422;
    LUT4 i5914_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6827)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5914_4_lut_4_lut_4_lut.init = 16'h242c;
    PFUMX i12077 (.BLUT(n12769), .ALUT(n12770), .C0(rom_addr[8]), .Z(n12776));
    PFUMX i11885 (.BLUT(n12582), .ALUT(n12583), .C0(rom_addr[4]), .Z(n12584));
    LUT4 i2926_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n3809)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2926_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i7557_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i7557_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    PFUMX i12078 (.BLUT(n12771), .ALUT(n12772), .C0(rom_addr[8]), .Z(n12777));
    LUT4 address_11__I_0_Mux_0_i557_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n557_adj_571)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_0_i557_3_lut_4_lut_4_lut_4_lut.init = 16'h0727;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12526), .B(n3070_adj_572), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    PFUMX i12079 (.BLUT(n12773), .ALUT(n12774), .C0(rom_addr[8]), .Z(n12778));
    LUT4 i2459_3_lut_4_lut (.A(rom_addr[5]), .B(n14487), .C(rom_addr[6]), 
         .D(n14432), .Z(n3342)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2459_3_lut_4_lut.init = 16'h808f;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12696), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070_adj_573)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n220_bdd_3_lut_13655 (.A(n220), .B(n875), .C(rom_addr[4]), .Z(n14160)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_13655.init = 16'hacac;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    LUT4 i11658_3_lut (.A(n589), .B(n604), .C(rom_addr[4]), .Z(n12357)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11658_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2298)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'h8998;
    LUT4 i2_2_lut_rep_154_2_lut_3_lut_4_lut (.A(n15878), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_154_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12575), .B(n3070_adj_573), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12689), .ALUT(n3069_adj_574), 
          .C0(rom_addr[9]), .Z(n3070_adj_572)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7595_2_lut_rep_227_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14504)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7595_2_lut_rep_227_3_lut.init = 16'h1010;
    LUT4 i7612_2_lut_rep_179_3_lut_3_lut_4_lut (.A(n15878), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14456)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7612_2_lut_rep_179_3_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12668), .ALUT(n3069_adj_575), 
          .C0(rom_addr[9]), .Z(n3070_adj_576)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11656_4_lut (.A(rom_addr[0]), .B(n205), .C(rom_addr[4]), .D(n5238), 
         .Z(n12355)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11656_4_lut.init = 16'hc0ca;
    LUT4 i11655_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n5229), 
         .Z(n12354)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11655_4_lut.init = 16'hc0ca;
    LUT4 i12848_2_lut_rep_353 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14630)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12848_2_lut_rep_353.init = 16'h4444;
    LUT4 i11653_3_lut (.A(n557_adj_571), .B(n428_adj_577), .C(rom_addr[4]), 
         .Z(n12352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11653_3_lut.init = 16'hcaca;
    LUT4 i11652_3_lut (.A(n526_adj_578), .B(n541), .C(rom_addr[4]), .Z(n12351)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11652_3_lut.init = 16'hcaca;
    LUT4 i11649_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), .Z(n12348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11649_3_lut.init = 16'hcaca;
    L6MUX21 i11817 (.D0(n12504), .D1(n12505), .SD(rom_addr[7]), .Z(n12516));
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    LUT4 i7721_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_579)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7721_4_lut_4_lut.init = 16'hf8f6;
    LUT4 i5931_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n6844)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5931_3_lut_4_lut_4_lut.init = 16'h10c0;
    L6MUX21 i11820 (.D0(n12510), .D1(n12511), .SD(rom_addr[7]), .Z(n12519));
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i2109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_170_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14447)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_170_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i7585_4_lut (.A(n14461), .B(rom_addr[4]), .C(n14611), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7585_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1387)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14551), 
         .C(rom_addr[4]), .D(n14460), .Z(n2078)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h101a;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut (.A(n15878), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2395)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut_4_lut.init = 16'h2101;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_554)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i11713_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(rom_addr[4]), 
         .D(n2252), .Z(n12412)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11713_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7647_2_lut_rep_250_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14527)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7647_2_lut_rep_250_3_lut_4_lut.init = 16'h0440;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut.init = 16'h7882;
    LUT4 n1340_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14551), .C(rom_addr[4]), 
         .D(n14527), .Z(n13985)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12156_3_lut_4_lut (.A(rom_addr[0]), .B(n14551), .C(rom_addr[4]), 
         .D(n1435), .Z(n12855)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12156_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_0_i589_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n589)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i589_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 i11489_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15878), .D(rom_addr[0]), .Z(n270_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11489_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    LUT4 i11774_3_lut_4_lut (.A(n14602), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14516), .Z(n12473)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11774_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11843_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12542)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11843_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 i12209_4_lut (.A(rom_addr[0]), .B(n14496), .C(rom_addr[4]), .D(n14455), 
         .Z(n12908)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12209_4_lut.init = 16'hcac0;
    LUT4 i11912_3_lut_4_lut (.A(n14602), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n12611)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11912_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n14602), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054_adj_580)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11732_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(rom_addr[4]), 
         .D(n2283), .Z(n12431)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11732_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11928 (.BLUT(n12622), .ALUT(n12623), .C0(rom_addr[8]), .Z(n12627));
    LUT4 i11893_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12592)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11893_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 i11764_3_lut_4_lut (.A(n14465), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14448), .Z(n12463)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11764_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    PFUMX i13725 (.BLUT(n14699), .ALUT(n14700), .C0(rom_addr[0]), .Z(n14701));
    LUT4 address_11__I_0_Mux_5_i2252_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2252)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2252_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 n2039_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13920)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam n2039_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 address_11__I_0_Mux_0_i78_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n78)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i78_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    PFUMX i11959 (.BLUT(n12656), .ALUT(n12657), .C0(rom_addr[8]), .Z(n12658));
    LUT4 address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 i12385_3_lut (.A(n844), .B(n859_adj_581), .C(rom_addr[4]), .Z(n12899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12385_3_lut.init = 16'hcaca;
    LUT4 i5889_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8889)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i5889_3_lut_4_lut_4_lut.init = 16'hfec0;
    PFUMX i11962 (.BLUT(n12659), .ALUT(n12660), .C0(rom_addr[8]), .Z(n12661));
    LUT4 address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2220)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2220_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i12198_3_lut (.A(n428_adj_577), .B(n443_adj_570), .C(rom_addr[4]), 
         .Z(n12897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12198_3_lut.init = 16'hcaca;
    LUT4 i12197_3_lut (.A(n205), .B(n460), .C(rom_addr[4]), .Z(n12896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12197_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    PFUMX i11976 (.BLUT(n12673), .ALUT(n12674), .C0(rom_addr[8]), .Z(n12675));
    LUT4 i7635_2_lut_rep_350 (.A(rom_addr[0]), .B(rom_addr[2]), .C(n15878), 
         .Z(n14627)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7635_2_lut_rep_350.init = 16'h4040;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14465), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), 
         .C(n14592), .D(n2283_adj_582), .Z(n2492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    PFUMX i12039 (.BLUT(n12730), .ALUT(n12733), .C0(rom_addr[8]), .Z(n12738));
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut (.A(n14465), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14450), .Z(n1883_adj_583)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut.init = 16'hefe0;
    LUT4 i11909_3_lut_4_lut (.A(n14465), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n12608)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11909_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15878), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283_adj_582)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut.init = 16'h4802;
    LUT4 address_11__I_0_Mux_0_i923_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n875)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i923_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 i11902_3_lut_4_lut (.A(n14465), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435_adj_584), .Z(n12601)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11902_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i2426_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1785)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2426_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    L6MUX21 i12134 (.D0(n12831), .D1(n12832), .SD(rom_addr[7]), .Z(n2044));
    PFUMX i12038 (.BLUT(n12724), .ALUT(n12727), .C0(rom_addr[8]), .Z(n12737));
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283_adj_585)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut.init = 16'hb002;
    PFUMX i12178 (.BLUT(n653), .ALUT(n668_adj_586), .C0(rom_addr[4]), 
          .Z(n12877));
    LUT4 n6830_bdd_3_lut_13629 (.A(n14649), .B(n13619), .C(rom_addr[5]), 
         .Z(n13620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6830_bdd_3_lut_13629.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n14522), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    L6MUX21 i11815 (.D0(n12500), .D1(n12501), .SD(rom_addr[7]), .Z(n12514));
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n12047)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i12390_3_lut (.A(n716_adj_587), .B(n731), .C(rom_addr[4]), .Z(n12890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12390_3_lut.init = 16'hcaca;
    LUT4 n3743_bdd_3_lut_4_lut_4_lut_then_4_lut (.A(n14537), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14632)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n3743_bdd_3_lut_4_lut_4_lut_then_4_lut.init = 16'h30a3;
    PFUMX i11856 (.BLUT(n1341_c), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12555));
    LUT4 i7454_2_lut_rep_167_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14444)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7454_2_lut_rep_167_4_lut_4_lut.init = 16'hff81;
    LUT4 i12187_3_lut (.A(n2025_adj_588), .B(n2040_adj_589), .C(rom_addr[4]), 
         .Z(n12886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12187_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_590)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_591)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut.init = 16'h7002;
    LUT4 address_11__I_0_Mux_0_i443_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n14546), .Z(n443_adj_570)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i443_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i13392 (.D0(n13999), .D1(n13997), .SD(rom_addr[5]), .Z(n14000));
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(n15878), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460_adj_592)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    L6MUX21 i11861 (.D0(n1979), .D1(n12405), .SD(rom_addr[6]), .Z(n12560));
    L6MUX21 i11862 (.D0(n12545), .D1(n12546), .SD(rom_addr[7]), .Z(n12561));
    PFUMX i11863 (.BLUT(n12547), .ALUT(n12548), .C0(rom_addr[7]), .Z(n12562));
    LUT4 i3532_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4415)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3532_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 address_11__I_0_Mux_0_i541_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n14502), .Z(n541)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i541_3_lut_4_lut.init = 16'hf404;
    LUT4 i11883_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), .C(rom_addr[3]), 
         .D(n14610), .Z(n12582)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i5248_2_lut_rep_320 (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n14597)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5248_2_lut_rep_320.init = 16'h4444;
    LUT4 n2275_bdd_2_lut_13546_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13892)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2275_bdd_2_lut_13546_4_lut_4_lut.init = 16'h6100;
    LUT4 address_11__I_0_Mux_1_i220_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n220_adj_593)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut_4_lut.init = 16'h9008;
    L6MUX21 i11868 (.D0(n12557), .D1(n12558), .SD(rom_addr[7]), .Z(n12567));
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'he420;
    L6MUX21 i11919 (.D0(n12652), .D1(n12718), .SD(rom_addr[7]), .Z(n12618));
    LUT4 n8879_bdd_3_lut_13638_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13608)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+(D))+!B (D))) */ ;
    defparam n8879_bdd_3_lut_13638_4_lut_4_lut.init = 16'hdfc0;
    L6MUX21 i11920 (.D0(n12721), .D1(n12795), .SD(rom_addr[7]), .Z(n12619));
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n14529), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n15853), .Z(n364_adj_594)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7462_2_lut_rep_119_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14396)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7462_2_lut_rep_119_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n526_adj_578)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h0852;
    LUT4 i6064_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(n14587), .D(n1785), 
         .Z(n2428_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6064_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i412_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i412_3_lut_4_lut_4_lut_4_lut.init = 16'h1008;
    LUT4 i12033_4_lut (.A(n12368), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14713), 
         .Z(n12732)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12033_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435), .B(n15856), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731_adj_595)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (D))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'h0832;
    LUT4 i7455_4_lut_4_lut (.A(rom_addr[0]), .B(n15878), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7455_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n908)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut.init = 16'h0860;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_596)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut.init = 16'h080c;
    PFUMX i12163 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n12862));
    LUT4 n557_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n14287)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n557_bdd_3_lut_4_lut_4_lut.init = 16'hc008;
    L6MUX21 i11968 (.D0(n12664), .D1(n12665), .SD(rom_addr[7]), .Z(n12667));
    LUT4 n212_bdd_3_lut_13306_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13846)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n212_bdd_3_lut_13306_4_lut_4_lut.init = 16'h0812;
    LUT4 n2093_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n13618)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2093_bdd_3_lut_4_lut_4_lut.init = 16'h4810;
    PFUMX i12164 (.BLUT(n364_adj_594), .ALUT(n379_c), .C0(rom_addr[4]), 
          .Z(n12863));
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n4_adj_597)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4100;
    LUT4 i12172_3_lut (.A(n301), .B(n604_adj_598), .C(rom_addr[4]), .Z(n12871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12172_3_lut.init = 16'hcaca;
    L6MUX21 i11979 (.D0(n2365), .D1(n2428_adj_599), .SD(rom_addr[6]), 
            .Z(n12678));
    LUT4 i13539_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14733)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+(D))))) */ ;
    defparam i13539_then_4_lut.init = 16'h4041;
    LUT4 i13539_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14732)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i13539_else_4_lut.init = 16'h0140;
    LUT4 i12170_3_lut (.A(n557_adj_600), .B(n428_adj_601), .C(rom_addr[4]), 
         .Z(n12869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12170_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h0843;
    LUT4 i12169_3_lut (.A(n526_adj_602), .B(n875), .C(rom_addr[4]), .Z(n12868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12169_3_lut.init = 16'hcaca;
    L6MUX21 i11989 (.D0(n12685), .D1(n12686), .SD(rom_addr[7]), .Z(n12688));
    LUT4 n14185_bdd_3_lut (.A(n14633), .B(n14734), .C(rom_addr[6]), .Z(n14186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14185_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i11995 (.D0(n12690), .D1(n12691), .SD(rom_addr[7]), .Z(n12694));
    L6MUX21 i12011 (.D0(n12707), .D1(n12708), .SD(rom_addr[7]), .Z(n12710));
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14520), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14525), .Z(n61_adj_564)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i236_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n15856), .Z(n1483)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i236_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n15853), .Z(n2298_adj_603)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14529), .Z(n8913)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14525), .Z(n428_adj_562)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut (.A(rom_addr[1]), .B(n14451), 
         .C(rom_addr[4]), .D(n14620), .Z(n2141_adj_604)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut.init = 16'hc0ca;
    PFUMX i12179 (.BLUT(n684), .ALUT(n699), .C0(rom_addr[4]), .Z(n12878));
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14610), .Z(n1785_adj_605)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14522), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n14081), .C(n2589), 
         .D(rom_addr[6]), .Z(n15850)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 i7464_2_lut_rep_355 (.A(rom_addr[2]), .B(n15878), .C(rom_addr[0]), 
         .Z(n15853)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7464_2_lut_rep_355.init = 16'h4141;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n364_adj_606)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut.init = 16'h0a41;
    PFUMX i13390 (.BLUT(n13998), .ALUT(n1628), .C0(rom_addr[6]), .Z(n13999));
    LUT4 address_11__I_0_Mux_0_i53_3_lut_rep_356 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15854)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_0_i53_3_lut_rep_356.init = 16'h1818;
    LUT4 address_11__I_0_Mux_0_i221_3_lut_4_lut (.A(n15854), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n205), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n15854), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14505), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11735_3_lut_4_lut (.A(n14535), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_607), .Z(n12434)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11735_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12159_3_lut (.A(n2077), .B(n1529_adj_608), .C(rom_addr[4]), 
         .Z(n12858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12159_3_lut.init = 16'hcaca;
    LUT4 n668_bdd_3_lut_13659_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n668), .Z(n14162)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n668_bdd_3_lut_13659_4_lut.init = 16'hf202;
    LUT4 n2332_bdd_3_lut_13501_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n2332), .Z(n13932)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_13501_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), 
         .C(rom_addr[4]), .D(n14527), .Z(n189_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    PFUMX i12037 (.BLUT(n12734), .ALUT(n12735), .C0(rom_addr[7]), .Z(n12736));
    LUT4 i11728_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n78_adj_609), .Z(n12427)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11728_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11773_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n2009_adj_610), .Z(n12472)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11773_3_lut_4_lut.init = 16'hf202;
    LUT4 i11668_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n939), .Z(n12367)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11668_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i1978_3_lut_rep_116_4_lut (.A(rom_addr[0]), 
         .B(n14459), .C(rom_addr[4]), .D(n14447), .Z(n14393)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1978_3_lut_rep_116_4_lut.init = 16'hf202;
    LUT4 i11692_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n2283_adj_611), .Z(n12391)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11692_3_lut_4_lut.init = 16'hf202;
    LUT4 i12144_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n14637), .Z(n12843)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12144_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), 
         .C(rom_addr[4]), .D(n14451), .Z(n1275_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut.init = 16'hf202;
    LUT4 i12157_3_lut (.A(n1451_adj_612), .B(n1676_adj_613), .C(rom_addr[4]), 
         .Z(n12856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12157_3_lut.init = 16'hcaca;
    L6MUX21 i12051 (.D0(n12748), .D1(n12749), .SD(rom_addr[7]), .Z(n2044_adj_614));
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15859)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i11701_3_lut_4_lut (.A(rom_addr[0]), .B(n14518), .C(rom_addr[4]), 
         .D(n1785), .Z(n12400)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11701_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12054 (.D0(n12435), .D1(n381_adj_615), .SD(rom_addr[6]), 
            .Z(n12753));
    LUT4 address_11__I_0_Mux_5_i1628_4_lut_4_lut (.A(rom_addr[0]), .B(n14518), 
         .C(n6810), .D(rom_addr[4]), .Z(n1628)) /* synthesis lut_function=(A (B (D))+!A !(C+(D))) */ ;
    defparam address_11__I_0_Mux_5_i1628_4_lut_4_lut.init = 16'h8805;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14519), 
         .C(rom_addr[5]), .D(n14460), .Z(n1692)) /* synthesis lut_function=(!((B (C (D))+!B ((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h08a8;
    LUT4 n1181_bdd_3_lut_13577_4_lut (.A(rom_addr[0]), .B(n14519), .C(rom_addr[4]), 
         .D(n1196), .Z(n13729)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1181_bdd_3_lut_13577_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut (.A(n14520), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14627), .Z(n716)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut.init = 16'hf202;
    PFUMX i12059 (.BLUT(n956_adj_616), .ALUT(n1019), .C0(rom_addr[6]), 
          .Z(n12758));
    LUT4 i12154_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12154_3_lut.init = 16'hcaca;
    PFUMX i13388 (.BLUT(n13996), .ALUT(n13995), .C0(rom_addr[6]), .Z(n13997));
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n14520), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14465), .Z(n1676_adj_617)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14450), .Z(n1820)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12186_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_590), .Z(n12885)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12186_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12153_3_lut (.A(n270_c), .B(n285), .C(rom_addr[4]), .Z(n12852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12153_3_lut.init = 16'hcaca;
    L6MUX21 i12063 (.D0(n1468), .D1(n1531_adj_556), .SD(rom_addr[6]), 
            .Z(n12762));
    L6MUX21 i12065 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n12764));
    L6MUX21 i12103 (.D0(n12800), .D1(n12801), .SD(rom_addr[7]), .Z(n12802));
    LUT4 i12753_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5603)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12753_2_lut.init = 16'h9999;
    L6MUX21 i12110 (.D0(n12807), .D1(n12808), .SD(rom_addr[7]), .Z(n12809));
    L6MUX21 i12127 (.D0(n12824), .D1(n12825), .SD(rom_addr[6]), .Z(n12826));
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14542), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_618), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i12133 (.BLUT(n12829), .ALUT(n12830), .C0(rom_addr[6]), .Z(n12832));
    LUT4 i7427_2_lut_4_lut_4_lut (.A(n14459), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14537), .Z(n1851_adj_619)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7427_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_4_lut_4_lut (.A(n14535), .B(rom_addr[3]), 
         .C(n14486), .D(rom_addr[0]), .Z(n604)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_0_i604_3_lut_4_lut_4_lut.init = 16'h11d1;
    LUT4 i12612_3_lut_4_lut (.A(n14455), .B(n12047), .C(rom_addr[5]), 
         .D(n1565_adj_620), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12612_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12148_3_lut (.A(n236), .B(n251_adj_569), .C(rom_addr[4]), .Z(n12847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12148_3_lut.init = 16'hcaca;
    LUT4 i12147_3_lut (.A(n541), .B(n220_adj_621), .C(rom_addr[4]), .Z(n12846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12147_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    LUT4 i11691_3_lut_4_lut (.A(rom_addr[0]), .B(n14551), .C(rom_addr[4]), 
         .D(n14527), .Z(n12390)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11691_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i732_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14551), 
         .C(rom_addr[5]), .D(n14495), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 n1628_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n1549), .Z(n13998)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1628_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11782_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n14673), .Z(n12481)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11782_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11762_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), .C(rom_addr[4]), 
         .D(n1835), .Z(n12461)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11762_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_rep_267_2_lut (.A(rom_addr[2]), .B(rom_addr[4]), .Z(n14544)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_267_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14459), 
         .C(rom_addr[4]), .D(n1435_adj_622), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n12270), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14529), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_623), .Z(n2523_adj_624)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 i5893_3_lut_4_lut (.A(n14529), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6805), .Z(n6806)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5893_3_lut_4_lut.init = 16'hf808;
    LUT4 i5892_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), .C(rom_addr[5]), 
         .D(n2522_adj_625), .Z(n6805)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5892_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11720_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), .C(rom_addr[4]), 
         .D(n2522_adj_625), .Z(n12419)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11720_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_626)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11680_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), .C(rom_addr[4]), 
         .D(n2298), .Z(n12379)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11680_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_627)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n6794), .C0(n12260), 
          .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11698_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), .C(rom_addr[4]), 
         .D(n2573), .Z(n12397)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11698_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11685_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), .C(rom_addr[4]), 
         .D(n14608), .Z(n12384)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11685_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14615), 
         .C(rom_addr[4]), .D(n2444), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11677_3_lut_4_lut (.A(n14610), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14445), .Z(n12376)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11677_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n14610), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n14610), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_612), .Z(n1723_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n14610), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14501), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14533), 
         .C(rom_addr[4]), .D(n1612), .Z(n1628_adj_628)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i13381 (.D0(n13988), .D1(n13986), .SD(rom_addr[6]), .Z(n13989));
    LUT4 n12542_bdd_3_lut_13573 (.A(n12542), .B(n12543), .C(rom_addr[4]), 
         .Z(n13727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12542_bdd_3_lut_13573.init = 16'hcaca;
    LUT4 n13616_bdd_3_lut_4_lut (.A(n14452), .B(n14544), .C(rom_addr[5]), 
         .D(n13616), .Z(n13617)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13616_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n14461), .B(n14599), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466_adj_629)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n14452), .B(n14544), 
         .C(rom_addr[5]), .D(n2141_adj_630), .Z(n2173_adj_631)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n14452), .B(n14544), 
         .C(rom_addr[5]), .D(n2141_adj_604), .Z(n2173_adj_632)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785_adj_605), .B(n1243_adj_633), 
         .C(rom_addr[4]), .Z(n1244_adj_634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14538), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14610), .Z(n1755)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    PFUMX i13379 (.BLUT(n13987), .ALUT(n14405), .C0(rom_addr[5]), .Z(n13988));
    L6MUX21 i11805 (.D0(n12578), .D1(n1149_adj_635), .SD(rom_addr[6]), 
            .Z(n12504));
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14538), .B(rom_addr[3]), 
         .C(n14542), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    L6MUX21 i11809 (.D0(n1597_adj_636), .D1(n12606), .SD(rom_addr[6]), 
            .Z(n12508));
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n1898), .Z(n1914)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12537_3_lut (.A(n1244_adj_634), .B(n1275), .C(rom_addr[5]), 
         .Z(n12835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12537_3_lut.init = 16'hcaca;
    LUT4 i11665_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), .C(rom_addr[4]), 
         .D(n1084_c), .Z(n12364)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11665_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n1785), .Z(n1786_adj_638)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 i12638_3_lut (.A(n2010_adj_639), .B(n14719), .C(rom_addr[5]), 
         .Z(n12830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12638_3_lut.init = 16'hcaca;
    PFUMX i13723 (.BLUT(n14696), .ALUT(n14697), .C0(n14594), .Z(n14698));
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914_adj_640)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n14480), .Z(n1628_adj_641)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11811 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n12510));
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n2009_adj_642), .Z(n2010_adj_639)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n14547), .Z(n1820_adj_643)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), 
         .C(rom_addr[4]), .D(n1529_adj_608), .Z(n1530_adj_644)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 i11906_3_lut_4_lut (.A(rom_addr[0]), .B(n14537), .C(rom_addr[4]), 
         .D(n1658), .Z(n12605)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11906_3_lut_4_lut.init = 16'hf808;
    LUT4 i11729_3_lut_4_lut (.A(n14593), .B(n14608), .C(rom_addr[4]), 
         .D(n875), .Z(n12428)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11729_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12539_3_lut (.A(n1883), .B(n1914_adj_645), .C(rom_addr[5]), 
         .Z(n12828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12539_3_lut.init = 16'hcaca;
    LUT4 i7665_4_lut (.A(rom_addr[0]), .B(n14459), .C(n14533), .D(rom_addr[4]), 
         .Z(n1117_adj_646)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7665_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785_adj_605), 
         .C(rom_addr[4]), .Z(n1786_adj_647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 i11776_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14542), .Z(n12475)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11776_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15854), .Z(n1084_adj_648)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut (.A(n14594), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14627), .Z(n124_adj_649)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11944_3_lut_4_lut (.A(rom_addr[1]), .B(n14608), .C(rom_addr[4]), 
         .D(n30), .Z(n12643)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11944_3_lut_4_lut.init = 16'hf808;
    PFUMX i11747 (.BLUT(n620_adj_650), .ALUT(n635), .C0(rom_addr[4]), 
          .Z(n12446));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_613), .B(n1691), 
         .C(rom_addr[4]), .Z(n1692_adj_651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    L6MUX21 i11847 (.D0(n190), .D1(n12848), .SD(rom_addr[6]), .Z(n12546));
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15878), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 address_11__I_0_Mux_0_i228_3_lut_rep_358 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15856)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_0_i228_3_lut_rep_358.init = 16'h8383;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_618), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_652)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14655)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    L6MUX21 i11850 (.D0(n12870), .D1(n12873), .SD(rom_addr[6]), .Z(n12549));
    LUT4 i11892_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), .C(rom_addr[3]), 
         .D(n14612), .Z(n12591)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11892_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14546), .Z(n428_adj_601)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i428_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11853 (.D0(n12910), .D1(n12356), .SD(rom_addr[6]), .Z(n12552));
    L6MUX21 i11854 (.D0(n12365), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12553));
    LUT4 address_11__I_0_Mux_0_i939_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14613), .Z(n939)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i939_3_lut_4_lut.init = 16'h2f20;
    LUT4 n10879_bdd_4_lut (.A(n14416), .B(rom_addr[4]), .C(n12082), .D(rom_addr[5]), 
         .Z(n14389)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n10879_bdd_4_lut.init = 16'hf011;
    LUT4 i12322_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[4]), 
         .D(n270_adj_653), .Z(n12433)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12322_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14522), .Z(n220)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1483), .B(n1228_adj_654), 
         .C(rom_addr[4]), .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    L6MUX21 i11857 (.D0(n12374), .D1(n12383), .SD(rom_addr[6]), .Z(n12556));
    PFUMX i11858 (.BLUT(n1597), .ALUT(n1660), .C0(rom_addr[6]), .Z(n12557));
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), .C(n14546), 
         .D(rom_addr[3]), .Z(n14289)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14554), .B(n14625), 
         .C(rom_addr[4]), .D(n1785), .Z(n2205_adj_655)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14627), .Z(n526)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15858)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut_else_4_lut.init = 16'h0020;
    PFUMX i13377 (.BLUT(n14405), .ALUT(n13985), .C0(rom_addr[5]), .Z(n13986));
    LUT4 address_11__I_0_Mux_2_i875_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14546), .Z(n875_adj_656)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i875_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14535), .Z(n653_adj_657)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n14593), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14542), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7746_2_lut_rep_114_4_lut (.A(n6866), .B(n2621), .C(n14576), 
         .D(n14552), .Z(n14391)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7746_2_lut_rep_114_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14654)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    LUT4 i11707_3_lut_4_lut (.A(rom_addr[0]), .B(n14410), .C(rom_addr[4]), 
         .D(n2252), .Z(n12406)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11707_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[4]), .B(n14458), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n2684)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14522), .Z(n604_adj_598)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX i11859 (.BLUT(n1724_adj_658), .ALUT(n1787_adj_659), .C0(rom_addr[6]), 
          .Z(n12558));
    LUT4 i12210_3_lut_4_lut (.A(n14597), .B(n14606), .C(rom_addr[4]), 
         .D(n939), .Z(n12909)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i12210_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11705_3_lut_4_lut (.A(n14600), .B(n14608), .C(rom_addr[4]), 
         .D(n2040), .Z(n12404)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11705_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n14540), 
         .C(rom_addr[3]), .D(n14529), .Z(n124_adj_660)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n14600), .B(n14608), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_661)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 n13324_bdd_3_lut (.A(n14685), .B(n13323), .C(rom_addr[5]), .Z(n13325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13324_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n14546), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_c), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11711_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14662)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i11711_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n14546), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364_adj_662), .Z(n380_adj_663)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11860 (.BLUT(n1852_adj_664), .ALUT(n1915_adj_665), .C0(rom_addr[6]), 
          .Z(n12559));
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14538), .Z(n61_adj_666)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 i11650_3_lut_4_lut (.A(rom_addr[0]), .B(n14458), .C(rom_addr[4]), 
         .D(n443_adj_570), .Z(n12349)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11650_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n14458), 
         .C(rom_addr[4]), .D(n14547), .Z(n2141_adj_630)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1308_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14458), .C(rom_addr[4]), 
         .D(n1308), .Z(n14034)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1308_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i11779_3_lut_4_lut_4_lut (.A(n14599), .B(n2252), .C(rom_addr[4]), 
         .D(n14625), .Z(n12478)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i11779_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12093_3_lut_4_lut (.A(rom_addr[0]), .B(n14458), .C(rom_addr[4]), 
         .D(n1002), .Z(n12792)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12093_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11841_3_lut_4_lut (.A(rom_addr[0]), .B(n14458), .C(rom_addr[4]), 
         .D(n890), .Z(n12540)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11841_3_lut_4_lut.init = 16'hf202;
    LUT4 i11711_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n14661)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11711_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 n2552_bdd_3_lut_12933_4_lut (.A(rom_addr[0]), .B(n14486), .C(rom_addr[3]), 
         .D(n14502), .Z(n13322)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n2552_bdd_3_lut_12933_4_lut.init = 16'h7f70;
    LUT4 i12428_3_lut (.A(n971), .B(n986_adj_667), .C(rom_addr[4]), .Z(n12791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12428_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n14610), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11916 (.D0(n12613), .D1(n12614), .SD(rom_addr[6]), .Z(n12615));
    LUT4 i12091_3_lut (.A(n2009_adj_610), .B(n954), .C(rom_addr[4]), .Z(n12790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12091_3_lut.init = 16'hcaca;
    LUT4 i12090_3_lut (.A(n908_adj_668), .B(n875), .C(rom_addr[4]), .Z(n12789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12090_3_lut.init = 16'hcaca;
    LUT4 n1898_bdd_3_lut_13498_4_lut (.A(rom_addr[0]), .B(n14486), .C(rom_addr[3]), 
         .D(n14627), .Z(n13930)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n1898_bdd_3_lut_13498_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14486), 
         .C(rom_addr[3]), .D(n15853), .Z(n2298_adj_669)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14664)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    LUT4 i5970_2_lut_rep_359 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15857)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5970_2_lut_rep_359.init = 16'h6666;
    PFUMX i11940 (.BLUT(n12637), .ALUT(n12638), .C0(rom_addr[6]), .Z(n12639));
    LUT4 i12434_3_lut (.A(n12591), .B(n12592), .C(rom_addr[4]), .Z(n12593)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12434_3_lut.init = 16'hcaca;
    L6MUX21 i11953 (.D0(n12650), .D1(n12651), .SD(rom_addr[6]), .Z(n12652));
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    L6MUX21 i11964 (.D0(n12377), .D1(n12380), .SD(rom_addr[6]), .Z(n12663));
    PFUMX i11965 (.BLUT(n2365_adj_671), .ALUT(n12386), .C0(rom_addr[6]), 
          .Z(n12664));
    LUT4 i7648_4_lut (.A(n14473), .B(rom_addr[4]), .C(n14579), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7648_4_lut.init = 16'hc088;
    LUT4 i11702_3_lut_4_lut (.A(rom_addr[0]), .B(n14410), .C(rom_addr[4]), 
         .D(n2220), .Z(n12401)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11702_3_lut_4_lut.init = 16'h2f20;
    LUT4 n13851_bdd_3_lut_13397 (.A(n13851), .B(n2109), .C(rom_addr[5]), 
         .Z(n13852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13851_bdd_3_lut_13397.init = 16'hcaca;
    LUT4 n14448_bdd_4_lut (.A(n14448), .B(n14594), .C(n14608), .D(rom_addr[4]), 
         .Z(n15629)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n14448_bdd_4_lut.init = 16'haac0;
    LUT4 n14448_bdd_2_lut (.A(n14433), .B(rom_addr[0]), .Z(n15630)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n14448_bdd_2_lut.init = 16'h1111;
    LUT4 n14538_bdd_4_lut_14314 (.A(n14459), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n15632)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n14538_bdd_4_lut_14314.init = 16'h11f0;
    LUT4 n14538_bdd_4_lut_14347 (.A(n14538), .B(n1835), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n15633)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam n14538_bdd_4_lut_14347.init = 16'hf5cc;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14525), .Z(n443_adj_563)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 n2235_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14629), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13337)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2235_bdd_3_lut_4_lut.init = 16'h4004;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(n14612), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14538), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 address_11__I_0_Mux_0_i397_3_lut_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14538), .Z(n205)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i397_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    PFUMX i11966 (.BLUT(n12389), .ALUT(n6806), .C0(rom_addr[6]), .Z(n12665));
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n14426), .B(n14450), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    PFUMX i11970 (.BLUT(n2110), .ALUT(n2173_adj_631), .C0(rom_addr[6]), 
          .Z(n12669));
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14460), 
         .C(rom_addr[5]), .D(n14410), .Z(n1692_adj_672)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 i11679_3_lut_4_lut (.A(rom_addr[1]), .B(n15857), .C(rom_addr[4]), 
         .D(n2267), .Z(n12378)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11679_3_lut_4_lut.init = 16'hf101;
    LUT4 i12044_3_lut (.A(n12741), .B(n12742), .C(rom_addr[10]), .Z(n12743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12044_3_lut.init = 16'hcaca;
    LUT4 i4532_3_lut_4_lut (.A(n14553), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14410), .Z(n5415)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4532_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11971 (.D0(n12402), .D1(n12408), .SD(rom_addr[6]), .Z(n12670));
    PFUMX i11972 (.BLUT(n12411), .ALUT(n2428_c), .C0(rom_addr[6]), .Z(n12671));
    LUT4 i11903_3_lut_4_lut (.A(rom_addr[0]), .B(n14410), .C(rom_addr[4]), 
         .D(n1466_adj_673), .Z(n12602)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11903_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_674)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14410), 
         .C(rom_addr[5]), .D(n1786_adj_638), .Z(n1787_adj_675)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i11771_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[4]), 
         .D(n1643), .Z(n12470)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11771_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14522), .B(n14405), .C(rom_addr[5]), 
         .D(n12071), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    L6MUX21 i11973 (.D0(n12417), .D1(n12420), .SD(rom_addr[6]), .Z(n12672));
    LUT4 i11950_3_lut (.A(n620), .B(n541), .C(rom_addr[4]), .Z(n12649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11950_3_lut.init = 16'hcaca;
    LUT4 i11949_3_lut (.A(n491), .B(n604_adj_596), .C(rom_addr[4]), .Z(n12648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11949_3_lut.init = 16'hcaca;
    LUT4 i11947_3_lut (.A(n526_adj_677), .B(n443), .C(rom_addr[4]), .Z(n12646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11947_3_lut.init = 16'hcaca;
    LUT4 i11945_3_lut (.A(n46), .B(n61_adj_666), .C(rom_addr[4]), .Z(n12644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11945_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14602), .Z(n2283_adj_611)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    PFUMX i11980 (.BLUT(n2492), .ALUT(n2555_c), .C0(rom_addr[6]), .Z(n12679));
    LUT4 i3103_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14668)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3103_4_lut_then_4_lut.init = 16'hfffb;
    LUT4 i11941_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n12640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11941_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14529), .Z(n397)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11984 (.D0(n12633), .D1(n2173), .SD(rom_addr[6]), .Z(n12683));
    PFUMX i11986 (.BLUT(n12642), .ALUT(n2428_adj_678), .C0(rom_addr[6]), 
          .Z(n12685));
    LUT4 i3103_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .Z(n14667)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3103_4_lut_else_4_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14535), .Z(n2009_adj_610)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 n13510_bdd_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14671)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+(D))))) */ ;
    defparam n13510_bdd_3_lut_then_4_lut.init = 16'h046d;
    PFUMX i11987 (.BLUT(n2492_adj_679), .ALUT(n2555_adj_680), .C0(rom_addr[6]), 
          .Z(n12686));
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), 
         .C(rom_addr[4]), .D(n14442), .Z(n1755_adj_681)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n14609), .B(rom_addr[2]), 
         .C(n15856), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    PFUMX i11991 (.BLUT(n2110_adj_682), .ALUT(n2173_adj_683), .C0(rom_addr[6]), 
          .Z(n12690));
    LUT4 n2298_bdd_3_lut_13545 (.A(n2298_adj_669), .B(n2283), .C(rom_addr[4]), 
         .Z(n13890)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2298_bdd_3_lut_13545.init = 16'hacac;
    LUT4 n13510_bdd_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14670)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam n13510_bdd_3_lut_else_4_lut.init = 16'h20b4;
    LUT4 n13893_bdd_3_lut (.A(n13893), .B(n13890), .C(rom_addr[5]), .Z(n13894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13893_bdd_3_lut.init = 16'hcaca;
    PFUMX i11992 (.BLUT(n2237), .ALUT(n12414), .C0(rom_addr[6]), .Z(n12691));
    PFUMX i13721 (.BLUT(n14693), .ALUT(n14694), .C0(rom_addr[1]), .Z(n14695));
    LUT4 i5033_2_lut (.A(rom_addr[3]), .B(rom_addr[1]), .Z(n5929)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5033_2_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n14609), .B(rom_addr[2]), 
         .C(n14488), .D(rom_addr[3]), .Z(n653_adj_684)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14609), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14612), .Z(n986_adj_667)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n15854), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11994 (.D0(n12432), .D1(n2555_adj_685), .SD(rom_addr[6]), 
            .Z(n12693));
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14609), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14522), .Z(n78_adj_609)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11911_4_lut (.A(n14547), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4976), 
         .Z(n12610)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11911_4_lut.init = 16'h0aca;
    LUT4 i11908_4_lut (.A(n6838), .B(n14396), .C(rom_addr[4]), .D(n14570), 
         .Z(n12607)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11908_4_lut.init = 16'hcac0;
    LUT4 rom_addr_0__bdd_4_lut_13718 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14673)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13718.init = 16'h0da3;
    L6MUX21 i12007 (.D0(n12699), .D1(n12700), .SD(rom_addr[6]), .Z(n12706));
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_686), .B(n1483), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14522), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i12008 (.D0(n12701), .D1(n12702), .SD(rom_addr[6]), .Z(n12707));
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14611), .Z(n1691)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    L6MUX21 i12009 (.D0(n12703), .D1(n12704), .SD(rom_addr[6]), .Z(n12708));
    L6MUX21 i12019 (.D0(n12716), .D1(n12717), .SD(rom_addr[6]), .Z(n12718));
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[4]), .D(n14519), .Z(n1676_adj_687)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14627), .Z(n379)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n460), .C(rom_addr[4]), 
         .Z(n507_adj_689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    L6MUX21 i12022 (.D0(n12719), .D1(n12720), .SD(rom_addr[6]), .Z(n12721));
    LUT4 i5933_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14675)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5933_3_lut_4_lut_then_4_lut.init = 16'h5825;
    PFUMX i11760 (.BLUT(n12457), .ALUT(n12458), .C0(rom_addr[4]), .Z(n12459));
    L6MUX21 i12027 (.D0(n12898), .D1(n12350), .SD(rom_addr[6]), .Z(n12726));
    PFUMX i12049 (.BLUT(n12744), .ALUT(n12745), .C0(rom_addr[6]), .Z(n12748));
    LUT4 i5933_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14674)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5933_3_lut_4_lut_else_4_lut.init = 16'h8020;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14410), 
         .C(n5415), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14529), .Z(n1435)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut.init = 16'h02f2;
    PFUMX i12050 (.BLUT(n12746), .ALUT(n12747), .C0(rom_addr[6]), .Z(n12749));
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n15853), .Z(n364_adj_662)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i12052 (.D0(n63_adj_566), .D1(n12429), .SD(rom_addr[6]), .Z(n12751));
    PFUMX i12053 (.BLUT(n190_adj_690), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12752));
    L6MUX21 i12057 (.D0(n12453), .D1(n764), .SD(rom_addr[6]), .Z(n12756));
    L6MUX21 i12058 (.D0(n829_adj_561), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12757));
    PFUMX i12060 (.BLUT(n12456), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12759));
    PFUMX i13719 (.BLUT(n14690), .ALUT(n14691), .C0(rom_addr[0]), .Z(n14692));
    L6MUX21 i12061 (.D0(n1213), .D1(n12462), .SD(rom_addr[6]), .Z(n12760));
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14410), 
         .C(rom_addr[5]), .D(n1786_adj_674), .Z(n1787_adj_659)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14488), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(n15856), .D(rom_addr[3]), .Z(n2040_adj_589)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i5899_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n14678)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i5899_4_lut_4_lut_then_3_lut.init = 16'h2020;
    LUT4 n2039_bdd_4_lut (.A(n14405), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n15854), .Z(n13919)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n2039_bdd_4_lut.init = 16'hb888;
    PFUMX i12064 (.BLUT(n1597_adj_692), .ALUT(n1660_adj_693), .C0(rom_addr[6]), 
          .Z(n12763));
    LUT4 i12468_3_lut (.A(n1228_adj_694), .B(n1243_adj_695), .C(rom_addr[4]), 
         .Z(n12585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12468_3_lut.init = 16'hcaca;
    LUT4 i11881_4_lut (.A(n14480), .B(n14570), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12580)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11881_4_lut.init = 16'hfaca;
    LUT4 address_11__I_0_Mux_5_i860_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n15868)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut_then_4_lut.init = 16'h0008;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14546), .Z(n1466_adj_673)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 n1340_bdd_4_lut (.A(n14448), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(n15854), .Z(n13917)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut.init = 16'hb888;
    LUT4 i5899_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14677)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i5899_4_lut_4_lut_else_3_lut.init = 16'h4454;
    PFUMX i12066 (.BLUT(n12465), .ALUT(n1915_adj_696), .C0(rom_addr[6]), 
          .Z(n12765));
    LUT4 i12471_3_lut (.A(n1038_adj_697), .B(n1053), .C(rom_addr[4]), 
         .Z(n12576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12471_3_lut.init = 16'hcaca;
    LUT4 i11796_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14681)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i11796_then_4_lut.init = 16'h214a;
    LUT4 i11796_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14680)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i11796_else_4_lut.init = 16'h081e;
    L6MUX21 i12067 (.D0(n12471), .D1(n12474), .SD(rom_addr[6]), .Z(n12766));
    PFUMX i12087 (.BLUT(n12782), .ALUT(n12783), .C0(rom_addr[6]), .Z(n12786));
    LUT4 i11673_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14579), .C(rom_addr[4]), 
         .D(n5303), .Z(n12372)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;
    defparam i11673_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n1834), .Z(n333)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(n15854), .D(rom_addr[3]), .Z(n2522_adj_623)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11769 (.BLUT(n12466), .ALUT(n12467), .C0(rom_addr[4]), .Z(n12468));
    L6MUX21 i12088 (.D0(n12784), .D1(n12785), .SD(rom_addr[6]), .Z(n12787));
    L6MUX21 i12096 (.D0(n12793), .D1(n12794), .SD(rom_addr[6]), .Z(n12795));
    LUT4 i12473_3_lut (.A(n844_adj_698), .B(n859), .C(rom_addr[4]), .Z(n12539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12473_3_lut.init = 16'hcaca;
    L6MUX21 i12101 (.D0(n14389), .D1(n12797), .SD(rom_addr[6]), .Z(n12800));
    L6MUX21 i12102 (.D0(n12798), .D1(n12799), .SD(rom_addr[6]), .Z(n12801));
    L6MUX21 i12108 (.D0(n12803), .D1(n12804), .SD(rom_addr[6]), .Z(n12807));
    L6MUX21 i12109 (.D0(n12805), .D1(n12806), .SD(rom_addr[6]), .Z(n12808));
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14535), .Z(n1243_adj_633)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11786_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), .C(n14502), 
         .D(rom_addr[3]), .Z(n12485)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i11786_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(rom_addr[3]), .D(n14529), .Z(n2380)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(n1785_adj_605), .D(rom_addr[4]), .Z(n1914_adj_645)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    L6MUX21 i12116 (.D0(n12812), .D1(n12813), .SD(rom_addr[6]), .Z(n12815));
    PFUMX i11778 (.BLUT(n12475), .ALUT(n12476), .C0(rom_addr[4]), .Z(n12477));
    LUT4 i11837_3_lut (.A(n1101), .B(n731_adj_700), .C(rom_addr[4]), .Z(n12536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11837_3_lut.init = 16'hcaca;
    LUT4 i11750_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), .C(n14610), 
         .D(rom_addr[3]), .Z(n12449)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i11750_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 n2573_bdd_4_lut_12941_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14684)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam n2573_bdd_4_lut_12941_then_4_lut.init = 16'h04c1;
    LUT4 i11832_3_lut (.A(n684_adj_701), .B(n699_adj_702), .C(rom_addr[4]), 
         .Z(n12531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11832_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14579), 
         .C(n14602), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 n2573_bdd_4_lut_12941_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14683)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam n2573_bdd_4_lut_12941_else_4_lut.init = 16'h4801;
    L6MUX21 i12123 (.D0(n12819), .D1(n12820), .SD(rom_addr[6]), .Z(n12822));
    PFUMX i12125 (.BLUT(n1054_adj_580), .ALUT(n1085_adj_703), .C0(rom_addr[5]), 
          .Z(n12824));
    LUT4 i12477_3_lut (.A(n589_adj_704), .B(n604_adj_705), .C(rom_addr[4]), 
         .Z(n12527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12477_3_lut.init = 16'hcaca;
    LUT4 i11704_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[4]), 
         .D(n2009), .Z(n12403)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11704_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14687)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    PFUMX i12132 (.BLUT(n12827), .ALUT(n12828), .C0(rom_addr[6]), .Z(n12831));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n14682), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14630), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_707)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11674_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[4]), 
         .D(n1466_adj_629), .Z(n12373)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11674_3_lut_4_lut.init = 16'hf202;
    PFUMX i12137 (.BLUT(n12834), .ALUT(n12835), .C0(rom_addr[6]), .Z(n12836));
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14630), 
         .C(rom_addr[4]), .D(n526), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut (.A(n14433), .B(rom_addr[7]), .C(n6630), .D(rom_addr[5]), 
         .Z(n11067)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n14554), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14542), .Z(n1243_adj_695)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3871), .Z(n11008)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i7448_4_lut (.A(rom_addr[0]), .B(n15866), .C(n14432), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7448_4_lut.init = 16'h0a22;
    LUT4 n13932_bdd_3_lut (.A(n13932), .B(n13931), .C(rom_addr[5]), .Z(n13933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13932_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14686)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668), .B(n924_adj_708), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14613), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12162 (.D0(n12859), .D1(n12860), .SD(rom_addr[6]), .Z(n12861));
    L6MUX21 i12177 (.D0(n12874), .D1(n12875), .SD(rom_addr[6]), .Z(n12876));
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), 
         .C(rom_addr[5]), .D(n1676_adj_687), .Z(n1692_adj_709)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12128_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[5]), 
         .D(n1851_adj_710), .Z(n12827)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12128_3_lut_4_lut.init = 16'hf202;
    LUT4 n574_bdd_4_lut (.A(n574), .B(n542), .C(rom_addr[5]), .D(rom_addr[7]), 
         .Z(n14955)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam n574_bdd_4_lut.init = 16'haaac;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n15854), .Z(n1435_adj_622)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14612), .Z(n2009_adj_642)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i12046_3_lut_4_lut (.A(rom_addr[0]), .B(n14460), .C(rom_addr[5]), 
         .D(n1914), .Z(n12745)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12046_3_lut_4_lut.init = 16'hf202;
    LUT4 n892_bdd_4_lut (.A(n892), .B(n15869), .C(rom_addr[5]), .D(rom_addr[6]), 
         .Z(n14953)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam n892_bdd_4_lut.init = 16'hacaa;
    L6MUX21 i12029 (.D0(n12353), .D1(n12359), .SD(rom_addr[6]), .Z(n12728));
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14535), .Z(n1483_adj_712)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12190 (.D0(n12887), .D1(n12888), .SD(rom_addr[6]), .Z(n12889));
    LUT4 i11758_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), .C(rom_addr[3]), 
         .D(n14571), .Z(n12457)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11758_3_lut_4_lut.init = 16'h02f2;
    LUT4 i7772_4_lut (.A(n2621_adj_713), .B(n14552), .C(n2684_adj_714), 
         .D(rom_addr[6]), .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7772_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n14494), .Z(n2621_adj_713)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i12520_3_lut (.A(n12369), .B(n12370), .C(rom_addr[5]), .Z(n12371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12520_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(n9), .B(rom_addr[7]), .C(n12160), .D(rom_addr[1]), 
         .Z(n12053)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0200;
    LUT4 rom_addr_0__bdd_4_lut_13749 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n301_adj_607)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B (C+(D))+!B !(C))) */ ;
    defparam rom_addr_0__bdd_4_lut_13749.init = 16'hb214;
    LUT4 i3_4_lut (.A(rom_addr[8]), .B(n14509), .C(rom_addr[3]), .D(rom_addr[4]), 
         .Z(n9)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0440;
    LUT4 i11464_2_lut (.A(rom_addr[5]), .B(rom_addr[6]), .Z(n12160)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11464_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14627), .Z(n1931)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut.init = 16'hf202;
    LUT4 i5951_4_lut_4_lut (.A(n14579), .B(rom_addr[3]), .C(n14529), .D(n12196), 
         .Z(n6864)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5951_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11818_3_lut (.A(n15635), .B(n12507), .C(rom_addr[7]), .Z(n12517)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11818_3_lut.init = 16'hcaca;
    LUT4 i11819_3_lut (.A(n12508), .B(n12509), .C(rom_addr[7]), .Z(n12518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11819_3_lut.init = 16'hcaca;
    LUT4 i12297_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n12482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12297_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n15853), .Z(n2332)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'hf202;
    LUT4 i11942_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14691)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam i11942_4_lut_then_4_lut.init = 16'hb8a4;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14553), 
         .C(rom_addr[3]), .D(n14535), .Z(n428_adj_577)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i11777_3_lut (.A(n15856), .B(n14613), .C(rom_addr[3]), .Z(n12476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11777_3_lut.init = 16'hcaca;
    PFUMX i11963 (.BLUT(n12371), .ALUT(n2173_adj_632), .C0(rom_addr[6]), 
          .Z(n12662));
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n14580), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13716 (.BLUT(n14686), .ALUT(n14687), .C0(rom_addr[2]), .Z(n14688));
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_adj_716), 
          .C0(rom_addr[5]), .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12124_3_lut (.A(n14000), .B(n12822), .C(rom_addr[7]), .Z(n1789_adj_717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12124_3_lut.init = 16'hcaca;
    LUT4 i11942_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14690)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11942_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14579), .B(rom_addr[4]), 
         .C(n14541), .D(n12186), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12184_3_lut_4_lut_4_lut (.A(n14579), .B(rom_addr[3]), .C(n14610), 
         .D(rom_addr[4]), .Z(n12883)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i12184_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 i12010_3_lut (.A(n13853), .B(n12706), .C(rom_addr[7]), .Z(n12709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12010_3_lut.init = 16'hcaca;
    L6MUX21 i11846 (.D0(n12645), .D1(n12845), .SD(rom_addr[6]), .Z(n12545));
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14609), .B(n14608), 
         .C(rom_addr[4]), .D(n1483_adj_712), .Z(n1499_adj_718)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12055_3_lut (.A(n12438), .B(n508), .C(rom_addr[6]), .Z(n12754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12055_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n12468), .B(n507_adj_689), 
         .C(rom_addr[5]), .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14609), .B(n14608), 
         .C(rom_addr[4]), .D(n1691_adj_719), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12056_3_lut (.A(n12444), .B(n12447), .C(rom_addr[6]), .Z(n12755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12056_3_lut.init = 16'hcaca;
    LUT4 i12556_3_lut (.A(n12463), .B(n14728), .C(rom_addr[5]), .Z(n12465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12556_3_lut.init = 16'hcaca;
    LUT4 i11996_3_lut (.A(n13934), .B(n12693), .C(rom_addr[7]), .Z(n12695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11996_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565), .B(n1596_c), .C(rom_addr[5]), 
         .Z(n1597_adj_692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i11759_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), .C(rom_addr[3]), 
         .D(n14546), .Z(n12458)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11759_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11797 (.D0(n63), .D1(n12483), .SD(rom_addr[6]), .Z(n12496));
    L6MUX21 i11697 (.D0(n12394), .D1(n12395), .SD(rom_addr[6]), .Z(n12396));
    LUT4 i12697_4_lut (.A(n2573_adj_720), .B(n15850), .C(rom_addr[6]), 
         .D(n14580), .Z(n2685_adj_721)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12697_4_lut.init = 16'hccca;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_722), .ALUT(n1883_adj_723), 
          .C0(n14580), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12562_3_lut (.A(n14698), .B(n13848), .C(rom_addr[5]), .Z(n12456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12562_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596), .C0(n12315), 
          .Z(n1597_adj_636)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11829_3_lut (.A(n475_adj_725), .B(n875), .C(rom_addr[4]), .Z(n12528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11829_3_lut.init = 16'hcaca;
    LUT4 i11988_3_lut (.A(n12683), .B(n13895), .C(rom_addr[7]), .Z(n12687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11988_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12459), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_726), .ALUT(n1117_adj_727), 
          .C0(n14580), .Z(n1149_adj_635)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7473_4_lut (.A(rom_addr[0]), .B(n14476), .C(n6417), .D(rom_addr[5]), 
         .Z(n190_adj_690)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7473_4_lut.init = 16'h0a22;
    LUT4 i12048_4_lut (.A(n14448), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12747)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i12048_4_lut.init = 16'haaca;
    LUT4 i12047_3_lut (.A(n1914), .B(n14393), .C(rom_addr[5]), .Z(n12746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12047_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_729), 
          .C0(n14580), .Z(n2428_adj_599)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7510_4_lut (.A(rom_addr[0]), .B(n14518), .C(n14436), .D(n6984), 
         .Z(n2237_adj_730)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7510_4_lut.init = 16'h0a88;
    LUT4 address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(n14571), .D(rom_addr[3]), .Z(n716_adj_587)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n15854), .Z(n589_adj_731)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 i6058_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6984)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6058_2_lut.init = 16'heeee;
    LUT4 i11884_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), .C(rom_addr[3]), 
         .D(n14488), .Z(n12583)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11884_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n15856), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14592), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i253_3_lut (.A(n221), .B(n252), .C(rom_addr[5]), 
         .Z(n253_adj_733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i253_3_lut.init = 16'hcaca;
    LUT4 i13267_then_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14694)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i13267_then_4_lut.init = 16'he010;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n4463), .ALUT(n1692_adj_709), 
          .C0(n12298), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i190_4_lut (.A(rom_addr[3]), .B(n189), .C(rom_addr[5]), 
         .D(n4_adj_597), .Z(n190_adj_735)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i190_4_lut.init = 16'hcac0;
    LUT4 i5890_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), .C(rom_addr[3]), 
         .D(n8889), .Z(n6803)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5890_3_lut_4_lut.init = 16'h08f8;
    LUT4 i11967_3_lut (.A(n12662), .B(n12663), .C(rom_addr[7]), .Z(n12666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11967_3_lut.init = 16'hcaca;
    LUT4 i12652_3_lut (.A(n190_adj_735), .B(n253_adj_733), .C(rom_addr[6]), 
         .Z(n12723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12652_3_lut.init = 16'hcaca;
    PFUMX i13851 (.BLUT(n14953), .ALUT(n1020), .C0(rom_addr[7]), .Z(n14954));
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n12315), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i13267_else_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14693)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i13267_else_4_lut.init = 16'h0032;
    LUT4 i12158_3_lut_4_lut (.A(n14538), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_737), .Z(n12857)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i12158_3_lut_4_lut.init = 16'h9f90;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n14610), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i12013_3_lut_4_lut (.A(n14613), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_684), .Z(n12712)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12013_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_606), .ALUT(n380_adj_7), 
          .C0(n14592), .Z(n381_adj_615)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12582_3_lut (.A(n14676), .B(n14722), .C(rom_addr[5]), .Z(n2110_adj_682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12582_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427_adj_739), .B(n2491_adj_740), 
         .C(rom_addr[5]), .Z(n2492_adj_679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i11804_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14672), 
         .Z(n12503)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11804_4_lut.init = 16'hca0a;
    LUT4 i12586_3_lut (.A(n12640), .B(n14692), .C(rom_addr[5]), .Z(n12642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12586_3_lut.init = 16'hcaca;
    LUT4 i11851_3_lut (.A(n12879), .B(n12892), .C(rom_addr[6]), .Z(n12550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11851_3_lut.init = 16'hcaca;
    LUT4 i7911_2_lut_rep_243_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14520)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7911_2_lut_rep_243_2_lut.init = 16'hdddd;
    LUT4 i11831_3_lut_4_lut (.A(n14613), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_657), .Z(n12530)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11831_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13328 (.BLUT(n13933), .ALUT(n2427_adj_739), .C0(rom_addr[6]), 
          .Z(n13934));
    LUT4 i11978_3_lut (.A(n2237_adj_730), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11978_3_lut.init = 16'hcaca;
    LUT4 i11852_4_lut (.A(rom_addr[0]), .B(n12901), .C(rom_addr[6]), .D(n14716), 
         .Z(n12551)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11852_4_lut.init = 16'hcac0;
    LUT4 i11770_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), .C(rom_addr[4]), 
         .D(n1946_adj_741), .Z(n12469)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11770_3_lut_4_lut.init = 16'hf808;
    PFUMX i12922 (.BLUT(n13322), .ALUT(n14547), .C0(rom_addr[4]), .Z(n13323));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n15856), .Z(n1707_adj_742)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i12594_3_lut (.A(n14725), .B(n14663), .C(rom_addr[5]), .Z(n12411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12594_3_lut.init = 16'hcaca;
    LUT4 i12420_3_lut (.A(n12448), .B(n12449), .C(rom_addr[4]), .Z(n12450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12420_3_lut.init = 16'hcaca;
    LUT4 i12026_4_lut (.A(n12904), .B(n380_adj_743), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12725)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12026_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14593), .B(n14447), .C(rom_addr[4]), 
         .D(n14620), .Z(n380_adj_743)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i11755_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14613), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14697)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11755_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 i11755_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14613), .C(rom_addr[3]), 
         .Z(n14696)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11755_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 i12597_3_lut (.A(n14679), .B(n14710), .C(rom_addr[5]), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12597_3_lut.init = 16'hcaca;
    LUT4 i12599_3_lut (.A(n15872), .B(n14643), .C(rom_addr[5]), .Z(n12389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12599_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94_adj_8), .ALUT(n126), .C0(n14568), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12313_3_lut (.A(n6827), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12313_3_lut.init = 16'hcaca;
    LUT4 i12605_3_lut (.A(n14636), .B(n444), .C(rom_addr[5]), .Z(n12637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12605_3_lut.init = 16'hcaca;
    LUT4 i7395_4_lut (.A(n1212), .B(rom_addr[6]), .C(n12072), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7395_4_lut.init = 16'hc088;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n14568), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_707), .B(n1786_adj_674), 
         .C(rom_addr[5]), .Z(n1915_adj_665)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i7576_4_lut (.A(rom_addr[0]), .B(n14460), .C(n6100), .D(rom_addr[5]), 
         .Z(n1852_adj_664)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7576_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    PFUMX i13326 (.BLUT(n13930), .ALUT(n14411), .C0(rom_addr[4]), .Z(n13931));
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_747), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12456_3_lut_4_lut (.A(n14571), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n12632)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12456_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12798_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n12270)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12798_3_lut.init = 16'h7f7f;
    LUT4 i11496_3_lut_4_lut (.A(n15856), .B(rom_addr[3]), .C(n12192), 
         .D(n78), .Z(n6859)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11496_3_lut_4_lut.init = 16'hefe0;
    PFUMX i10373 (.BLUT(n11066), .ALUT(n11067), .C0(rom_addr[8]), .Z(n11068));
    LUT4 i7458_4_lut_4_lut (.A(n14460), .B(rom_addr[4]), .C(n4483), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7458_4_lut_4_lut.init = 16'h7400;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_749), .ALUT(n2555), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15863), .B(n444_adj_706), 
         .C(rom_addr[5]), .Z(n445_adj_751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 i12666_3_lut (.A(n445_adj_751), .B(n12867), .C(rom_addr[6]), 
         .Z(n12548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12666_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_752), 
          .C0(n14576), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_601), .B(n443_adj_570), 
         .C(rom_addr[4]), .Z(n444_adj_706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    L6MUX21 i11799 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12498));
    LUT4 n3743_bdd_3_lut_4_lut_4_lut_else_4_lut (.A(n14537), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n14631)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n3743_bdd_3_lut_4_lut_4_lut_else_4_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14538), .Z(n1676_adj_613)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    PFUMX i11800 (.BLUT(n445), .ALUT(n508_adj_753), .C0(rom_addr[6]), 
          .Z(n12499));
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14538), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947_adj_754)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n14600), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604_adj_705)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14538), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_742), .Z(n1723_adj_755)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5194_4_lut (.A(n14608), .B(n14460), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n6100)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5194_4_lut.init = 16'h3530;
    LUT4 n173_bdd_3_lut_4_lut (.A(n14522), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14434), .Z(n13987)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n173_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11905_3_lut_4_lut (.A(rom_addr[0]), .B(n14475), .C(rom_addr[4]), 
         .D(n14480), .Z(n12604)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11905_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11801 (.D0(n12492), .D1(n12529), .SD(rom_addr[6]), .Z(n12500));
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14620), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_710)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11802 (.D0(n12532), .D1(n12538), .SD(rom_addr[6]), .Z(n12501));
    L6MUX21 i11803 (.D0(n829), .D1(n12541), .SD(rom_addr[6]), .Z(n12502));
    LUT4 i11495_2_lut (.A(rom_addr[4]), .B(rom_addr[6]), .Z(n12192)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11495_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14620), 
         .C(rom_addr[4]), .D(n1549), .Z(n1565_adj_620)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11806 (.D0(n12581), .D1(n12587), .SD(rom_addr[6]), .Z(n12505));
    LUT4 i12371_3_lut (.A(n14650), .B(n635_adj_756), .C(rom_addr[4]), 
         .Z(n12358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12371_3_lut.init = 16'hcaca;
    L6MUX21 i11808 (.D0(n12603), .D1(n1531), .SD(rom_addr[6]), .Z(n12507));
    PFUMX i11810 (.BLUT(n1724_adj_757), .ALUT(n1787_adj_675), .C0(rom_addr[6]), 
          .Z(n12509));
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14400), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_729)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 n29_bdd_3_lut_13254_4_lut_4_lut (.A(n14577), .B(n2620), .C(rom_addr[5]), 
         .D(n14514), .Z(n13849)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n29_bdd_3_lut_13254_4_lut_4_lut.init = 16'h5c0c;
    L6MUX21 i11812 (.D0(n12609), .D1(n12612), .SD(rom_addr[6]), .Z(n12511));
    LUT4 i12204_3_lut_4_lut (.A(rom_addr[1]), .B(n14620), .C(rom_addr[4]), 
         .D(n301_adj_607), .Z(n12903)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12204_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_adj_20 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n12071)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut (.A(rom_addr[1]), .B(n14620), 
         .C(rom_addr[4]), .D(n1402), .Z(n1403_adj_552)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut.init = 16'hf101;
    LUT4 i12135_3_lut_4_lut (.A(rom_addr[0]), .B(n14425), .C(rom_addr[5]), 
         .D(n1212_adj_758), .Z(n12834)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12135_3_lut_4_lut.init = 16'hf101;
    LUT4 i12015_3_lut_4_lut (.A(rom_addr[1]), .B(n14620), .C(rom_addr[4]), 
         .D(n731_adj_595), .Z(n12714)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12015_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14700)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut_4_lut (.A(n14577), .B(n2141_adj_759), 
         .C(rom_addr[5]), .D(n14514), .Z(n2173_adj_683)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i13714 (.BLUT(n14683), .ALUT(n14684), .C0(rom_addr[0]), .Z(n14685));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14699)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    PFUMX i11830 (.BLUT(n12527), .ALUT(n12528), .C0(rom_addr[5]), .Z(n12529));
    LUT4 n1643_bdd_4_lut_14040 (.A(n1643), .B(n14475), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13995)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;
    defparam n1643_bdd_4_lut_14040.init = 16'h03aa;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14475), 
         .C(rom_addr[4]), .D(n14547), .Z(n1596_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11833 (.BLUT(n12530), .ALUT(n12531), .C0(rom_addr[5]), .Z(n12532));
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283_adj_582), .B(n1898), 
         .C(rom_addr[4]), .Z(n2491_adj_740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i12130_3_lut (.A(n14656), .B(n1978), .C(rom_addr[5]), .Z(n12829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12130_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n14532), 
         .C(rom_addr[5]), .D(n2205_adj_655), .Z(n2237)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7402_4_lut_4_lut (.A(n14431), .B(rom_addr[5]), .C(n10795), .D(rom_addr[0]), 
         .Z(n2492_adj_749)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i7402_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924_adj_708), .B(n955), .C(rom_addr[5]), 
         .Z(n956_adj_616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n14431), .B(n3809), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_671)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    L6MUX21 i13319 (.D0(n13921), .D1(n13918), .SD(rom_addr[6]), .Z(n13922));
    LUT4 address_11__I_0_Mux_0_i252_4_lut (.A(n1483), .B(n15878), .C(rom_addr[4]), 
         .D(n4_adj_760), .Z(n252)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i252_4_lut.init = 16'hca0a;
    PFUMX i11839 (.BLUT(n12536), .ALUT(n12537), .C0(rom_addr[5]), .Z(n12538));
    PFUMX i13317 (.BLUT(n13920), .ALUT(n13919), .C0(n14580), .Z(n13921));
    LUT4 i12036_4_lut (.A(rom_addr[5]), .B(n1276), .C(rom_addr[6]), .D(n1212), 
         .Z(n12735)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12036_4_lut.init = 16'hcac0;
    LUT4 i12035_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14420), 
         .Z(n12734)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i12035_4_lut.init = 16'h0aca;
    LUT4 i12851_2_lut_rep_275 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14552)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12851_2_lut_rep_275.init = 16'h1111;
    PFUMX i13712 (.BLUT(n14680), .ALUT(n14681), .C0(rom_addr[0]), .Z(n14682));
    LUT4 i11878_3_lut (.A(n1069), .B(n1084_adj_648), .C(rom_addr[4]), 
         .Z(n12577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11878_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n14613), .B(n603), .C(rom_addr[3]), 
         .Z(n699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    PFUMX i11842 (.BLUT(n12539), .ALUT(n12540), .C0(rom_addr[5]), .Z(n12541));
    LUT4 i7685_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13866), 
         .Z(n3069_adj_574)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7685_2_lut_3_lut.init = 16'h1010;
    LUT4 i7655_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_721), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7655_2_lut_3_lut.init = 16'h1010;
    PFUMX i11879 (.BLUT(n12576), .ALUT(n12577), .C0(rom_addr[5]), .Z(n12578));
    LUT4 i12676_3_lut (.A(n13643), .B(n12732), .C(rom_addr[7]), .Z(n12733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12676_3_lut.init = 16'hcaca;
    LUT4 i5979_2_lut_rep_276 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14553)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5979_2_lut_rep_276.init = 16'h6666;
    PFUMX i13710 (.BLUT(n14677), .ALUT(n14678), .C0(rom_addr[2]), .Z(n14679));
    LUT4 i12030_4_lut (.A(n12362), .B(rom_addr[0]), .C(rom_addr[6]), .D(n3115), 
         .Z(n12729)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i12030_4_lut.init = 16'h0aca;
    LUT4 i5923_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14702)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5923_3_lut_4_lut_else_4_lut.init = 16'ha880;
    PFUMX i11882 (.BLUT(n12579), .ALUT(n12580), .C0(rom_addr[5]), .Z(n12581));
    PFUMX i13315 (.BLUT(n14405), .ALUT(n13917), .C0(rom_addr[5]), .Z(n13918));
    PFUMX i11888 (.BLUT(n12585), .ALUT(n12586), .C0(rom_addr[5]), .Z(n12587));
    LUT4 i12023_4_lut (.A(n14688), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12722)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12023_4_lut.init = 16'hcac0;
    LUT4 i12028_3_lut (.A(n12725), .B(n12726), .C(rom_addr[7]), .Z(n12727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12028_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i574_4_lut (.A(n1148_adj_9), .B(n14481), 
         .C(rom_addr[7]), .D(n14480), .Z(n574)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n14431), 
         .C(n14403), .D(rom_addr[6]), .Z(n2110_adj_752)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 i12014_4_lut_4_lut (.A(n14582), .B(rom_addr[4]), .C(n5603), .D(n684_adj_701), 
         .Z(n12713)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12014_4_lut_4_lut.init = 16'h7340;
    LUT4 i11982_3_lut (.A(n12678), .B(n12679), .C(rom_addr[7]), .Z(n12681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11982_3_lut.init = 16'hcaca;
    LUT4 n13864_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14431), .C(rom_addr[5]), 
         .D(n14695), .Z(n13865)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13864_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12045_3_lut_4_lut (.A(rom_addr[0]), .B(n14431), .C(rom_addr[5]), 
         .D(n1851_adj_10), .Z(n12744)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12045_3_lut_4_lut.init = 16'hf202;
    LUT4 i12749_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13031)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12749_2_lut.init = 16'h9999;
    LUT4 i5953_3_lut (.A(n4_adj_597), .B(n15854), .C(rom_addr[3]), .Z(n6866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5953_3_lut.init = 16'hcaca;
    LUT4 i7397_2_lut_rep_134_3_lut_4_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n14411)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7397_2_lut_rep_134_3_lut_4_lut.init = 16'h0090;
    LUT4 i11848_3_lut (.A(n12854), .B(n12864), .C(rom_addr[6]), .Z(n12547)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11848_3_lut.init = 16'hcaca;
    LUT4 i2988_4_lut (.A(n15878), .B(n14433), .C(rom_addr[5]), .D(n14506), 
         .Z(n3871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2988_4_lut.init = 16'hcfca;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i7422_2_lut_rep_205_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14482)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7422_2_lut_rep_205_3_lut.init = 16'hf6f6;
    LUT4 i12673_3_lut (.A(n12722), .B(n12723), .C(rom_addr[7]), .Z(n12724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12673_3_lut.init = 16'hcaca;
    PFUMX i13708 (.BLUT(n14674), .ALUT(n14675), .C0(rom_addr[0]), .Z(n14676));
    LUT4 i12031_3_lut (.A(n12728), .B(n12729), .C(rom_addr[7]), .Z(n12730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12031_3_lut.init = 16'hcaca;
    LUT4 i4109_2_lut_rep_241_3_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14518)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4109_2_lut_rep_241_3_lut.init = 16'h6060;
    LUT4 i11975_3_lut (.A(n12671), .B(n12672), .C(rom_addr[7]), .Z(n12674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11975_3_lut.init = 16'hcaca;
    LUT4 i11974_3_lut (.A(n12669), .B(n12670), .C(rom_addr[7]), .Z(n12673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11974_3_lut.init = 16'hcaca;
    LUT4 i11961_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3602), 
         .Z(n12660)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11961_4_lut.init = 16'hca0a;
    LUT4 i11960_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3544), 
         .Z(n12659)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11960_4_lut.init = 16'hc0ca;
    LUT4 i4604_2_lut_rep_183_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14460)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4604_2_lut_rep_183_3_lut.init = 16'hf6f6;
    LUT4 i11958_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n14186), 
         .Z(n12657)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11958_4_lut.init = 16'hcac0;
    LUT4 i11957_4_lut (.A(n2174), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3342), 
         .Z(n12656)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11957_4_lut.init = 16'hca0a;
    LUT4 i12089_3_lut (.A(n12786), .B(n12787), .C(rom_addr[7]), .Z(n12788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12089_3_lut.init = 16'hcaca;
    LUT4 n6851_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14533), .C(rom_addr[4]), 
         .D(n124_adj_649), .Z(n14075)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6851_bdd_3_lut_4_lut.init = 16'hf202;
    PFUMX i11904 (.BLUT(n12601), .ALUT(n12602), .C0(rom_addr[5]), .Z(n12603));
    LUT4 i11955_3_lut (.A(n12802), .B(n12809), .C(rom_addr[8]), .Z(n12654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11955_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n14400), 
         .C(rom_addr[5]), .D(n2396_adj_626), .Z(n2428_adj_678)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11924_3_lut (.A(n14049), .B(n12889), .C(rom_addr[7]), .Z(n12623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11924_3_lut.init = 16'hcaca;
    LUT4 i11923_3_lut (.A(n12876), .B(n6860), .C(rom_addr[7]), .Z(n12622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11923_3_lut.init = 16'hcaca;
    LUT4 i11918_3_lut (.A(n12615), .B(n12639), .C(rom_addr[7]), .Z(n12617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11918_3_lut.init = 16'hcaca;
    LUT4 i12443_3_lut (.A(n2283_adj_585), .B(n2298_adj_579), .C(rom_addr[4]), 
         .Z(n2299_adj_763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12443_3_lut.init = 16'hcaca;
    LUT4 i11917_3_lut (.A(n14080), .B(n12396), .C(rom_addr[7]), .Z(n12616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11917_3_lut.init = 16'hcaca;
    PFUMX i11907 (.BLUT(n12604), .ALUT(n12605), .C0(rom_addr[5]), .Z(n12606));
    LUT4 i11926_3_lut (.A(n12618), .B(n12619), .C(rom_addr[8]), .Z(n12625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11926_3_lut.init = 16'hcaca;
    LUT4 i12117_3_lut (.A(n13989), .B(n12815), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12117_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n14031), 
         .C(rom_addr[7]), .D(n3995), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 i11898_3_lut (.A(n1789_adj_717), .B(n2044), .C(rom_addr[8]), 
         .Z(n12597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11898_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15856), .B(n14546), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 i11865_3_lut (.A(n12551), .B(n12552), .C(rom_addr[7]), .Z(n12564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11865_3_lut.init = 16'hcaca;
    LUT4 i5967_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6838)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5967_2_lut.init = 16'h6666;
    LUT4 i12201_3_lut (.A(n875_adj_656), .B(n939), .C(rom_addr[4]), .Z(n12900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12201_3_lut.init = 16'hcaca;
    PFUMX i12931 (.BLUT(n14541), .ALUT(n13337), .C0(n14591), .Z(n13338));
    LUT4 i11864_3_lut (.A(n12549), .B(n12550), .C(rom_addr[7]), .Z(n12563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11864_3_lut.init = 16'hcaca;
    PFUMX i11746 (.BLUT(n589_adj_731), .ALUT(n604_adj_764), .C0(rom_addr[4]), 
          .Z(n12445));
    LUT4 i11499_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n12196)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11499_2_lut.init = 16'heeee;
    PFUMX i2719 (.BLUT(n12088), .ALUT(n3601), .C0(rom_addr[6]), .Z(n3602));
    LUT4 i12714_3_lut (.A(n12563), .B(n12564), .C(rom_addr[8]), .Z(n12570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12714_3_lut.init = 16'hcaca;
    LUT4 i11816_3_lut (.A(n12502), .B(n12503), .C(rom_addr[7]), .Z(n12515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11816_3_lut.init = 16'hcaca;
    LUT4 i11814_3_lut (.A(n12498), .B(n12499), .C(rom_addr[7]), .Z(n12513)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11814_3_lut.init = 16'hcaca;
    LUT4 i11813_3_lut (.A(n12496), .B(n14164), .C(rom_addr[7]), .Z(n12512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11813_3_lut.init = 16'hcaca;
    PFUMX i11910 (.BLUT(n12607), .ALUT(n12608), .C0(rom_addr[5]), .Z(n12609));
    LUT4 i11822_3_lut (.A(n12514), .B(n12515), .C(rom_addr[8]), .Z(n12521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11822_3_lut.init = 16'hcaca;
    LUT4 i11740_3_lut_4_lut (.A(rom_addr[5]), .B(n14431), .C(rom_addr[6]), 
         .D(n14432), .Z(n12439)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11740_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i7409_4_lut (.A(rom_addr[0]), .B(n3479), .C(n12441), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7409_4_lut.init = 16'h0a22;
    LUT4 i7463_2_lut_rep_237_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14514)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7463_2_lut_rep_237_3_lut.init = 16'h6060;
    LUT4 i7755_4_lut (.A(n12399), .B(n14552), .C(n2684_adj_714), .D(rom_addr[6]), 
         .Z(n3069_adj_575)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7755_4_lut.init = 16'hc088;
    PFUMX i13294 (.BLUT(n2237_adj_730), .ALUT(n13894), .C0(rom_addr[6]), 
          .Z(n13895));
    LUT4 i11969_3_lut (.A(n12666), .B(n12667), .C(rom_addr[8]), .Z(n12668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11969_3_lut.init = 16'hcaca;
    LUT4 i2661_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14431), .C(rom_addr[6]), 
         .D(n14419), .Z(n3544)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2661_3_lut_4_lut_4_lut.init = 16'h5efe;
    PFUMX i13705 (.BLUT(n14670), .ALUT(n14671), .C0(rom_addr[2]), .Z(n14672));
    LUT4 i11990_3_lut (.A(n12687), .B(n12688), .C(rom_addr[8]), .Z(n12689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11990_3_lut.init = 16'hcaca;
    LUT4 i11997_3_lut (.A(n12694), .B(n12695), .C(rom_addr[8]), .Z(n12696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11997_3_lut.init = 16'hcaca;
    LUT4 i12075_3_lut (.A(n12765), .B(n12766), .C(rom_addr[7]), .Z(n12774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12075_3_lut.init = 16'hcaca;
    LUT4 i12074_3_lut (.A(n12763), .B(n12764), .C(rom_addr[7]), .Z(n12773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12074_3_lut.init = 16'hcaca;
    LUT4 i12073_3_lut (.A(n13922), .B(n12762), .C(rom_addr[7]), .Z(n12772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12073_3_lut.init = 16'hcaca;
    PFUMX i11913 (.BLUT(n12610), .ALUT(n12611), .C0(rom_addr[5]), .Z(n12612));
    LUT4 i12072_3_lut (.A(n12759), .B(n12760), .C(rom_addr[7]), .Z(n12771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12072_3_lut.init = 16'hcaca;
    LUT4 i12071_3_lut (.A(n12757), .B(n12758), .C(rom_addr[7]), .Z(n12770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12071_3_lut.init = 16'hcaca;
    LUT4 i12070_3_lut (.A(n12755), .B(n12756), .C(rom_addr[7]), .Z(n12769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12070_3_lut.init = 16'hcaca;
    LUT4 i7310_2_lut_rep_188_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14465)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7310_2_lut_rep_188_3_lut.init = 16'h9090;
    L6MUX21 i13855 (.D0(n14956), .D1(n14954), .SD(rom_addr[8]), .Z(n12595));
    LUT4 i12705_3_lut (.A(n13621), .B(n12677), .C(rom_addr[7]), .Z(n12680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12705_3_lut.init = 16'hcaca;
    LUT4 i12707_3_lut (.A(n13557), .B(n12788), .C(rom_addr[8]), .Z(n12653)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12707_3_lut.init = 16'hcaca;
    PFUMX i13292 (.BLUT(n13892), .ALUT(n13891), .C0(rom_addr[4]), .Z(n13893));
    PFUMX i11915 (.BLUT(n349), .ALUT(n380_adj_663), .C0(rom_addr[5]), 
          .Z(n12614));
    LUT4 i12069_3_lut (.A(n12753), .B(n12754), .C(rom_addr[7]), .Z(n12768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12069_3_lut.init = 16'hcaca;
    LUT4 i12068_3_lut (.A(n12751), .B(n12752), .C(rom_addr[7]), .Z(n12767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12068_3_lut.init = 16'hcaca;
    LUT4 i12041_3_lut (.A(n1789), .B(n2044_adj_614), .C(rom_addr[8]), 
         .Z(n12740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12041_3_lut.init = 16'hcaca;
    PFUMX i11934 (.BLUT(n12631), .ALUT(n12632), .C0(rom_addr[5]), .Z(n12633));
    LUT4 i5909_3_lut_3_lut_3_lut_rep_351 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n14628)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5909_3_lut_3_lut_3_lut_rep_351.init = 16'hc7c7;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14635)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_4_lut.init = 16'hcc0d;
    LUT4 i11931_3_lut (.A(n12628), .B(n12629), .C(rom_addr[10]), .Z(n12630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11931_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_661), .B(n1914_adj_640), 
         .C(rom_addr[5]), .Z(n1915_adj_696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 i7410_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7410_2_lut_4_lut.init = 16'hca00;
    LUT4 rom_addr_0__bdd_4_lut_13707_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14706)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13707_then_4_lut.init = 16'h2419;
    LUT4 i12192_3_lut_4_lut_4_lut (.A(n14599), .B(n379), .C(rom_addr[4]), 
         .D(n14625), .Z(n12891)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i12192_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i13703 (.BLUT(n14667), .ALUT(n14668), .C0(rom_addr[5]), .Z(n14669));
    LUT4 rom_addr_0__bdd_4_lut_13707_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14705)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_13707_else_4_lut.init = 16'h2000;
    LUT4 i12305_3_lut (.A(n1228), .B(n1243), .C(rom_addr[4]), .Z(n12460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12305_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14709)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14708)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    PFUMX i11946 (.BLUT(n12643), .ALUT(n12644), .C0(rom_addr[5]), .Z(n12645));
    LUT4 i7641_2_lut_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n723)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7641_2_lut_3_lut_3_lut.init = 16'h5454;
    PFUMX i11951 (.BLUT(n12646), .ALUT(n12647), .C0(rom_addr[5]), .Z(n12650));
    LUT4 i4528_3_lut_rep_133_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15878), .Z(n14410)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4528_3_lut_rep_133_4_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut_4_lut (.A(n14599), .B(n1691_adj_719), 
         .C(rom_addr[4]), .D(n14625), .Z(n1692_adj_765)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12763_2_lut_rep_315 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14592)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12763_2_lut_rep_315.init = 16'hdddd;
    PFUMX i13701 (.BLUT(n14664), .ALUT(n14439), .C0(rom_addr[4]), .Z(n924_adj_708));
    LUT4 address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14538), 
         .C(rom_addr[3]), .D(n14594), .Z(n1402)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i4316_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n5199)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4316_3_lut_4_lut_4_lut_3_lut.init = 16'he4e4;
    PFUMX i11952 (.BLUT(n12648), .ALUT(n12649), .C0(rom_addr[5]), .Z(n12651));
    LUT4 i11767_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n12466)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11767_3_lut_4_lut_4_lut_3_lut.init = 16'h4242;
    PFUMX i12175 (.BLUT(n1565_adj_11), .ALUT(n1596_adj_767), .C0(rom_addr[5]), 
          .Z(n12874));
    LUT4 i7565_2_lut_rep_177_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n14454)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7565_2_lut_rep_177_3_lut_3_lut.init = 16'h0808;
    PFUMX i12000 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12699));
    LUT4 i4346_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n5229)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4346_3_lut_4_lut_3_lut.init = 16'hb9b9;
    LUT4 i12839_2_lut_rep_152_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n14429)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12839_2_lut_rep_152_3_lut_3_lut.init = 16'h0202;
    LUT4 i11752_3_lut (.A(n6825), .B(n668), .C(rom_addr[4]), .Z(n12451)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11752_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n2444_adj_768)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    LUT4 i13000_then_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14712)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C+(D))))) */ ;
    defparam i13000_then_4_lut.init = 16'h0201;
    LUT4 i7718_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14624), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n1596_adj_767)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7718_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    PFUMX i12001 (.BLUT(n2268_adj_769), .ALUT(n2299_adj_763), .C0(rom_addr[5]), 
          .Z(n12700));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n14522), .Z(n844_adj_698)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 i11469_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(n15878), .Z(n1228_adj_654)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11469_3_lut_4_lut_4_lut.init = 16'h400b;
    LUT4 i11744_3_lut (.A(n557_adj_686), .B(n572), .C(rom_addr[4]), .Z(n12443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11744_3_lut.init = 16'hcaca;
    LUT4 i11743_4_lut (.A(n14582), .B(n541_adj_770), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n12442)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11743_4_lut.init = 16'hcac0;
    LUT4 i7937_2_lut_rep_180_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n14457)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7937_2_lut_rep_180_3_lut_3_lut.init = 16'h4040;
    PFUMX i12002 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12701));
    PFUMX i12003 (.BLUT(n6864), .ALUT(n2427), .C0(rom_addr[5]), .Z(n12702));
    LUT4 i4447_3_lut_rep_178_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n14455)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4447_3_lut_rep_178_4_lut_4_lut_3_lut.init = 16'h5858;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n14029)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    PFUMX i13269 (.BLUT(n13865), .ALUT(n15851), .C0(rom_addr[6]), .Z(n13866));
    LUT4 address_11__I_0_Mux_3_i699_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14612), .D(n5603), .Z(n699_adj_702)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i4621_3_lut_rep_159_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15878), .Z(n14436)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4621_3_lut_rep_159_4_lut_4_lut_3_lut.init = 16'hbebe;
    PFUMX i13853 (.BLUT(n14955), .ALUT(n11192), .C0(rom_addr[6]), .Z(n14956));
    LUT4 address_11__I_0_Mux_2_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n14570), 
         .C(rom_addr[3]), .D(n14529), .Z(n844)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i844_3_lut_4_lut.init = 16'hf202;
    PFUMX i12004 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n12703));
    LUT4 i13000_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14711)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam i13000_else_4_lut.init = 16'h0018;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14634)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_4_lut.init = 16'hc2c8;
    PFUMX i12005 (.BLUT(n2523_adj_624), .ALUT(n2554_adj_627), .C0(rom_addr[5]), 
          .Z(n12704));
    LUT4 i11741_4_lut (.A(n14430), .B(rom_addr[1]), .C(rom_addr[6]), .D(n4_adj_771), 
         .Z(n12440)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i11741_4_lut.init = 16'h3afa;
    LUT4 i12810_2_lut_rep_291 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14568)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12810_2_lut_rep_291.init = 16'hdddd;
    LUT4 i7398_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n15878), .Z(n14448)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7398_2_lut_rep_171_3_lut_4_lut.init = 16'h4000;
    L6MUX21 i14317 (.D0(n15634), .D1(n15631), .SD(rom_addr[6]), .Z(n15635));
    PFUMX i12017 (.BLUT(n12712), .ALUT(n12713), .C0(rom_addr[5]), .Z(n12716));
    PFUMX i14315 (.BLUT(n15633), .ALUT(n15632), .C0(rom_addr[5]), .Z(n15634));
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n14599), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14529), .Z(n270)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 i7483_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7483_2_lut_3_lut.init = 16'h9090;
    PFUMX i14312 (.BLUT(n15630), .ALUT(n15629), .C0(rom_addr[5]), .Z(n15631));
    LUT4 i12804_2_lut_rep_322 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14599)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i12804_2_lut_rep_322.init = 16'h7777;
    LUT4 n8879_bdd_2_lut_13637_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13607)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n8879_bdd_2_lut_13637_3_lut_4_lut.init = 16'h0007;
    LUT4 address_11__I_0_Mux_2_i1341_3_lut_4_lut (.A(rom_addr[0]), .B(n14433), 
         .C(rom_addr[5]), .D(n1309), .Z(n1341_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1341_3_lut_4_lut.init = 16'h1f10;
    PFUMX i12018 (.BLUT(n12714), .ALUT(n12715), .C0(rom_addr[5]), .Z(n12717));
    LUT4 i1_2_lut_rep_242_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15878), 
         .Z(n14519)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_242_3_lut.init = 16'h6060;
    LUT4 i12785_2_lut_rep_255_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14532)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12785_2_lut_rep_255_3_lut.init = 16'h0909;
    LUT4 i7892_2_lut_rep_323 (.A(rom_addr[0]), .B(n15878), .Z(n14600)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7892_2_lut_rep_323.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1946_adj_741)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_3_lut_4_lut.init = 16'h6909;
    LUT4 i7623_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14506), .Z(n5802)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i7623_4_lut_4_lut_4_lut.init = 16'hf8f3;
    PFUMX i13257 (.BLUT(n13852), .ALUT(n13849), .C0(rom_addr[6]), .Z(n13853));
    LUT4 i7437_2_lut_rep_164_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14441)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i7437_2_lut_rep_164_3_lut_4_lut.init = 16'hf080;
    LUT4 i7317_2_lut_rep_252_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14529)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i7317_2_lut_rep_252_3_lut.init = 16'hf8f8;
    LUT4 i7420_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_608)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i7420_4_lut_4_lut.init = 16'hc700;
    LUT4 i7884_2_lut_rep_293 (.A(n15878), .B(rom_addr[2]), .Z(n14570)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7884_2_lut_rep_293.init = 16'h8888;
    LUT4 i11887_4_lut (.A(n14434), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12586)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11887_4_lut.init = 16'hca0a;
    LUT4 i11731_3_lut (.A(n2444_adj_768), .B(n2459), .C(rom_addr[4]), 
         .Z(n12430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11731_3_lut.init = 16'hcaca;
    PFUMX i12020 (.BLUT(n797), .ALUT(n828_adj_670), .C0(rom_addr[5]), 
          .Z(n12719));
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n1785), 
         .C(rom_addr[4]), .D(n4483), .Z(n1786_adj_553)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15878), .C(n12071), 
         .D(rom_addr[2]), .Z(n12072)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 i7904_2_lut_rep_149_3_lut_3_lut (.A(rom_addr[2]), .B(n15878), .C(rom_addr[0]), 
         .Z(n14426)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7904_2_lut_rep_149_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i12670_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1403), 
         .D(n1387), .Z(n1404)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12670_3_lut_4_lut.init = 16'hf2d0;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n12190)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h8073;
    PFUMX i13255 (.BLUT(n13850), .ALUT(n14542), .C0(rom_addr[4]), .Z(n13851));
    LUT4 address_11__I_0_Mux_0_i1657_3_lut_rep_211_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14488)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_0_i1657_3_lut_rep_211_3_lut.init = 16'h7c7c;
    LUT4 i11838_3_lut_4_lut_4_lut (.A(n14599), .B(n747), .C(rom_addr[4]), 
         .D(n14625), .Z(n12537)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i11838_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i12021 (.BLUT(n12593), .ALUT(n891_adj_774), .C0(rom_addr[5]), 
          .Z(n12720));
    LUT4 i6063_2_lut_rep_310 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n14587)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6063_2_lut_rep_310.init = 16'h8888;
    PFUMX i5947 (.BLUT(n6859), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n6860));
    LUT4 rom_addr_2__bdd_4_lut_13760 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14637)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13760.init = 16'h98d1;
    PFUMX i12085 (.BLUT(n1436), .ALUT(n1467_adj_776), .C0(rom_addr[5]), 
          .Z(n12784));
    LUT4 i7431_2_lut_rep_161_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14438)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i7431_2_lut_rep_161_3_lut_4_lut.init = 16'hf8f0;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), 
         .C(rom_addr[4]), .D(n1785), .Z(n2427_adj_739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i12145_3_lut_4_lut (.A(rom_addr[2]), .B(n14480), .C(rom_addr[4]), 
         .D(n124_adj_660), .Z(n12844)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12145_3_lut_4_lut.init = 16'hf808;
    LUT4 n3022_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14046)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam n3022_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i11616_1_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n12315)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11616_1_lut_2_lut.init = 16'h7777;
    LUT4 i7533_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_697)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i7533_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(n15878), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    PFUMX i13252 (.BLUT(n13847), .ALUT(n13846), .C0(rom_addr[4]), .Z(n13848));
    LUT4 i11780_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(rom_addr[4]), 
         .D(n14620), .Z(n12479)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11780_3_lut_4_lut.init = 16'hf202;
    LUT4 i11686_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14639)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i11686_3_lut_then_4_lut.init = 16'hccc4;
    PFUMX i12086 (.BLUT(n1499_adj_718), .ALUT(n1530_adj_644), .C0(rom_addr[5]), 
          .Z(n12785));
    LUT4 address_11__I_0_Mux_0_i189_3_lut_4_lut (.A(rom_addr[2]), .B(n14480), 
         .C(rom_addr[4]), .D(n14434), .Z(n189)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i189_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283_adj_582), .B(n2298_adj_669), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i7512_4_lut (.A(rom_addr[0]), .B(n443), .C(n14410), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7512_4_lut.init = 16'h0a22;
    LUT4 i12584_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13338), 
         .D(n2538), .Z(n2555_adj_680)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12584_3_lut_4_lut.init = 16'hf2d0;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_325 (.A(rom_addr[0]), .B(n15878), 
         .C(rom_addr[2]), .Z(n14602)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_325.init = 16'h3838;
    PFUMX i12094 (.BLUT(n12789), .ALUT(n12790), .C0(rom_addr[5]), .Z(n12793));
    LUT4 i11686_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14638)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i11686_3_lut_else_4_lut.init = 16'h0103;
    LUT4 i11749_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12448)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i11749_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 n13707_bdd_3_lut_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14715)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;
    defparam n13707_bdd_3_lut_4_lut_then_4_lut.init = 16'h1444;
    LUT4 address_11__I_0_Mux_5_i860_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n15867)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut_else_4_lut.init = 16'h8400;
    PFUMX i12095 (.BLUT(n12791), .ALUT(n12792), .C0(rom_addr[5]), .Z(n12794));
    LUT4 i7935_2_lut_rep_265_3_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14542)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7935_2_lut_rep_265_3_lut.init = 16'h8080;
    LUT4 i5910_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n6823)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5910_3_lut_4_lut_4_lut.init = 16'hc7a0;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    PFUMX i13699 (.BLUT(n14661), .ALUT(n14662), .C0(rom_addr[1]), .Z(n14663));
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_764)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 i11471_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n2025_adj_588)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i11471_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n635_adj_756)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h4030;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14505), .B(n14611), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_777)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i7516_4_lut (.A(rom_addr[0]), .B(n14459), .C(n4976), .D(rom_addr[4]), 
         .Z(n2523_adj_778)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7516_4_lut.init = 16'h0a22;
    LUT4 i12589_3_lut (.A(n2523_adj_778), .B(n2554_adj_777), .C(rom_addr[5]), 
         .Z(n2555_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12589_3_lut.init = 16'hcaca;
    PFUMX i12098 (.BLUT(n1628_adj_628), .ALUT(n3709), .C0(rom_addr[5]), 
          .Z(n12797));
    LUT4 i11765_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14726)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11765_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 i11717_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(rom_addr[4]), 
         .D(n14508), .Z(n12416)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11717_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11719_3_lut_4_lut (.A(rom_addr[0]), .B(n14436), .C(rom_addr[4]), 
         .D(n2522), .Z(n12418)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11719_3_lut_4_lut.init = 16'hf202;
    PFUMX i12099 (.BLUT(n1692_adj_765), .ALUT(n1723_adj_755), .C0(rom_addr[5]), 
          .Z(n12798));
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(rom_addr[2]), .B(n14480), 
         .C(rom_addr[4]), .D(n6800), .Z(n1467_adj_776)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7676_2_lut_rep_329 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14606)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7676_2_lut_rep_329.init = 16'h2222;
    PFUMX i12100 (.BLUT(n1755), .ALUT(n1786), .C0(rom_addr[5]), .Z(n12799));
    LUT4 n13707_bdd_3_lut_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14714)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam n13707_bdd_3_lut_4_lut_else_4_lut.init = 16'h5305;
    LUT4 i11836_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15862)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11836_then_4_lut.init = 16'h5924;
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    PFUMX i12104 (.BLUT(n1820_adj_643), .ALUT(n1851_adj_619), .C0(rom_addr[5]), 
          .Z(n12803));
    LUT4 i1_2_lut_rep_238_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14515)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_238_3_lut_4_lut.init = 16'h2202;
    LUT4 i4420_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5303)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i4420_3_lut_4_lut_3_lut.init = 16'h7676;
    PFUMX i12105 (.BLUT(n1883_adj_583), .ALUT(n1914_adj_779), .C0(rom_addr[5]), 
          .Z(n12804));
    LUT4 address_11__I_0_Mux_0_i1307_3_lut_rep_245_4_lut_3_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14522)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1307_3_lut_rep_245_4_lut_3_lut.init = 16'h2424;
    PFUMX i12924 (.BLUT(n13325), .ALUT(n2684), .C0(rom_addr[6]), .Z(n13326));
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_677)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3df0;
    LUT4 i11716_4_lut (.A(n2220), .B(n5929), .C(rom_addr[4]), .D(n14509), 
         .Z(n12415)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i11716_4_lut.init = 16'h3a0a;
    LUT4 address_11__I_0_Mux_0_i2025_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_0_i2025_3_lut_3_lut_3_lut_4_lut.init = 16'h7870;
    PFUMX i12106 (.BLUT(n1947_adj_754), .ALUT(n12450), .C0(rom_addr[5]), 
          .Z(n12805));
    LUT4 i11836_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15861)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11836_else_4_lut.init = 16'h5092;
    LUT4 i12860_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n12260)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12860_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i12107 (.BLUT(n2010), .ALUT(n6803), .C0(rom_addr[5]), .Z(n12806));
    LUT4 i12751_2_lut_rep_316 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14593)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12751_2_lut_rep_316.init = 16'h9999;
    LUT4 address_11__I_0_Mux_0_i442_3_lut_rep_269_4_lut_3_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14546)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i442_3_lut_rep_269_4_lut_3_lut.init = 16'h4242;
    LUT4 i11785_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n12484)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11785_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_602)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i7481_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541_adj_770)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7481_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i3941_3_lut_rep_294 (.A(rom_addr[0]), .B(rom_addr[2]), .C(n15878), 
         .Z(n14571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3941_3_lut_rep_294.init = 16'hcaca;
    LUT4 i12335_3_lut (.A(n12484), .B(n12485), .C(rom_addr[4]), .Z(n12486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12335_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_312 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14589)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_312.init = 16'h8888;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[5]), .D(n14597), .Z(n14422)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_145_3_lut_4_lut.init = 16'h8000;
    PFUMX i12113 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12812));
    LUT4 i3061_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14551), .C(rom_addr[5]), 
         .D(n14629), .Z(n5948)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3061_3_lut_4_lut_4_lut.init = 16'hc5cf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .D(n14597), .Z(n12082)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14461), .D(n14606), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_591), .B(n1228_adj_654), .C(rom_addr[4]), 
         .Z(n14027)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 n31_bdd_3_lut (.A(n46_adj_12), .B(n301), .C(rom_addr[4]), .Z(n14078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i540_3_lut_rep_225_3_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14502)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i540_3_lut_rep_225_3_lut.init = 16'hc2c2;
    LUT4 i5917_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14648)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5917_4_lut_then_4_lut.init = 16'h5a04;
    LUT4 i11714_3_lut (.A(n2283_adj_582), .B(n2298_adj_603), .C(rom_addr[4]), 
         .Z(n12413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11714_3_lut.init = 16'hcaca;
    LUT4 i11689_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14642)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11689_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i4174_3_lut_rep_123_4_lut_4_lut (.A(rom_addr[2]), .B(n14436), .C(rom_addr[4]), 
         .D(n14625), .Z(n14400)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4174_3_lut_rep_123_4_lut_4_lut.init = 16'h3530;
    LUT4 i12580_3_lut (.A(n12412), .B(n12413), .C(rom_addr[5]), .Z(n12414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12580_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 i7568_2_lut_rep_263_2_lut (.A(rom_addr[2]), .B(n15878), .Z(n14540)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7568_2_lut_rep_263_2_lut.init = 16'hdddd;
    PFUMX i13694 (.BLUT(n14654), .ALUT(n14655), .C0(rom_addr[0]), .Z(n14656));
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_c)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i7730_2_lut_rep_150_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(n14608), .Z(n14427)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7730_2_lut_rep_150_3_lut_4_lut.init = 16'h8000;
    LUT4 i7767_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n14482), 
         .D(rom_addr[3]), .Z(n3709)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7767_4_lut_4_lut.init = 16'hd100;
    PFUMX i12114 (.BLUT(n1499), .ALUT(n1530_adj_652), .C0(rom_addr[5]), 
          .Z(n12813));
    LUT4 i7518_2_lut_rep_343 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14620)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7518_2_lut_rep_343.init = 16'heeee;
    LUT4 i12842_2_lut_rep_270_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15878), 
         .Z(n14547)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12842_2_lut_rep_270_3_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .Z(n14718)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'ha4a4;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n1228_adj_694)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 rom_addr_2__bdd_4_lut_13153 (.A(n14541), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14532), .Z(n13552)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam rom_addr_2__bdd_4_lut_13153.init = 16'h3a0a;
    LUT4 i5917_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14647)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5917_4_lut_else_4_lut.init = 16'h2020;
    LUT4 i3600_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15878), .Z(n4483)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3600_3_lut_4_lut_4_lut_3_lut.init = 16'h2828;
    LUT4 i1_2_lut_rep_212_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n14489)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_212_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460_adj_592), .B(n475_adj_725), 
         .C(rom_addr[4]), .Z(n476_adj_781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i11667_3_lut (.A(n908), .B(n875), .C(rom_addr[4]), .Z(n12366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11667_3_lut.init = 16'hcaca;
    LUT4 i12491_3_lut (.A(n476_adj_781), .B(n14704), .C(rom_addr[5]), 
         .Z(n508_adj_753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12491_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_4_lut_adj_21 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14606), .D(rom_addr[4]), .Z(n12058)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_adj_21.init = 16'hc090;
    LUT4 i11708_3_lut (.A(n2283_adj_611), .B(n2298_adj_669), .C(rom_addr[4]), 
         .Z(n12407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11708_3_lut.init = 16'hcaca;
    LUT4 i11688_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n15871)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11688_3_lut_4_lut_then_4_lut.init = 16'h744c;
    LUT4 i11939_3_lut (.A(n476), .B(n507_adj_689), .C(rom_addr[5]), .Z(n12638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11939_3_lut.init = 16'hcaca;
    LUT4 i11689_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14641)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11689_4_lut_else_3_lut.init = 16'h0402;
    PFUMX i12120 (.BLUT(n1692_adj_651), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12819));
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14593), .D(n14542), .Z(n1483_adj_737)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut.init = 16'h3434;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n220_adj_621)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(B (C+!(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_3_lut_4_lut_4_lut.init = 16'h434f;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (C (D))+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hd003;
    LUT4 i12826_2_lut_rep_352 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14629)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12826_2_lut_rep_352.init = 16'h1111;
    LUT4 i7479_2_lut_rep_347 (.A(n15878), .B(rom_addr[3]), .Z(n14624)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7479_2_lut_rep_347.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_156_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14433)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_156_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_181_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n14458)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_181_2_lut_3_lut.init = 16'hefef;
    LUT4 i5912_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n6825)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5912_3_lut_4_lut_4_lut.init = 16'h0b5b;
    PFUMX i12121 (.BLUT(n1755_adj_681), .ALUT(n1786_adj_647), .C0(rom_addr[5]), 
          .Z(n12820));
    PFUMX i12126 (.BLUT(n1117_adj_646), .ALUT(n10797), .C0(rom_addr[5]), 
          .Z(n12825));
    LUT4 i1_2_lut_rep_256_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n14533)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_256_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i12877_2_lut_rep_168_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14445)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12877_2_lut_rep_168_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_148_3_lut_3_lut_4_lut (.A(n15878), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14425)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_148_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_199_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14476)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_199_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_274_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14551)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_274_3_lut.init = 16'hfbfb;
    LUT4 i7649_2_lut_rep_162_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14439)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7649_2_lut_rep_162_3_lut_4_lut.init = 16'h0040;
    LUT4 i7912_2_lut_rep_160_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n14437)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7912_2_lut_rep_160_3_lut_3_lut.init = 16'h3131;
    LUT4 n122_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(n15878), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684_adj_701)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n122_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i12173_3_lut_4_lut (.A(n14579), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12872)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i12173_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_600)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i5963_2_lut_rep_348 (.A(n15878), .B(rom_addr[3]), .Z(n14625)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5963_2_lut_rep_348.init = 16'h8888;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(n14579), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14504), .Z(n891_adj_774)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'hf606;
    LUT4 i11948_3_lut_4_lut (.A(n14579), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n12647)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11948_3_lut_4_lut.init = 16'hf909;
    LUT4 i1_2_lut_rep_217_3_lut_4_lut (.A(n15878), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n14494)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_217_3_lut_4_lut.init = 16'h0008;
    LUT4 i7660_2_lut_rep_231_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14508)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7660_2_lut_rep_231_3_lut_4_lut.init = 16'h0880;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14717)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'ha084;
    LUT4 i1_2_lut_rep_338_3_lut (.A(n15878), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14615)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_338_3_lut.init = 16'h0808;
    LUT4 i5945_4_lut_4_lut_4_lut (.A(n15878), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n1451_adj_612)) /* synthesis lut_function=(A (B (C (D)))+!A !(D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5945_4_lut_4_lut_4_lut.init = 16'h8055;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14579), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n12190), .Z(n1212_adj_758)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i1997_2_lut_rep_317 (.A(rom_addr[0]), .B(n15878), .Z(n14594)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1997_2_lut_rep_317.init = 16'h6666;
    LUT4 i1_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n6417)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_4_lut.init = 16'heffe;
    PFUMX i13173 (.BLUT(n14448), .ALUT(n13749), .C0(n14591), .Z(n13750));
    PFUMX i11737 (.BLUT(n397), .ALUT(n6823), .C0(rom_addr[4]), .Z(n12436));
    LUT4 i2_2_lut_rep_146_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14423)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_146_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i7915_2_lut_rep_331 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14608)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7915_2_lut_rep_331.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14579), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1483), .Z(n1212_adj_558)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2220), .Z(n2268_adj_769)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i7619_2_lut_rep_224_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14501)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i7619_2_lut_rep_224_3_lut_4_lut.init = 16'h8008;
    LUT4 i7403_2_lut_rep_166_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14443)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7403_2_lut_rep_166_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i12815_2_lut_rep_299 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14576)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12815_2_lut_rep_299.init = 16'heeee;
    LUT4 i7534_2_lut_rep_262_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14539)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7534_2_lut_rep_262_3_lut_3_lut.init = 16'h7d7d;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15856), 
         .C(rom_addr[3]), .D(n14570), .Z(n1435_adj_584)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 i11694_3_lut (.A(n428_adj_601), .B(n251), .C(rom_addr[4]), .Z(n12393)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11694_3_lut.init = 16'hcaca;
    L6MUX21 i13168 (.D0(n13730), .D1(n13728), .SD(rom_addr[6]), .Z(n13731));
    LUT4 i4919_2_lut_rep_214_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14491)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4919_2_lut_rep_214_3_lut.init = 16'hf9f9;
    LUT4 i1_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4_adj_760)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_3_lut.init = 16'hc4c4;
    PFUMX i13166 (.BLUT(n1181), .ALUT(n13729), .C0(rom_addr[5]), .Z(n13730));
    LUT4 i11693_3_lut (.A(n589), .B(n220_adj_593), .C(rom_addr[4]), .Z(n12392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11693_3_lut.init = 16'hcaca;
    LUT4 i11676_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691_adj_719), .Z(n12375)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11676_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_727)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6844), 
         .C(rom_addr[5]), .D(n12584), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i7521_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(n15878), .Z(n46_adj_12)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A ((C (D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7521_4_lut_4_lut_4_lut.init = 16'h0cc4;
    LUT4 i2_2_lut_rep_218_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n14495)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_rep_218_3_lut_4_lut.init = 16'h8000;
    LUT4 i7661_2_lut_rep_239_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14516)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i7661_2_lut_rep_239_3_lut_4_lut.init = 16'h0888;
    LUT4 rom_addr_2__bdd_4_lut_13037 (.A(rom_addr[2]), .B(n14629), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13551)) /* synthesis lut_function=(A (B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam rom_addr_2__bdd_4_lut_13037.init = 16'h8040;
    LUT4 n212_bdd_2_lut_13307_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13847)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n212_bdd_2_lut_13307_3_lut_4_lut.init = 16'h0060;
    PFUMX i13164 (.BLUT(n13727), .ALUT(n13726), .C0(rom_addr[5]), .Z(n13728));
    LUT4 i7684_2_lut_rep_228_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15878), 
         .Z(n14505)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7684_2_lut_rep_228_3_lut.init = 16'h8080;
    LUT4 i11932_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n12631)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11932_3_lut_4_lut.init = 16'hf808;
    LUT4 i7933_2_lut_rep_332 (.A(rom_addr[0]), .B(n15878), .Z(n14609)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7933_2_lut_rep_332.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i1_2_lut_rep_182_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14459)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_182_3_lut.init = 16'hfefe;
    LUT4 rom_addr_6__bdd_3_lut_4_lut_4_lut (.A(n14579), .B(n14444), .C(rom_addr[4]), 
         .D(n14583), .Z(n14044)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i7682_2_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n348)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7682_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14721)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut_3_lut.init = 16'h6363;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14522), 
         .C(rom_addr[3]), .D(n14570), .Z(n589_adj_704)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14720)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i11688_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n15870)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11688_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 i12775_2_lut_rep_300 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14577)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12775_2_lut_rep_300.init = 16'hdddd;
    LUT4 i12541_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1084), 
         .D(n1076), .Z(n1085_adj_703)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12541_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7424_2_lut_rep_258_3_lut (.A(rom_addr[0]), .B(n15878), .C(rom_addr[2]), 
         .Z(n14535)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i7424_2_lut_rep_258_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n1181)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h2000;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14571), 
         .C(rom_addr[3]), .D(n14553), .Z(n1101_adj_726)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i11753_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n443_adj_570), .C(rom_addr[4]), 
         .D(n14615), .Z(n12452)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11753_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7727_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14625), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n1148_adj_9)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7727_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n1212)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n908_adj_668)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C+(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h5ef0;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n731_adj_700)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hec10;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[5]), .Z(n4_adj_771)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h4044;
    PFUMX i12146 (.BLUT(n12843), .ALUT(n12844), .C0(rom_addr[5]), .Z(n12845));
    LUT4 i7745_2_lut_rep_174_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14451)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7745_2_lut_rep_174_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i12601_3_lut (.A(n12384), .B(n14640), .C(rom_addr[5]), .Z(n12386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12601_3_lut.init = 16'hcaca;
    LUT4 rom_addr_1__bdd_4_lut_13696 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14650)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13696.init = 16'h6144;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1691_adj_719)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'he003;
    L6MUX21 i13610 (.D0(n14290), .D1(n14288), .SD(rom_addr[5]), .Z(n12867));
    LUT4 i7894_2_lut_rep_302 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14579)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7894_2_lut_rep_302.init = 16'heeee;
    LUT4 i7673_2_lut_rep_264_3_lut_4_lut (.A(rom_addr[0]), .B(n15878), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14541)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i7673_2_lut_rep_264_3_lut_4_lut.init = 16'he000;
    LUT4 i3899_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4782)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i3899_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i4355_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5238)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i4355_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i12149 (.BLUT(n12846), .ALUT(n12847), .C0(rom_addr[5]), .Z(n12848));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_722)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n2573), 
         .C(rom_addr[4]), .D(n14537), .Z(n1309)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i13608 (.BLUT(n270_c), .ALUT(n14289), .C0(rom_addr[4]), .Z(n14290));
    LUT4 i5245_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n15865)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5245_4_lut_then_4_lut.init = 16'hffef;
    LUT4 i5897_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n6810)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i5897_3_lut_3_lut_3_lut.init = 16'h5e5e;
    LUT4 n1212_bdd_4_lut_13210 (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14594), 
         .D(rom_addr[4]), .Z(n13554)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n1212_bdd_4_lut_13210.init = 16'h2000;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1898_adj_784)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_4_lut_3_lut_4_lut.init = 16'hfe11;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    LUT4 address_11__I_0_Mux_0_i277_3_lut_rep_248_3_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14525)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_0_i277_3_lut_rep_248_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 address_11__I_0_Mux_2_i859_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n859_adj_581)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i859_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 n2203_bdd_2_lut_13118_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13615)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam n2203_bdd_2_lut_13118_3_lut_4_lut.init = 16'hfef0;
    LUT4 i11710_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14724)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11710_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 i4363_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5246)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam i4363_3_lut_3_lut.init = 16'he3e3;
    LUT4 i5887_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6800)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i5887_4_lut_4_lut_4_lut.init = 16'he303;
    LUT4 i12016_4_lut_4_lut (.A(rom_addr[0]), .B(n14519), .C(rom_addr[4]), 
         .D(n14423), .Z(n12715)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12016_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1969_3_lut_rep_333 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14610)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_6_i1969_3_lut_rep_333.init = 16'h8181;
    PFUMX i12155 (.BLUT(n12852), .ALUT(n12853), .C0(rom_addr[5]), .Z(n12854));
    LUT4 i11682_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n12381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11682_3_lut.init = 16'hcaca;
    LUT4 i11661_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n14615), .Z(n12360)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11661_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 segment_led_0_bdd_2_lut_13049 (.A(n13556), .B(rom_addr[7]), .Z(n13557)) /* synthesis lut_function=(A (B)) */ ;
    defparam segment_led_0_bdd_2_lut_13049.init = 16'h8888;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_334 (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14611)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_334.init = 16'he8e8;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14522), 
         .C(rom_addr[3]), .D(n14570), .Z(n475_adj_725)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12160 (.BLUT(n12855), .ALUT(n12856), .C0(rom_addr[5]), .Z(n12859));
    LUT4 address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_335 (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .Z(n14612)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_335.init = 16'h1c1c;
    LUT4 address_11__I_0_Mux_4_i1030_3_lut_rep_336 (.A(rom_addr[0]), .B(n15878), 
         .C(rom_addr[2]), .Z(n14613)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1030_3_lut_rep_336.init = 16'h3e3e;
    PFUMX i13606 (.BLUT(n14287), .ALUT(n557_adj_571), .C0(rom_addr[4]), 
          .Z(n14288));
    LUT4 i1_2_lut_rep_139_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14416)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_139_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i7862_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_716)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7862_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5245_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .Z(n15864)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5245_4_lut_else_4_lut.init = 16'hfdfd;
    LUT4 n875_bdd_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14625), 
         .C(n14544), .D(rom_addr[5]), .Z(n13642)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n875_bdd_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_625)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_650)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i11768_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12467)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam i11768_3_lut_4_lut_4_lut.init = 16'h1cc0;
    PFUMX i12161 (.BLUT(n12857), .ALUT(n12858), .C0(rom_addr[5]), .Z(n12860));
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n875), 
         .C(rom_addr[4]), .D(n14615), .Z(n507)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    L6MUX21 i12165 (.D0(n12862), .D1(n12863), .SD(rom_addr[5]), .Z(n12864));
    LUT4 i7493_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n14583), .D(rom_addr[4]), .Z(n1181_adj_557)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7493_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668_adj_586)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i4093_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4976)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i4093_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 i1_2_lut_rep_203_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(n15878), .Z(n14480)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_203_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_653)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15878), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_720)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_686)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_618)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 i11844_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12543)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam i11844_3_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 i5941_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n6854)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i5941_3_lut_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i12871_2_lut_rep_128_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14624), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14405)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12871_2_lut_rep_128_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_219_3_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14496)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_219_3_lut.init = 16'h1e1e;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14629), 
         .B(rom_addr[5]), .C(n14457), .D(n14584), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 i7584_2_lut_rep_232_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14509)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7584_2_lut_rep_232_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[1]), .Z(n10795)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4100;
    LUT4 i11664_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n5246), 
         .D(n14454), .Z(n12363)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11664_4_lut_4_lut.init = 16'h7340;
    LUT4 i3580_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n4463)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3580_3_lut_3_lut.init = 16'h7474;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i7777_2_lut_3_lut_4_lut_4_lut (.A(n14629), .B(rom_addr[5]), .C(rom_addr[0]), 
         .D(n14506), .Z(n2237_adj_747)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7777_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i5883_3_lut_4_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5883_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i14452 (.BLUT(n15870), .ALUT(n15871), .C0(rom_addr[3]), .Z(n15872));
    LUT4 n2275_bdd_2_lut_13291_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13891)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam n2275_bdd_2_lut_13291_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i7756_2_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14585), .C(n14619), 
         .D(rom_addr[5]), .Z(n2684_adj_714)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7756_2_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i11710_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14723)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11710_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1612)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h01a0;
    LUT4 i7615_2_lut_rep_184_3_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14461)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7615_2_lut_rep_184_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_261_3_lut (.A(n15878), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14538)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_261_3_lut.init = 16'hfefe;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898_adj_784), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_779)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n12477), 
         .C(rom_addr[5]), .D(n14625), .Z(n1660_adj_693)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12655), .B(n3070_adj_576), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 i7254_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14456), .C(rom_addr[4]), 
         .D(n14619), .Z(n2141_adj_759)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7254_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12817_2_lut_rep_303 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14580)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12817_2_lut_rep_303.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914_adj_640), .D(n13031), .Z(n1883_adj_723)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12482_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692), 
         .D(n1676_adj_617), .Z(n1724_adj_757)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12482_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i12171 (.BLUT(n12868), .ALUT(n12869), .C0(rom_addr[5]), .Z(n12870));
    LUT4 i12610_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_672), 
         .D(n1676), .Z(n1724_adj_658)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12610_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i13107 (.BLUT(n13642), .ALUT(n13641), .C0(rom_addr[6]), .Z(n13643));
    PFUMX i13747 (.BLUT(n14732), .ALUT(n14733), .C0(rom_addr[4]), .Z(n14734));
    PFUMX i12174 (.BLUT(n12871), .ALUT(n12872), .C0(rom_addr[5]), .Z(n12873));
    PFUMX i13692 (.BLUT(n14651), .ALUT(n14652), .C0(rom_addr[2]), .Z(n14653));
    LUT4 i12858_2_lut_rep_304 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14581)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12858_2_lut_rep_304.init = 16'hbbbb;
    PFUMX i12176 (.BLUT(n1628_adj_641), .ALUT(n1659), .C0(rom_addr[5]), 
          .Z(n12875));
    LUT4 i12645_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12645_3_lut_4_lut.init = 16'hf4b0;
    L6MUX21 i12180 (.D0(n12877), .D1(n12878), .SD(rom_addr[5]), .Z(n12879));
    PFUMX i12188 (.BLUT(n12883), .ALUT(n12884), .C0(rom_addr[5]), .Z(n12887));
    PFUMX i13088 (.BLUT(n13620), .ALUT(n13617), .C0(rom_addr[6]), .Z(n13621));
    LUT4 i5023_2_lut_rep_305 (.A(n15878), .B(rom_addr[3]), .Z(n14582)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5023_2_lut_rep_305.init = 16'h6666;
    PFUMX i12189 (.BLUT(n12885), .ALUT(n12886), .C0(rom_addr[5]), .Z(n12888));
    PFUMX i12193 (.BLUT(n12890), .ALUT(n12891), .C0(rom_addr[5]), .Z(n12892));
    PFUMX i13086 (.BLUT(n14504), .ALUT(n13618), .C0(rom_addr[4]), .Z(n13619));
    PFUMX i12199 (.BLUT(n12896), .ALUT(n12897), .C0(rom_addr[5]), .Z(n12898));
    LUT4 i7453_2_lut_rep_196_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(n15878), .Z(n14473)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7453_2_lut_rep_196_3_lut_3_lut.init = 16'h1414;
    PFUMX i12202 (.BLUT(n12899), .ALUT(n12900), .C0(rom_addr[5]), .Z(n12901));
    PFUMX i12205 (.BLUT(n12902), .ALUT(n12903), .C0(rom_addr[5]), .Z(n12904));
    LUT4 i11791_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541_adj_770), 
         .D(n14628), .Z(n12490)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11791_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i13084 (.BLUT(n13615), .ALUT(n13614), .C0(rom_addr[4]), .Z(n13616));
    PFUMX i12211 (.BLUT(n12908), .ALUT(n12909), .C0(rom_addr[5]), .Z(n12910));
    LUT4 i5938_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n6851)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5938_4_lut_4_lut_4_lut_4_lut.init = 16'h5950;
    LUT4 i11482_2_lut_rep_306 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14583)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11482_2_lut_rep_306.init = 16'h8888;
    LUT4 i7799_2_lut_rep_307 (.A(rom_addr[2]), .B(rom_addr[4]), .Z(n14584)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7799_2_lut_rep_307.init = 16'heeee;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_adj_685)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(n6854), .C(rom_addr[4]), 
         .Z(n10797)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    L6MUX21 i13522 (.D0(n14163), .D1(n14161), .SD(rom_addr[6]), .Z(n14164));
    PFUMX i13520 (.BLUT(n158_adj_2), .ALUT(n14162), .C0(rom_addr[5]), 
          .Z(n14163));
    PFUMX i11651 (.BLUT(n12348), .ALUT(n12349), .C0(rom_addr[5]), .Z(n12350));
    PFUMX i13518 (.BLUT(n14160), .ALUT(n14159), .C0(rom_addr[5]), .Z(n14161));
    PFUMX i11654 (.BLUT(n12351), .ALUT(n12352), .C0(rom_addr[5]), .Z(n12353));
    PFUMX i11657 (.BLUT(n12354), .ALUT(n12355), .C0(rom_addr[5]), .Z(n12356));
    PFUMX i11660 (.BLUT(n12357), .ALUT(n12358), .C0(rom_addr[5]), .Z(n12359));
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12600), .B(n3070_adj_785), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    PFUMX i11663 (.BLUT(n12360), .ALUT(n12361), .C0(rom_addr[5]), .Z(n12362));
    LUT4 i11671_4_lut (.A(n5603), .B(n14408), .C(rom_addr[4]), .D(n14629), 
         .Z(n12370)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11671_4_lut.init = 16'hcac0;
    LUT4 i11765_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14727)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11765_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i7645_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14629), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7645_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12675), .B(n13326), .C(rom_addr[9]), 
         .D(n14552), .Z(n3070_adj_785)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (sys_clk_c, \ascii_num[0] , debug_led1_c_5, 
            cnt1, \state_3__N_379[1] , n5, \end_y_8__N_315[4] , n6998, 
            sys_clk_c_enable_10, \ascii_num[6] , \ascii_num[4] , \ascii_num[3] , 
            \ascii_num[2] , \ascii_num[1] , debug_led2_c_3, \end_x_8__N_297[3] , 
            \end_y_8__N_315[5] , \end_x_8__N_297[7] , \end_x_8__N_297[6] , 
            \end_x_8__N_297[5] , \end_x_8__N_297[4] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output \ascii_num[0] ;
    input debug_led1_c_5;
    output [1:0]cnt1;
    output \state_3__N_379[1] ;
    input n5;
    output \end_y_8__N_315[4] ;
    input n6998;
    input sys_clk_c_enable_10;
    output \ascii_num[6] ;
    output \ascii_num[4] ;
    output \ascii_num[3] ;
    output \ascii_num[2] ;
    output \ascii_num[1] ;
    input debug_led2_c_3;
    output \end_x_8__N_297[3] ;
    output \end_y_8__N_315[5] ;
    output \end_x_8__N_297[7] ;
    output \end_x_8__N_297[6] ;
    output \end_x_8__N_297[5] ;
    output \end_x_8__N_297[4] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [31:0]n260;
    
    wire cnt_ascii_num_4__N_524;
    wire [6:0]ascii_num_6__N_525;
    wire [8:0]start_y_8__N_541;
    
    wire show_char_flag_N_550;
    wire [1:0]n7;
    
    wire n14557, n6714, n6, n14409, n6034, n13, n14548, n14565, 
        n14549, n14550, n10839;
    wire [5:0]n1592;
    wire [4:0]n1586;
    
    wire n755, n6037, n14477, n12140, n14569;
    wire [8:0]start_x_8__N_532;
    
    wire n6639, n14401, n24, n20, n22, n16, n2967, n2906, n1159, 
        n12111, n14623, n8526, n14621, n14622, n14563, n12134, 
        n12105, n6_adj_551, n14180, n14179;
    
    FD1P3AX cnt_ascii_num_FSM_i0_i29 (.D(n260[28]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[29]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i29.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i28 (.D(n260[27]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[28]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i28.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i27 (.D(n260[26]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[27]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i27.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i26 (.D(n260[25]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[26]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i26.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i25 (.D(n260[24]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[25]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i25.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i24 (.D(n260[23]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[24]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i24.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i23 (.D(n260[22]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[23]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i23.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i22 (.D(n260[21]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i22.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i21 (.D(n260[20]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[21]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i21.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i20 (.D(n260[19]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i20.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i19 (.D(n260[18]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[19]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i19.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i18 (.D(n260[17]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i17 (.D(n260[16]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i16 (.D(n260[15]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i15 (.D(n260[14]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_525[0]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_c), .CD(\state_3__N_379[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i14 (.D(n260[13]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i13 (.D(n260[12]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i12 (.D(n260[11]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AY cnt_ascii_num_FSM_i0_i0 (.D(n260[31]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i11 (.D(n260[10]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i10 (.D(n260[9]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i9 (.D(n260[8]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i9.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_541[4]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_y_8__N_315[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_38 (.D(show_char_flag_N_550), .CK(sys_clk_c), 
            .Q(\state_3__N_379[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_38.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i8 (.D(n260[7]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i7 (.D(n260[6]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i6 (.D(n260[5]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i5 (.D(n260[4]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i4 (.D(n260[3]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i3 (.D(n260[2]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i2 (.D(n260[1]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i1 (.D(n260[0]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_c_enable_10), .CD(\state_3__N_379[1] ), 
            .CK(sys_clk_c), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_525[6]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_525[4]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_525[3]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_525[2]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_525[1]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(89[10] 112[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_280 (.A(n260[17]), .B(n260[16]), .Z(n14557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_280.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n260[17]), .B(n260[16]), .C(n6714), 
         .D(n260[15]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1003_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(66[17:28])
    defparam i1003_2_lut.init = 16'h6666;
    LUT4 mux_839_i4_4_lut (.A(n14409), .B(n6034), .C(n13), .D(n14548), 
         .Z(ascii_num_6__N_525[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_839_i4_4_lut.init = 16'h0aca;
    LUT4 i3_4_lut (.A(n14565), .B(n260[8]), .C(n14549), .D(n14550), 
         .Z(n10839)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_4_lut.init = 16'hfffd;
    PFUMX mux_839_i3 (.BLUT(n1592[2]), .ALUT(n1586[2]), .C0(n13), .Z(ascii_num_6__N_525[2]));
    LUT4 i7858_2_lut_rep_132 (.A(n755), .B(n260[18]), .Z(n14409)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7858_2_lut_rep_132.init = 16'h4444;
    LUT4 mux_839_i2_3_lut_4_lut (.A(n755), .B(n260[18]), .C(n13), .D(n6037), 
         .Z(ascii_num_6__N_525[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_839_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 init_done_I_0_2_lut (.A(debug_led1_c_5), .B(debug_led2_c_3), .Z(cnt_ascii_num_4__N_524)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(81[13:40])
    defparam init_done_I_0_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(n260[4]), .B(n14477), .C(start_y_8__N_541[5]), 
         .D(n12140), .Z(start_y_8__N_541[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(n260[4]), .B(n14477), .C(n14569), .D(n260[12]), 
         .Z(start_x_8__N_532[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_11 (.A(n260[15]), .B(n14557), .C(n260[18]), 
         .D(n6639), .Z(start_y_8__N_541[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_11.init = 16'hfffe;
    FD1S3IX start_x__i1 (.D(start_x_8__N_532[3]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_x_8__N_297[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 mux_839_i1_4_lut (.A(n14569), .B(n1586[0]), .C(n13), .D(n14401), 
         .Z(ascii_num_6__N_525[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam mux_839_i1_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut (.A(n12140), .B(n6639), .C(n14477), .Z(n13)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i12_4_lut (.A(n260[27]), .B(n24), .C(n20), .D(n260[29]), .Z(n755)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(n260[22]), .B(n22), .C(n16), .D(n260[30]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i11_4_lut.init = 16'hfffe;
    PFUMX mux_822_i1 (.BLUT(n2967), .ALUT(n2906), .C0(n1159), .Z(n1586[0]));
    LUT4 i7_3_lut (.A(n260[24]), .B(n260[26]), .C(n260[19]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(n260[20]), .B(n260[23]), .C(n260[21]), .D(n260[31]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(n260[28]), .B(n260[25]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_adj_12 (.A(n260[13]), .B(n260[14]), .C(n260[12]), .Z(n6639)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_12.init = 16'hfefe;
    LUT4 i1_2_lut (.A(n260[8]), .B(n260[10]), .Z(n12111)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i5128_4_lut_4_lut (.A(n260[11]), .B(n14623), .C(n14549), .D(n8526), 
         .Z(n6034)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5128_4_lut_4_lut.init = 16'h3233;
    LUT4 i580_2_lut_3_lut_4_lut (.A(n260[11]), .B(n14623), .C(n14621), 
         .D(n14622), .Z(n1159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i580_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_13 (.A(n260[11]), .B(n260[3]), .Z(n6714)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'heeee;
    LUT4 i576_2_lut_rep_124 (.A(n260[18]), .B(n755), .Z(n14401)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i576_2_lut_rep_124.init = 16'heeee;
    LUT4 i7303_2_lut_3_lut (.A(n260[18]), .B(n755), .C(n13), .Z(ascii_num_6__N_525[6])) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i7303_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_rep_286 (.A(n260[5]), .B(n260[9]), .Z(n14563)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_286.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(n260[5]), .B(n260[9]), .C(n14565), 
         .D(n6714), .Z(n12140)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'hfffe;
    LUT4 i1_2_lut_rep_272_3_lut (.A(n260[5]), .B(n260[9]), .C(n260[10]), 
         .Z(n14549)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_272_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_288 (.A(n260[7]), .B(n260[1]), .Z(n14565)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_288.init = 16'heeee;
    LUT4 i7606_2_lut_3_lut (.A(n260[7]), .B(n260[1]), .C(n260[8]), .Z(n8526)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i7606_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_15 (.A(n260[7]), .B(n260[9]), .C(n260[11]), .D(n12111), 
         .Z(start_x_8__N_532[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_15.init = 16'hfffe;
    LUT4 i4_4_lut (.A(n260[18]), .B(n12134), .C(n12105), .D(n6_adj_551), 
         .Z(start_x_8__N_532[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_16 (.A(n260[3]), .B(n260[0]), .Z(n6_adj_551)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'heeee;
    LUT4 i1_2_lut_adj_17 (.A(n260[4]), .B(n260[5]), .Z(n12134)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'heeee;
    LUT4 i4_4_lut_adj_18 (.A(n260[14]), .B(n12134), .C(n260[6]), .D(n6), 
         .Z(start_x_8__N_532[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_18.init = 16'hfffe;
    LUT4 i3_4_lut_adj_19 (.A(n260[13]), .B(n12105), .C(n14549), .D(n14557), 
         .Z(start_x_8__N_532[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_19.init = 16'hfffe;
    LUT4 i2_3_lut_rep_200_4_lut (.A(n260[6]), .B(n260[2]), .C(n260[0]), 
         .D(n12111), .Z(n14477)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_200_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(n260[6]), .B(n260[2]), .C(n260[1]), .Z(n12105)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2084_3_lut_4_lut_4_lut (.A(n260[8]), .B(n14565), .C(n14563), 
         .D(n260[10]), .Z(n2967)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam i2084_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 mux_822_i3_4_lut_4_lut (.A(n260[8]), .B(n14549), .C(n1159), .D(n14621), 
         .Z(n1586[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam mux_822_i3_4_lut_4_lut.init = 16'hfd0d;
    LUT4 reduce_or_714_i5_2_lut_rep_292 (.A(n260[15]), .B(n260[17]), .Z(n14569)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_714_i5_2_lut_rep_292.init = 16'heeee;
    LUT4 n755_bdd_3_lut_4_lut (.A(n260[15]), .B(n260[17]), .C(n260[18]), 
         .D(n755), .Z(n14180)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam n755_bdd_3_lut_4_lut.init = 16'h00f1;
    LUT4 i7974_2_lut_3_lut_4_lut (.A(n260[15]), .B(n260[17]), .C(n755), 
         .D(n260[18]), .Z(n1592[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7974_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i12777_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_550)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[13:24])
    defparam i12777_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_344 (.A(n260[14]), .B(n260[2]), .Z(n14621)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_344.init = 16'heeee;
    LUT4 i5131_3_lut_3_lut_4_lut (.A(n260[14]), .B(n260[2]), .C(n10839), 
         .D(n14622), .Z(n6037)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i5131_3_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i2025_3_lut_4_lut (.A(n260[14]), .B(n260[2]), .C(n14623), .D(n14622), 
         .Z(n2906)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i2025_3_lut_4_lut.init = 16'h1101;
    LUT4 n755_bdd_3_lut_13535_4_lut (.A(n260[14]), .B(n260[2]), .C(n14622), 
         .D(n14623), .Z(n14179)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam n755_bdd_3_lut_13535_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_345 (.A(n260[13]), .B(n260[3]), .Z(n14622)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_345.init = 16'heeee;
    LUT4 i572_2_lut_rep_271_3_lut_4_lut (.A(n260[13]), .B(n260[3]), .C(n260[2]), 
         .D(n260[14]), .Z(n14548)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i572_2_lut_rep_271_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_346 (.A(n260[12]), .B(n260[0]), .Z(n14623)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i1_2_lut_rep_346.init = 16'heeee;
    LUT4 i570_2_lut_rep_273_3_lut (.A(n260[12]), .B(n260[0]), .C(n260[11]), 
         .Z(n14550)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(90[9] 112[16])
    defparam i570_2_lut_rep_273_3_lut.init = 16'hfefe;
    PFUMX i13536 (.BLUT(n14180), .ALUT(n14179), .C0(n13), .Z(ascii_num_6__N_525[4]));
    FD1S3IX start_y__i2 (.D(start_y_8__N_541[5]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_y_8__N_315[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(207[10] 232[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_532[7]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_x_8__N_297[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_532[6]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_x_8__N_297[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_532[5]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_x_8__N_297[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_532[4]), .CK(sys_clk_c), .CD(n6998), 
            .Q(\end_x_8__N_297[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(177[10] 202[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i31 (.D(n260[30]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[31]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i31.GSR = "ENABLED";
    FD1P3AX cnt_ascii_num_FSM_i0_i30 (.D(n260[29]), .SP(cnt_ascii_num_4__N_524), 
            .CK(sys_clk_c), .Q(n260[30]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(82[26:46])
    defparam cnt_ascii_num_FSM_i0_i30.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module segment_led
//

module segment_led (count, n6, segment_led_c_0, segment_led_c_1, segment_led_c_2, 
            segment_led_c_3, segment_led_c_5, segment_led_c_6, n1, count_3__N_11, 
            segment_led_c_4) /* synthesis syn_module_defined=1 */ ;
    input [3:0]count;
    output n6;
    output segment_led_c_0;
    output segment_led_c_1;
    output segment_led_c_2;
    output segment_led_c_3;
    output segment_led_c_5;
    output segment_led_c_6;
    output n1;
    output count_3__N_11;
    output segment_led_c_4;
    
    
    LUT4 i536_2_lut (.A(count[0]), .B(count[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i536_2_lut.init = 16'h6666;
    LUT4 seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[3]), .D(count[0]), .Z(segment_led_c_0)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut.init = 16'h1e1b;
    LUT4 seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[3]), .D(count[0]), .Z(segment_led_c_1)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C+(D))))) */ ;
    defparam seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'h1b17;
    LUT4 seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[0]), .D(count[3]), .Z(segment_led_c_2)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (D)))) */ ;
    defparam seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'h11fd;
    LUT4 seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[3]), .D(count[0]), .Z(segment_led_c_3)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h161b;
    LUT4 seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[3]), .D(count[0]), .Z(segment_led_c_5)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h141d;
    LUT4 seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut (.A(count[1]), .B(count[2]), 
         .C(count[3]), .D(count[0]), .Z(segment_led_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h161e;
    LUT4 i502_1_lut (.A(count[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i502_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(count[3]), 
         .Z(count_3__N_11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12795_4_lut (.A(count[0]), .B(count[2]), .C(count[3]), .D(count[1]), 
         .Z(segment_led_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12795_4_lut.init = 16'h0511;
    
endmodule
//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_36[1] , lcd_dc_c_8, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , \state[2] , \state[4] , \state[1] , 
            cnt_rom_prepare, init_data, show_char_data, debug_led1_c_5) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_36[1] ;
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
    input debug_led1_c_5;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_84;
    
    wire en_write_N_106, n14190, n14189;
    
    FD1S3AX data_i0 (.D(data_8__N_84[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_106), .CK(sys_clk_50MHz), .Q(\state_3__N_36[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    FD1S3AX data_i8 (.D(data_8__N_84[8]), .CK(sys_clk_50MHz), .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX data_i7 (.D(data_8__N_84[7]), .CK(sys_clk_50MHz), .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX data_i6 (.D(data_8__N_84[6]), .CK(sys_clk_50MHz), .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3AX data_i5 (.D(data_8__N_84[5]), .CK(sys_clk_50MHz), .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(data_8__N_84[4]), .CK(sys_clk_50MHz), .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(data_8__N_84[3]), .CK(sys_clk_50MHz), .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i2 (.D(data_8__N_84[2]), .CK(sys_clk_50MHz), .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(data_8__N_84[1]), .CK(sys_clk_50MHz), .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n14190)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n14189)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    LUT4 mux_7_i9_3_lut (.A(init_data[8]), .B(show_char_data[8]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i9_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(init_data[7]), .B(show_char_data[7]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_7_i7_3_lut (.A(init_data[6]), .B(show_char_data[6]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(init_data[5]), .B(show_char_data[5]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(init_data[4]), .B(show_char_data[4]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(init_data[3]), .B(show_char_data[3]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i3_3_lut (.A(init_data[2]), .B(show_char_data[2]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i2_3_lut (.A(init_data[1]), .B(show_char_data[1]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    PFUMX i13543 (.BLUT(n14190), .ALUT(n14189), .C0(debug_led1_c_5), .Z(en_write_N_106));
    
endmodule
