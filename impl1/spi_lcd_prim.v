// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 20:03:11 2025
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
    wire [5:0]state_adj_809;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_251;
    wire [3:0]state_adj_814;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [8:0]end_x_8__N_297;
    wire [8:0]end_y_8__N_315;
    wire [3:0]state_3__N_379;
    
    wire n8732;
    wire [1:0]cnt1_adj_824;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_11, n5, n1, n6, n1533, sys_clk_c_enable_67, 
        sys_clk_50MHz_enable_45, n14310, n7048, n15514, sys_clk_c_enable_11, 
        n22, n23;
    
    VHI i2 (.Z(VCC_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .lcd_cs_c(lcd_cs_c), .lcd_sclk_c(lcd_sclk_c), .\cnt_sclk[3] (cnt_sclk[3]), 
            .sys_clk_50MHz_enable_11(sys_clk_50MHz_enable_11), .\cnt_sclk[2] (cnt_sclk[2]), 
            .\data[5] (data[5]), .\data[6] (data[6]), .n1533(n1533), .\state[2] (state[2]), 
            .\data[7] (data[7]), .n14310(n14310), .\data[0] (data[0]), 
            .\data[1] (data[1]), .\data[2] (data[2]), .\data[3] (data[3]), 
            .\data[4] (data[4]), .lcd_mosi_c(lcd_mosi_c), .\state_3__N_36[1] (state_3__N_36[1])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(84[12] 96[2])
    ROM128X1A mux_300_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_300_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_300_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_300_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    ROM128X1A mux_300_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_300_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    ROM128X1A mux_300_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_300_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n15514)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14310), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_11)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i761_4_lut_rep_291 (.A(debug_led1_c_5), .B(state_3__N_379[1]), 
         .C(cnt1_adj_824[0]), .D(cnt1_adj_824[1]), .Z(sys_clk_c_enable_11)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i761_4_lut_rep_291.init = 16'hceee;
    LUT4 i2037_2_lut_4_lut (.A(debug_led1_c_5), .B(state_3__N_379[1]), .C(cnt1_adj_824[0]), 
         .D(cnt1_adj_824[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2037_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i755_2_lut (.A(wr_done), .B(state_adj_809[4]), .Z(sys_clk_50MHz_enable_45)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i755_2_lut.init = 16'hbbbb;
    LUT4 i9639_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i9639_3_lut_4_lut.init = 16'h7f80;
    LUT4 i9632_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i9632_2_lut_3_lut.init = 16'h7878;
    LUT4 i756_4_lut (.A(state_adj_814[2]), .B(length_num_flag), .C(n8732), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_c_enable_67)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i756_4_lut.init = 16'hceee;
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(78[5] 82[2])
    lcd_init lcd_init_inst (.cnt_s2_num({cnt_s2_num}), .init_data({init_data}), 
            .sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_45(sys_clk_50MHz_enable_45), 
            .debug_led1_c_5(debug_led1_c_5), .n15514(n15514), .n1533(n1533), 
            .lcd_rst_c(lcd_rst_c), .GND_net(GND_net), .n7048(n7048), .\state[2] (state_adj_809[2]), 
            .\state[4] (state_adj_809[4]), .\init_data_8__N_251[2] (init_data_8__N_251[2]), 
            .\init_data_8__N_251[5] (init_data_8__N_251[5]), .\init_data_8__N_251[0] (init_data_8__N_251[0]), 
            .\init_data_8__N_251[4] (init_data_8__N_251[4]), .wr_done(wr_done)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(112[11] 122[2])
    FD1S3IX count_720__i3 (.D(n22), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_720__i3.GSR = "ENABLED";
    FD1S3IX count_720__i2 (.D(n23), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_720__i2.GSR = "ENABLED";
    FD1S3IX count_720__i1 (.D(n6), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_720__i1.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX count_720__i0 (.D(n1), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_720__i0.GSR = "ENABLED";
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
    show_string_number_ctrl show_string_number_ctrl_inst (.\ascii_num[0] (ascii_num[0]), 
            .sys_clk_c(sys_clk_c), .debug_led1_c_5(debug_led1_c_5), .cnt1({cnt1_adj_824}), 
            .\state_3__N_379[1] (state_3__N_379[1]), .n5(n5), .\end_y_8__N_315[4] (end_y_8__N_315[4]), 
            .n7048(n7048), .sys_clk_c_enable_11(sys_clk_c_enable_11), .\ascii_num[6] (ascii_num[6]), 
            .\ascii_num[4] (ascii_num[4]), .\ascii_num[3] (ascii_num[3]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[1] (ascii_num[1]), 
            .\end_x_8__N_297[7] (end_x_8__N_297[7]), .\end_x_8__N_297[6] (end_x_8__N_297[6]), 
            .\end_x_8__N_297[5] (end_x_8__N_297[5]), .\end_x_8__N_297[4] (end_x_8__N_297[4]), 
            .debug_led2_c_3(debug_led2_c_3), .\end_x_8__N_297[3] (end_x_8__N_297[3]), 
            .\end_y_8__N_315[5] (end_y_8__N_315[5])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(140[26] 152[2])
    lcd_show_char lcd_show_char_inst (.GND_net(GND_net), .sys_clk_c(sys_clk_c), 
            .wr_done(wr_done), .length_num_flag(length_num_flag), .show_char_data({show_char_data}), 
            .cnt_rom_prepare({cnt_rom_prepare}), .\end_x_8__N_297[5] (end_x_8__N_297[5]), 
            .\state[1] (state_adj_814[1]), .\end_x_8__N_297[7] (end_x_8__N_297[7]), 
            .\end_x_8__N_297[6] (end_x_8__N_297[6]), .\state[2] (state_adj_814[2]), 
            .\end_y_8__N_315[5] (end_y_8__N_315[5]), .debug_led2_c_3(debug_led2_c_3), 
            .\ascii_num[0] (ascii_num[0]), .\ascii_num[1] (ascii_num[1]), 
            .sys_clk_c_enable_67(sys_clk_c_enable_67), .n8732(n8732), .\state_3__N_379[1] (state_3__N_379[1]), 
            .\end_x_8__N_297[4] (end_x_8__N_297[4]), .\end_y_8__N_315[4] (end_y_8__N_315[4]), 
            .\ascii_num[6] (ascii_num[6]), .\ascii_num[4] (ascii_num[4]), 
            .\ascii_num[2] (ascii_num[2]), .\ascii_num[3] (ascii_num[3]), 
            .\end_x_8__N_297[3] (end_x_8__N_297[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(124[16] 138[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_36[1] (state_3__N_36[1]), .lcd_dc_c_8(lcd_dc_c_8), 
            .\data[7] (data[7]), .\data[6] (data[6]), .\data[5] (data[5]), 
            .\data[4] (data[4]), .\data[3] (data[3]), .\data[2] (data[2]), 
            .\data[1] (data[1]), .init_data({init_data}), .show_char_data({show_char_data}), 
            .debug_led1_c_5(debug_led1_c_5), .\state[1] (state_adj_814[1]), 
            .cnt_rom_prepare({cnt_rom_prepare}), .\state[2] (state_adj_809[2]), 
            .\state[4] (state_adj_809[4])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(98[10] 110[2])
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
    segment_led segment_led_inst (.count({count}), .segment_led_c_0(segment_led_c_0), 
            .segment_led_c_1(segment_led_c_1), .segment_led_c_2(segment_led_c_2), 
            .segment_led_c_3(segment_led_c_3), .segment_led_c_5(segment_led_c_5), 
            .segment_led_c_6(segment_led_c_6), .count_3__N_11(count_3__N_11), 
            .n6(n6), .n1(n1), .segment_led_c_4(segment_led_c_4)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(72[13] 76[2])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, lcd_cs_c, lcd_sclk_c, \cnt_sclk[3] , 
            sys_clk_50MHz_enable_11, \cnt_sclk[2] , \data[5] , \data[6] , 
            n1533, \state[2] , \data[7] , n14310, \data[0] , \data[1] , 
            \data[2] , \data[3] , \data[4] , lcd_mosi_c, \state_3__N_36[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output lcd_sclk_c;
    output \cnt_sclk[3] ;
    input sys_clk_50MHz_enable_11;
    output \cnt_sclk[2] ;
    input \data[5] ;
    input \data[6] ;
    output n1533;
    output \state[2] ;
    input \data[7] ;
    output n14310;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[4] ;
    output lcd_mosi_c;
    input \state_3__N_36[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    
    wire n11831, n7055, sclk_flag, sclk_flag_N_81;
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    
    wire n14234;
    wire [3:0]n15;
    wire [4:0]n25;
    wire [3:0]state_3__N_44;
    
    wire n1, sclk_N_64;
    wire [3:0]n100;
    
    wire mosi_N_69, n6041, mosi_N_76, n2974, mosi_N_67, n11920, 
        mosi_N_66;
    wire [15:0]n155;
    
    wire sys_clk_50MHz_enable_12, n14261, n14115, n11917, n6042;
    wire [0:0]n1109;
    wire [3:0]state_3__N_40;
    
    wire n10431, sys_clk_50MHz_enable_13, n2984, sys_clk_50MHz_enable_28, 
        mosi_N_74, mosi_N_75, n13, n14, mosi_N_70, mosi_N_72, mosi_N_73, 
        mosi_N_71, n6043, n6, n11909, n1666, n2993, n2992;
    
    LUT4 i12438_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n11831), .D(cnt_delay[2]), 
         .Z(n7055)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i12438_4_lut.init = 16'hfffb;
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14234), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_722__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n7055), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_722__i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_44[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i11102_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n11831)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11102_2_lut.init = 16'heeee;
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_44[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_64), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_11), .CD(n14234), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_11), .CD(n14234), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_11), .CD(n14234), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    LUT4 i5105_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_69), .Z(n6041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5105_3_lut.init = 16'hcaca;
    LUT4 i1_1_lut (.A(mosi_N_76), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i775_1_lut (.A(wr_done), .Z(n1533)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i775_1_lut.init = 16'h5555;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_64)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i12402_4_lut (.A(cnt_sclk[0]), .B(\cnt_sclk[3] ), .C(\cnt_sclk[2] ), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_81)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i12402_4_lut.init = 16'h0200;
    PFUMX mosi_I_1 (.BLUT(n2974), .ALUT(mosi_N_67), .C0(n11920), .Z(mosi_N_66)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;
    LUT4 i2030_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_11), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2030_2_lut.init = 16'h6666;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_76), .SP(sys_clk_50MHz_enable_12), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i9675_3_lut_4_lut (.A(cnt_delay[2]), .B(n14261), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9675_3_lut_4_lut.init = 16'h7f80;
    LUT4 i864_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i864_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14234), .C(state[1]), .Z(sys_clk_50MHz_enable_12)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i12261_4_lut_4_lut (.A(n14115), .B(n11917), .C(n6042), .D(n1109[0]), 
         .Z(mosi_N_67)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12261_4_lut_4_lut.init = 16'hf4b0;
    LUT4 state_3__N_32_I_0_2_lut_rep_157 (.A(state[1]), .B(state_3__N_40[1]), 
         .Z(n14115)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_32_I_0_2_lut_rep_157.init = 16'h2222;
    LUT4 i5106_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(\data[7] ), 
         .D(n6041), .Z(n6042)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5106_3_lut_4_lut.init = 16'hfd20;
    LUT4 i12399_4_lut (.A(state[0]), .B(state_3__N_40[1]), .C(n10431), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_13)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i12399_4_lut.init = 16'hfbfa;
    LUT4 i2071_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(state_3__N_44[3]), 
         .D(\state[2] ), .Z(n2984)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2071_3_lut_4_lut.init = 16'h2f22;
    LUT4 i32_2_lut_rep_155_4_lut (.A(n14310), .B(\cnt_sclk[2] ), .C(\cnt_sclk[3] ), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_28)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_155_4_lut.init = 16'h0400;
    LUT4 i2087_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_74), .D(mosi_N_75), 
         .Z(n1109[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2087_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n10431)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i5_4_lut (.A(mosi_N_76), .B(mosi_N_74), .C(mosi_N_70), .D(mosi_N_72), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_73), .B(mosi_N_75), .C(mosi_N_71), .D(mosi_N_69), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5107_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_72), .Z(n6043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5107_3_lut.init = 16'hcaca;
    LUT4 i11186_2_lut (.A(mosi_N_69), .B(mosi_N_70), .Z(n11917)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11186_2_lut.init = 16'h1111;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_40[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12527_4_lut (.A(n14115), .B(mosi_N_69), .C(mosi_N_70), .D(n11909), 
         .Z(n11920)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i12527_4_lut.init = 16'hfffe;
    LUT4 i11178_3_lut (.A(mosi_N_71), .B(mosi_N_72), .C(mosi_N_73), .Z(n11909)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11178_3_lut.init = 16'h0101;
    LUT4 i5108_3_lut (.A(n6043), .B(\data[4] ), .C(mosi_N_71), .Z(n2974)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5108_3_lut.init = 16'hcaca;
    LUT4 i7193_2_lut (.A(mosi_N_66), .B(state[0]), .Z(n1666)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7193_2_lut.init = 16'h2222;
    FD1P3AX mosi_100 (.D(n1666), .SP(sys_clk_50MHz_enable_13), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 state_3__N_33_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_33_I_0_118_1_lut.init = 16'h5555;
    LUT4 i9654_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9654_2_lut.init = 16'h6666;
    LUT4 i9657_2_lut_rep_303 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14261)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9657_2_lut_rep_303.init = 16'h8888;
    LUT4 i9668_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9668_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i9661_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9661_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_352 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14310)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_352.init = 16'heeee;
    LUT4 i12405_3_lut_rep_276_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(\cnt_sclk[3] ), 
         .D(\cnt_sclk[2] ), .Z(n14234)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i12405_3_lut_rep_276_4_lut.init = 16'h0100;
    LUT4 i9652_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i9652_1_lut.init = 16'h5555;
    LUT4 i2080_2_lut (.A(state[0]), .B(\state_3__N_36[1] ), .Z(n2993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2080_2_lut.init = 16'h2222;
    LUT4 i2079_4_lut (.A(state[1]), .B(\state_3__N_36[1] ), .C(state_3__N_40[1]), 
         .D(state[0]), .Z(n2992)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2079_4_lut.init = 16'heca0;
    LUT4 i878_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .D(\cnt_sclk[3] ), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i878_3_lut_4_lut.init = 16'h7f80;
    LUT4 i871_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i871_2_lut_3_lut.init = 16'h7878;
    FD1S3IX cnt_delay_722__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n7055), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_722__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_722__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n7055), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_722__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_722__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n7055), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_722__i1.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n155[14]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_76));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_75), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n155[12]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_75));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_74), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n155[10]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_74));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_73), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n155[8]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_73));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_72), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n155[6]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_72));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_71), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n155[4]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_71));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_70), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n155[2]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_70));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_69), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n155[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n155[0]), .SP(sys_clk_50MHz_enable_28), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_69));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_722__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n7055), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_722__i0.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2993), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2992), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2984), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    
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
// Verilog Description of module lcd_init
//

module lcd_init (cnt_s2_num, init_data, sys_clk_50MHz, sys_clk_50MHz_enable_45, 
            debug_led1_c_5, n15514, n1533, lcd_rst_c, GND_net, n7048, 
            \state[2] , \state[4] , \init_data_8__N_251[2] , \init_data_8__N_251[5] , 
            \init_data_8__N_251[0] , \init_data_8__N_251[4] , wr_done) /* synthesis syn_module_defined=1 */ ;
    output [6:0]cnt_s2_num;
    output [8:0]init_data;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_45;
    output debug_led1_c_5;
    input n15514;
    input n1533;
    output lcd_rst_c;
    input GND_net;
    output n7048;
    output \state[2] ;
    output \state[4] ;
    input \init_data_8__N_251[2] ;
    input \init_data_8__N_251[5] ;
    input \init_data_8__N_251[0] ;
    input \init_data_8__N_251[4] ;
    input wr_done;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [6:0]n159;
    wire [8:0]init_data_8__N_108;
    
    wire n14309;
    wire [6:0]n24;
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n88, n1545;
    wire [17:0]n357;
    
    wire sys_clk_50MHz_enable_2;
    wire [5:0]state_5__N_191;
    
    wire cnt_s2_num_done_N_283, n6538, n14327, n33, lcd_rst_high_flag, 
        sys_clk_50MHz_enable_8;
    wire [5:0]state_5__N_203;
    
    wire cnt_s4_num_done_N_285, n14300, n10384, n10385, n7054, lcd_rst_high_flag_N_281, 
        n10379, n10380, n14431, n14432, n14433, n15510, n15511, 
        n15512, n14308, n6, n14496, n14492, n11688, n14493, n14494, 
        n12117, n12118, n12119, n12126, n12127, n12130, n12131, 
        n12132, n14490, n14487;
    wire [8:0]init_data_8__N_242;
    wire [8:0]init_data_8__N_251;
    
    wire n12128, n12129, n6_adj_791, n14243, n46, n30, n31, n11925, 
        n63, n30_adj_792, n10378, n15386, n14235, n10452, n20_adj_793, 
        n13710;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire cnt_150ms_22__N_232;
    wire [22:0]n97;
    
    wire n11893, n11654, n10, n14157, n14109, n17, n11895, n11618, 
        n10680, n14374, n14373;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n15, n11883, n11657, n10_adj_794, n6782, n6734, n11875, 
        n3010, n15385, n11560, n11707, n12140, n14314, n7, n20_adj_795, 
        n11857, n11687, n11821, n13874, n14144, n14488, n14375, 
        n14095, n14258, n9, n10386, n10382, n10383, n10381, n15_adj_796, 
        n12139, n86, n14328;
    wire [5:0]state_5__N_185;
    
    wire n3013, n10635, n10_adj_797, n11762, n10_adj_798, n3015;
    wire [5:0]state_5__N_197;
    
    wire n3017, n12, n11873, n3019, n10406, n10405, n10404, n10403, 
        n10402, n10401, n10400, n10399, n10398, n14323, n14322, 
        n30_adj_799, n10450, n10397, n10396;
    
    LUT4 i900_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i900_2_lut_3_lut.init = 16'h7878;
    FD1S3AX init_data_i6 (.D(init_data_8__N_108[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14309), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_108[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n88)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h080b;
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i1 (.D(n15514), .SP(sys_clk_50MHz_enable_2), .CK(sys_clk_50MHz), 
            .Q(debug_led1_c_5));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_108[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_283), .CK(sys_clk_50MHz), 
            .CD(n1533), .Q(state_5__N_191[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_108[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    LUT4 i49_4_lut_4_lut (.A(n6538), .B(cnt_s4_num[3]), .C(n14327), .D(cnt_s4_num[0]), 
         .Z(n33)) /* synthesis lut_function=(A (B)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i49_4_lut_4_lut.init = 16'hd9c8;
    FD1S3AX init_data_i1 (.D(init_data_8__N_108[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_108[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n15514), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_108[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_108[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_285), .CK(sys_clk_50MHz), 
            .CD(n1533), .Q(state_5__N_203[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14300), .SP(sys_clk_50MHz_enable_8), .CD(n14309), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10384), .COUT(n10385), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_281), .CK(sys_clk_50MHz), 
            .CD(n7054), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10379), .COUT(n10380), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    PFUMX i13427 (.BLUT(n14431), .ALUT(n14432), .C0(cnt_s4_num[1]), .Z(n14433));
    PFUMX i14115 (.BLUT(n15510), .ALUT(n15511), .C0(cnt_s2_num[0]), .Z(n15512));
    LUT4 i1_2_lut_rep_350 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n14308)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_350.init = 16'hdddd;
    LUT4 i6090_1_lut (.A(debug_led1_c_5), .Z(n7048)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6090_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .Z(n6)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i2_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i13451 (.BLUT(n14496), .ALUT(n14492), .C0(\state[2] ), .Z(init_data_8__N_108[1]));
    PFUMX i13448 (.BLUT(n11688), .ALUT(n14493), .C0(cnt_s4_num[3]), .Z(n14494));
    L6MUX21 i11388 (.D0(n12117), .D1(n12118), .SD(cnt_s2_num[5]), .Z(n12119));
    PFUMX i11399 (.BLUT(n12126), .ALUT(n12127), .C0(cnt_s2_num[4]), .Z(n12130));
    L6MUX21 i11401 (.D0(n12130), .D1(n12131), .SD(cnt_s2_num[5]), .Z(n12132));
    PFUMX i13446 (.BLUT(n14490), .ALUT(n14487), .C0(\state[2] ), .Z(init_data_8__N_108[8]));
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_242[3]), .ALUT(init_data_8__N_251[3]), 
          .C0(\state[2] ), .Z(init_data_8__N_108[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;
    PFUMX i11400 (.BLUT(n12128), .ALUT(n12129), .C0(cnt_s2_num[4]), .Z(n12131));
    LUT4 i1_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[14]), .Z(n6_adj_791)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12412_4_lut (.A(cnt_s2_num[5]), .B(n14243), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_283)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i12412_4_lut.init = 16'h1000;
    LUT4 mux_300_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_300_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    PFUMX mux_300_Mux_7_i63 (.BLUT(n30), .ALUT(n31), .C0(n11925), .Z(n63));
    LUT4 i11398_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n12129)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i11398_4_lut_4_lut.init = 16'h0210;
    LUT4 i11397_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n12128)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i11397_3_lut_4_lut_4_lut.init = 16'h7808;
    LUT4 init_data_8__I_0_i3_4_lut (.A(\state[4] ), .B(\init_data_8__N_251[2] ), 
         .C(\state[2] ), .D(n14433), .Z(init_data_8__N_108[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 mux_300_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30_adj_792)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam mux_300_Mux_1_i30_3_lut_4_lut.init = 16'h4064;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10378), .COUT(n10379), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 init_data_8__I_0_i6_4_lut (.A(n15386), .B(\init_data_8__N_251[5] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 i921_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14235), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i921_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n10452)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 init_data_8__I_0_i7_4_lut (.A(init_data_8__N_242[7]), .B(n12119), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n20_adj_793), .B(\init_data_8__N_251[0] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_39 (.A(n6538), .B(n13710), .Z(n20_adj_793)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_adj_39.init = 16'h4444;
    LUT4 init_data_8__I_0_i8_4_lut (.A(init_data_8__N_242[7]), .B(n63), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i8_4_lut.init = 16'h0aca;
    FD1S3AX init_data_i4 (.D(init_data_8__N_108[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i22.GSR = "ENABLED";
    LUT4 i12541_4_lut (.A(n11893), .B(cnt_s4_num[17]), .C(n6), .D(n11654), 
         .Z(cnt_s4_num_done_N_285)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i12541_4_lut.init = 16'h0008;
    LUT4 i11163_4_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[12]), .C(cnt_s4_num[11]), 
         .D(cnt_s4_num[3]), .Z(n11893)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11163_4_lut.init = 16'h8000;
    LUT4 i5_3_lut_rep_199 (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[1]), 
         .Z(n14157)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_3_lut_rep_199.init = 16'hfefe;
    LUT4 i1_2_lut_rep_151_4_lut (.A(cnt_150ms[0]), .B(n10), .C(cnt_150ms[1]), 
         .D(cnt_150ms[5]), .Z(n14109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_rep_151_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(n17), .B(cnt_s4_num[16]), .C(n11895), .D(cnt_s4_num[4]), 
         .Z(n11654)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[1]), .Z(n11618)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i7_4_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[8]), .C(cnt_s4_num[6]), 
         .D(cnt_s4_num[10]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i11165_4_lut (.A(cnt_s4_num[5]), .B(cnt_s4_num[7]), .C(cnt_s4_num[13]), 
         .D(cnt_s4_num[15]), .Z(n11895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11165_4_lut.init = 16'hfffe;
    LUT4 i11929_3_lut (.A(n11618), .B(n10680), .C(cnt_s2_num[5]), .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11929_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_then_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(n6538), 
         .Z(n14374)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_then_3_lut.init = 16'hf8f8;
    LUT4 i1_3_lut_else_3_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .D(n6538), .Z(n14373)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_else_3_lut.init = 16'hff42;
    LUT4 i6096_1_lut (.A(state[0]), .Z(n7054)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6096_1_lut.init = 16'h5555;
    LUT4 i12421_4_lut (.A(n15), .B(cnt_150ms[3]), .C(n11883), .D(cnt_150ms[0]), 
         .Z(lcd_rst_high_flag_N_281)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i12421_4_lut.init = 16'h4000;
    LUT4 i6_4_lut (.A(cnt_150ms[6]), .B(cnt_150ms[1]), .C(n11657), .D(cnt_150ms[4]), 
         .Z(n15)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i6_4_lut.init = 16'hfbff;
    LUT4 i11153_3_lut (.A(cnt_150ms[2]), .B(cnt_150ms[5]), .C(cnt_150ms[22]), 
         .Z(n11883)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11153_3_lut.init = 16'h8080;
    LUT4 i5_4_lut (.A(cnt_150ms[18]), .B(n10_adj_794), .C(cnt_150ms[20]), 
         .D(cnt_150ms[9]), .Z(n11657)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_4_lut.init = 16'hfdff;
    LUT4 i4_4_lut (.A(cnt_150ms[7]), .B(cnt_150ms[17]), .C(n6782), .D(n6734), 
         .Z(n10_adj_794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_40 (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .C(cnt_150ms[13]), 
         .D(n11875), .Z(n6782)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_40.init = 16'hfeff;
    LUT4 i11145_3_lut (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .Z(n11875)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11145_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_41 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n6734)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_41.init = 16'hfffb;
    LUT4 i7263_4_lut (.A(n33), .B(\state[4] ), .C(n6538), .D(n14327), 
         .Z(init_data_8__N_242[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7263_4_lut.init = 16'hc8c0;
    LUT4 i2097_2_lut_4_lut (.A(n14109), .B(cnt_150ms[6]), .C(n11657), 
         .D(state[0]), .Z(n3010)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2097_2_lut_4_lut.init = 16'hfb00;
    LUT4 n6538_bdd_4_lut_14051 (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[1]), .Z(n15385)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam n6538_bdd_4_lut_14051.init = 16'he2c7;
    LUT4 n15385_bdd_2_lut (.A(n15385), .B(n6538), .Z(n15386)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n15385_bdd_2_lut.init = 16'heeee;
    PFUMX i11409 (.BLUT(n11560), .ALUT(n11707), .C0(cnt_s2_num[4]), .Z(n12140));
    LUT4 i914_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14314), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i914_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_adj_42 (.A(cnt_s4_num[0]), .B(cnt_s4_num[17]), .Z(n7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_adj_42.init = 16'h2222;
    LUT4 i10_4_lut (.A(cnt_s4_num[4]), .B(n20_adj_795), .C(n11857), .D(cnt_s4_num[6]), 
         .Z(n11687)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i10_4_lut.init = 16'h0004;
    LUT4 i9_4_lut_adj_43 (.A(n14308), .B(n11895), .C(cnt_s4_num[9]), .D(cnt_s4_num[10]), 
         .Z(n20_adj_795)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i9_4_lut_adj_43.init = 16'h0002;
    LUT4 i11127_2_lut (.A(cnt_s4_num[8]), .B(cnt_s4_num[16]), .Z(n11857)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11127_2_lut.init = 16'heeee;
    LUT4 i11092_2_lut (.A(cnt_s4_num[14]), .B(cnt_s4_num[12]), .Z(n11821)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11092_2_lut.init = 16'heeee;
    LUT4 i751_1_lut_rep_351 (.A(\state[2] ), .Z(n14309)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i751_1_lut_rep_351.init = 16'h5555;
    LUT4 state_2__bdd_4_lut (.A(n15512), .B(n13874), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n14487)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam state_2__bdd_4_lut.init = 16'h0c0a;
    LUT4 i12519_2_lut (.A(cnt_s2_num[5]), .B(cnt_s2_num[4]), .Z(n11925)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i12519_2_lut.init = 16'hbbbb;
    LUT4 i928_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n14144), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i928_3_lut_4_lut.init = 16'h7f80;
    LUT4 segment_led_0_bdd_2_lut_13466_3_lut (.A(n14494), .B(n6538), .C(\state[4] ), 
         .Z(n14496)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam segment_led_0_bdd_2_lut_13466_3_lut.init = 16'he0e0;
    LUT4 i754_1_lut (.A(\state[4] ), .Z(n1545)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i754_1_lut.init = 16'h5555;
    LUT4 i12539_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_232)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i12539_3_lut.init = 16'h0101;
    LUT4 n6538_bdd_4_lut_13492 (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n14488)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n6538_bdd_4_lut_13492.init = 16'hef6a;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n14375), .B(\init_data_8__N_251[4] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i2032_2_lut_3_lut_3_lut (.A(\state[2] ), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2032_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i2_3_lut_rep_137_4_lut (.A(cnt_150ms[5]), .B(n14157), .C(n11657), 
         .D(cnt_150ms[6]), .Z(n14095)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut_rep_137_4_lut.init = 16'hfeff;
    LUT4 i7649_2_lut_rep_300 (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .Z(n14258)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7649_2_lut_rep_300.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_adj_44 (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .C(n6782), 
         .Z(n9)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut_adj_44.init = 16'hf7f7;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10385), .COUT(n10386), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10386), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10382), .COUT(n10383), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10381), .COUT(n10382), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    PFUMX i11408 (.BLUT(n15_adj_796), .ALUT(n30_adj_792), .C0(cnt_s2_num[4]), 
          .Z(n12139));
    LUT4 i7172_4_lut (.A(n86), .B(\state[4] ), .C(n14328), .D(n88), 
         .Z(init_data_8__N_242[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7172_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n11707)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i4_4_lut_adj_45 (.A(cnt_150ms[3]), .B(cnt_150ms[4]), .C(cnt_150ms[22]), 
         .D(cnt_150ms[2]), .Z(n10)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_45.init = 16'hffef;
    LUT4 i2100_4_lut (.A(state[1]), .B(n14095), .C(state_5__N_185[1]), 
         .D(state[0]), .Z(n3013)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2100_4_lut.init = 16'hb3a0;
    LUT4 cnt_s4_num_0__bdd_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[2]), .Z(n13710)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C (D))+!B (C+!(D))))) */ ;
    defparam cnt_s4_num_0__bdd_4_lut.init = 16'h276e;
    LUT4 i1_4_lut_adj_46 (.A(cnt_150ms[6]), .B(n10635), .C(n10_adj_797), 
         .D(n11762), .Z(state_5__N_185[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_46.init = 16'hfffd;
    LUT4 i5_3_lut (.A(cnt_150ms[12]), .B(n10_adj_798), .C(cnt_150ms[13]), 
         .Z(n10635)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hdfdf;
    LUT4 i4_4_lut_adj_47 (.A(cnt_150ms[11]), .B(cnt_150ms[8]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[5]), .Z(n10_adj_797)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_47.init = 16'hfeff;
    LUT4 i4_4_lut_adj_48 (.A(cnt_150ms[21]), .B(n14258), .C(n6734), .D(n14157), 
         .Z(n10_adj_798)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_4_lut_adj_48.init = 16'hfff7;
    LUT4 i2_3_lut (.A(cnt_150ms[18]), .B(cnt_150ms[9]), .C(cnt_150ms[7]), 
         .Z(n11762)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut.init = 16'hefef;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10380), .COUT(n10381), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 i2102_4_lut (.A(\state[2] ), .B(state_5__N_185[1]), .C(state_5__N_191[3]), 
         .D(state[1]), .Z(n3015)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2102_4_lut.init = 16'h3b0a;
    LUT4 i2104_4_lut (.A(state[3]), .B(state_5__N_191[3]), .C(state_5__N_197[3]), 
         .D(\state[2] ), .Z(n3017)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2104_4_lut.init = 16'heca0;
    LUT4 i6_4_lut_adj_49 (.A(n11762), .B(n12), .C(cnt_150ms[14]), .D(cnt_150ms[6]), 
         .Z(state_5__N_197[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_49.init = 16'hfffe;
    LUT4 i752_2_lut_rep_275_2_lut (.A(\state[2] ), .B(wr_done), .Z(sys_clk_50MHz_enable_8)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i752_2_lut_rep_275_2_lut.init = 16'hdddd;
    LUT4 n11688_bdd_4_lut_13463 (.A(n12140), .B(n12139), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n14492)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n11688_bdd_4_lut_13463.init = 16'h0a0c;
    LUT4 i5_4_lut_adj_50 (.A(n9), .B(cnt_150ms[16]), .C(n14109), .D(n11873), 
         .Z(n12)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i5_4_lut_adj_50.init = 16'hfbff;
    LUT4 i11143_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n11873)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11143_2_lut.init = 16'h8888;
    LUT4 n11688_bdd_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), .C(cnt_s4_num[2]), 
         .Z(n14493)) /* synthesis lut_function=(A (C)+!A !(B)) */ ;
    defparam n11688_bdd_3_lut.init = 16'hb1b1;
    LUT4 i2106_4_lut (.A(\state[4] ), .B(state_5__N_197[3]), .C(state_5__N_203[5]), 
         .D(state[3]), .Z(n3019)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2106_4_lut.init = 16'h3b0a;
    LUT4 i5_4_lut_adj_51 (.A(cnt_s4_num[11]), .B(n7), .C(n11687), .D(n11821), 
         .Z(n11688)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i5_4_lut_adj_51.init = 16'h0040;
    LUT4 mux_300_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_300_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 i909_2_lut_rep_186_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n14144)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i909_2_lut_rep_186_3_lut_4_lut.init = 16'h8000;
    LUT4 i907_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i907_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D cnt_150ms_724_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10406), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10405), .COUT(n10406), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_21.INJECT1_1 = "NO";
    PFUMX i13388 (.BLUT(n14373), .ALUT(n14374), .C0(cnt_s4_num[1]), .Z(n14375));
    CCU2D cnt_150ms_724_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10404), .COUT(n10405), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10403), .COUT(n10404), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10402), .COUT(n10403), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10401), .COUT(n10402), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10400), .COUT(n10401), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10399), .COUT(n10400), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_9.INJECT1_1 = "NO";
    LUT4 n13877_bdd_3_lut_then_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n15511)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(C (D)))) */ ;
    defparam n13877_bdd_3_lut_then_4_lut.init = 16'h988a;
    LUT4 n13877_bdd_3_lut_else_4_lut (.A(cnt_s2_num[3]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[2]), .Z(n15510)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam n13877_bdd_3_lut_else_4_lut.init = 16'hff7e;
    CCU2D cnt_150ms_724_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10398), .COUT(n10399), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_7.INJECT1_1 = "NO";
    LUT4 i893_2_lut_rep_342 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14300)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i893_2_lut_rep_342.init = 16'h6666;
    LUT4 segment_led_0_bdd_2_lut_13450_3_lut (.A(n14488), .B(n6538), .C(\state[4] ), 
         .Z(n14490)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam segment_led_0_bdd_2_lut_13450_3_lut.init = 16'he0e0;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(n14323), 
         .D(cnt_s2_num[4]), .Z(n10680)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 i1_2_lut_rep_364 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n14322)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_364.init = 16'hdddd;
    LUT4 i1_2_lut_rep_365 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .Z(n14323)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_365.init = 16'hbbbb;
    LUT4 i4_4_lut_adj_52 (.A(cnt_s4_num[12]), .B(n11654), .C(cnt_s4_num[11]), 
         .D(n6_adj_791), .Z(n6538)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_52.init = 16'hfffe;
    LUT4 i2_2_lut_rep_285_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14243)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_285_3_lut_4_lut.init = 16'hfbff;
    LUT4 n11663_bdd_3_lut_13319_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[4]), .D(n14322), .Z(n13874)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam n11663_bdd_3_lut_13319_4_lut_4_lut.init = 16'h3f3b;
    LUT4 mux_300_Mux_6_i30_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n30_adj_799)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam mux_300_Mux_6_i30_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_then_4_lut (.A(n6538), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n14432)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_2_lut_then_4_lut.init = 16'hfeaa;
    LUT4 i1_2_lut_else_4_lut (.A(n6538), .B(cnt_s4_num[0]), .C(cnt_s4_num[3]), 
         .D(cnt_s4_num[2]), .Z(n14431)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i1_2_lut_else_4_lut.init = 16'hfaae;
    PFUMX i11386 (.BLUT(n10452), .ALUT(n30_adj_799), .C0(cnt_s2_num[4]), 
          .Z(n12117));
    LUT4 i1_2_lut_rep_369 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n14327)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_369.init = 16'h8888;
    LUT4 i1_3_lut_rep_370 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(cnt_s4_num[3]), 
         .D(n6538), .Z(n14328)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_rep_370.init = 16'hff80;
    PFUMX i11387 (.BLUT(n46), .ALUT(n10450), .C0(cnt_s2_num[4]), .Z(n12118));
    LUT4 i270_2_lut (.A(state_5__N_203[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i270_2_lut.init = 16'h8888;
    CCU2D cnt_150ms_724_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10397), .COUT(n10398), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_5.INJECT1_1 = "NO";
    LUT4 i902_2_lut_rep_277_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14235)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i902_2_lut_rep_277_3_lut.init = 16'h8080;
    LUT4 i7242_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12132), .Z(init_data_8__N_251[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7242_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_300_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_796)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_300_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i11396_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n12127)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i11396_4_lut_4_lut_4_lut.init = 16'hd0c0;
    LUT4 i2_2_lut_3_lut_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[1]), .Z(n10450)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i2_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n11560)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[3]), .Z(n86)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h00d1;
    LUT4 i11395_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n12126)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A ((D)+!B))) */ ;
    defparam i11395_3_lut_4_lut.init = 16'h20cc;
    LUT4 i895_2_lut_rep_356 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14314)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i895_2_lut_rep_356.init = 16'h8888;
    CCU2D cnt_150ms_724_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10396), .COUT(n10397), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_724_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_724_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10396), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_724_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_724_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_724_add_4_1.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10378), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10383), .COUT(n10384), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    FD1S3IX cnt_150ms_724__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i6 (.D(n3010), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n3013), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n3015), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n3017), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3019), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_724__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_724__i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_45), 
            .CD(n1545), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_45), .CD(n1545), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (\ascii_num[0] , sys_clk_c, debug_led1_c_5, 
            cnt1, \state_3__N_379[1] , n5, \end_y_8__N_315[4] , n7048, 
            sys_clk_c_enable_11, \ascii_num[6] , \ascii_num[4] , \ascii_num[3] , 
            \ascii_num[2] , \ascii_num[1] , \end_x_8__N_297[7] , \end_x_8__N_297[6] , 
            \end_x_8__N_297[5] , \end_x_8__N_297[4] , debug_led2_c_3, 
            \end_x_8__N_297[3] , \end_y_8__N_315[5] ) /* synthesis syn_module_defined=1 */ ;
    output \ascii_num[0] ;
    input sys_clk_c;
    input debug_led1_c_5;
    output [1:0]cnt1;
    output \state_3__N_379[1] ;
    input n5;
    output \end_y_8__N_315[4] ;
    input n7048;
    input sys_clk_c_enable_11;
    output \ascii_num[6] ;
    output \ascii_num[4] ;
    output \ascii_num[3] ;
    output \ascii_num[2] ;
    output \ascii_num[1] ;
    output \end_x_8__N_297[7] ;
    output \end_x_8__N_297[6] ;
    output \end_x_8__N_297[5] ;
    output \end_x_8__N_297[4] ;
    input debug_led2_c_3;
    output \end_x_8__N_297[3] ;
    output \end_y_8__N_315[5] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [31:0]n260;
    
    wire n14281;
    wire [6:0]ascii_num_6__N_525;
    wire [8:0]start_y_8__N_541;
    
    wire show_char_flag_N_550, cnt_ascii_num_4__N_524, n7045, n14282;
    wire [8:0]start_x_8__N_532;
    wire [1:0]n7;
    
    wire n14239, n6, n14259, n11760, n11768, n14284, n11775, n14108, 
        n14260, n6070, n14238, n14317, n11684, n14316, n14315, 
        n11811, n10, n11648, n6800, n14318, n1193, n8438, n14132;
    wire [4:0]n1628;
    wire [5:0]n1590;
    
    wire n12750, sys_clk_c_enable_65, n14280, n3112, n2944;
    
    LUT4 i1_2_lut_rep_323 (.A(n260[11]), .B(n260[7]), .Z(n14281)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_323.init = 16'heeee;
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_525[0]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_c), .CD(\state_3__N_379[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_541[4]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_y_8__N_315[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(209[10] 234[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_40 (.D(show_char_flag_N_550), .CK(sys_clk_c), 
            .Q(\state_3__N_379[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_40.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i0 (.D(n7045), .CK(sys_clk_c), .PD(cnt_ascii_num_4__N_524), 
            .Q(n260[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n260[11]), .B(n260[7]), .C(n260[8]), .D(n14282), 
         .Z(start_x_8__N_532[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt1__i1 (.D(n7[1]), .SP(sys_clk_c_enable_11), .CD(\state_3__N_379[1] ), 
            .CK(sys_clk_c), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_525[6]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_525[4]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_525[3]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_525[2]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_525[1]), .SP(debug_led1_c_5), 
            .CK(sys_clk_c), .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_532[7]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_x_8__N_297[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_532[6]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_x_8__N_297[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_532[5]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_x_8__N_297[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_532[4]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_x_8__N_297[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_324 (.A(n260[10]), .B(n260[9]), .Z(n14282)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_324.init = 16'heeee;
    LUT4 i1_2_lut_rep_281_3_lut (.A(n260[10]), .B(n260[9]), .C(n260[5]), 
         .Z(n14239)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_281_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(n260[10]), .B(n260[9]), .C(n260[13]), .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut (.A(n14259), .B(n11760), .C(n260[9]), .D(n11768), 
         .Z(start_y_8__N_541[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1008_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(66[17:28])
    defparam i1008_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_150_3_lut (.A(n14284), .B(n11775), .C(start_x_8__N_532[7]), 
         .Z(n14108)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_150_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_31 (.A(n14284), .B(n11775), .C(n14260), .D(n14281), 
         .Z(n11760)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_31.init = 16'hfffe;
    LUT4 i7233_2_lut_3_lut_4_lut (.A(n14284), .B(n11775), .C(cnt_ascii_num_4__N_524), 
         .D(start_x_8__N_532[7]), .Z(ascii_num_6__N_525[6])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i7233_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 mux_844_i4_4_lut (.A(cnt_ascii_num_4__N_524), .B(n6070), .C(n14108), 
         .D(n14238), .Z(ascii_num_6__N_525[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam mux_844_i4_4_lut.init = 16'h0aca;
    LUT4 mux_844_i2_4_lut (.A(cnt_ascii_num_4__N_524), .B(n14317), .C(n14108), 
         .D(n11684), .Z(ascii_num_6__N_525[1])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam mux_844_i2_4_lut.init = 16'h0a3a;
    LUT4 i3_4_lut (.A(n14316), .B(n14315), .C(n260[8]), .D(n11811), 
         .Z(n11684)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i3_4_lut.init = 16'h0004;
    LUT4 i2_3_lut (.A(n11775), .B(n260[4]), .C(cnt_ascii_num_4__N_524), 
         .Z(start_x_8__N_532[6])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i5_3_lut (.A(n260[15]), .B(n10), .C(n11648), .Z(start_x_8__N_532[5])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(n260[14]), .B(n260[4]), .C(n260[3]), .D(n260[11]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_32 (.A(n260[1]), .B(n11648), .C(n260[2]), .D(n6), 
         .Z(start_x_8__N_532[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_32.init = 16'hfffe;
    LUT4 i1_4_lut_adj_33 (.A(n6800), .B(n260[3]), .C(n260[1]), .D(n260[5]), 
         .Z(n11775)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_33.init = 16'hfffe;
    LUT4 i2_3_lut_adj_34 (.A(n260[2]), .B(n260[0]), .C(n260[6]), .Z(n6800)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_34.init = 16'hfefe;
    LUT4 i583_2_lut_3_lut_4_lut (.A(n260[11]), .B(n14318), .C(n14317), 
         .D(n14316), .Z(n1193)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i583_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i11082_2_lut_3_lut_4_lut (.A(n260[11]), .B(n14318), .C(n14282), 
         .D(n260[5]), .Z(n11811)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11082_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5133_4_lut_4_lut (.A(n260[11]), .B(n14318), .C(n14239), .D(n8438), 
         .Z(n6070)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5133_4_lut_4_lut.init = 16'h3233;
    LUT4 mux_844_i1_3_lut_4_lut (.A(start_x_8__N_532[7]), .B(n14132), .C(n1628[0]), 
         .D(n1590[0]), .Z(ascii_num_6__N_525[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_844_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i22_3_lut_4_lut (.A(start_x_8__N_532[7]), .B(n14132), .C(n12750), 
         .D(n1590[0]), .Z(ascii_num_6__N_525[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam i22_3_lut_4_lut.init = 16'he0f1;
    PFUMX mux_844_i3 (.BLUT(n1590[2]), .ALUT(n1628[2]), .C0(n14108), .Z(ascii_num_6__N_525[2]));
    LUT4 i19_2_lut_rep_298 (.A(debug_led1_c_5), .B(debug_led2_c_3), .Z(sys_clk_c_enable_65)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(83[13:40])
    defparam i19_2_lut_rep_298.init = 16'h8888;
    LUT4 i6087_2_lut_3_lut (.A(debug_led1_c_5), .B(debug_led2_c_3), .C(n260[0]), 
         .Z(n7045)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(83[13:40])
    defparam i6087_2_lut_3_lut.init = 16'h7070;
    LUT4 i2_3_lut_adj_35 (.A(n260[10]), .B(n260[8]), .C(n260[4]), .Z(n11768)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_35.init = 16'hfefe;
    LUT4 i12409_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_550)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[13:24])
    defparam i12409_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_36 (.A(n260[12]), .B(n6800), .C(n14280), .D(n11768), 
         .Z(start_x_8__N_532[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_36.init = 16'hfffe;
    LUT4 i1_2_lut_rep_301 (.A(cnt_ascii_num_4__N_524), .B(n260[15]), .Z(n14259)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_301.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_37 (.A(cnt_ascii_num_4__N_524), .B(n260[15]), 
         .C(n14284), .D(n14260), .Z(start_y_8__N_541[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_37.init = 16'hfffe;
    LUT4 reduce_or_718_i5_2_lut_rep_302 (.A(n260[16]), .B(n260[17]), .Z(n14260)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_718_i5_2_lut_rep_302.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_38 (.A(n260[16]), .B(n260[17]), .C(n260[5]), 
         .D(n260[6]), .Z(n11648)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_38.init = 16'hfffe;
    LUT4 mux_828_i3_4_lut_4_lut (.A(n260[8]), .B(n14239), .C(n1193), .D(n14317), 
         .Z(n1628[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam mux_828_i3_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i2199_3_lut_4_lut_4_lut (.A(n260[8]), .B(n14315), .C(n14282), 
         .D(n260[5]), .Z(n3112)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i2199_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 i2_3_lut_rep_326 (.A(n260[13]), .B(n260[14]), .C(n260[12]), .Z(n14284)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_326.init = 16'hfefe;
    LUT4 i1_2_lut_rep_174_4_lut (.A(n260[13]), .B(n260[14]), .C(n260[12]), 
         .D(n11775), .Z(n14132)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_174_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_357 (.A(n260[7]), .B(n260[1]), .Z(n14315)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_357.init = 16'heeee;
    LUT4 i7487_2_lut_3_lut (.A(n260[7]), .B(n260[1]), .C(n260[8]), .Z(n8438)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i7487_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_358 (.A(n260[13]), .B(n260[3]), .Z(n14316)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_358.init = 16'heeee;
    LUT4 i2033_3_lut_4_lut (.A(n260[13]), .B(n260[3]), .C(n14318), .D(n14317), 
         .Z(n2944)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i2033_3_lut_4_lut.init = 16'h00ef;
    LUT4 i12436_3_lut_4_lut (.A(n260[13]), .B(n260[3]), .C(n14317), .D(n14318), 
         .Z(n12750)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i12436_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_2_lut_rep_359 (.A(n260[14]), .B(n260[2]), .Z(n14317)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_359.init = 16'heeee;
    LUT4 i575_2_lut_rep_280_3_lut_4_lut (.A(n260[14]), .B(n260[2]), .C(n260[3]), 
         .D(n260[13]), .Z(n14238)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i575_2_lut_rep_280_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_360 (.A(n260[12]), .B(n260[0]), .Z(n14318)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_360.init = 16'heeee;
    PFUMX mux_828_i1 (.BLUT(n3112), .ALUT(n2944), .C0(n1193), .Z(n1628[0]));
    FD1S3IX start_x__i1 (.D(start_x_8__N_532[3]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_x_8__N_297[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 reduce_or_719_i5_2_lut_rep_322 (.A(n260[15]), .B(n260[17]), .Z(n14280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_719_i5_2_lut_rep_322.init = 16'heeee;
    FD1P3IX cnt_ascii_num_FSM_i18 (.D(n260[17]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(cnt_ascii_num_4__N_524));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i18.GSR = "ENABLED";
    LUT4 i7774_2_lut_3_lut (.A(n260[15]), .B(n260[17]), .C(cnt_ascii_num_4__N_524), 
         .Z(n1590[2])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7774_2_lut_3_lut.init = 16'h0101;
    FD1P3IX cnt_ascii_num_FSM_i17 (.D(n260[16]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i17.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i16 (.D(n260[15]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i16.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i15 (.D(n260[14]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i14 (.D(n260[13]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n260[12]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n260[11]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n260[10]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n260[9]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n260[8]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n260[7]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n260[6]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n260[5]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n260[4]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n260[3]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n260[2]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n260[1]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i1 (.D(n260[0]), .SP(sys_clk_c_enable_65), 
            .CD(cnt_ascii_num_4__N_524), .CK(sys_clk_c), .Q(n260[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    FD1S3IX start_y__i2 (.D(start_y_8__N_541[5]), .CK(sys_clk_c), .CD(n7048), 
            .Q(\end_y_8__N_315[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(209[10] 234[24])
    defparam start_y__i2.GSR = "ENABLED";
    LUT4 i7186_2_lut_3_lut (.A(n260[15]), .B(n260[17]), .C(cnt_ascii_num_4__N_524), 
         .Z(n1590[0])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i7186_2_lut_3_lut.init = 16'h0e0e;
    
endmodule
//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (GND_net, sys_clk_c, wr_done, length_num_flag, 
            show_char_data, cnt_rom_prepare, \end_x_8__N_297[5] , \state[1] , 
            \end_x_8__N_297[7] , \end_x_8__N_297[6] , \state[2] , \end_y_8__N_315[5] , 
            debug_led2_c_3, \ascii_num[0] , \ascii_num[1] , sys_clk_c_enable_67, 
            n8732, \state_3__N_379[1] , \end_x_8__N_297[4] , \end_y_8__N_315[4] , 
            \ascii_num[6] , \ascii_num[4] , \ascii_num[2] , \ascii_num[3] , 
            \end_x_8__N_297[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    input wr_done;
    output length_num_flag;
    output [8:0]show_char_data;
    output [2:0]cnt_rom_prepare;
    input \end_x_8__N_297[5] ;
    output \state[1] ;
    input \end_x_8__N_297[7] ;
    input \end_x_8__N_297[6] ;
    output \state[2] ;
    input \end_y_8__N_315[5] ;
    output debug_led2_c_3;
    input \ascii_num[0] ;
    input \ascii_num[1] ;
    input sys_clk_c_enable_67;
    output n8732;
    input \state_3__N_379[1] ;
    input \end_x_8__N_297[4] ;
    input \end_y_8__N_315[4] ;
    input \ascii_num[6] ;
    input \ascii_num[4] ;
    input \ascii_num[2] ;
    input \ascii_num[3] ;
    input \end_x_8__N_297[3] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n10391, n1;
    wire [11:0]rom_addr_11__N_398;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_c_enable_45, the1_wr_done;
    wire [3:0]state_3__N_383;
    
    wire state1_finish_flag_N_469;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_c_enable_28;
    wire [7:0]temp_7__N_356;
    
    wire length_num_flag_N_471, n4, n14102, n12298, sys_clk_c_enable_46;
    wire [8:0]show_char_data_8__N_286;
    
    wire n4455, n14219, n1467;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_449;
    wire [5:0]n21;
    wire [2:0]n12;
    
    wire n11841, n15502, n12078;
    wire [15:0]n464;
    
    wire n14149, n14251, n6155, n14136, n1883, n14147, n6143, 
        n14150, n11665, n78, n15499, n94, n10390;
    wire [7:0]n2;
    
    wire n14356, n14173, n12270, n15518, n14134, n14277, n14305, 
        n13910, n14230, n1723, sys_clk_c_enable_33, n259, n270, 
        n14210, n12108, state1_finish_flag_N_470, n14320, n14340, 
        n14341, n924, n7053;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n14140, n14166, n1851, n13300, n13301, n14092, n1275, 
        n14263, n6092, n14156;
    wire [5:0]n427;
    
    wire n7052, cnt_length_num_4__N_440, n14138, n14143, n2300, n14329, 
        n14330, n14331, n236, n1228, n12602, n14152, n6870, n891;
    wire [8:0]show_char_data_8__N_459;
    
    wire n11902, n14325, n14139, n11727, n13911, n14304, n14229, 
        n2620, n12378, n1_adj_766, n2173, n6152, n11712, n14250, 
        n4_adj_767, n14248, n7473, n14319, sys_clk_c_enable_72, n14355, 
        n14359, n14358, n14362, n14361, n14255, n14223, n13332, 
        n1172, n2025, n12062, n778, n14116;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n14098;
    wire [4:0]n25;
    
    wire n7, n11696, n10, n14192, n6929, n11705, n10389, n14151, 
        n6_adj_768, n14197, n14100, n46, n62, n4_adj_769, n380, 
        n10388, n1962, n1530, n8_adj_772, n355, n14110, n8701;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n3020, n3023, n3025, n11837, n6614, n4_adj_773, n2652, 
        n14103, n2621, n10_adj_774, n11839, n119;
    wire [2:0]n137;
    
    wire n14126, n14106, n11967, n15497, n14241, n1851_adj_775, 
        n14196, n14266, n13868, n15503, n1436, n14105, n14155, 
        n14215, n1148, n14190, n1565, n6662, n14194, n14200, n3641, 
        n14112, n1101, n1149, n1069, n14312, n1084, n14252, n1596, 
        n1834, n1275_adj_776, n14244, n6852, n14224, n158, n4_adj_777, 
        n14176, n125, n126, n2684, n14193, n508, n14120, n2428, 
        n11699, n5987, n158_adj_778, n892, n10718, n1534, n14114, 
        n14131, n2555, sys_clk_c_enable_47, n15498, n94_adj_779, n1412, 
        n308, n301, n317, n14302, n8380, n13421, n14363, n14288, 
        n364, n380_adj_780, n1565_adj_781, n2395, n1596_adj_782, n46_adj_783, 
        n62_adj_784, n6429, n10638, n509, n14122, n3519, n1483, 
        n1530_adj_785, n10716, n13755, n14125, n11825, n2140, n14206, 
        n12322, n13912, n12406, n12552, n1661, n13422, n6813, 
        n510, n127, n12493, n14357, n603, n14145, n14162, n13734, 
        n14339, n6105, n270_adj_786, n286, n2141, n796, n14188, 
        n828, n12315, n2332, n2364, n5968, n1529, n12268, n491, 
        n13331, n6094, n8848, n1403, n14093, n12391, n4094, n12329, 
        n4094_adj_787, n3069, n12332, n4094_adj_788, n14207, n379, 
        n380_adj_789, n5239, n14127, n828_adj_790, n14124, n11675, 
        n13576, n1755, n10395, n10394, n10393;
    
    CCU2D mult_34_add_1_add_2_10 (.A0(n1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10391), .S0(rom_addr_11__N_398[10]), .S1(rom_addr_11__N_398[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_34_add_1_add_2_10.INIT0 = 16'h5aaa;
    defparam mult_34_add_1_add_2_10.INIT1 = 16'h0000;
    defparam mult_34_add_1_add_2_10.INJECT1_0 = "NO";
    defparam mult_34_add_1_add_2_10.INJECT1_1 = "NO";
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_11__N_398[0]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_179 (.D(wr_done), .CK(sys_clk_c), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_179.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_181 (.D(state1_finish_flag_N_469), .CK(sys_clk_c), 
            .Q(state_3__N_383[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_181.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_356[0]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_185 (.D(length_num_flag_N_471), .CK(sys_clk_c), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_185.GSR = "ENABLED";
    LUT4 i11567_4_lut_4_lut (.A(rom_addr[3]), .B(n4), .C(rom_addr[6]), 
         .D(n14102), .Z(n12298)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11567_4_lut_4_lut.init = 16'hbfb0;
    FD1P3AX data_i0 (.D(show_char_data_8__N_286[0]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4455), 
         .C(n14219), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_c), .CD(cnt_wr_color_data_5__N_449), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_c), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_286[7]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(show_char_data_8__N_286[6]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_286[5]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_286[4]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    LUT4 i11347_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n11841), .C(rom_addr[4]), 
         .D(n15502), .Z(n12078)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11347_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1P3AX data_i3 (.D(show_char_data_8__N_286[3]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_286[2]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_286[1]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_356[6]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n464[5]), .B(n14149), .C(n14251), .D(\end_x_8__N_297[5] ), 
         .Z(n6155)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut.init = 16'hfbbb;
    FD1P3AX temp_i5 (.D(temp_7__N_356[5]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_356[4]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_356[3]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_356[2]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_356[1]), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14136), 
         .C(rom_addr[4]), .D(n15502), .Z(n1883)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5205_3_lut_4_lut (.A(n464[5]), .B(n14149), .C(n14147), .D(n464[9]), 
         .Z(n6143)) /* synthesis lut_function=(A ((D)+!C)+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i5205_3_lut_4_lut.init = 16'hff0b;
    LUT4 i1_3_lut_4_lut_adj_17 (.A(\state[1] ), .B(n14150), .C(n11665), 
         .D(\end_x_8__N_297[7] ), .Z(show_char_data_8__N_286[7])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_adj_17.init = 16'hf444;
    LUT4 i1_3_lut_4_lut_adj_18 (.A(\state[1] ), .B(n14150), .C(n11665), 
         .D(\end_x_8__N_297[6] ), .Z(show_char_data_8__N_286[6])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_3_lut_4_lut_adj_18.init = 16'hf444;
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n78), 
         .C(rom_addr[4]), .D(n15499), .Z(n94)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2D mult_34_add_1_add_2_8 (.A0(n2[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10390), .COUT(n10391), .S0(rom_addr_11__N_398[8]), .S1(rom_addr_11__N_398[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_34_add_1_add_2_8.INIT0 = 16'h5aaa;
    defparam mult_34_add_1_add_2_8.INIT1 = 16'h5aaa;
    defparam mult_34_add_1_add_2_8.INJECT1_0 = "NO";
    defparam mult_34_add_1_add_2_8.INJECT1_1 = "NO";
    LUT4 i7562_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14356)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7562_4_lut_4_lut_then_4_lut.init = 16'h0004;
    LUT4 i11539_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14173), .C(rom_addr[4]), 
         .D(n15502), .Z(n12270)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11539_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7317_2_lut_rep_176_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(n15518), .D(rom_addr[0]), .Z(n14134)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7317_2_lut_rep_176_4_lut_4_lut_4_lut.init = 16'h4101;
    LUT4 n1307_bdd_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14277), .C(rom_addr[0]), 
         .D(n14305), .Z(n13910)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1307_bdd_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n15499), .C(rom_addr[4]), .D(n14230), .Z(n1723)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut_4_lut.init = 16'h04f4;
    FD1P3IX cnt_set_windows_FSM_i15 (.D(n464[14]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i15.GSR = "ENABLED";
    LUT4 i67_2_lut (.A(\state[2] ), .B(the1_wr_done), .Z(n259)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(163[13:56])
    defparam i67_2_lut.init = 16'h8888;
    FD1P3IX cnt_set_windows_FSM_i14 (.D(n464[13]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i14.GSR = "ENABLED";
    LUT4 i11973_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14210), .Z(n12108)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11973_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1P3IX cnt_set_windows_FSM_i13 (.D(n464[12]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i12 (.D(n464[11]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i11 (.D(state1_finish_flag_N_470), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i11.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_144_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14320), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14102)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_144_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    FD1P3IX cnt_set_windows_FSM_i10 (.D(n464[9]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(state1_finish_flag_N_470));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i9 (.D(n464[8]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i8 (.D(n464[7]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i8.GSR = "ENABLED";
    PFUMX i13366 (.BLUT(n14340), .ALUT(n14341), .C0(rom_addr[0]), .Z(n924));
    FD1P3IX cnt_set_windows_FSM_i7 (.D(n464[6]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i6 (.D(n464[5]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i6.GSR = "ENABLED";
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_c_enable_28), .CD(n7053), 
            .CK(sys_clk_c), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i5 (.D(n464[4]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i4 (.D(n464[3]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i3 (.D(n464[2]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i3.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14140), .D(n14166), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n13301_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13300), 
         .D(n13301), .Z(n14092)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13301_bdd_4_lut_4_lut.init = 16'h5140;
    FD1P3IX cnt_set_windows_FSM_i2 (.D(n464[1]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_set_windows_FSM_i1 (.D(n464[0]), .SP(sys_clk_c_enable_33), 
            .CD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(rom_addr_11__N_398[11]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    LUT4 i5155_4_lut (.A(n6155), .B(\end_y_8__N_315[5] ), .C(n1275), .D(n14263), 
         .Z(n6092)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5155_4_lut.init = 16'hcac0;
    LUT4 i993_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14156), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n427[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i993_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX state_FSM_i1 (.D(cnt_length_num_4__N_440), .CK(sys_clk_c), .CD(n7052), 
            .Q(debug_led2_c_3));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i7301_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n14138), 
         .D(n14143), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7301_2_lut_4_lut_4_lut.init = 16'h5140;
    FD1P3AX rom_addr_i0_i1_rep_379 (.D(rom_addr_11__N_398[1]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(n15518)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1_rep_379.GSR = "ENABLED";
    PFUMX i13360 (.BLUT(n14329), .ALUT(n14330), .C0(rom_addr[3]), .Z(n14331));
    LUT4 i11089_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(n15518), .D(rom_addr[2]), .Z(n236)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11089_3_lut_4_lut_4_lut_4_lut.init = 16'h180c;
    LUT4 i11067_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(n15518), .D(rom_addr[2]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11067_3_lut_4_lut_4_lut_4_lut.init = 16'h4203;
    LUT4 i11917_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n12602)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11917_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i2038_2_lut_4_lut (.A(debug_led2_c_3), .B(n259), .C(n14152), 
         .D(cnt_wr_color_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2038_2_lut_4_lut.init = 16'h10ef;
    LUT4 i5927_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n6870)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5927_4_lut_4_lut_4_lut_4_lut.init = 16'h5854;
    LUT4 i7371_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7371_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    FD1P3AX rom_addr_i0_i10 (.D(rom_addr_11__N_398[10]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(rom_addr_11__N_398[9]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n6092), .ALUT(show_char_data_8__N_459[5]), 
          .C0(n11902), .Z(show_char_data_8__N_286[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;
    FD1P3AX rom_addr_i0_i8 (.D(rom_addr_11__N_398[8]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(rom_addr_11__N_398[7]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_11__N_398[6]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_11__N_398[5]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_11__N_398[4]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_11__N_398[3]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_11__N_398[2]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_11__N_398[1]), .SP(sys_clk_c_enable_45), 
            .CK(sys_clk_c), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 n1307_bdd_4_lut (.A(n14325), .B(n14139), .C(n11727), .D(rom_addr[5]), 
         .Z(n13911)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B (D))) */ ;
    defparam n1307_bdd_4_lut.init = 16'hcca0;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n14330)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i11647_3_lut_4_lut (.A(n14304), .B(n14229), .C(rom_addr[5]), 
         .D(n2620), .Z(n12378)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11647_3_lut_4_lut.init = 16'h8f80;
    LUT4 i6_3_lut_4_lut (.A(n14304), .B(n14229), .C(rom_addr[5]), .D(n1_adj_766), 
         .Z(n2173)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i6_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(n14263), .B(n464[7]), .C(n464[5]), 
         .D(n6152), .Z(n11712)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_19.init = 16'h2220;
    LUT4 i1_3_lut_4_lut_adj_20 (.A(n464[4]), .B(n14250), .C(n464[5]), 
         .D(n14263), .Z(n4_adj_767)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_4_lut_adj_20.init = 16'h0eff;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n14248), .C(n7473), 
         .D(\state[1] ), .Z(show_char_data_8__N_286[3])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf0dd;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_356[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_rep_153_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), .C(n259), 
         .D(debug_led2_c_3), .Z(sys_clk_c_enable_72)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_153_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_356[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_356[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_356[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_356[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_356[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14319), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_356[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7562_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14355)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7562_4_lut_4_lut_else_4_lut.init = 16'h1101;
    LUT4 i7331_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14359)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7331_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i7331_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14358)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7331_4_lut_4_lut_else_4_lut.init = 16'h0004;
    LUT4 i12022_4_lut_4_lut_then_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n14362)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12022_4_lut_4_lut_then_3_lut.init = 16'h8080;
    LUT4 i12022_4_lut_4_lut_else_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n14361)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12022_4_lut_4_lut_else_3_lut.init = 16'h0383;
    LUT4 i986_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14255), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[3]), .Z(n427[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i986_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n11733_bdd_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n14223), .D(rom_addr[2]), .Z(n13332)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n11733_bdd_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i11331_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12062)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11331_4_lut_4_lut.init = 16'h7340;
    LUT4 i967_2_lut_rep_297 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14255)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i967_2_lut_rep_297.init = 16'h8888;
    LUT4 state1_finish_flag_I_0_2_lut (.A(state1_finish_flag_N_470), .B(the1_wr_done), 
         .Z(state1_finish_flag_N_469)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 i601_2_lut_rep_158 (.A(state1_finish_flag_N_470), .B(n778), .Z(n14116)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i601_2_lut_rep_158.init = 16'hbbbb;
    LUT4 i12544_2_lut_3_lut (.A(state1_finish_flag_N_470), .B(n778), .C(\state[1] ), 
         .Z(n11902)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i12544_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i6515_4_lut_4_lut (.A(state1_finish_flag_N_470), .B(n778), .C(n464[9]), 
         .D(n11712), .Z(n7473)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i6515_4_lut_4_lut.init = 16'hccc8;
    LUT4 i9610_3_lut_4_lut (.A(cnt_length_num[2]), .B(n14098), .C(cnt_length_num[3]), 
         .D(cnt_length_num[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9610_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6094_1_lut (.A(\state[2] ), .Z(n7052)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6094_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(n7), .B(n11696), .C(rom_addr_11__N_398[1]), .D(cnt_length_num[2]), 
         .Z(cnt_length_num_4__N_440)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_2_lut (.A(cnt_length_num[3]), .B(rom_addr_11__N_398[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(length_num_flag), .B(cnt_length_num[4]), .Z(n11696)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i5_4_lut (.A(rom_addr[8]), .B(n10), .C(n14192), .D(n6929), 
         .Z(n11705)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h4000;
    CCU2D mult_34_add_1_add_2_6 (.A0(n2[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10389), .COUT(n10390), .S0(rom_addr_11__N_398[6]), .S1(rom_addr_11__N_398[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_34_add_1_add_2_6.INIT0 = 16'h5aaa;
    defparam mult_34_add_1_add_2_6.INIT1 = 16'h5aaa;
    defparam mult_34_add_1_add_2_6.INJECT1_0 = "NO";
    defparam mult_34_add_1_add_2_6.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14329)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i154_2_lut_rep_290 (.A(\state[2] ), .B(temp[0]), .Z(n14248)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i154_2_lut_rep_290.init = 16'h2222;
    LUT4 i1_2_lut_rep_192_3_lut (.A(\state[2] ), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n14150)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i1_2_lut_rep_192_3_lut.init = 16'h2f2f;
    LUT4 i2_3_lut_rep_292 (.A(n464[2]), .B(n464[1]), .C(n464[3]), .Z(n14250)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_292.init = 16'hfefe;
    LUT4 i1_2_lut_rep_191_4_lut (.A(n464[2]), .B(n464[1]), .C(n464[3]), 
         .D(n464[4]), .Z(n14149)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_191_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_293 (.A(n464[2]), .B(n464[4]), .C(n464[3]), .Z(n14251)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_3_lut_rep_293.init = 16'hcece;
    LUT4 i1_2_lut_rep_193_4_lut (.A(n464[2]), .B(n464[4]), .C(n464[3]), 
         .D(n464[5]), .Z(n14151)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_rep_193_4_lut.init = 16'h00ce;
    FD1P3AX data_i8 (.D(show_char_data_8__N_286[8]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    LUT4 i9681_2_lut (.A(\ascii_num[0] ), .B(cnt_length_num[2]), .Z(rom_addr_11__N_398[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i9681_2_lut.init = 16'h6666;
    LUT4 i12467_4_lut (.A(n464[15]), .B(n464[11]), .C(n464[13]), .D(n6_adj_768), 
         .Z(n778)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i12467_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_21 (.A(n464[12]), .B(n464[14]), .Z(n6_adj_768)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_21.init = 16'heeee;
    LUT4 i974_2_lut_rep_198_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14156)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i974_2_lut_rep_198_3_lut.init = 16'h8080;
    LUT4 i972_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n427[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i972_2_lut_3_lut.init = 16'h7878;
    LUT4 i979_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n427[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i979_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5251_2_lut_rep_239_2_lut (.A(rom_addr[3]), .B(rom_addr[2]), .Z(n14197)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5251_2_lut_rep_239_2_lut.init = 16'h4444;
    LUT4 i9682_2_lut (.A(\ascii_num[0] ), .B(\ascii_num[1] ), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i9682_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n14100), 
         .C(rom_addr[0]), .D(n46), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_769), 
         .C(rom_addr[4]), .D(n14138), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    CCU2D mult_34_add_1_add_2_4 (.A0(n2[2]), .B0(cnt_length_num[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10388), .COUT(n10389), .S0(rom_addr_11__N_398[4]), .S1(rom_addr_11__N_398[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_34_add_1_add_2_4.INIT0 = 16'h5666;
    defparam mult_34_add_1_add_2_4.INIT1 = 16'h5aaa;
    defparam mult_34_add_1_add_2_4.INJECT1_0 = "NO";
    defparam mult_34_add_1_add_2_4.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1962), 
         .C(n14219), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 show_char_data_8__I_0_i3_4_lut (.A(n14248), .B(n778), .C(\state[1] ), 
         .D(n8_adj_772), .Z(show_char_data_8__N_286[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i3_4_lut.init = 16'hca0a;
    LUT4 i9583_2_lut_rep_152 (.A(n355), .B(rom_addr_11__N_398[0]), .Z(n14110)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9583_2_lut_rep_152.init = 16'h8888;
    LUT4 i2029_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_c_enable_67), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2029_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(n8701), .B(n11696), .C(cnt_length_num[3]), .D(cnt_length_num[2]), 
         .Z(n355)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0c4c;
    LUT4 i7750_2_lut (.A(rom_addr_11__N_398[0]), .B(rom_addr_11__N_398[1]), 
         .Z(n8701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7750_2_lut.init = 16'h8888;
    CCU2D mult_34_add_1_add_2_2 (.A0(\ascii_num[0] ), .B0(cnt_length_num[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2[1]), .B1(cnt_length_num[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n10388), .S1(rom_addr_11__N_398[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam mult_34_add_1_add_2_2.INIT0 = 16'h7000;
    defparam mult_34_add_1_add_2_2.INIT1 = 16'h5666;
    defparam mult_34_add_1_add_2_2.INJECT1_0 = "NO";
    defparam mult_34_add_1_add_2_2.INJECT1_1 = "NO";
    LUT4 i7779_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8732)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7779_2_lut.init = 16'heeee;
    LUT4 i2107_2_lut (.A(state[0]), .B(\state_3__N_379[1] ), .Z(n3020)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2107_2_lut.init = 16'h2222;
    LUT4 i2110_4_lut (.A(\state[1] ), .B(\state_3__N_379[1] ), .C(state_3__N_383[2]), 
         .D(state[0]), .Z(n3023)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2110_4_lut.init = 16'hce0a;
    LUT4 i2112_4_lut (.A(\state[2] ), .B(state_3__N_383[2]), .C(cnt_length_num_4__N_440), 
         .D(\state[1] ), .Z(n3025)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2112_4_lut.init = 16'hce0a;
    LUT4 i9592_2_lut_rep_140_3_lut (.A(n355), .B(rom_addr_11__N_398[0]), 
         .C(rom_addr_11__N_398[1]), .Z(n14098)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9592_2_lut_rep_140_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_22 (.A(n11837), .B(state1_finish_flag_N_470), .C(n464[4]), 
         .D(n14147), .Z(n8_adj_772)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_4_lut_adj_22.init = 16'hccdc;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14305), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n6614)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i9589_2_lut_3_lut (.A(n355), .B(rom_addr_11__N_398[0]), .C(rom_addr_11__N_398[1]), 
         .Z(n25[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9589_2_lut_3_lut.init = 16'h7878;
    LUT4 i12509_2_lut_rep_305 (.A(n464[6]), .B(n464[8]), .Z(n14263)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12509_2_lut_rep_305.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n464[6]), .B(n464[8]), .C(n14251), .D(n464[5]), 
         .Z(n4_adj_773)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n14103), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i5_4_lut_adj_23 (.A(cnt_wr_color_data[3]), .B(n10_adj_774), .C(cnt_wr_color_data[5]), 
         .D(n11839), .Z(length_num_flag_N_471)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_4_lut_adj_23.init = 16'h0008;
    LUT4 i11098_2_lut_rep_189_3_lut (.A(n464[6]), .B(n464[8]), .C(n464[7]), 
         .Z(n14147)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11098_2_lut_rep_189_3_lut.init = 16'hfefe;
    LUT4 i132_2_lut_3_lut_4_lut (.A(n464[6]), .B(n464[8]), .C(n464[9]), 
         .D(n464[7]), .Z(n119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i132_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9581_2_lut (.A(n355), .B(rom_addr_11__N_398[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9581_2_lut.init = 16'h6666;
    LUT4 i4_4_lut_adj_24 (.A(\state[2] ), .B(cnt_wr_color_data[0]), .C(cnt_wr_color_data[1]), 
         .D(the1_wr_done), .Z(n10_adj_774)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_24.init = 16'h8000;
    LUT4 i950_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n137[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i950_3_lut.init = 16'h6a6a;
    LUT4 i943_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n137[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i943_2_lut.init = 16'h6666;
    LUT4 i965_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n427[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i965_2_lut.init = 16'h6666;
    LUT4 i5156_3_lut_4_lut_4_lut (.A(\state[1] ), .B(n778), .C(n14248), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_459[5])) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i5156_3_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i1_4_lut_4_lut (.A(\state[1] ), .B(n4_adj_767), .C(n1275), .D(n14116), 
         .Z(show_char_data_8__N_286[8])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i1_4_lut_4_lut.init = 16'h55fd;
    LUT4 i1_2_lut_rep_168_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14126)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_168_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i7532_2_lut_rep_148_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n14106)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7532_2_lut_rep_148_3_lut_4_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i12474_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n11967)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12474_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i7421_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n15497), 
         .D(n14241), .Z(n1851_adj_775)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7421_4_lut_4_lut.init = 16'h5140;
    LUT4 i11106_2_lut_rep_238_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14196)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11106_2_lut_rep_238_2_lut.init = 16'hdddd;
    LUT4 n12282_bdd_3_lut_13186_3_lut_3_lut (.A(rom_addr[4]), .B(n14266), 
         .C(rom_addr[3]), .Z(n13868)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n12282_bdd_3_lut_13186_3_lut_3_lut.init = 16'h0404;
    LUT4 i11108_2_lut (.A(n464[9]), .B(n464[5]), .Z(n11837)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11108_2_lut.init = 16'heeee;
    LUT4 i7857_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n15503), .D(rom_addr[3]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7857_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_147_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14320), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n14105)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_147_3_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i7449_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14155), 
         .D(n14215), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7449_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n15518), .D(rom_addr[3]), .Z(n14100)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_142_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i11110_2_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[4]), 
         .Z(n11839)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11110_2_lut.init = 16'heeee;
    LUT4 i7568_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14190), .C(rom_addr[3]), 
         .D(n14230), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7568_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n6662)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i2728_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n14194), 
         .D(n14200), .Z(n3641)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2728_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n14112), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14312), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i7611_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14252), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n1596)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7611_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i7556_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n14230), .Z(n1275_adj_776)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7556_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i5909_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14244), 
         .D(n14325), .Z(n6852)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5909_4_lut_4_lut.init = 16'h7340;
    LUT4 i7437_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14210), .C(rom_addr[3]), 
         .D(n14224), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7437_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n4_adj_777), 
         .C(n14176), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_5_i508_3_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n2684), 
         .C(n14223), .D(n14193), .Z(n508)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i508_3_lut_4_lut_4_lut.init = 16'he444;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n14120), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n11699), 
         .C(n5987), .D(n158_adj_778), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7772_3_lut_3_lut (.A(rom_addr[6]), .B(n10718), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7772_3_lut_3_lut.init = 16'h0202;
    LUT4 i28_2_lut_rep_333 (.A(\state[1] ), .B(the1_wr_done), .Z(sys_clk_c_enable_33)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i28_2_lut_rep_333.init = 16'h8888;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut_4_lut (.A(rom_addr[4]), .B(n14114), 
         .C(rom_addr[5]), .D(n14131), .Z(n2555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i2555_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_3_lut (.A(\state[1] ), .B(the1_wr_done), .C(state_3__N_383[2]), 
         .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14143), .D(n15498), .Z(n94_adj_779)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_361 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14319)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_361.init = 16'hbbbb;
    LUT4 i12485_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1412), .D(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i12485_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i12517_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_c_enable_45)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12517_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_194_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14152)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_194_3_lut.init = 16'hbfbf;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 n1627_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(n14302), 
         .D(n8380), .Z(n13421)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n1627_bdd_4_lut_4_lut.init = 16'h0400;
    LUT4 i9596_2_lut_3_lut_4_lut (.A(n355), .B(rom_addr_11__N_398[0]), .C(cnt_length_num[2]), 
         .D(rom_addr_11__N_398[1]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9596_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 temp_7__N_434_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(debug_led2_c_3), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_449)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_434_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i6095_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1412), .D(cnt_rom_prepare[1]), .Z(n7053)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6095_2_lut_3_lut_4_lut.init = 16'h0b0f;
    PFUMX i13380 (.BLUT(n14361), .ALUT(n14362), .C0(rom_addr[4]), .Z(n14363));
    LUT4 i2249_1_lut_rep_330 (.A(rom_addr[5]), .Z(n14288)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2249_1_lut_rep_330.init = 16'h5555;
    LUT4 i9603_2_lut_3_lut_4_lut (.A(rom_addr_11__N_398[1]), .B(n14110), 
         .C(cnt_length_num[3]), .D(cnt_length_num[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam i9603_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3JX cnt_set_windows_FSM_i0 (.D(n464[15]), .SP(sys_clk_c_enable_47), 
            .PD(state_3__N_383[2]), .CK(sys_clk_c), .Q(n464[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n14244), .Z(n380_adj_780)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_781), 
         .C(n2395), .Z(n1596_adj_782)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_adj_25 (.A(\state[2] ), .B(\state[1] ), .Z(sys_clk_c_enable_46)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_25.init = 16'heeee;
    PFUMX i13378 (.BLUT(n14358), .ALUT(n14359), .C0(rom_addr[3]), .Z(n125));
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_783), 
         .C(n14126), .D(rom_addr[1]), .Z(n62_adj_784)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14277), .C(rom_addr[3]), 
         .D(n15518), .Z(n6429)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 i12268_3_lut_3_lut (.A(rom_addr[7]), .B(n10638), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12268_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2606_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n14122), 
         .D(n14105), .Z(n3519)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2606_4_lut_4_lut.init = 16'h7f5d;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1483), 
         .C(n14219), .D(rom_addr[0]), .Z(n1530_adj_785)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14320), 
         .C(n14277), .D(rom_addr[7]), .Z(n10716)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 n3059_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n15502), .C(rom_addr[4]), 
         .D(n14143), .Z(n13755)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n3059_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 i12524_2_lut_rep_167_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14305), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14125)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12524_2_lut_rep_167_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i11096_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n11825)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11096_2_lut_2_lut.init = 16'hdddd;
    LUT4 i11591_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n2140), 
         .D(n14206), .Z(n12322)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11591_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11821_4_lut_4_lut (.A(rom_addr[7]), .B(n13912), .C(rom_addr[8]), 
         .D(n12406), .Z(n12552)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11821_4_lut_4_lut.init = 16'h4f40;
    LUT4 i12264_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n13422), .Z(n6813)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12264_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11762_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n12493)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11762_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i13376 (.BLUT(n14355), .ALUT(n14356), .C0(rom_addr[3]), .Z(n14357));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_26 (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_26.init = 16'hd000;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n14145), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 n506_bdd_4_lut_13088_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14162), 
         .D(n14145), .Z(n13734)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n506_bdd_4_lut_13088_4_lut.init = 16'h7340;
    LUT4 rom_addr_1__bdd_4_lut_13382 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14339)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_13382.init = 16'h6144;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14341)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut.init = 16'h1500;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n14248), .B(n6105), .C(\state[1] ), 
         .D(n14116), .Z(show_char_data_8__N_286[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_786), 
         .C(rom_addr[4]), .D(n14244), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14340)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14325), .D(n14145), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14188), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 i11584_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n12315)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11584_3_lut_4_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_4_lut_adj_27 (.A(n464[5]), .B(n464[9]), .C(n14147), .D(n464[4]), 
         .Z(n6105)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hcfce;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n14143), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 i5042_2_lut_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n5968)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5042_2_lut_2_lut.init = 16'h4444;
    LUT4 i3_4_lut (.A(\state[1] ), .B(n14116), .C(n14151), .D(n119), 
         .Z(n11665)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 i11537_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1529), .C(rom_addr[4]), 
         .D(n15499), .Z(n12268)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11537_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i4_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n15518), 
         .D(rom_addr[7]), .Z(n10)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i4_4_lut_4_lut.init = 16'h0010;
    LUT4 n11733_bdd_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n491), 
         .Z(n13331)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n11733_bdd_3_lut_3_lut.init = 16'h2020;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14150), .B(n6094), .C(\state[1] ), 
         .D(n14116), .Z(show_char_data_8__N_286[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8848), 
         .C(rom_addr[4]), .D(n14230), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    PFUMX i13218 (.BLUT(n13911), .ALUT(n13910), .C0(rom_addr[6]), .Z(n13912));
    LUT4 i7737_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14093), 
         .D(n12391), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7737_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7289_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n11705), 
         .D(n12329), .Z(n4094_adj_787)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7289_4_lut_4_lut.init = 16'h5140;
    LUT4 i7303_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12332), .Z(n4094_adj_788)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7303_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14207), 
         .C(rom_addr[0]), .D(n379), .Z(n380_adj_789)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i5157_4_lut (.A(\end_x_8__N_297[4] ), .B(\end_y_8__N_315[4] ), 
         .C(n1275), .D(n4_adj_773), .Z(n6094)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5157_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n11699), 
         .C(n5239), .D(n14127), .Z(n828_adj_790)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 i1_2_lut_rep_347 (.A(n15518), .B(rom_addr[3]), .Z(n14305)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_347.init = 16'h2222;
    LUT4 i2_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n2140)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_adj_28 (.A(n464[9]), .B(n464[7]), .Z(n1275)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i1_2_lut_rep_166_3_lut_3_lut_4_lut (.A(n15518), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14124)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_166_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i3_4_lut_adj_29 (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[4]), .D(n11675), .Z(n1412)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_29.init = 16'hfffb;
    LUT4 i1_4_lut_adj_30 (.A(n259), .B(cnt_wr_color_data[3]), .C(cnt_wr_color_data[2]), 
         .D(cnt_wr_color_data[1]), .Z(n11675)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_30.init = 16'hddd5;
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14248), .B(n6143), .C(\state[1] ), 
         .D(n14116), .Z(show_char_data_8__N_286[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 n6870_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1834), 
         .D(n6870), .Z(n13576)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n6870_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_169_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14127)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_169_3_lut_4_lut_4_lut.init = 16'h0b00;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n14140), 
         .C(rom_addr[4]), .D(n15499), .Z(n1755)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut_4_lut.init = 16'hc5c0;
    FD1S3IX cnt_length_num_725__i5 (.D(n25[4]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_725__i5.GSR = "ENABLED";
    CCU2D add_2017_8 (.A0(\ascii_num[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10395), .S0(n2[7]), .S1(n1));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2017_8.INIT0 = 16'h5aaa;
    defparam add_2017_8.INIT1 = 16'h0000;
    defparam add_2017_8.INJECT1_0 = "NO";
    defparam add_2017_8.INJECT1_1 = "NO";
    FD1S3IX cnt_length_num_725__i4 (.D(n25[3]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_725__i4.GSR = "ENABLED";
    FD1S3IX cnt_length_num_725__i3 (.D(n25[2]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(cnt_length_num[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_725__i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_725__i2 (.D(n25[1]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(rom_addr_11__N_398[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_725__i2.GSR = "ENABLED";
    FD1S3JX state_FSM_i4 (.D(n3020), .CK(sys_clk_c), .PD(debug_led2_c_3), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    CCU2D add_2017_6 (.A0(\ascii_num[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10394), .COUT(n10395), .S0(n2[5]), .S1(n2[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2017_6.INIT0 = 16'h5aaa;
    defparam add_2017_6.INIT1 = 16'hfaaa;
    defparam add_2017_6.INJECT1_0 = "NO";
    defparam add_2017_6.INJECT1_1 = "NO";
    CCU2D add_2017_4 (.A0(\ascii_num[2] ), .B0(\ascii_num[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[3] ), .B1(\ascii_num[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n10393), .COUT(n10394), .S0(n2[3]), .S1(n2[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2017_4.INIT0 = 16'h5666;
    defparam add_2017_4.INIT1 = 16'h5666;
    defparam add_2017_4.INJECT1_0 = "NO";
    defparam add_2017_4.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i3 (.D(n3023), .CK(sys_clk_c), .Q(\state[1] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3025), .CK(sys_clk_c), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i5214_3_lut (.A(n14250), .B(\end_x_8__N_297[3] ), .C(n14251), 
         .Z(n6152)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5214_3_lut.init = 16'hc5c5;
    CCU2D add_2017_2 (.A0(\ascii_num[0] ), .B0(\ascii_num[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(\ascii_num[1] ), .B1(\ascii_num[2] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n10393), .S1(n2[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(153[21:57])
    defparam add_2017_2.INIT0 = 16'h7000;
    defparam add_2017_2.INIT1 = 16'h5666;
    defparam add_2017_2.INJECT1_0 = "NO";
    defparam add_2017_2.INJECT1_1 = "NO";
    FD1S3IX cnt_length_num_725__i1 (.D(n25[0]), .CK(sys_clk_c), .CD(cnt_length_num_4__N_440), 
            .Q(rom_addr_11__N_398[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[10] 217[49])
    defparam cnt_length_num_725__i1.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n137[2]), .SP(sys_clk_c_enable_67), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n137[1]), .SP(sys_clk_c_enable_67), 
            .CD(length_num_flag), .CK(sys_clk_c), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n427[5]), .SP(sys_clk_c_enable_72), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n427[4]), .SP(sys_clk_c_enable_72), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n427[3]), .SP(sys_clk_c_enable_72), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n427[2]), .SP(sys_clk_c_enable_72), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n427[1]), .SP(sys_clk_c_enable_72), 
            .CD(cnt_wr_color_data_5__N_449), .CK(sys_clk_c), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n15518(n15518), .n14200(n14200), 
            .n14244(n14244), .n15498(n15498), .n158(n158_adj_778), .n14139(n14139), 
            .n8848(n8848), .n15502(n15502), .n924(n924), .n11699(n11699), 
            .n13755(n13755), .n14357(n14357), .n12062(n12062), .n1403(n1403), 
            .n6429(n6429), .n1148(n1148), .n1483(n1483), .n12078(n12078), 
            .n158_adj_1(n158), .n14207(n14207), .n2141(n2141), .n1851(n1851_adj_775), 
            .n1530(n1530_adj_785), .n14252(n14252), .n14196(n14196), .n12108(n12108), 
            .n828(n828_adj_790), .n380(n380_adj_789), .n6852(n6852), .n15503(n15503), 
            .n14230(n14230), .n62(n62_adj_784), .n4094(n4094), .rom_q({rom_q}), 
            .n4094_adj_2(n4094_adj_788), .n14131(n14131), .n4094_adj_3(n4094_adj_787), 
            .n1530_adj_4(n1530), .n1565(n1565), .n1596(n1596), .n828_adj_5(n828), 
            .n12493(n12493), .n1275(n1275_adj_776), .n12552(n12552), .n1069(n1069), 
            .n11841(n11841), .n2395(n2395), .n270(n270_adj_786), .n12329(n12329), 
            .n301(n301), .n12332(n12332), .n1101(n1101), .n4(n4_adj_769), 
            .n94(n94), .n14173(n14173), .n1529(n1529), .n379(n379), 
            .n5987(n5987), .n13301(n13301), .n14134(n14134), .n1962(n1962), 
            .n491(n491), .n2684(n2684), .n78(n78), .n14138(n14138), 
            .n15499(n15499), .n12406(n12406), .n12315(n12315), .n4455(n4455), 
            .n12602(n12602), .n364(n364), .n13734(n13734), .n270_adj_6(n270), 
            .n15497(n15497), .n509(n509), .n510(n510), .n14219(n14219), 
            .n6813(n6813), .n2332(n2332), .n14143(n14143), .n14120(n14120), 
            .n14305(n14305), .n1(n1_adj_766), .n2140(n2140), .n2620(n2620), 
            .n603(n603), .n14155(n14155), .n10716(n10716), .n10718(n10718), 
            .n14210(n14210), .n14140(n14140), .n14325(n14325), .n1834(n1834), 
            .n14224(n14224), .n14277(n14277), .n14223(n14223), .n2173(n2173), 
            .n14320(n14320), .n12378(n12378), .n14192(n14192), .n5968(n5968), 
            .n1228(n1228), .n14312(n14312), .n14100(n14100), .n14302(n14302), 
            .n14266(n14266), .n2621(n2621), .n14093(n14093), .n1149(n1149), 
            .n14166(n14166), .n46(n46_adj_783), .n14162(n14162), .n1851_adj_7(n1851), 
            .n14197(n14197), .n14125(n14125), .n14092(n14092), .n14188(n14188), 
            .n14124(n14124), .n14339(n14339), .n1565_adj_8(n1565_adj_781), 
            .n1596_adj_9(n1596_adj_782), .n14241(n14241), .n3069(n3069), 
            .n2364(n2364), .n14194(n14194), .n10638(n10638), .n891(n891), 
            .n11967(n11967), .n892(n892), .n1467(n1467), .n6929(n6929), 
            .n14331(n14331), .n380_adj_10(n380), .n1534(n1534), .n62_adj_11(n62), 
            .n12270(n12270), .n125(n125), .n94_adj_12(n94_adj_779), .n126(n126), 
            .n127(n127), .n2428(n2428), .n2300(n2300), .n2555(n2555), 
            .n2025(n2025), .n14363(n14363), .n236(n236), .n796(n796), 
            .n14114(n14114), .n6662(n6662), .n1661(n1661), .n11727(n11727), 
            .n8380(n8380), .n12268(n12268), .n3519(n3519), .n14193(n14193), 
            .n6614(n6614), .n3641(n3641), .n12298(n12298), .n12322(n12322), 
            .n12391(n12391), .n14106(n14106), .n13576(n13576), .n1436(n1436), 
            .n13300(n13300), .n1883(n1883), .n286(n286), .n317(n317), 
            .n14112(n14112), .n46_adj_13(n46), .n14304(n14304), .n14122(n14122), 
            .n11825(n11825), .n1723(n1723), .n1755(n1755), .n14206(n14206), 
            .n14190(n14190), .n14145(n14145), .n308(n308), .n5239(n5239), 
            .n14229(n14229), .n14136(n14136), .n380_adj_14(n380_adj_780), 
            .n14215(n14215), .n13421(n13421), .n14288(n14288), .n13422(n13422), 
            .n1172(n1172), .n4_adj_15(n4_adj_777), .n14103(n14103), .n1084(n1084), 
            .n13868(n13868), .n14176(n14176), .n13332(n13332), .n13331(n13331)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n15518, n14200, n14244, n15498, n158, 
            n14139, n8848, n15502, n924, n11699, n13755, n14357, 
            n12062, n1403, n6429, n1148, n1483, n12078, n158_adj_1, 
            n14207, n2141, n1851, n1530, n14252, n14196, n12108, 
            n828, n380, n6852, n15503, n14230, n62, n4094, rom_q, 
            n4094_adj_2, n14131, n4094_adj_3, n1530_adj_4, n1565, 
            n1596, n828_adj_5, n12493, n1275, n12552, n1069, n11841, 
            n2395, n270, n12329, n301, n12332, n1101, n4, n94, 
            n14173, n1529, n379, n5987, n13301, n14134, n1962, 
            n491, n2684, n78, n14138, n15499, n12406, n12315, 
            n4455, n12602, n364, n13734, n270_adj_6, n15497, n509, 
            n510, n14219, n6813, n2332, n14143, n14120, n14305, 
            n1, n2140, n2620, n603, n14155, n10716, n10718, n14210, 
            n14140, n14325, n1834, n14224, n14277, n14223, n2173, 
            n14320, n12378, n14192, n5968, n1228, n14312, n14100, 
            n14302, n14266, n2621, n14093, n1149, n14166, n46, 
            n14162, n1851_adj_7, n14197, n14125, n14092, n14188, 
            n14124, n14339, n1565_adj_8, n1596_adj_9, n14241, n3069, 
            n2364, n14194, n10638, n891, n11967, n892, n1467, 
            n6929, n14331, n380_adj_10, n1534, n62_adj_11, n12270, 
            n125, n94_adj_12, n126, n127, n2428, n2300, n2555, 
            n2025, n14363, n236, n796, n14114, n6662, n1661, n11727, 
            n8380, n12268, n3519, n14193, n6614, n3641, n12298, 
            n12322, n12391, n14106, n13576, n1436, n13300, n1883, 
            n286, n317, n14112, n46_adj_13, n14304, n14122, n11825, 
            n1723, n1755, n14206, n14190, n14145, n308, n5239, 
            n14229, n14136, n380_adj_14, n14215, n13421, n14288, 
            n13422, n1172, n4_adj_15, n14103, n1084, n13868, n14176, 
            n13332, n13331) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    input n15518;
    output n14200;
    output n14244;
    output n15498;
    output n158;
    output n14139;
    output n8848;
    output n15502;
    input n924;
    output n11699;
    input n13755;
    input n14357;
    input n12062;
    input n1403;
    input n6429;
    input n1148;
    output n1483;
    input n12078;
    input n158_adj_1;
    output n14207;
    input n2141;
    input n1851;
    input n1530;
    output n14252;
    input n14196;
    input n12108;
    input n828;
    input n380;
    input n6852;
    output n15503;
    output n14230;
    input n62;
    input n4094;
    output [7:0]rom_q;
    input n4094_adj_2;
    output n14131;
    input n4094_adj_3;
    input n1530_adj_4;
    input n1565;
    input n1596;
    input n828_adj_5;
    input n12493;
    input n1275;
    input n12552;
    output n1069;
    output n11841;
    output n2395;
    output n270;
    output n12329;
    output n301;
    output n12332;
    output n1101;
    output n4;
    input n94;
    output n14173;
    output n1529;
    output n379;
    output n5987;
    output n13301;
    input n14134;
    output n1962;
    output n491;
    output n2684;
    output n78;
    output n14138;
    output n15499;
    output n12406;
    input n12315;
    output n4455;
    input n12602;
    output n364;
    input n13734;
    output n270_adj_6;
    output n15497;
    input n509;
    output n510;
    output n14219;
    input n6813;
    output n2332;
    output n14143;
    output n14120;
    input n14305;
    output n1;
    input n2140;
    output n2620;
    output n603;
    output n14155;
    input n10716;
    output n10718;
    output n14210;
    output n14140;
    output n14325;
    output n1834;
    output n14224;
    output n14277;
    output n14223;
    input n2173;
    output n14320;
    input n12378;
    output n14192;
    input n5968;
    input n1228;
    output n14312;
    input n14100;
    output n14302;
    output n14266;
    input n2621;
    output n14093;
    input n1149;
    output n14166;
    output n46;
    output n14162;
    input n1851_adj_7;
    input n14197;
    input n14125;
    input n14092;
    output n14188;
    input n14124;
    input n14339;
    output n1565_adj_8;
    input n1596_adj_9;
    output n14241;
    output n3069;
    input n2364;
    output n14194;
    output n10638;
    input n891;
    input n11967;
    input n892;
    input n1467;
    output n6929;
    input n14331;
    input n380_adj_10;
    input n1534;
    input n62_adj_11;
    input n12270;
    input n125;
    input n94_adj_12;
    input n126;
    output n127;
    input n2428;
    input n2300;
    input n2555;
    output n2025;
    input n14363;
    input n236;
    output n796;
    output n14114;
    input n6662;
    output n1661;
    output n11727;
    output n8380;
    input n12268;
    input n3519;
    output n14193;
    input n6614;
    input n3641;
    input n12298;
    input n12322;
    output n12391;
    input n14106;
    input n13576;
    input n1436;
    output n13300;
    input n1883;
    input n286;
    input n317;
    output n14112;
    output n46_adj_13;
    output n14304;
    output n14122;
    input n11825;
    input n1723;
    input n1755;
    output n14206;
    output n14190;
    output n14145;
    output n308;
    output n5239;
    output n14229;
    output n14136;
    input n380_adj_14;
    output n14215;
    input n13421;
    input n14288;
    output n13422;
    output n1172;
    output n4_adj_15;
    output n14103;
    input n1084;
    input n13868;
    output n14176;
    input n13332;
    input n13331;
    
    
    wire n14352, n14353, n14354, n14216, n14178, n13243, n12040, 
        n12041, n12042, n12043, n12044, n12045, n14153, n2283, 
        n1898, n2491, n2283_adj_551, n2298, n2299, n14117, n860, 
        n12046, n12047, n12050, n14420, n205, n221, n13795, n13793, 
        n13796, n13794, n13792, n13791, n14148, n2554, n2523, 
        n2555_c, n14307, n12017, n14349, n14350, n14351, n13277, 
        n13275, n13278, n589, n604, n12034, n13276, n12048, n12049, 
        n12051, n12053, n12054, n12055, n12056, n12057, n12058, 
        n1529_c, n14220, n12319, n955, n956, n13756, n13753, n13757, 
        n13106, n13105, n13107, n14254, n1628, n1659, n12060, 
        n14217, n1565_c, n1597, n13754, n14368, n1978, n12463, 
        n684, n699, n1451, n14388, n12038, n14346, n14347, n14348, 
        n12063, n12064, n13274, n14289, n1276, n11747, n12405, 
        n14158, n1086, n12404, n13333, n12402, n12403, n14146, 
        n1117, n1149_c, n12239, n3155, n12399, n557, n476, n12065, 
        n12066, n12067, n14343, n14344, n14345, n14400, n126_c, 
        n12392, n12074, n12075, n12076, n5845, n13752, n12077, 
        n12081, n12395, n12396, n12397, n2204, n2427, n14119, 
        n12079, n12080, n12082, n12084, n12085, n12086, n189, 
        n190, n14292, n14287, n13727, n14175, n12087, n12088, 
        n12089, n14428, n14429, n14430, n13475, n2173_c, n12347, 
        n12349, n12350, n12352, n12306, n12307, n12308, n14336, 
        n14337, n14303, n14338, n12697, n6884, n6885, n12093, 
        n12094, n12095, n1820, n1852, n12099, n12100, n12101, 
        n1514, n1531, n15507, n15508, n15509, n428, n443, n444, 
        n14283, n14121, n6188, n12135, n13111, n12202, n14214, 
        n3911, n12109, n12110, n12111, n12112, n12113, n924_adj_553, 
        n11710, n956_adj_554, n12114, n12115, n12116, n14167, n12449, 
        n827, n11948, n829, n14154, n14209, n13527, n364_c, n381, 
        n14425, n14232, n14427, n12125, n318, n14201, n14332, 
        n14333, n14334, n13246, n13244, n13247, n1435, n12175, 
        n12176, n12188, n12120, n12121, n12122, n12171, n12172, 
        n12186, n61, n61_adj_555, n63, n14228, n2009, n12263, 
        n12228, n12229, n12230, n12169, n12185, n12497, n12498, 
        n12499, n2268, n2299_adj_556, n2300_c, n12528, n12529, n12530, 
        n2047, n12187, n12194, n12556, n12133, n12134, n1739, 
        n1786, n1787, n12197, n12198, n12199, n12226, n12227, 
        n13245, n12259, n12260, n12262, n1514_adj_559, n1531_adj_561, 
        n12495, n12496, n12059, n12524, n12525, n12526, n12527, 
        n1181, n1212, n1213, n13242, n13708, n13707, n13709, n859, 
        n860_adj_563, n14274, n892_c, n12195, n12196, n12224, n12225, 
        n14422, n14423, n14424, n12418, n12419, n12420, n12253, 
        n12254, n12257, n12258, n12261, n14419, n14421, n812, 
        n829_adj_565, n12324, n12325, n12326, n716, n732, n14270, 
        n764, n12351, n12353, n12494, n12148, n12149, n12150, 
        n12516, n12517, n12518, n12519, n12520, n12521, n13706, 
        n12151, n12152, n12153, n12522, n12523, n12154, n12155, 
        n12156, n12550, n12551, n12554, n12157, n12158, n12159, 
        n12553, n12555, n12370, n3069_c, n3070, n12363, n3069_adj_566, 
        n3070_adj_567, n12430, n12437, n5455, n12339, n3069_adj_568, 
        n3070_adj_569, n14267, n11718, n12166, n12167, n12168, n14185, 
        n12480, n12193, n2009_adj_570, n2444, n14135, n109, n557_adj_571, 
        n526, n12032, n2522, n6825, n1002, n2283_adj_572, n13973, 
        n12459, n1691, n2573, n12321, n14247, n12300, n2554_adj_573, 
        n2444_adj_574, n2460, n12255, n12256, n1785, n13705, n12327, 
        n12328, n2396, n12330, n12331, n1612, n2298_adj_575, n12292, 
        n12398, n12400, n14205, n1196, n13871, n12344, n12345, 
        n12346, n364_adj_576, n12394, n1054, n1085, n12465, n12466, 
        n12467, n13531, n12446, n12447, n11715, n1483_adj_577, n15501, 
        n2025_c, n14163, n12014, n1038, n1054_adj_578, n6128, n14225, 
        n14222, n1851_adj_579, n14189, n1117_adj_580, n6830, n13540, 
        n14090, n13639, n12177, n12178, n12189, n12183, n12184, 
        n12192, n13972, n13666, n971, n986, n12587, n2444_adj_582, 
        n635, n1979, n12275, n12215, n2348, n12200, n12201, n12216, 
        n12203, n12217, n14211, n1596_adj_583, n124, n14313, n1913, 
        n2009_adj_584, n2010, n2009_adj_585, n954, n12586, n12601, 
        n12212, n12213, n12222, n12543, n12569, n12251, n460, 
        n908, n12585, n12578, n12591, n12252, n2396_adj_586, n3070_adj_587, 
        n2685, n14321, n2109, n12303, n12304, n12305, n1595, n12282, 
        n12283, n13869, n13975, n986_adj_588, n13634, n668, n12335, 
        n12336, n12338, n2365, n2428_c, n1243, n2522_adj_589, n12248, 
        n2077, n1723_c, n747, n8816, n2040, n2588, n13571, n4035, 
        n1278, n1451_adj_590, n1467_c, n1770, n2205, n12359, n12360, 
        n12362, n604_adj_591, n1435_adj_592, n1243_adj_593, n12364, 
        n12365, n12368, n12387, n12388, n12390, n14142, n12579, 
        n1882, n1883_c, n1931, n12072, n251, n589_adj_594, n14364, 
        n12022, n3070_adj_595, n1883_adj_596, n1914, n1915, n12309, 
        n12310, n12311, n2685_adj_597, n12018, n14415, n1835, n12574, 
        n428_adj_598, n12411, n12412, n12413, n12428, n12429, n12435, 
        n12436, n12354, n12355, n12356, n12438, n12439, n12440, 
        n13138, n12316, n12317, n1228_c, n12573, n1435_adj_599, 
        n1436_c, n12464, n13433, n12457, n460_adj_600, n526_adj_601, 
        n63_adj_602, n12489, n12500, n13137, n5240, n12536, n381_adj_603, 
        n12502, n1019, n12507, n12318, n12320, n3849, n653, n1468, 
        n12511, n1549, n1466, n1724, n12513, n12019, n12020, n12021, 
        n8361, n13473, n2475, n1676, n12136, n1564, n1755_c, n6864, 
        n1946, n2589, n15495, n844, n13620, n14269, n12071, n1403_adj_606, 
        n1403_adj_607, n1404, n14384, n13896, n1309, n12037, n12415, 
        n1149_adj_608, n893, n11943, n1021, n1309_adj_609, n12414, 
        n14218, n12583, n6845, n12560, n1786_adj_610, n14369, n12265, 
        n13850, n2078, n14183, n12371, n572, n12548, n12273, n14416, 
        n14417, n14418, n507, n11939, n14262, n541, n12547, n1676_adj_611, 
        n1692, n1851_adj_612, n12461, n1914_adj_613, n12408, n12374, 
        n1466_adj_614, n12372, n620, n541_adj_615, n12540, n5286, 
        n12243, n1692_adj_616, n491_adj_617, n12539, n1947, n1787_adj_618, 
        n13848, n1597_adj_619, n12181, n1658, n2009_adj_620, n2010_adj_621, 
        n1820_adj_622, n1530_adj_623, n1628_adj_624, n1915_adj_625, 
        n526_adj_626, n443_adj_627, n12537, n1084_c, n12244, n11745, 
        n10439, n1707, n11929, n1789, n12280, n397, n6843, n12544, 
        n13668, n14335, n2283_adj_628, n12481, n2333, n14096, n12013, 
        n12483, n78_adj_629, n12487, n939, n12247, n428_adj_630, 
        n443_adj_631, n12545, n653_adj_632, n653_adj_633, n12563, 
        n14128, n637, n220, n12482, n12173, n12174, n10444, n2492, 
        n14242, n589_adj_634, n604_adj_635, n12557, n2141_adj_636, 
        n13669, n13670, n890, n12588, n1308, n12266, n12269, n12211, 
        n14177, n1660, n30, n1724_adj_637, n4523, n620_adj_638, 
        n635_adj_639, n12558, n1852_adj_640, n1915_adj_641, n12214, 
        n1676_adj_642, n1243_adj_643, n10717, n124_adj_644, n12281, 
        n12293, n12334, n2365_adj_645, n12302, n1947_adj_646, n1707_adj_647, 
        n1723_adj_648, n12314, n6826, n2380, n13667, n2459, n13529, 
        n14306, n2110, n2173_adj_649, n12340, n2205_adj_650, n2237, 
        n2237_adj_651, n2300_adj_652, n12341, n124_adj_653, n13575, 
        n15500, n1691_adj_654, n13109, n2365_adj_655, n2428_adj_656, 
        n12342, n14412, n14174, n14367, n14366, n2492_adj_657, n2555_adj_658, 
        n12343, n14133, n1786_adj_659, n2492_adj_660, n2555_adj_661, 
        n12488, n12107, n2428_adj_662, n14371, n1660_adj_663, n14296, 
        n428_adj_664, n1914_adj_665, n12462, n14370, n1786_adj_666, 
        n2492_adj_667, n2555_adj_668, n1867, n12274, n13503, n13504, 
        n14101, n13505, n2110_adj_669, n1483_adj_671, n15045, n15046, 
        n12278, n1692_adj_672, n1659_adj_673, n13637, n13640, n15043, 
        n14286, n61_adj_674, n5607, n12564, n12290, n12367, n12377, 
        n12385, n14257, n604_adj_675, n12379, n12380, n12386, n12448, 
        n12381, n12382, n14237, n13470, n12383, n12384, n1530_adj_676, 
        n1499, n13021, n12407, n12409, n12410, n12416, n12417, 
        n14091, n12425, n12426, n12427, n12431, n12432, n12433, 
        n12434, n574, n14301, n1883_adj_678, n542, n13539, n12443, 
        n12444, n2522_adj_679, n2523_adj_680, n13638, n14376, n14204, 
        n14380, n14268, n844_adj_681, n12453, n12454, n12456, n14379, 
        n13140, n14383, n220_adj_682, n13545, n13546, n14382, n11737, 
        n301_adj_683, n14387, n14272, n2573_adj_684, n2538, n14104, 
        n2110_adj_685, n604_adj_686, n13635, n13632, n13636, n14386, 
        n12137, n12138, n14390, n13633, n6858, n2040_adj_687, n14389, 
        n5343, n12264, n13567, n444_adj_688, n1210, n13569, n12484, 
        n12485, n12486, n12490, n12491, n12492, n14393, n507_adj_689, 
        n12532, n2491_adj_690, n13621, n13622, n190_adj_691, n253, 
        n12501, n12562, n12505, n6823, n12506, n14392, n1946_adj_692, 
        n12582, n12572, n12508, n2411, n2427_adj_694, n270_adj_695, 
        n12534, n2364_c, n13578, n14396, n14395, n12575, n12509, 
        n1597_adj_696, n12512, n13159, n14399, n14398, n13631, n12581, 
        n12514, n14413, n14414, n1053, n12124, n12584, n12015, 
        n12515, n2298_adj_697, n12375, n12531, n12533, n828_adj_698, 
        n12541, n12542, n797, n14402, n12567, n12568, n12576, 
        n12577, n13582, n14378, n13583, n12589, n12590, n13584, 
        n13543, n12039, n14391, n13158, n13586, n12052, n12288, 
        n14401, n731, n12565, n12272, n2173_adj_700, n12333, n699_adj_701, 
        n13588, n668_adj_702, n13589, n12297, n12276, n12061, n12271, 
        n12267, n14405, n908_adj_703, n12246, n14404, n5278, n12241, 
        n5269, n12240, n12238, n13623, n12234, n12083, n15496, 
        n2267, n12291, n3584, n15506, n445, n13142, n12024, n1867_adj_705, 
        n1883_adj_706, n14410, n14411, n1101_adj_708, n1117_adj_709, 
        n316, n13506, n14408, n2396_adj_710, n475, n12035, n2621_adj_711, 
        n2684_adj_712, n14407, n14409, n6847, n4503, n1020, n12073, 
        n1084_adj_717, n445_adj_718, n14372, n285, n987, n13970, 
        n1085_adj_720, n1292, n2045, n12179, n12180, n12190, n13852, 
        n12191, n12389, n14130, n349, n13157, n508, n12546, n508_adj_722, 
        n12503, n12033, n12036, n12016, n12549, n12559, n12504, 
        n14397, n1212_adj_723, n12369, n2237_adj_724, n2685_adj_725, 
        n7032, n2237_adj_726, n1692_adj_727, n12337, n13435, n14165, 
        n14164, n2268_adj_728, n14265, n12279, n2429, n380_adj_732, 
        n4026, n14290, n2301, n14276, n14406, n2556, n2174, n14191, 
        n891_adj_736, n12538, n14129, n12204, n12236, n12242, n12207, 
        n12245, n12208, n12348, n12023, n14381, n14275, n14403, 
        n14394, n12235, n12237, n11728, n6134, n14182, n3382, 
        n1244, n1275_adj_737, n3642, n13590, n13587, n13591, n12458, 
        n6879, n12250, n12289, n13580, n12249, n13585, n12219, 
        n12218, n12299, n12323, n15048, n14160, n3749, n557_adj_738, 
        n475_adj_739, n526_adj_740, n13581, n6878, n13248, n12535, 
        n4822, n2236, n13579, n13577, n12223, n12221, n13873, 
        n12220, n6883, n13570, n13568, n1898_adj_741, n1914_adj_742, 
        n1275_adj_743, n1467_adj_745, n1228_adj_746, n1499_adj_747, 
        n14295, n12031, n13022, n2554_adj_748, n5016, n2523_adj_749, 
        n251_adj_750, n13544, n220_adj_751, n14137, n12123, n1038_adj_753, 
        n13108, n15505, n476_adj_754, n15504, n13502, n2025_adj_755, 
        n12561, n12566, n13530, n13528, n6820, n15047, n15044, 
        n859_adj_759, n1076, n731_adj_760, n13474, n13472, n14141, 
        n13434, n13141, n13139, n13974, n13971, n1676_adj_763, n13872, 
        n13870, n13851, n13849, n13110;
    
    PFUMX i13374 (.BLUT(n14352), .ALUT(n14353), .C0(rom_addr[0]), .Z(n14354));
    LUT4 n1116_bdd_4_lut_12915 (.A(n14216), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14178), .Z(n13243)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1116_bdd_4_lut_12915.init = 16'h3a0a;
    PFUMX i11311 (.BLUT(n12040), .ALUT(n12041), .C0(rom_addr[5]), .Z(n12042));
    LUT4 i4631_3_lut_rep_242_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14200)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4631_3_lut_rep_242_4_lut_3_lut.init = 16'hdede;
    PFUMX i11314 (.BLUT(n12043), .ALUT(n12044), .C0(rom_addr[5]), .Z(n12045));
    LUT4 i7195_2_lut_rep_195_3_lut (.A(rom_addr[0]), .B(n15518), .C(rom_addr[2]), 
         .Z(n14153)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7195_2_lut_rep_195_3_lut.init = 16'hf8f8;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283), .B(n1898), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i12086_3_lut (.A(n2283_adj_551), .B(n2298), .C(rom_addr[4]), 
         .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12086_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n14117), .B(n14244), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    PFUMX i11319 (.BLUT(n12046), .ALUT(n12047), .C0(rom_addr[5]), .Z(n12050));
    LUT4 i11690_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14420)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11690_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 address_11__I_0_Mux_0_i221_3_lut_4_lut (.A(n15498), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n205), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i221_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13134 (.D0(n13795), .D1(n13793), .SD(rom_addr[6]), .Z(n13796));
    PFUMX i13132 (.BLUT(n158), .ALUT(n13794), .C0(rom_addr[5]), .Z(n13795));
    PFUMX i13130 (.BLUT(n13792), .ALUT(n13791), .C0(rom_addr[5]), .Z(n13793));
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n15498), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14148), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11286_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(rom_addr[4]), 
         .D(n14307), .Z(n12017)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11286_3_lut_4_lut.init = 16'hf202;
    PFUMX i13372 (.BLUT(n14349), .ALUT(n14350), .C0(rom_addr[0]), .Z(n14351));
    L6MUX21 i12701 (.D0(n13277), .D1(n13275), .SD(rom_addr[6]), .Z(n13278));
    LUT4 i12014_3_lut (.A(n589), .B(n604), .C(rom_addr[4]), .Z(n12034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12014_3_lut.init = 16'hcaca;
    PFUMX i12699 (.BLUT(n13276), .ALUT(n14139), .C0(rom_addr[5]), .Z(n13277));
    PFUMX i11320 (.BLUT(n12048), .ALUT(n12049), .C0(rom_addr[5]), .Z(n12051));
    PFUMX i11324 (.BLUT(n12053), .ALUT(n12054), .C0(rom_addr[5]), .Z(n12055));
    PFUMX i11327 (.BLUT(n12056), .ALUT(n12057), .C0(rom_addr[5]), .Z(n12058));
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n8848)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut_4_lut.init = 16'heff8;
    LUT4 i7309_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_c)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7309_4_lut_4_lut.init = 16'hc700;
    LUT4 i11588_3_lut (.A(n15502), .B(n14220), .C(rom_addr[3]), .Z(n12319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11588_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924), .B(n955), .C(rom_addr[5]), 
         .Z(n956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    L6MUX21 i13096 (.D0(n13756), .D1(n13753), .SD(rom_addr[5]), .Z(n13757));
    PFUMX i12586 (.BLUT(n13106), .ALUT(n13105), .C0(rom_addr[4]), .Z(n13107));
    LUT4 i4885_2_lut_rep_296 (.A(n15518), .B(rom_addr[3]), .Z(n14254)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4885_2_lut_rep_296.init = 16'h8888;
    PFUMX i11329 (.BLUT(n1628), .ALUT(n1659), .C0(rom_addr[5]), .Z(n12060));
    LUT4 i12258_3_lut_4_lut (.A(n14217), .B(n11699), .C(rom_addr[5]), 
         .D(n1565_c), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12258_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13094 (.BLUT(n13755), .ALUT(n13754), .C0(rom_addr[6]), .Z(n13756));
    LUT4 i11732_3_lut (.A(n14368), .B(n1978), .C(rom_addr[5]), .Z(n12463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11732_3_lut.init = 16'hcaca;
    LUT4 i11310_3_lut (.A(n684), .B(n699), .C(rom_addr[4]), .Z(n12041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11310_3_lut.init = 16'hcaca;
    LUT4 i5934_4_lut_4_lut (.A(n15518), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5934_4_lut_4_lut.init = 16'h8505;
    LUT4 i12175_3_lut (.A(n14357), .B(n14388), .C(rom_addr[5]), .Z(n12038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12175_3_lut.init = 16'hcaca;
    PFUMX i13370 (.BLUT(n14346), .ALUT(n14347), .C0(rom_addr[0]), .Z(n14348));
    PFUMX i11333 (.BLUT(n12062), .ALUT(n12063), .C0(rom_addr[5]), .Z(n12064));
    PFUMX i12697 (.BLUT(n13274), .ALUT(n1403), .C0(n14289), .Z(n13275));
    LUT4 i11674_4_lut (.A(rom_addr[5]), .B(n1276), .C(rom_addr[6]), .D(n11747), 
         .Z(n12405)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11674_4_lut.init = 16'hcac0;
    LUT4 i7499_2_lut_rep_200_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14158)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7499_2_lut_rep_200_3_lut_4_lut.init = 16'h9000;
    LUT4 i11673_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n6429), 
         .Z(n12404)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11673_4_lut.init = 16'h0aca;
    LUT4 i12318_3_lut (.A(n13333), .B(n12402), .C(rom_addr[7]), .Z(n12403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12318_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_188_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14146)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_188_3_lut_4_lut.init = 16'h0f1e;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11668_4_lut (.A(n12239), .B(rom_addr[0]), .C(rom_addr[6]), .D(n3155), 
         .Z(n12399)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11668_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557), .B(n1483), .C(rom_addr[4]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    PFUMX i11336 (.BLUT(n12065), .ALUT(n12066), .C0(rom_addr[5]), .Z(n12067));
    PFUMX i13368 (.BLUT(n14343), .ALUT(n14344), .C0(n15518), .Z(n14345));
    LUT4 i11661_4_lut (.A(n14400), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n12392)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11661_4_lut.init = 16'hcac0;
    PFUMX i11345 (.BLUT(n12074), .ALUT(n12075), .C0(rom_addr[5]), .Z(n12076));
    PFUMX i13092 (.BLUT(n5845), .ALUT(n13752), .C0(rom_addr[6]), .Z(n13753));
    PFUMX i11350 (.BLUT(n12077), .ALUT(n12078), .C0(rom_addr[5]), .Z(n12081));
    LUT4 i11666_3_lut (.A(n12395), .B(n12396), .C(rom_addr[7]), .Z(n12397)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11666_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), 
         .C(rom_addr[4]), .D(n2204), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_161_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14119)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_161_3_lut_4_lut.init = 16'h8000;
    PFUMX i11351 (.BLUT(n12079), .ALUT(n12080), .C0(rom_addr[5]), .Z(n12082));
    PFUMX i11355 (.BLUT(n12084), .ALUT(n12085), .C0(rom_addr[5]), .Z(n12086));
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158_adj_1), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12388_2_lut_rep_334 (.A(rom_addr[0]), .B(n15518), .Z(n14292)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12388_2_lut_rep_334.init = 16'h9999;
    LUT4 n11731_bdd_3_lut_4_lut (.A(n14287), .B(n14207), .C(rom_addr[5]), 
         .D(n2141), .Z(n13727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n11731_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_217_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14175)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_217_3_lut.init = 16'h8080;
    PFUMX i11358 (.BLUT(n12087), .ALUT(n12088), .C0(rom_addr[5]), .Z(n12089));
    PFUMX i13425 (.BLUT(n14428), .ALUT(n14429), .C0(rom_addr[4]), .Z(n14430));
    LUT4 i12298_3_lut (.A(n13475), .B(n2173_c), .C(rom_addr[6]), .Z(n12347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12298_3_lut.init = 16'hcaca;
    LUT4 i11621_3_lut (.A(n12349), .B(n12350), .C(rom_addr[7]), .Z(n12352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11621_3_lut.init = 16'hcaca;
    LUT4 i12070_3_lut (.A(n12306), .B(n12307), .C(rom_addr[4]), .Z(n12308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12070_3_lut.init = 16'hcaca;
    PFUMX i13364 (.BLUT(n14336), .ALUT(n14337), .C0(n14303), .Z(n14338));
    LUT4 i12384_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n12697)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12384_2_lut.init = 16'h9999;
    LUT4 i5942_3_lut (.A(n6884), .B(n15498), .C(rom_addr[3]), .Z(n6885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5942_3_lut.init = 16'hcaca;
    PFUMX i11364 (.BLUT(n12093), .ALUT(n12094), .C0(rom_addr[5]), .Z(n12095));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11370 (.BLUT(n12099), .ALUT(n12100), .C0(rom_addr[5]), .Z(n12101));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14289), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i14113 (.BLUT(n15507), .ALUT(n15508), .C0(rom_addr[1]), .Z(n15509));
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428), .B(n443), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i6082_2_lut_rep_325 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n14283)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6082_2_lut_rep_325.init = 16'h8888;
    LUT4 i5248_4_lut (.A(rom_addr[4]), .B(n14121), .C(rom_addr[5]), .D(n14252), 
         .Z(n6188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5248_4_lut.init = 16'hcfca;
    LUT4 i11471_3_lut (.A(n12135), .B(n13111), .C(rom_addr[6]), .Z(n12202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11471_3_lut.init = 16'hcaca;
    LUT4 i2998_4_lut (.A(n15518), .B(n14214), .C(rom_addr[5]), .D(n14196), 
         .Z(n3911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2998_4_lut.init = 16'hcfca;
    PFUMX i11379 (.BLUT(n12108), .ALUT(n12109), .C0(rom_addr[5]), .Z(n12110));
    PFUMX i11382 (.BLUT(n12111), .ALUT(n12112), .C0(rom_addr[5]), .Z(n12113));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_553), .ALUT(n11710), 
          .C0(rom_addr[5]), .Z(n956_adj_554)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11385 (.BLUT(n12114), .ALUT(n12115), .C0(rom_addr[5]), .Z(n12116));
    LUT4 i11718_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(rom_addr[4]), 
         .D(n14167), .Z(n12449)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11718_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n11948), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n1340_bdd_3_lut_12892_4_lut (.A(rom_addr[0]), .B(n14154), .C(rom_addr[4]), 
         .D(n14209), .Z(n13527)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_12892_4_lut.init = 16'h1f10;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380), .C0(n14289), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i13423 (.BLUT(n14425), .ALUT(n14232), .C0(rom_addr[4]), .Z(n14427));
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n12125), .ALUT(n6852), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i1_2_lut_rep_243_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14201)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_243_3_lut.init = 16'h0808;
    PFUMX i13362 (.BLUT(n14332), .ALUT(n14333), .C0(rom_addr[2]), .Z(n14334));
    L6MUX21 i12679 (.D0(n13246), .D1(n13244), .SD(rom_addr[6]), .Z(n13247));
    LUT4 i11315_3_lut_4_lut (.A(rom_addr[0]), .B(n14154), .C(rom_addr[4]), 
         .D(n1435), .Z(n12046)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11315_3_lut_4_lut.init = 16'hf101;
    LUT4 i11457_3_lut (.A(n12175), .B(n12176), .C(rom_addr[7]), .Z(n12188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11457_3_lut.init = 16'hcaca;
    PFUMX i11391 (.BLUT(n12120), .ALUT(n12121), .C0(rom_addr[5]), .Z(n12122));
    LUT4 i11455_3_lut (.A(n12171), .B(n12172), .C(rom_addr[7]), .Z(n12186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11455_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14230), .Z(n61)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61_adj_555), .ALUT(n62), .C0(n11948), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14228), .Z(n2009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12263), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11499 (.D0(n12228), .D1(n12229), .SD(rom_addr[10]), .Z(n12230));
    LUT4 i11454_3_lut (.A(n12169), .B(n13796), .C(rom_addr[7]), .Z(n12185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11454_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435), .B(n15502), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    L6MUX21 i11768 (.D0(n12497), .D1(n12498), .SD(rom_addr[10]), .Z(n12499));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299_adj_556), 
          .C0(rom_addr[5]), .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11799 (.D0(n12528), .D1(n12529), .SD(rom_addr[10]), .Z(n12530));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11463_3_lut (.A(n12187), .B(n12188), .C(rom_addr[8]), .Z(n12194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11463_3_lut.init = 16'hcaca;
    LUT4 i7287_2_lut_rep_173_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14131)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7287_2_lut_rep_173_3_lut_4_lut.init = 16'h0080;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12556), .ALUT(n4094_adj_3), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11404 (.BLUT(n12133), .ALUT(n12134), .C0(rom_addr[5]), .Z(n12135));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786), .C0(rom_addr[5]), 
          .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11468 (.D0(n12197), .D1(n12198), .SD(rom_addr[10]), .Z(n12199));
    PFUMX i11498 (.BLUT(n12226), .ALUT(n12227), .C0(rom_addr[9]), .Z(n12229));
    PFUMX i12677 (.BLUT(n13245), .ALUT(n11747), .C0(rom_addr[5]), .Z(n13246));
    L6MUX21 i11531 (.D0(n12259), .D1(n12260), .SD(rom_addr[9]), .Z(n12262));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_559), .ALUT(n1530_adj_4), 
          .C0(n14289), .Z(n1531_adj_561)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11217_1_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n11948)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11217_1_lut_2_lut.init = 16'h7777;
    PFUMX i11767 (.BLUT(n12495), .ALUT(n12496), .C0(rom_addr[9]), .Z(n12498));
    PFUMX i11328 (.BLUT(n1565), .ALUT(n1596), .C0(rom_addr[5]), .Z(n12059));
    L6MUX21 i11797 (.D0(n12524), .D1(n12525), .SD(rom_addr[9]), .Z(n12528));
    L6MUX21 i11798 (.D0(n12526), .D1(n12527), .SD(rom_addr[9]), .Z(n12529));
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12675 (.BLUT(n13243), .ALUT(n13242), .C0(rom_addr[5]), .Z(n13244));
    PFUMX i13054 (.BLUT(n13708), .ALUT(n13707), .C0(rom_addr[6]), .Z(n13709));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860_adj_563), 
          .C0(n14274), .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11467 (.BLUT(n12195), .ALUT(n12196), .C0(rom_addr[9]), .Z(n12198));
    PFUMX i11497 (.BLUT(n12224), .ALUT(n12225), .C0(rom_addr[9]), .Z(n12228));
    PFUMX i13421 (.BLUT(n14422), .ALUT(n14423), .C0(rom_addr[0]), .Z(n14424));
    LUT4 i11689_3_lut (.A(n12418), .B(n12419), .C(rom_addr[7]), .Z(n12420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11689_3_lut.init = 16'hcaca;
    PFUMX i11528 (.BLUT(n12253), .ALUT(n12254), .C0(rom_addr[8]), .Z(n12259));
    PFUMX i11530 (.BLUT(n12257), .ALUT(n12258), .C0(rom_addr[9]), .Z(n12261));
    PFUMX i13419 (.BLUT(n14419), .ALUT(n14420), .C0(rom_addr[0]), .Z(n14421));
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_5), .C0(n14289), 
          .Z(n829_adj_565)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11595 (.BLUT(n12324), .ALUT(n12325), .C0(rom_addr[9]), .Z(n12326));
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n14270), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11622 (.BLUT(n12351), .ALUT(n12352), .C0(rom_addr[8]), .Z(n12353));
    PFUMX i11766 (.BLUT(n12493), .ALUT(n12494), .C0(rom_addr[9]), .Z(n12497));
    PFUMX i11419 (.BLUT(n12148), .ALUT(n12149), .C0(rom_addr[5]), .Z(n12150));
    PFUMX i11793 (.BLUT(n12516), .ALUT(n12517), .C0(rom_addr[8]), .Z(n12524));
    PFUMX i11794 (.BLUT(n12518), .ALUT(n12519), .C0(rom_addr[8]), .Z(n12525));
    PFUMX i11795 (.BLUT(n12520), .ALUT(n12521), .C0(rom_addr[8]), .Z(n12526));
    LUT4 n13706_bdd_3_lut (.A(n13706), .B(n1275), .C(rom_addr[5]), .Z(n13707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13706_bdd_3_lut.init = 16'hcaca;
    PFUMX i11422 (.BLUT(n12151), .ALUT(n12152), .C0(rom_addr[5]), .Z(n12153));
    PFUMX i11796 (.BLUT(n12522), .ALUT(n12523), .C0(rom_addr[8]), .Z(n12527));
    PFUMX i11425 (.BLUT(n12154), .ALUT(n12155), .C0(rom_addr[5]), .Z(n12156));
    L6MUX21 i11823 (.D0(n12550), .D1(n12551), .SD(rom_addr[9]), .Z(n12554));
    PFUMX i11428 (.BLUT(n12157), .ALUT(n12158), .C0(rom_addr[5]), .Z(n12159));
    PFUMX i11824 (.BLUT(n12552), .ALUT(n12553), .C0(rom_addr[9]), .Z(n12555));
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12370), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12363), .ALUT(n3069_adj_566), 
          .C0(rom_addr[9]), .Z(n3070_adj_567)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11594_3_lut (.A(n12430), .B(n12437), .C(rom_addr[8]), .Z(n12325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11594_3_lut.init = 16'hcaca;
    LUT4 i4542_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5455)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4542_3_lut_4_lut_4_lut_4_lut.init = 16'hf6d6;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12339), .ALUT(n3069_adj_568), 
          .C0(rom_addr[9]), .Z(n3070_adj_569)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14267), .Z(n11718)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0018;
    PFUMX i11437 (.BLUT(n12166), .ALUT(n12167), .C0(rom_addr[5]), .Z(n12168));
    LUT4 n1403_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13274)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1403_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h8101;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n14154), 
         .C(n14185), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    LUT4 i11749_3_lut_4_lut (.A(rom_addr[0]), .B(n14154), .C(rom_addr[4]), 
         .D(n14209), .Z(n12480)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11749_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut (.A(n15518), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1069)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h1418;
    PFUMX i11466 (.BLUT(n12193), .ALUT(n12194), .C0(rom_addr[9]), .Z(n12197));
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_570)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0430;
    LUT4 i7344_2_lut_rep_177_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14135)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7344_2_lut_rep_177_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    LUT4 i11301_3_lut (.A(n557_adj_571), .B(n526), .C(rom_addr[4]), .Z(n12032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11301_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(n15518), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n11841)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 i5882_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), .C(rom_addr[5]), 
         .D(n2522), .Z(n6825)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5882_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h5211;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n557_adj_571)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h8a11;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n15518), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2283_adj_572)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h2811;
    LUT4 n2545_bdd_3_lut_13297_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13973)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2545_bdd_3_lut_13297_3_lut_4_lut_4_lut.init = 16'h6811;
    LUT4 i11728_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), .C(rom_addr[4]), 
         .D(n2522), .Z(n12459)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11728_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut (.A(n15518), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hc181;
    LUT4 i11590_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), .C(rom_addr[4]), 
         .D(n2573), .Z(n12321)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11590_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11569_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), .C(rom_addr[4]), 
         .D(n14247), .Z(n12300)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11569_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_c)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut.init = 16'h8809;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_573)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), 
         .C(rom_addr[4]), .D(n2444_adj_574), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11095_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11095_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h2422;
    PFUMX i11529 (.BLUT(n12255), .ALUT(n12256), .C0(rom_addr[8]), .Z(n12260));
    PFUMX i13052 (.BLUT(n1785), .ALUT(n13705), .C0(rom_addr[4]), .Z(n13706));
    PFUMX i11598 (.BLUT(n12327), .ALUT(n12328), .C0(rom_addr[8]), .Z(n12329));
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n301)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h4224;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11601 (.BLUT(n12330), .ALUT(n12331), .C0(rom_addr[8]), .Z(n12332));
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1612)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h4042;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n61_adj_555)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h0424;
    LUT4 i11561_3_lut_4_lut (.A(rom_addr[0]), .B(n14201), .C(rom_addr[4]), 
         .D(n2298_adj_575), .Z(n12292)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11561_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    LUT4 i11669_3_lut (.A(n12398), .B(n12399), .C(rom_addr[7]), .Z(n12400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11669_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut_adj_10 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut_adj_10.init = 16'h0104;
    LUT4 n1196_bdd_3_lut_13327_4_lut (.A(rom_addr[0]), .B(n14205), .C(rom_addr[4]), 
         .D(n1196), .Z(n13871)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1196_bdd_3_lut_13327_4_lut.init = 16'h8f80;
    PFUMX i11615 (.BLUT(n12344), .ALUT(n12345), .C0(rom_addr[8]), .Z(n12346));
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n364_adj_576)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h4241;
    PFUMX i11819 (.BLUT(n12394), .ALUT(n12397), .C0(rom_addr[8]), .Z(n12550));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    L6MUX21 i11736 (.D0(n12465), .D1(n12466), .SD(rom_addr[7]), .Z(n12467));
    LUT4 i11716_3_lut (.A(n13531), .B(n12446), .C(rom_addr[7]), .Z(n12447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11716_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94), .ALUT(n11715), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut (.A(n14173), .B(n14292), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n1483_adj_577)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut.init = 16'hcafa;
    PFUMX i11820 (.BLUT(n12400), .ALUT(n12403), .C0(rom_addr[8]), .Z(n12551));
    LUT4 i11363_3_lut_4_lut (.A(n15501), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n12094)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11363_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11283_3_lut_4_lut (.A(n15501), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14163), .Z(n12014)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11283_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n15501), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054_adj_578)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5259_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n6128)) /* synthesis lut_function=(A+(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5259_4_lut_4_lut.init = 16'hebba;
    LUT4 i7316_2_lut_4_lut_4_lut (.A(n14225), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n14222), .Z(n1851_adj_579)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7316_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 i7547_4_lut (.A(rom_addr[0]), .B(n14225), .C(n14189), .D(rom_addr[4]), 
         .Z(n1117_adj_580)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7547_4_lut.init = 16'h0a22;
    LUT4 n6830_bdd_4_lut (.A(n6830), .B(rom_addr[4]), .C(n13540), .D(rom_addr[0]), 
         .Z(n14090)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n6830_bdd_4_lut.init = 16'hf011;
    LUT4 i7345_4_lut_4_lut (.A(rom_addr[0]), .B(n15518), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7345_4_lut_4_lut.init = 16'h2880;
    LUT4 n5061_bdd_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13639)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n5061_bdd_2_lut_4_lut_4_lut.init = 16'h6100;
    LUT4 i7599_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7599_4_lut_4_lut.init = 16'hf8f6;
    L6MUX21 i11458 (.D0(n12177), .D1(n12178), .SD(rom_addr[7]), .Z(n12189));
    L6MUX21 i11461 (.D0(n12183), .D1(n12184), .SD(rom_addr[7]), .Z(n12192));
    LUT4 n2545_bdd_2_lut_13296_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13972)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2545_bdd_2_lut_13296_4_lut_4_lut.init = 16'h1800;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'h4023;
    LUT4 i3071_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[5]), .Z(n5987)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3071_3_lut_4_lut_4_lut_4_lut.init = 16'heffd;
    LUT4 n1898_bdd_3_lut_13206_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13666)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1898_bdd_3_lut_13206_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut.init = 16'h0803;
    LUT4 i12024_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n12587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12024_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12326), .B(n3070_adj_569), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_582)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut.init = 16'h400c;
    L6MUX21 i11484 (.D0(n1979), .D1(n12275), .SD(rom_addr[6]), .Z(n12215));
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 n8830_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13301)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n8830_bdd_3_lut_4_lut_4_lut.init = 16'hf7c0;
    L6MUX21 i11485 (.D0(n12200), .D1(n12201), .SD(rom_addr[7]), .Z(n12216));
    PFUMX i11486 (.BLUT(n12202), .ALUT(n12203), .C0(rom_addr[7]), .Z(n12217));
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14211), 
         .C(rom_addr[4]), .D(n14232), .Z(n1596_adj_583)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 i7447_2_lut_rep_355 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14313)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7447_2_lut_rep_355.init = 16'h4040;
    LUT4 address_11__I_0_Mux_5_i2204_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2204)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_5_i2204_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut (.A(n14173), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14134), .Z(n1820)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 i11348_3_lut_4_lut (.A(n14173), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_570), .Z(n12079)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11348_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14173), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_584), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i11855_3_lut (.A(n2009_adj_585), .B(n954), .C(rom_addr[4]), .Z(n12586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11855_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1962_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1962)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1962_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 i11916_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n12601)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11916_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    L6MUX21 i11491 (.D0(n12212), .D1(n12213), .SD(rom_addr[7]), .Z(n12222));
    L6MUX21 i11520 (.D0(n12543), .D1(n12569), .SD(rom_addr[7]), .Z(n12251));
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 n122_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n122_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i7604_4_lut_4_lut_4_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n6884)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7604_4_lut_4_lut_4_lut.init = 16'h2100;
    LUT4 i11854_3_lut (.A(n908), .B(n491), .C(rom_addr[4]), .Z(n12585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11854_3_lut.init = 16'hcaca;
    L6MUX21 i11521 (.D0(n12578), .D1(n12591), .SD(rom_addr[7]), .Z(n12252));
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396_adj_586)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n12499), .B(n3070_adj_587), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12346), .B(n2685), .C(rom_addr[9]), 
         .D(n14321), .Z(n3070_adj_587)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    PFUMX i11574 (.BLUT(n12303), .ALUT(n12304), .C0(rom_addr[4]), .Z(n12305));
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 n12282_bdd_3_lut_13323 (.A(n12282), .B(n12283), .C(rom_addr[4]), 
         .Z(n13869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12282_bdd_3_lut_13323.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2685_3_lut (.A(n13975), .B(n2684), .C(rom_addr[6]), 
         .Z(n2685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2685_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986_adj_588)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 address_11__I_0_Mux_0_i78_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n78)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i78_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 n1340_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13634)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_180_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14138)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i379_3_lut_3_lut_rep_180_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i668_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    L6MUX21 i11607 (.D0(n12335), .D1(n12336), .SD(rom_addr[7]), .Z(n12338));
    L6MUX21 i11618 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n12349));
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_589)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 i11671_4_lut (.A(n12248), .B(rom_addr[0]), .C(rom_addr[6]), .D(n14345), 
         .Z(n12402)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11671_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n15499), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 i5879_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8816)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5879_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n13571), 
         .C(rom_addr[7]), .D(n4035), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n15499), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_590), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n15499), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14158), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11631 (.D0(n12359), .D1(n12360), .SD(rom_addr[7]), .Z(n12362));
    LUT4 i11357_3_lut_4_lut (.A(n14228), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1962), .Z(n12088)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11357_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_591)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 i11343_3_lut_4_lut (.A(n14228), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435_adj_592), .Z(n12074)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11343_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_593)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut_4_lut.init = 16'h4880;
    L6MUX21 i11637 (.D0(n12364), .D1(n12365), .SD(rom_addr[7]), .Z(n12368));
    L6MUX21 i11659 (.D0(n12387), .D1(n12388), .SD(rom_addr[7]), .Z(n12390));
    LUT4 i11848_3_lut_4_lut (.A(n14228), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14142), .Z(n12579)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11848_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_559)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14228), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 i11341_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n12072)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11341_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut.init = 16'h40b0;
    LUT4 address_11__I_0_Mux_0_i589_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n589_adj_594)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i589_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 i11291_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n14364), .Z(n12022)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11291_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12530), .B(n3070_adj_595), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_596), .B(n1914), 
         .C(rom_addr[5]), .Z(n1915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    PFUMX i11675 (.BLUT(n12404), .ALUT(n12405), .C0(rom_addr[7]), .Z(n12406));
    PFUMX i11580 (.BLUT(n12309), .ALUT(n12310), .C0(rom_addr[4]), .Z(n12311));
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12353), .B(n2685_adj_597), 
         .C(rom_addr[9]), .D(n14321), .Z(n3070_adj_595)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n12018), .B(n14415), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685_adj_597)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    LUT4 i11843_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n1835), .Z(n12574)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11843_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428_adj_598)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    L6MUX21 i11682 (.D0(n12411), .D1(n12412), .SD(rom_addr[7]), .Z(n12413));
    L6MUX21 i11699 (.D0(n12428), .D1(n12429), .SD(rom_addr[7]), .Z(n12430));
    L6MUX21 i11706 (.D0(n12435), .D1(n12436), .SD(rom_addr[7]), .Z(n12437));
    LUT4 i12032_3_lut (.A(n12354), .B(n12355), .C(rom_addr[4]), .Z(n12356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12032_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    L6MUX21 i11709 (.D0(n12438), .D1(n12439), .SD(rom_addr[7]), .Z(n12440));
    LUT4 n212_bdd_3_lut_12617_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13138)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n212_bdd_3_lut_12617_4_lut_4_lut.init = 16'hc020;
    PFUMX i11586 (.BLUT(n12315), .ALUT(n12316), .C0(rom_addr[4]), .Z(n12317));
    LUT4 i12034_3_lut (.A(n1228_c), .B(n1243), .C(rom_addr[4]), .Z(n12573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12034_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), 
         .C(rom_addr[4]), .D(n1435_adj_599), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    PFUMX i11735 (.BLUT(n12463), .ALUT(n12464), .C0(rom_addr[6]), .Z(n12466));
    LUT4 n4839_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13433)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n4839_bdd_3_lut_4_lut_4_lut.init = 16'h2006;
    LUT4 i11765_3_lut (.A(n12457), .B(n12467), .C(rom_addr[8]), .Z(n12496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11765_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12199), .B(n3070_adj_567), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    LUT4 n1657_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13106)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_4_lut_4_lut.init = 16'h0409;
    LUT4 address_11__I_0_Mux_0_i412_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460_adj_600)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i412_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_601)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 address_11__I_0_Mux_5_i491_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i491_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    L6MUX21 i11769 (.D0(n63_adj_602), .D1(n12489), .SD(rom_addr[6]), .Z(n12500));
    LUT4 n212_bdd_3_lut_12610_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13137)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n212_bdd_3_lut_12610_4_lut_4_lut.init = 16'h043f;
    LUT4 i4327_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n5240)) /* synthesis lut_function=(A (B+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4327_3_lut_4_lut_4_lut.init = 16'hd8fe;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12230), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    L6MUX21 i11771 (.D0(n12536), .D1(n381_adj_603), .SD(rom_addr[6]), 
            .Z(n12502));
    LUT4 i3542_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4455)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3542_3_lut_4_lut_4_lut.init = 16'hd6fe;
    PFUMX i11776 (.BLUT(n956), .ALUT(n1019), .C0(rom_addr[6]), .Z(n12507));
    PFUMX i11589 (.BLUT(n12318), .ALUT(n12319), .C0(rom_addr[4]), .Z(n12320));
    LUT4 i2936_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n3849)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2936_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i7439_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i7439_4_lut_4_lut_4_lut.init = 16'h8400;
    L6MUX21 i11780 (.D0(n1468), .D1(n1531_adj_561), .SD(rom_addr[6]), 
            .Z(n12511));
    LUT4 i7382_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7382_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 n1657_bdd_3_lut_12585_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13105)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_12585_4_lut_4_lut.init = 16'h2c41;
    L6MUX21 i11782 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n12513));
    L6MUX21 i11290 (.D0(n12019), .D1(n12020), .SD(rom_addr[6]), .Z(n12021));
    PFUMX i9687 (.BLUT(n12601), .ALUT(n12602), .C0(rom_addr[5]), .Z(n8361));
    LUT4 i11624_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12355)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11624_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 n549_bdd_4_lut_13259_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13473)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_13259_4_lut.init = 16'h9080;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283_adj_551)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut.init = 16'hb002;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut_4_lut.init = 16'h4802;
    LUT4 i11551_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12282)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11551_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 i11405_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12136)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11405_3_lut_4_lut_4_lut.init = 16'h0294;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut_4_lut.init = 16'h0209;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14230), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n15499), .Z(n1755_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 i5921_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n6864)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5921_3_lut_4_lut_4_lut.init = 16'h10c0;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1946)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut_4_lut.init = 16'h0704;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n13734), .C(n2589), 
         .D(rom_addr[6]), .Z(n15495)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 address_11__I_0_Mux_2_i844_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n844)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i844_3_lut_4_lut_4_lut.init = 16'hf82a;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_6)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut.init = 16'hf813;
    LUT4 n269_bdd_3_lut_13072_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13620)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n269_bdd_3_lut_13072_4_lut_4_lut.init = 16'hc807;
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14269), 
         .D(rom_addr[4]), .Z(n11710)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 i11340_4_lut_4_lut (.A(n14230), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1835), .Z(n12071)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i11340_4_lut_4_lut.init = 16'hdfd0;
    LUT4 address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_372 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n15497)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i262_3_lut_3_lut_rep_372.init = 16'h1c1c;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i954_3_lut_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n14230), .B(rom_addr[3]), 
         .C(n14173), .D(rom_addr[4]), .Z(n1403_adj_606)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 address_11__I_0_Mux_3_i1404_3_lut_4_lut (.A(rom_addr[0]), .B(n14214), 
         .C(rom_addr[5]), .D(n1403_adj_607), .Z(n1404)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i1404_3_lut_4_lut.init = 16'hf101;
    LUT4 n13895_bdd_3_lut (.A(n14384), .B(n14430), .C(rom_addr[6]), .Z(n13896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13895_bdd_3_lut.init = 16'hcaca;
    LUT4 i11306_3_lut_4_lut (.A(rom_addr[0]), .B(n14214), .C(rom_addr[5]), 
         .D(n1309), .Z(n12037)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11306_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11684_3_lut_4_lut (.A(rom_addr[0]), .B(n14214), .C(rom_addr[5]), 
         .D(n1403_adj_606), .Z(n12415)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11684_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i11446 (.D0(n12058), .D1(n1149_adj_608), .SD(rom_addr[6]), 
            .Z(n12177));
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860), .ALUT(n893), .C0(n11943), 
          .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11683_3_lut_4_lut (.A(rom_addr[0]), .B(n14214), .C(rom_addr[5]), 
         .D(n1309_adj_609), .Z(n12414)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11683_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11852_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[4]), 
         .D(n1962), .Z(n12583)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11852_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11829_3_lut (.A(n6845), .B(n668), .C(rom_addr[4]), .Z(n12560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11829_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_610)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i11534_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[4]), 
         .D(n14369), .Z(n12265)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11534_3_lut_4_lut.init = 16'hf202;
    LUT4 n1676_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[5]), 
         .D(n14205), .Z(n13850)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1676_bdd_3_lut_4_lut_4_lut.init = 16'h2a20;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14218), 
         .C(rom_addr[4]), .D(n14154), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 i11640_3_lut_4_lut (.A(rom_addr[0]), .B(n14183), .C(rom_addr[4]), 
         .D(n2204), .Z(n12371)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11640_3_lut_4_lut.init = 16'hf808;
    LUT4 i11817_3_lut (.A(n557), .B(n572), .C(rom_addr[4]), .Z(n12548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11817_3_lut.init = 16'hcaca;
    LUT4 i11542_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[4]), 
         .D(n2009), .Z(n12273)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11542_3_lut_4_lut.init = 16'hf202;
    PFUMX i13417 (.BLUT(n14416), .ALUT(n14417), .C0(rom_addr[0]), .Z(n14418));
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n11939), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11816_4_lut (.A(n14262), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n12547)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11816_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), 
         .C(rom_addr[5]), .D(n1676_adj_611), .Z(n1692)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11730_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[5]), 
         .D(n1851_adj_612), .Z(n12461)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11730_3_lut_4_lut.init = 16'hf202;
    LUT4 i11677_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[5]), 
         .D(n1914_adj_613), .Z(n12408)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11677_3_lut_4_lut.init = 16'hf202;
    LUT4 i11643_3_lut_4_lut (.A(rom_addr[0]), .B(n14219), .C(rom_addr[4]), 
         .D(n2588), .Z(n12374)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11643_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11344_3_lut_4_lut (.A(rom_addr[0]), .B(n14219), .C(rom_addr[4]), 
         .D(n1466_adj_614), .Z(n12075)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11344_3_lut_4_lut.init = 16'hf202;
    LUT4 i11641_3_lut_4_lut (.A(rom_addr[0]), .B(n14219), .C(rom_addr[4]), 
         .D(n2444_adj_582), .Z(n12372)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11641_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11809_3_lut (.A(n620), .B(n541_adj_615), .C(rom_addr[4]), .Z(n12540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11809_3_lut.init = 16'hcaca;
    LUT4 i11512_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n5286), 
         .D(n14313), .Z(n12243)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11512_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14219), 
         .C(rom_addr[5]), .D(n14218), .Z(n1692_adj_616)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 i11808_3_lut (.A(n491_adj_617), .B(n604_adj_591), .C(rom_addr[4]), 
         .Z(n12539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11808_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14219), 
         .C(n5455), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14219), 
         .C(rom_addr[5]), .D(n1786_adj_610), .Z(n1787_adj_618)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 n2267_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), .C(rom_addr[4]), 
         .D(n2204), .Z(n13848)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2267_bdd_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11450 (.D0(n1597_adj_619), .D1(n12086), .SD(rom_addr[6]), 
            .Z(n12181));
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), 
         .C(rom_addr[4]), .D(n1898), .Z(n1914_adj_613)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11354_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), .C(rom_addr[4]), 
         .D(n1658), .Z(n12085)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11354_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), 
         .C(rom_addr[4]), .D(n2009_adj_620), .Z(n2010_adj_621)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), 
         .C(rom_addr[4]), .D(n14232), .Z(n1820_adj_622)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), 
         .C(rom_addr[4]), .D(n1529_c), .Z(n1530_adj_623)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14189), 
         .C(rom_addr[4]), .D(n1612), .Z(n1628_adj_624)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i11452 (.D0(n1852), .D1(n1915_adj_625), .SD(rom_addr[6]), 
            .Z(n12183));
    LUT4 i11806_3_lut (.A(n526_adj_626), .B(n443_adj_627), .C(rom_addr[4]), 
         .Z(n12537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11806_3_lut.init = 16'hcaca;
    LUT4 i11513_3_lut_4_lut (.A(rom_addr[0]), .B(n14222), .C(rom_addr[4]), 
         .D(n1084_c), .Z(n12244)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11513_3_lut_4_lut.init = 16'hf808;
    PFUMX i11708 (.BLUT(n11745), .ALUT(n10439), .C0(rom_addr[6]), .Z(n12439));
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n6813), .C0(n11929), 
          .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), 
         .C(rom_addr[4]), .D(n14209), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 n158_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n668), .Z(n13794)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n158_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i11549_3_lut_4_lut (.A(rom_addr[0]), .B(n14189), .C(rom_addr[4]), 
         .D(n14135), .Z(n12280)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11549_3_lut_4_lut.init = 16'hf101;
    PFUMX i11813 (.BLUT(n397), .ALUT(n6843), .C0(rom_addr[4]), .Z(n12544));
    LUT4 n2332_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n2332), .Z(n13668)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11383_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n14335), .Z(n12114)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11383_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11750_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n2283_adj_628), .Z(n12481)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11750_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i1978_3_lut_rep_138_4_lut (.A(rom_addr[0]), 
         .B(n14225), .C(rom_addr[4]), .D(n14138), .Z(n14096)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1978_3_lut_rep_138_4_lut.init = 16'hf202;
    LUT4 i11282_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n2009_adj_585), .Z(n12013)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11282_3_lut_4_lut.init = 16'hf202;
    LUT4 i11752_3_lut (.A(n428), .B(n251), .C(rom_addr[4]), .Z(n12483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11752_3_lut.init = 16'hcaca;
    LUT4 i11756_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n78_adj_629), .Z(n12487)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11756_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11516_3_lut_4_lut (.A(rom_addr[0]), .B(n14225), .C(rom_addr[4]), 
         .D(n939), .Z(n12247)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11516_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11814 (.BLUT(n428_adj_630), .ALUT(n443_adj_631), .C0(rom_addr[4]), 
          .Z(n12545));
    LUT4 i11309_3_lut_4_lut (.A(n14220), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_632), .Z(n12040)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11309_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11832_3_lut_4_lut (.A(n14220), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_633), .Z(n12563)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11832_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7333_2_lut_4_lut (.A(n14143), .B(n14128), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7333_2_lut_4_lut.init = 16'hca00;
    LUT4 i11751_3_lut (.A(n589_adj_594), .B(n220), .C(rom_addr[4]), .Z(n12482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11751_3_lut.init = 16'hcaca;
    L6MUX21 i11456 (.D0(n12173), .D1(n12174), .SD(rom_addr[7]), .Z(n12187));
    LUT4 i7286_4_lut_4_lut (.A(n14120), .B(rom_addr[5]), .C(n10444), .D(rom_addr[0]), 
         .Z(n2492)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i7286_4_lut_4_lut.init = 16'h7400;
    LUT4 i11418_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), .C(rom_addr[4]), 
         .D(n443), .Z(n12149)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11418_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11826 (.BLUT(n589_adj_634), .ALUT(n604_adj_635), .C0(rom_addr[4]), 
          .Z(n12557));
    LUT4 i5_4_lut_4_lut (.A(rom_addr[0]), .B(n14242), .C(n14305), .D(rom_addr[4]), 
         .Z(n1)) /* synthesis lut_function=(!(A (B+(D))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5_4_lut_4_lut.init = 16'h5022;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), 
         .C(rom_addr[4]), .D(n14232), .Z(n2141_adj_636)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13019 (.BLUT(n13669), .ALUT(n2427), .C0(rom_addr[6]), .Z(n13670));
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), 
         .C(rom_addr[4]), .D(n2140), .Z(n2620)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut.init = 16'hf202;
    LUT4 i11323_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), .C(rom_addr[4]), 
         .D(n890), .Z(n12054)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11323_3_lut_4_lut.init = 16'hf202;
    LUT4 i11857_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), .C(rom_addr[4]), 
         .D(n1002), .Z(n12588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11857_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n14242), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf202;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[4]), .B(n14242), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n2684)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    L6MUX21 i11480 (.D0(n12266), .D1(n12269), .SD(rom_addr[6]), .Z(n12211));
    LUT4 i7274_4_lut (.A(rom_addr[0]), .B(n14177), .C(n14218), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7274_4_lut.init = 16'h0a22;
    PFUMX i11481 (.BLUT(n1597), .ALUT(n1660), .C0(rom_addr[6]), .Z(n12212));
    LUT4 i11317_3_lut_4_lut (.A(n14230), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_577), .Z(n12048)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i11317_3_lut_4_lut.init = 16'h9f90;
    LUT4 i11380_3_lut_4_lut (.A(rom_addr[1]), .B(n14247), .C(rom_addr[4]), 
         .D(n30), .Z(n12111)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11380_3_lut_4_lut.init = 16'hf808;
    PFUMX i11482 (.BLUT(n1724_adj_637), .ALUT(n1787_adj_618), .C0(rom_addr[6]), 
          .Z(n12213));
    LUT4 i7348_4_lut_4_lut (.A(n14218), .B(rom_addr[4]), .C(n4523), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7348_4_lut_4_lut.init = 16'h7400;
    PFUMX i11827 (.BLUT(n620_adj_638), .ALUT(n635_adj_639), .C0(rom_addr[4]), 
          .Z(n12558));
    PFUMX i11483 (.BLUT(n1852_adj_640), .ALUT(n1915_adj_641), .C0(rom_addr[6]), 
          .Z(n12214));
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14230), .Z(n1676_adj_642)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14155), .Z(n1243_adj_643)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut.init = 16'h4f40;
    PFUMX i9991 (.BLUT(n10716), .ALUT(n10717), .C0(rom_addr[8]), .Z(n10718));
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14313), .Z(n124_adj_644)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    L6MUX21 i11603 (.D0(n12281), .D1(n12293), .SD(rom_addr[6]), .Z(n12334));
    PFUMX i11604 (.BLUT(n2365_adj_645), .ALUT(n12302), .C0(rom_addr[6]), 
          .Z(n12335));
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14210), .Z(n443_adj_631)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14230), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947_adj_646)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14209), 
         .C(rom_addr[4]), .D(n14178), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14230), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_647), .Z(n1723_adj_648)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14155), .Z(n1435)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14155), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i11605 (.BLUT(n12314), .ALUT(n6826), .C0(rom_addr[6]), .Z(n12336));
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14155), .Z(n2380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hefe0;
    PFUMX i13017 (.BLUT(n13666), .ALUT(n14140), .C0(rom_addr[4]), .Z(n13667));
    LUT4 address_11__I_0_Mux_0_i397_3_lut_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14230), .Z(n205)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i397_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n15503), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14230), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n14120), .B(n3849), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_645)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 n1340_bdd_3_lut_12990_4_lut (.A(n14325), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14143), .Z(n13529)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_12990_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i53_3_lut_rep_373 (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .Z(n15498)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam address_11__I_0_Mux_0_i53_3_lut_rep_373.init = 16'h1818;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n14244), .Z(n1466_adj_614)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n14325), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2140), .Z(n1309_adj_609)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11609 (.BLUT(n2110), .ALUT(n2173_adj_649), .C0(rom_addr[6]), 
          .Z(n12340));
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n15501), .Z(n2283_adj_628)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n15498), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n14178), 
         .C(rom_addr[5]), .D(n2205_adj_650), .Z(n2237)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n14325), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11610 (.D0(n2237_adj_651), .D1(n2300_adj_652), .SD(rom_addr[6]), 
            .Z(n12341));
    LUT4 n6870_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14189), .C(rom_addr[4]), 
         .D(n124_adj_653), .Z(n13575)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6870_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[4]), .D(n14205), .Z(n1676_adj_611)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n15500), .Z(n1691_adj_654)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 n1635_bdd_3_lut_12937_4_lut (.A(rom_addr[0]), .B(n14306), .C(rom_addr[3]), 
         .D(n1834), .Z(n13109)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1635_bdd_3_lut_12937_4_lut.init = 16'hf202;
    PFUMX i11611 (.BLUT(n2365_adj_655), .ALUT(n2428_adj_656), .C0(rom_addr[6]), 
          .Z(n12342));
    LUT4 i12284_3_lut (.A(n2010_adj_621), .B(n14412), .C(rom_addr[5]), 
         .Z(n12464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12284_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_13385 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14364)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13385.init = 16'h0da3;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n14174), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14367)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14366)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(rom_addr[3]), .D(n14224), .Z(n2009_adj_585)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11612 (.D0(n2492_adj_657), .D1(n2555_adj_658), .SD(rom_addr[6]), 
            .Z(n12343));
    LUT4 n1785_bdd_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), .C(rom_addr[3]), 
         .D(n14224), .Z(n13705)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1785_bdd_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14189), 
         .C(rom_addr[4]), .D(n14133), .Z(n1786_adj_659)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    PFUMX i11619 (.BLUT(n2492_adj_660), .ALUT(n2555_adj_661), .C0(rom_addr[6]), 
          .Z(n12350));
    LUT4 i11757_3_lut_4_lut (.A(n14292), .B(n14247), .C(rom_addr[4]), 
         .D(n491), .Z(n12488)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i11757_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_6_i1969_3_lut_rep_374 (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .Z(n15499)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_6_i1969_3_lut_rep_374.init = 16'h8181;
    PFUMX i11628 (.BLUT(n12107), .ALUT(n2428_adj_662), .C0(rom_addr[6]), 
          .Z(n12359));
    LUT4 i2_3_lut_4_lut_adj_11 (.A(rom_addr[0]), .B(n14254), .C(n14277), 
         .D(rom_addr[5]), .Z(n11745)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_11.init = 16'h0004;
    LUT4 i11353_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14254), .C(rom_addr[4]), 
         .D(n14211), .Z(n12084)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;
    defparam i11353_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 rom_addr_0__bdd_4_lut_13396 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14369)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_13396.init = 16'h7002;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14371)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14254), 
         .C(rom_addr[4]), .D(n14222), .Z(n1628)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut (.A(rom_addr[0]), .B(n14254), 
         .C(rom_addr[5]), .D(n12320), .Z(n1660_adj_663)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(n14228), .D(rom_addr[3]), .Z(n428_adj_664)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i12206_3_lut (.A(n1883_c), .B(n1914_adj_665), .C(rom_addr[5]), 
         .Z(n12462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12206_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14370)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h2002;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14313), .Z(n653_adj_632)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(n14174), .D(rom_addr[3]), .Z(n653_adj_633)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_584)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_375 (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .Z(n15500)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_375.init = 16'he8e8;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(n15502), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    PFUMX i11629 (.BLUT(n2492_adj_667), .ALUT(n2555_adj_668), .C0(rom_addr[6]), 
          .Z(n12360));
    LUT4 i7543_2_lut_rep_265_3_lut (.A(n15518), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14223)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7543_2_lut_rep_265_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15497), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n15503), .B(n14247), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_596)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11543_3_lut_4_lut (.A(n15503), .B(n14247), .C(rom_addr[4]), 
         .D(n2040), .Z(n12274)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i11543_3_lut_4_lut.init = 16'hf404;
    LUT4 n221_bdd_3_lut_12968 (.A(n221), .B(n13503), .C(rom_addr[5]), 
         .Z(n13504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_12968.init = 16'hcaca;
    LUT4 n221_bdd_4_lut_13250 (.A(n14101), .B(n6884), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n13505)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n221_bdd_4_lut_13250.init = 16'haac0;
    PFUMX i11633 (.BLUT(n2110_adj_669), .ALUT(n2173), .C0(rom_addr[6]), 
          .Z(n12364));
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14228), .Z(n1483_adj_671)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'h8f80;
    LUT4 n1116_bdd_2_lut_12914_4_lut (.A(rom_addr[2]), .B(n14320), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n13242)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1116_bdd_2_lut_12914_4_lut.init = 16'h8400;
    LUT4 n15045_bdd_3_lut (.A(n15045), .B(n14348), .C(rom_addr[5]), .Z(n15046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15045_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14296), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14325), .Z(n78_adj_629)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11634 (.BLUT(n2237), .ALUT(n12278), .C0(rom_addr[6]), .Z(n12365));
    LUT4 n14348_bdd_4_lut (.A(n1483), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n15045)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n14348_bdd_4_lut.init = 16'haac0;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_642), .B(n1691_adj_654), 
         .C(rom_addr[4]), .Z(n1692_adj_672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1962), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14211), .Z(n1659_adj_673)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    LUT4 n13637_bdd_3_lut_13992 (.A(n13637), .B(n13640), .C(rom_addr[5]), 
         .Z(n15043)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n13637_bdd_3_lut_13992.init = 16'hacac;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14286), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14210), .Z(n61_adj_674)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14287), .B(n14254), 
         .C(rom_addr[4]), .D(n2204), .Z(n2205_adj_650)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 i11833_4_lut_4_lut (.A(n14262), .B(rom_addr[4]), .C(n5607), .D(n684), 
         .Z(n12564)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11833_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i11636 (.D0(n12290), .D1(n2555_c), .SD(rom_addr[6]), .Z(n12367));
    PFUMX i11654 (.BLUT(n12377), .ALUT(n12378), .C0(rom_addr[6]), .Z(n12385));
    LUT4 i7467_2_lut_rep_234_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14192)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7467_2_lut_rep_234_2_lut.init = 16'h4444;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), 
         .C(rom_addr[3]), .D(n14224), .Z(n604_adj_675)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'h404f;
    L6MUX21 i11655 (.D0(n12379), .D1(n12380), .SD(rom_addr[6]), .Z(n12386));
    LUT4 i11717_4_lut (.A(n2444_adj_582), .B(n5968), .C(rom_addr[4]), 
         .D(n14192), .Z(n12448)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i11717_4_lut.init = 16'h3a0a;
    L6MUX21 i11656 (.D0(n12381), .D1(n12382), .SD(rom_addr[6]), .Z(n12387));
    LUT4 n627_bdd_3_lut_13255_4_lut (.A(rom_addr[0]), .B(n14257), .C(rom_addr[3]), 
         .D(n14237), .Z(n13470)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n627_bdd_3_lut_13255_4_lut.init = 16'hf404;
    L6MUX21 i11657 (.D0(n12383), .D1(n12384), .SD(rom_addr[6]), .Z(n12388));
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_584), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_adj_676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1483), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 n1116_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14320), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13021)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1116_bdd_3_lut_4_lut.init = 16'h4004;
    L6MUX21 i11665 (.D0(n12101), .D1(n12150), .SD(rom_addr[6]), .Z(n12396));
    PFUMX i11680 (.BLUT(n12407), .ALUT(n12408), .C0(rom_addr[6]), .Z(n12411));
    PFUMX i11681 (.BLUT(n12409), .ALUT(n12410), .C0(rom_addr[6]), .Z(n12412));
    PFUMX i11687 (.BLUT(n12414), .ALUT(n12415), .C0(rom_addr[6]), .Z(n12418));
    LUT4 address_11__I_0_Mux_0_i443_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), 
         .C(rom_addr[3]), .D(n14244), .Z(n443)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i443_3_lut_4_lut.init = 16'hf404;
    LUT4 i11572_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), .C(rom_addr[3]), 
         .D(n15499), .Z(n12303)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11572_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5607), .B(n15497), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n11699)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    L6MUX21 i11688 (.D0(n12416), .D1(n12417), .SD(rom_addr[6]), .Z(n12419));
    L6MUX21 i11697 (.D0(n14091), .D1(n12425), .SD(rom_addr[6]), .Z(n12428));
    L6MUX21 i11698 (.D0(n12426), .D1(n12427), .SD(rom_addr[6]), .Z(n12429));
    L6MUX21 i11704 (.D0(n12431), .D1(n12432), .SD(rom_addr[6]), .Z(n12435));
    L6MUX21 i11705 (.D0(n12433), .D1(n12434), .SD(rom_addr[6]), .Z(n12436));
    PFUMX i11707 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n12438));
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14301), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_678)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14301), 
         .C(rom_addr[4]), .D(n526), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 i11623_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), .C(rom_addr[3]), 
         .D(n15497), .Z(n12354)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11623_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1659_bdd_4_lut (.A(n1659_adj_673), .B(rom_addr[6]), .C(rom_addr[0]), 
         .D(n14100), .Z(n13539)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1659_bdd_4_lut.init = 16'h888b;
    LUT4 address_11__I_0_Mux_2_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n14244), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i428_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i11715 (.D0(n12443), .D1(n12444), .SD(rom_addr[6]), .Z(n12446));
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14153), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_679), .Z(n2523_adj_680)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    PFUMX i12996 (.BLUT(n13639), .ALUT(n13638), .C0(rom_addr[4]), .Z(n13640));
    LUT4 i11501_3_lut_else_4_lut (.A(rom_addr[0]), .B(n14312), .C(rom_addr[3]), 
         .D(n14244), .Z(n14376)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i11501_3_lut_else_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i541_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), 
         .C(rom_addr[3]), .D(n14204), .Z(n541_adj_615)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i541_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), 
         .C(rom_addr[3]), .D(n14325), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14380)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n14325), .Z(n844_adj_681)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 i12390_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5607)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12390_2_lut.init = 16'h9999;
    L6MUX21 i11725 (.D0(n12453), .D1(n12454), .SD(rom_addr[6]), .Z(n12456));
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14379)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    PFUMX i11734 (.BLUT(n12461), .ALUT(n12462), .C0(rom_addr[6]), .Z(n12465));
    LUT4 address_11__I_0_Mux_0_i939_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n14220), .Z(n939)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i939_3_lut_4_lut.init = 16'h2f20;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), .C(n14244), 
         .D(rom_addr[3]), .Z(n13140)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 address_11__I_0_Mux_3_i1403_4_lut (.A(n14303), .B(n14142), .C(rom_addr[4]), 
         .D(n14247), .Z(n1403_adj_607)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1403_4_lut.init = 16'hcac0;
    LUT4 n6454_bdd_3_lut_13318_4_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14383)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6454_bdd_3_lut_13318_4_lut_4_lut_then_4_lut.init = 16'h1004;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n14325), .Z(n220_adj_682)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14302), 
         .C(rom_addr[3]), .D(n14220), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 n13545_bdd_3_lut (.A(n13545), .B(n13539), .C(rom_addr[5]), .Z(n13546)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13545_bdd_3_lut.init = 16'hcaca;
    LUT4 n6454_bdd_3_lut_13318_4_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14382)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6454_bdd_3_lut_13318_4_lut_4_lut_else_4_lut.init = 16'h0001;
    LUT4 n10513_bdd_4_lut (.A(n14146), .B(rom_addr[4]), .C(n11737), .D(rom_addr[5]), 
         .Z(n14091)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n10513_bdd_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14302), 
         .C(rom_addr[3]), .D(n15498), .Z(n1435_adj_599)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 rom_addr_0__bdd_4_lut_13577 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n301_adj_683)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B (C+(D))+!B !(C))) */ ;
    defparam rom_addr_0__bdd_4_lut_13577.init = 16'hb214;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14387)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 i11578_3_lut_4_lut (.A(rom_addr[0]), .B(n14302), .C(rom_addr[3]), 
         .D(n14266), .Z(n12309)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11578_3_lut_4_lut.init = 16'h02f2;
    LUT4 i7629_2_lut_rep_135_4_lut (.A(n6885), .B(n2621), .C(n14272), 
         .D(n14321), .Z(n14093)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7629_2_lut_rep_135_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14302), 
         .C(rom_addr[3]), .D(n15497), .Z(n2009_adj_620)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_684)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n15499), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_376 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n15501)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_376.init = 16'h3838;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n14120), 
         .C(n14104), .D(rom_addr[6]), .Z(n2110_adj_685)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14302), 
         .C(rom_addr[3]), .D(n14325), .Z(n604_adj_686)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12993 (.D0(n13635), .D1(n13632), .SD(rom_addr[6]), .Z(n13636));
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14386)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 i11573_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[3]), 
         .D(n14174), .Z(n12304)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11573_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n15502), .B(n14244), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 i11587_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[3]), 
         .D(n14237), .Z(n12318)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11587_3_lut_4_lut.init = 16'hf808;
    PFUMX i11407 (.BLUT(n12136), .ALUT(n12137), .C0(rom_addr[4]), .Z(n12138));
    LUT4 address_11__I_0_Mux_0_i228_3_lut_rep_377 (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .Z(n15502)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i228_3_lut_rep_377.init = 16'h8383;
    LUT4 i11575_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12306)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11575_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i11570_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14390)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i11570_3_lut_then_4_lut.init = 16'hccc4;
    PFUMX i12991 (.BLUT(n13634), .ALUT(n13633), .C0(n14270), .Z(n13635));
    LUT4 i5954_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6858)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5954_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(n15502), .D(rom_addr[3]), .Z(n2040_adj_687)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i11570_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14389)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i11570_3_lut_else_4_lut.init = 16'h0103;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(n15498), .D(rom_addr[3]), .Z(n2522_adj_679)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11576_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), .C(n15499), 
         .D(rom_addr[3]), .Z(n12307)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11576_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i5883_3_lut_4_lut (.A(n14153), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6825), .Z(n6826)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5883_3_lut_4_lut.init = 16'hf808;
    LUT4 i11533_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14306), .C(rom_addr[4]), 
         .D(n5343), .Z(n12264)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11533_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 n1228_bdd_3_lut (.A(n1228), .B(n1243_adj_643), .C(rom_addr[4]), 
         .Z(n13567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1228_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_598), .B(n443_adj_627), 
         .C(rom_addr[4]), .Z(n444_adj_688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 n1196_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n13569)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1196_bdd_4_lut.init = 16'hca0a;
    L6MUX21 i11755 (.D0(n12484), .D1(n12485), .SD(rom_addr[6]), .Z(n12486));
    L6MUX21 i11761 (.D0(n12490), .D1(n12491), .SD(rom_addr[6]), .Z(n12492));
    LUT4 i11582_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14393)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11582_4_lut_then_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n15502), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11801_3_lut (.A(n476), .B(n507_adj_689), .C(rom_addr[5]), .Z(n12532)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11801_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491_adj_690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 n13621_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[5]), 
         .D(n13621), .Z(n13622)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13621_bdd_3_lut_4_lut.init = 16'h2f20;
    PFUMX i11770 (.BLUT(n190_adj_691), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12501));
    L6MUX21 i11774 (.D0(n12562), .D1(n764), .SD(rom_addr[6]), .Z(n12505));
    LUT4 i5880_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[3]), 
         .D(n8816), .Z(n6823)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5880_3_lut_4_lut.init = 16'h08f8;
    L6MUX21 i11775 (.D0(n829_adj_565), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12506));
    LUT4 i11582_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14392)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i11582_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i11851_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[4]), 
         .D(n1946_adj_692), .Z(n12582)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11851_3_lut_4_lut.init = 16'hf808;
    PFUMX i11777 (.BLUT(n12572), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12508));
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 i12047_3_lut_4_lut (.A(rom_addr[0]), .B(n14218), .C(rom_addr[4]), 
         .D(n270_adj_695), .Z(n12534)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12047_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n15502), .Z(n1707_adj_647)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut (.A(n14166), .B(n14134), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2364_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut.init = 16'hcfca;
    LUT4 n31_bdd_3_lut (.A(n46), .B(n301), .C(rom_addr[4]), .Z(n13578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14396)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14395)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    L6MUX21 i11778 (.D0(n1213), .D1(n12575), .SD(rom_addr[6]), .Z(n12509));
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_665)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i11781 (.BLUT(n1597_adj_696), .ALUT(n1660_adj_663), .C0(rom_addr[6]), 
          .Z(n12512));
    LUT4 n212_bdd_3_lut_13286_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[3]), 
         .D(n14266), .Z(n13159)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n212_bdd_3_lut_13286_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14399)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14398)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    PFUMX i12987 (.BLUT(n14139), .ALUT(n13631), .C0(rom_addr[5]), .Z(n13632));
    PFUMX i11783 (.BLUT(n12581), .ALUT(n1915), .C0(rom_addr[6]), .Z(n12514));
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n15498), .Z(n589_adj_634)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13415 (.BLUT(n14413), .ALUT(n14414), .C0(rom_addr[0]), .Z(n14415));
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), 
         .C(n15501), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11393_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14306), .C(n14204), 
         .D(rom_addr[3]), .Z(n12124)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11393_3_lut_3_lut_4_lut.init = 16'h11f0;
    L6MUX21 i11784 (.D0(n12584), .D1(n12015), .SD(rom_addr[6]), .Z(n12515));
    LUT4 i11644_3_lut (.A(n2283_adj_628), .B(n2298_adj_697), .C(rom_addr[4]), 
         .Z(n12375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11644_3_lut.init = 16'hcaca;
    PFUMX i11802 (.BLUT(n12531), .ALUT(n12532), .C0(rom_addr[6]), .Z(n12533));
    LUT4 i11579_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), .C(rom_addr[3]), 
         .D(n14244), .Z(n12310)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11579_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    L6MUX21 i11812 (.D0(n12541), .D1(n12542), .SD(rom_addr[6]), .Z(n12543));
    LUT4 i7537_4_lut (.A(n14162), .B(rom_addr[4]), .C(n14306), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7537_4_lut.init = 16'hc088;
    LUT4 i11581_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14402)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11581_3_lut_4_lut_then_4_lut.init = 16'h744c;
    L6MUX21 i11838 (.D0(n12567), .D1(n12568), .SD(rom_addr[6]), .Z(n12569));
    L6MUX21 i11847 (.D0(n12576), .D1(n12577), .SD(rom_addr[6]), .Z(n12578));
    L6MUX21 i11667 (.D0(n12159), .D1(n12168), .SD(rom_addr[6]), .Z(n12398));
    LUT4 n13582_bdd_3_lut (.A(n13582), .B(n14378), .C(rom_addr[5]), .Z(n13583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13582_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i11860 (.D0(n12589), .D1(n12590), .SD(rom_addr[6]), .Z(n12591));
    LUT4 i11378_3_lut_4_lut (.A(rom_addr[1]), .B(n14307), .C(rom_addr[4]), 
         .D(n301_adj_683), .Z(n12109)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11378_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14307), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_612)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 rom_addr_0__bdd_4_lut_13247 (.A(rom_addr[0]), .B(n5240), .C(n6128), 
         .D(rom_addr[5]), .Z(n13584)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam rom_addr_0__bdd_4_lut_13247.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14307), 
         .C(rom_addr[4]), .D(n13543), .Z(n1565_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11308 (.BLUT(n12037), .ALUT(n12038), .C0(rom_addr[6]), .Z(n12039));
    LUT4 i12250_3_lut (.A(n12300), .B(n14391), .C(rom_addr[5]), .Z(n12302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12250_3_lut.init = 16'hcaca;
    LUT4 n13157_bdd_3_lut (.A(n13159), .B(n13158), .C(rom_addr[4]), .Z(n13586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13157_bdd_3_lut.init = 16'hcaca;
    LUT4 i11676_3_lut_4_lut (.A(rom_addr[0]), .B(n14120), .C(rom_addr[5]), 
         .D(n1851_adj_7), .Z(n12407)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11676_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i11321 (.D0(n12050), .D1(n12051), .SD(rom_addr[6]), .Z(n12052));
    LUT4 i7615_2_lut_rep_378 (.A(rom_addr[0]), .B(n15518), .Z(n15503)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7615_2_lut_rep_378.init = 16'h8888;
    LUT4 i11557_3_lut (.A(n2444), .B(n2459), .C(rom_addr[4]), .Z(n12288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11557_3_lut.init = 16'hcaca;
    LUT4 i11581_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14401)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11581_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_2_i30_4_lut (.A(n14269), .B(n14155), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut.init = 16'hcacf;
    LUT4 i11834_3_lut_4_lut (.A(rom_addr[1]), .B(n14307), .C(rom_addr[4]), 
         .D(n731), .Z(n12565)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11834_3_lut_4_lut.init = 16'hf101;
    LUT4 i7506_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14196), .Z(n5845)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7506_4_lut_4_lut_4_lut.init = 16'hf8f3;
    PFUMX i11602 (.BLUT(n12272), .ALUT(n2173_adj_700), .C0(rom_addr[6]), 
          .Z(n12333));
    LUT4 n653_bdd_4_lut (.A(n699_adj_701), .B(n14197), .C(n14303), .D(rom_addr[4]), 
         .Z(n13588)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n653_bdd_4_lut.init = 16'haac0;
    LUT4 n653_bdd_3_lut (.A(n653), .B(n668_adj_702), .C(rom_addr[4]), 
         .Z(n13589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n653_bdd_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n14270), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11566_3_lut_4_lut (.A(rom_addr[5]), .B(n14120), .C(rom_addr[6]), 
         .D(n14125), .Z(n12297)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11566_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12230_3_lut (.A(n12276), .B(n15509), .C(rom_addr[5]), .Z(n12278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12230_3_lut.init = 16'hcaca;
    L6MUX21 i11330 (.D0(n12059), .D1(n12060), .SD(rom_addr[6]), .Z(n12061));
    LUT4 i11540_4_lut (.A(n5607), .B(n2140), .C(rom_addr[4]), .D(n14320), 
         .Z(n12271)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11540_4_lut.init = 16'hcac0;
    LUT4 i11536_3_lut (.A(n1962), .B(n13543), .C(rom_addr[4]), .Z(n12267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11536_3_lut.init = 16'hcaca;
    LUT4 i5923_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14405)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5923_3_lut_4_lut_then_4_lut.init = 16'h4691;
    LUT4 i11515_3_lut (.A(n908_adj_703), .B(n491), .C(rom_addr[4]), .Z(n12246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11515_3_lut.init = 16'hcaca;
    LUT4 i5923_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n14404)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5923_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 i11510_4_lut (.A(rom_addr[0]), .B(n205), .C(rom_addr[4]), .D(n5278), 
         .Z(n12241)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11510_4_lut.init = 16'hc0ca;
    LUT4 i11509_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n5269), 
         .Z(n12240)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11509_4_lut.init = 16'hc0ca;
    LUT4 i11507_4_lut (.A(n443), .B(rom_addr[1]), .C(rom_addr[4]), .D(n14301), 
         .Z(n12238)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11507_4_lut.init = 16'hca0a;
    PFUMX i12980 (.BLUT(n13622), .ALUT(n14092), .C0(rom_addr[6]), .Z(n13623));
    LUT4 i11503_4_lut (.A(rom_addr[0]), .B(n14188), .C(rom_addr[4]), .D(n14217), 
         .Z(n12234)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11503_4_lut.init = 16'hcac0;
    L6MUX21 i11352 (.D0(n12081), .D1(n12082), .SD(rom_addr[6]), .Z(n12083));
    LUT4 i11560_3_lut_4_lut (.A(rom_addr[1]), .B(n15496), .C(rom_addr[4]), 
         .D(n2267), .Z(n12291)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11560_3_lut_4_lut.init = 16'hf101;
    LUT4 i2671_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14120), .C(rom_addr[6]), 
         .D(n14124), .Z(n3584)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2671_3_lut_4_lut_4_lut.init = 16'h5efe;
    LUT4 i11935_3_lut (.A(n14339), .B(n635), .C(rom_addr[4]), .Z(n12167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11935_3_lut.init = 16'hcaca;
    LUT4 i2242_3_lut_4_lut_4_lut (.A(n14320), .B(n14185), .C(rom_addr[5]), 
         .D(n14277), .Z(n3155)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2242_3_lut_4_lut_4_lut.init = 16'h3f35;
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549), .ALUT(n1564), .C0(rom_addr[4]), 
          .Z(n1565_adj_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n15506), .B(n444), .C(rom_addr[5]), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    L6MUX21 i11469 (.D0(n12113), .D1(n12116), .SD(rom_addr[6]), .Z(n12200));
    LUT4 i12306_3_lut (.A(n445), .B(n13142), .C(rom_addr[6]), .Z(n12203)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12306_3_lut.init = 16'hcaca;
    L6MUX21 i11438 (.D0(n63), .D1(n12024), .SD(rom_addr[6]), .Z(n12169));
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n14220), .B(n603), .C(rom_addr[3]), 
         .Z(n699_adj_701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_705), .ALUT(n1883_adj_706), 
          .C0(n14270), .Z(n1915_adj_625)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_0_i236_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n15502), .Z(n1483)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i236_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13413 (.BLUT(n14410), .ALUT(n14411), .C0(rom_addr[0]), .Z(n14412));
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_9), 
          .C0(n11948), .Z(n1597_adj_619)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14320), 
         .B(rom_addr[5]), .C(n14241), .D(n14277), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_708), .ALUT(n1117_adj_709), 
          .C0(n14270), .Z(n1149_adj_608)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n14325), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12322_3_lut (.A(n12392), .B(n13506), .C(rom_addr[7]), .Z(n12394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12322_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n14210), .Z(n428_adj_630)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5913_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14408)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5913_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_710), 
          .C0(n14270), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11304_3_lut (.A(n475), .B(n491), .C(rom_addr[4]), .Z(n12035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11304_3_lut.init = 16'hcaca;
    LUT4 i7653_4_lut (.A(n2621_adj_711), .B(n14321), .C(n2684_adj_712), 
         .D(rom_addr[6]), .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7653_4_lut.init = 16'hc088;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14289), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n14194), .Z(n2621_adj_711)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    PFUMX i13411 (.BLUT(n14407), .ALUT(n14408), .C0(rom_addr[0]), .Z(n14409));
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3911), .Z(n10638)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i11947_3_lut (.A(n6847), .B(n891), .C(rom_addr[5]), .Z(n860_adj_563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11947_3_lut.init = 16'hcaca;
    LUT4 i3590_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n4503)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3590_3_lut_3_lut.init = 16'h7474;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14312), 
         .C(rom_addr[3]), .D(n15499), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 i7338_4_lut (.A(rom_addr[0]), .B(n6188), .C(n14125), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7338_4_lut.init = 16'h0a22;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n4503), .ALUT(n1692), .C0(n11967), 
          .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12270_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12270_3_lut.init = 16'hcaca;
    LUT4 n11747_bdd_3_lut_12918_4_lut (.A(n14303), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13245)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n11747_bdd_3_lut_12918_4_lut.init = 16'h0800;
    LUT4 i12137_3_lut (.A(n12071), .B(n12072), .C(rom_addr[5]), .Z(n12073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12137_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n11948), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11326_3_lut (.A(n1069), .B(n1084_adj_717), .C(rom_addr[4]), 
         .Z(n12057)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11326_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n12138), .B(n444), .C(rom_addr[5]), 
         .Z(n445_adj_718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 i5987_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n6929)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5987_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[5]), .D(n14372), .Z(n2173_adj_700)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14303), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15498), .Z(n1084_adj_717)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5913_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14407)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5913_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[5]), .D(n14331), .Z(n2173_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(rom_addr[0]), .B(n14124), 
         .C(rom_addr[5]), .D(n2141_adj_636), .Z(n2173_adj_649)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14244), .B(n14220), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_576), .ALUT(n380_adj_10), 
          .C0(n14289), .Z(n381_adj_603)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668), .B(n924), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 i11726_3_lut (.A(n13546), .B(n12456), .C(rom_addr[7]), .Z(n12457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11726_3_lut.init = 16'hcaca;
    LUT4 n2552_bdd_3_lut_13293_4_lut (.A(rom_addr[0]), .B(n14257), .C(rom_addr[3]), 
         .D(n14204), .Z(n13970)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_13293_4_lut.init = 16'h7f70;
    PFUMX i11288 (.BLUT(n1054_adj_578), .ALUT(n1085_adj_720), .C0(rom_addr[5]), 
          .Z(n12019));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .Z(n14411)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_then_3_lut.init = 16'ha4a4;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14257), 
         .C(rom_addr[3]), .D(n15499), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14410)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_else_3_lut.init = 16'ha084;
    LUT4 i11335_4_lut (.A(n14143), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12066)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11335_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n14325), .Z(n589)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 i7298_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7298_2_lut_4_lut.init = 16'hca00;
    LUT4 i11459_3_lut (.A(n12179), .B(n12180), .C(rom_addr[7]), .Z(n12190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11459_3_lut.init = 16'hcaca;
    LUT4 i11460_3_lut (.A(n12181), .B(n13852), .C(rom_addr[7]), .Z(n12191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11460_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_674), .ALUT(n62_adj_11), 
          .C0(n11948), .Z(n63_adj_602)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11658_3_lut (.A(n12385), .B(n12386), .C(rom_addr[7]), .Z(n12389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11658_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14130), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_710)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7523_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(n14320), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7523_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n14325), .Z(n475)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n14130), 
         .C(rom_addr[5]), .D(n2396), .Z(n2428_adj_662)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14414)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0521;
    LUT4 i12170_3_lut (.A(n12270), .B(n12271), .C(rom_addr[5]), .Z(n12272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12170_3_lut.init = 16'hcaca;
    LUT4 n762_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14175), .C(rom_addr[4]), 
         .D(n379), .Z(n13157)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n762_bdd_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11440 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12171));
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n15502), .Z(n1435_adj_592)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    PFUMX i11441 (.BLUT(n445_adj_718), .ALUT(n508), .C0(rom_addr[6]), 
          .Z(n12172));
    LUT4 n1340_bdd_4_lut (.A(n14139), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n15498), .Z(n13633)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut.init = 16'hb888;
    LUT4 i11772_3_lut (.A(n12546), .B(n508_adj_722), .C(rom_addr[6]), 
         .Z(n12503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11772_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n12317), .B(n507_adj_689), 
         .C(rom_addr[5]), .Z(n508_adj_722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491_adj_617), .B(n460_adj_600), 
         .C(rom_addr[4]), .Z(n507_adj_689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 i11313_3_lut_4_lut (.A(rom_addr[0]), .B(n14175), .C(rom_addr[4]), 
         .D(n747), .Z(n12044)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11313_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i11442 (.D0(n12033), .D1(n12036), .SD(rom_addr[6]), .Z(n12173));
    L6MUX21 i11443 (.D0(n12042), .D1(n12045), .SD(rom_addr[6]), .Z(n12174));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14413)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    L6MUX21 i11444 (.D0(n829), .D1(n12055), .SD(rom_addr[6]), .Z(n12175));
    LUT4 i11285_3_lut_4_lut (.A(rom_addr[0]), .B(n14175), .C(rom_addr[4]), 
         .D(n2588), .Z(n12016)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11285_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11447 (.D0(n12064), .D1(n12067), .SD(rom_addr[6]), .Z(n12178));
    LUT4 i11773_3_lut (.A(n12549), .B(n12559), .C(rom_addr[6]), .Z(n12504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11773_3_lut.init = 16'hcaca;
    LUT4 i12184_3_lut (.A(n14397), .B(n444_adj_688), .C(rom_addr[5]), 
         .Z(n12531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12184_3_lut.init = 16'hcaca;
    PFUMX i11448 (.BLUT(n12073), .ALUT(n1404), .C0(rom_addr[6]), .Z(n12179));
    LUT4 n1212_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14100), .C(rom_addr[5]), 
         .D(n1212_adj_723), .Z(n13708)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n1212_bdd_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n14268), 
         .C(rom_addr[3]), .D(n14237), .Z(n124_adj_653)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut.init = 16'hf404;
    LUT4 i11638_3_lut (.A(n13670), .B(n12367), .C(rom_addr[7]), .Z(n12369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11638_3_lut.init = 16'hcaca;
    LUT4 i12187_3_lut (.A(n12579), .B(n14418), .C(rom_addr[5]), .Z(n12581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12187_3_lut.init = 16'hcaca;
    LUT4 i11849_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14417)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11849_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i7660_2_lut_3_lut_4_lut_4_lut (.A(n14320), .B(rom_addr[5]), .C(rom_addr[0]), 
         .D(n14196), .Z(n2237_adj_724)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7660_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i12336_4_lut (.A(n2573_adj_684), .B(n15495), .C(rom_addr[6]), 
         .D(n14270), .Z(n2685_adj_725)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12336_4_lut.init = 16'hccca;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_8), .B(n1596_adj_583), 
         .C(rom_addr[5]), .Z(n1597_adj_696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i7816_2_lut_rep_289 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14247)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7816_2_lut_rep_289.init = 16'h8888;
    L6MUX21 i11449 (.D0(n12076), .D1(n1531), .SD(rom_addr[6]), .Z(n12180));
    LUT4 i7390_4_lut (.A(rom_addr[0]), .B(n14183), .C(n14200), .D(n7032), 
         .Z(n2237_adj_726)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7390_4_lut.init = 16'h0a88;
    LUT4 i6076_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n7032)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6076_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14175), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_727)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 n1340_bdd_4_lut_12989 (.A(n14142), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n15498), .Z(n13631)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_12989.init = 16'haca0;
    LUT4 i11606_3_lut (.A(n12333), .B(n12334), .C(rom_addr[7]), .Z(n12337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11606_3_lut.init = 16'hcaca;
    LUT4 i12193_3_lut (.A(n14338), .B(n13435), .C(rom_addr[5]), .Z(n12572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12193_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12311), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i7359_4_lut (.A(rom_addr[0]), .B(n14165), .C(n14164), .D(rom_addr[5]), 
         .Z(n190_adj_691)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7359_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444_adj_582), .Z(n2268_adj_728)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_709)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94_adj_12), .ALUT(n126), .C0(n14265), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7563_2_lut_rep_190_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15518), 
         .Z(n14148)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7563_2_lut_rep_190_3_lut.init = 16'h8080;
    LUT4 i11548_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12279)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11548_3_lut_4_lut.init = 16'hf808;
    LUT4 n2283_bdd_3_lut_13021 (.A(n2283_adj_572), .B(n2298_adj_697), .C(rom_addr[4]), 
         .Z(n13637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2283_bdd_3_lut_13021.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396_adj_586), .ALUT(n2428), 
          .C0(n14265), .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11664_4_lut (.A(n12110), .B(n380_adj_732), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n12395)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11664_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14292), .B(n14138), .C(rom_addr[4]), 
         .D(n14307), .Z(n380_adj_732)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i3122_3_lut (.A(n4026), .B(n6429), .C(rom_addr[6]), .Z(n4035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3122_3_lut.init = 16'hcaca;
    PFUMX i12978 (.BLUT(n14143), .ALUT(n13620), .C0(rom_addr[4]), .Z(n13621));
    LUT4 i3113_4_lut (.A(rom_addr[1]), .B(n14121), .C(rom_addr[5]), .D(n14290), 
         .Z(n4026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3113_4_lut.init = 16'hcfca;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_724), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2_3_lut_4_lut_adj_12 (.A(n14254), .B(n14276), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n10439)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_adj_12.init = 16'h8000;
    LUT4 i11445_4_lut (.A(n956_adj_554), .B(rom_addr[0]), .C(rom_addr[6]), 
         .D(n8361), .Z(n12176)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11445_4_lut.init = 16'hca0a;
    PFUMX i13409 (.BLUT(n14404), .ALUT(n14405), .C0(rom_addr[0]), .Z(n14406));
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492), .ALUT(n2555), .C0(rom_addr[6]), 
          .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_685), 
          .C0(n14272), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11679_4_lut (.A(n14142), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12410)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11679_4_lut.init = 16'haaca;
    LUT4 i11678_3_lut (.A(n1914_adj_613), .B(n14096), .C(rom_addr[5]), 
         .Z(n12409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11678_3_lut.init = 16'hcaca;
    LUT4 i11849_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14416)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11849_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 i12227_3_lut (.A(n14363), .B(n2109), .C(rom_addr[5]), .Z(n12377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12227_3_lut.init = 16'hcaca;
    LUT4 i12232_3_lut (.A(n14406), .B(n14424), .C(rom_addr[5]), .Z(n2110_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12232_3_lut.init = 16'hcaca;
    LUT4 i11424_3_lut_4_lut (.A(n14306), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12155)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11424_3_lut_4_lut.init = 16'h6f60;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(n14306), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14191), .Z(n891_adj_736)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'hf606;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491), .C(rom_addr[5]), 
         .Z(n2492_adj_667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    L6MUX21 i11453 (.D0(n12089), .D1(n12095), .SD(rom_addr[6]), .Z(n12184));
    LUT4 i11807_3_lut_4_lut (.A(n14306), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428_adj_598), .Z(n12538)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11807_3_lut_4_lut.init = 16'hf909;
    LUT4 i7363_2_lut_rep_294 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14252)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7363_2_lut_rep_294.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_196_3_lut (.A(n15518), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14154)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_196_3_lut.init = 16'hfbfb;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14306), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n11841), .Z(n1212_adj_723)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i11470 (.D0(n190), .D1(n12122), .SD(rom_addr[6]), .Z(n12201));
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14306), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1483), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i12236_3_lut (.A(n14351), .B(n14354), .C(rom_addr[5]), .Z(n12107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12236_3_lut.init = 16'hcaca;
    LUT4 i7527_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14129)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7527_2_lut_rep_171_3_lut_4_lut.init = 16'h0040;
    L6MUX21 i11473 (.D0(n12153), .D1(n12156), .SD(rom_addr[6]), .Z(n12204));
    L6MUX21 i11476 (.D0(n12236), .D1(n12242), .SD(rom_addr[6]), .Z(n12207));
    L6MUX21 i11477 (.D0(n12245), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12208));
    LUT4 i12504_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n11939)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12504_3_lut.init = 16'h7f7f;
    LUT4 i11617_3_lut (.A(n2237_adj_726), .B(n2300_c), .C(rom_addr[6]), 
         .Z(n12348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11617_3_lut.init = 16'hcaca;
    LUT4 i12243_3_lut (.A(n14421), .B(n14427), .C(rom_addr[5]), .Z(n2365_adj_655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12243_3_lut.init = 16'hcaca;
    LUT4 i12019_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n12023)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12019_3_lut.init = 16'hcaca;
    LUT4 i7590_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n14277), .Z(n158)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7590_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i12482_2_lut_rep_181_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(n14290), .Z(n14139)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12482_2_lut_rep_181_3_lut_4_lut.init = 16'h0004;
    LUT4 i12246_3_lut (.A(n14334), .B(n14381), .C(rom_addr[5]), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12246_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i7326_2_lut_rep_156_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14114)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7326_2_lut_rep_156_3_lut_4_lut.init = 16'hf080;
    LUT4 rom_addr_6__bdd_3_lut_4_lut_4_lut (.A(n14306), .B(n14135), .C(rom_addr[4]), 
         .D(n14275), .Z(n13752)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_4_lut_4_lut.init = 16'hc0c5;
    LUT4 n13668_bdd_3_lut_13025 (.A(n13668), .B(n13667), .C(rom_addr[5]), 
         .Z(n13669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13668_bdd_3_lut_13025.init = 16'hcaca;
    LUT4 i12248_3_lut (.A(n14403), .B(n14394), .C(rom_addr[5]), .Z(n12314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12248_3_lut.init = 16'hcaca;
    LUT4 i7541_2_lut_rep_205_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14163)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7541_2_lut_rep_205_3_lut_4_lut.init = 16'h7000;
    LUT4 n3059_bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n13754)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n3059_bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    PFUMX i11505 (.BLUT(n12234), .ALUT(n12235), .C0(rom_addr[5]), .Z(n12236));
    PFUMX i11508 (.BLUT(n12237), .ALUT(n12238), .C0(rom_addr[5]), .Z(n12239));
    PFUMX i11511 (.BLUT(n12240), .ALUT(n12241), .C0(rom_addr[5]), .Z(n12242));
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B ((D)+!C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_4_lut_4_lut.init = 16'h08f3;
    LUT4 i1_4_lut (.A(n14214), .B(rom_addr[7]), .C(n6662), .D(rom_addr[5]), 
         .Z(n10717)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 i7277_4_lut (.A(n11747), .B(rom_addr[6]), .C(n11728), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7277_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_678), .B(n1786_adj_610), 
         .C(rom_addr[5]), .Z(n1915_adj_641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    PFUMX i11514 (.BLUT(n12243), .ALUT(n12244), .C0(rom_addr[5]), .Z(n12245));
    LUT4 i7458_4_lut (.A(rom_addr[0]), .B(n14218), .C(n6134), .D(rom_addr[5]), 
         .Z(n1852_adj_640)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7458_4_lut.init = 16'ha022;
    LUT4 i5197_4_lut (.A(n14247), .B(n14218), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n6134)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5197_4_lut.init = 16'h3530;
    LUT4 i1_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n15518), .C(n11727), 
         .D(rom_addr[2]), .Z(n11728)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 address_11__I_0_Mux_0_i1657_3_lut_rep_216_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14174)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1657_3_lut_rep_216_3_lut.init = 16'h7c7c;
    LUT4 i7429_2_lut (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n8380)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7429_2_lut.init = 16'heeee;
    LUT4 i2469_3_lut_4_lut (.A(rom_addr[5]), .B(n14182), .C(rom_addr[6]), 
         .D(n14125), .Z(n3382)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2469_3_lut_4_lut.init = 16'h808f;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_adj_737), 
          .C0(rom_addr[5]), .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11517 (.BLUT(n12246), .ALUT(n12247), .C0(rom_addr[5]), .Z(n12248));
    LUT4 i11614_3_lut (.A(n12342), .B(n12343), .C(rom_addr[7]), .Z(n12345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11614_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_13 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n11727)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i11613_3_lut (.A(n12340), .B(n12341), .C(rom_addr[7]), .Z(n12344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11613_3_lut.init = 16'hcaca;
    LUT4 i11690_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14419)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11690_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i11600_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3642), 
         .Z(n12331)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11600_4_lut.init = 16'hca0a;
    LUT4 i11599_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3584), 
         .Z(n12330)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11599_4_lut.init = 16'hc0ca;
    L6MUX21 i12954 (.D0(n13590), .D1(n13587), .SD(rom_addr[6]), .Z(n13591));
    PFUMX i11535 (.BLUT(n12264), .ALUT(n12265), .C0(rom_addr[5]), .Z(n12266));
    LUT4 i11597_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n13896), 
         .Z(n12328)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11597_4_lut.init = 16'hcac0;
    LUT4 i11596_4_lut (.A(n2174), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3382), 
         .Z(n12327)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11596_4_lut.init = 16'hca0a;
    PFUMX i11538 (.BLUT(n12267), .ALUT(n12268), .C0(rom_addr[5]), .Z(n12269));
    LUT4 i11727_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(rom_addr[4]), 
         .D(n2522_adj_589), .Z(n12458)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11727_3_lut_4_lut.init = 16'hf202;
    LUT4 i11525_3_lut (.A(n13757), .B(n12083), .C(rom_addr[7]), .Z(n12256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11525_3_lut.init = 16'hcaca;
    LUT4 i11524_3_lut (.A(n12061), .B(n6879), .C(rom_addr[7]), .Z(n12255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11524_3_lut.init = 16'hcaca;
    LUT4 i7463_2_lut_rep_299 (.A(n15518), .B(rom_addr[2]), .Z(n14257)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7463_2_lut_rep_299.init = 16'h2222;
    LUT4 i11519_3_lut (.A(n12492), .B(n12533), .C(rom_addr[7]), .Z(n12250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11519_3_lut.init = 16'hcaca;
    LUT4 i11558_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(rom_addr[4]), 
         .D(n2283_adj_572), .Z(n12289)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11558_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11545_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(rom_addr[4]), 
         .D(n2588), .Z(n12276)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11545_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11518_3_lut (.A(n13580), .B(n12486), .C(rom_addr[7]), .Z(n12249)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11518_3_lut.init = 16'hcaca;
    LUT4 i11527_3_lut (.A(n12251), .B(n12252), .C(rom_addr[8]), .Z(n12258)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11527_3_lut.init = 16'hcaca;
    PFUMX i11544 (.BLUT(n12273), .ALUT(n12274), .C0(rom_addr[5]), .Z(n12275));
    LUT4 i11488_3_lut (.A(n13585), .B(n12207), .C(rom_addr[7]), .Z(n12219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11488_3_lut.init = 16'hcaca;
    LUT4 i11487_3_lut (.A(n12204), .B(n13591), .C(rom_addr[7]), .Z(n12218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11487_3_lut.init = 16'hcaca;
    PFUMX i13407 (.BLUT(n14401), .ALUT(n14402), .C0(rom_addr[3]), .Z(n14403));
    LUT4 i12354_3_lut (.A(n12218), .B(n12219), .C(rom_addr[8]), .Z(n12225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12354_3_lut.init = 16'hcaca;
    LUT4 i7494_2_lut_rep_283_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14241)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7494_2_lut_rep_283_3_lut.init = 16'h2020;
    PFUMX i12952 (.BLUT(n13589), .ALUT(n13588), .C0(rom_addr[5]), .Z(n13590));
    LUT4 i11435_3_lut (.A(n589_adj_594), .B(n604_adj_675), .C(rom_addr[4]), 
         .Z(n12166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11435_3_lut.init = 16'hcaca;
    LUT4 i12330_3_lut (.A(n12185), .B(n12186), .C(rom_addr[8]), .Z(n12193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12330_3_lut.init = 16'hcaca;
    LUT4 i7297_4_lut (.A(rom_addr[0]), .B(n3519), .C(n12299), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7297_4_lut.init = 16'h0a22;
    LUT4 i1_2_lut_rep_235_2_lut (.A(rom_addr[2]), .B(rom_addr[4]), .Z(n14193)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_235_2_lut.init = 16'h4444;
    PFUMX i11550 (.BLUT(n12279), .ALUT(n12280), .C0(rom_addr[5]), .Z(n12281));
    LUT4 i7637_4_lut (.A(n12323), .B(n14321), .C(n2684_adj_712), .D(rom_addr[6]), 
         .Z(n3069_adj_568)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7637_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n12697), .Z(n1883_adj_706)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11608_3_lut (.A(n12337), .B(n12338), .C(rom_addr[8]), .Z(n12339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11608_3_lut.init = 16'hcaca;
    LUT4 i4356_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4356_3_lut_3_lut.init = 16'hcbcb;
    LUT4 i11375_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14352)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11375_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), 
         .C(n14289), .D(n2283), .Z(n2492_adj_660)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    PFUMX i12950 (.BLUT(n13586), .ALUT(n13157), .C0(rom_addr[5]), .Z(n13587));
    LUT4 i2_3_lut_4_lut_adj_14 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n10444)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_adj_14.init = 16'h2002;
    LUT4 i11632_3_lut (.A(n15048), .B(n12362), .C(rom_addr[8]), .Z(n12363)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11632_3_lut.init = 16'hcaca;
    LUT4 i7646_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n14160), 
         .D(rom_addr[3]), .Z(n3749)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7646_4_lut_4_lut.init = 16'hd100;
    LUT4 i6083_3_lut_4_lut (.A(rom_addr[0]), .B(n14200), .C(n14283), .D(n2204), 
         .Z(n2428_adj_656)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6083_3_lut_4_lut.init = 16'hf202;
    PFUMX i11559 (.BLUT(n12288), .ALUT(n12289), .C0(rom_addr[5]), .Z(n12290));
    LUT4 i11427_3_lut (.A(n13137), .B(n428_adj_664), .C(rom_addr[4]), 
         .Z(n12158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11427_3_lut.init = 16'hcaca;
    PFUMX i2729 (.BLUT(n6614), .ALUT(n3641), .C0(rom_addr[6]), .Z(n3642));
    LUT4 i11426_3_lut (.A(n526_adj_601), .B(n541_adj_615), .C(rom_addr[4]), 
         .Z(n12157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11426_3_lut.init = 16'hcaca;
    LUT4 i11639_3_lut (.A(n12368), .B(n12369), .C(rom_addr[8]), .Z(n12370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11639_3_lut.init = 16'hcaca;
    LUT4 i11822_3_lut (.A(n1789), .B(n12413), .C(rom_addr[8]), .Z(n12553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11822_3_lut.init = 16'hcaca;
    PFUMX i11562 (.BLUT(n12291), .ALUT(n12292), .C0(rom_addr[5]), .Z(n12293));
    LUT4 i11423_3_lut (.A(n301), .B(n604_adj_686), .C(rom_addr[4]), .Z(n12154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11423_3_lut.init = 16'hcaca;
    LUT4 i11792_3_lut (.A(n12514), .B(n12515), .C(rom_addr[7]), .Z(n12523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11792_3_lut.init = 16'hcaca;
    LUT4 i11421_3_lut (.A(n557_adj_738), .B(n428), .C(rom_addr[4]), .Z(n12152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11421_3_lut.init = 16'hcaca;
    PFUMX i11568 (.BLUT(n12297), .ALUT(n12298), .C0(rom_addr[7]), .Z(n12299));
    LUT4 i11791_3_lut (.A(n12512), .B(n12513), .C(rom_addr[7]), .Z(n12522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11791_3_lut.init = 16'hcaca;
    PFUMX i12948 (.BLUT(n13584), .ALUT(n13583), .C0(rom_addr[6]), .Z(n13585));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n475_adj_739)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h3310;
    LUT4 i11420_3_lut (.A(n526_adj_740), .B(n491), .C(rom_addr[4]), .Z(n12151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11420_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14313), 
         .C(rom_addr[3]), .D(n14296), .Z(n731)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i11790_3_lut (.A(n13636), .B(n12511), .C(rom_addr[7]), .Z(n12521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11790_3_lut.init = 16'hcaca;
    LUT4 i11789_3_lut (.A(n12508), .B(n12509), .C(rom_addr[7]), .Z(n12520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11789_3_lut.init = 16'hcaca;
    LUT4 i11788_3_lut (.A(n12506), .B(n12507), .C(rom_addr[7]), .Z(n12519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11788_3_lut.init = 16'hcaca;
    LUT4 i11787_3_lut (.A(n12504), .B(n12505), .C(rom_addr[7]), .Z(n12518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11787_3_lut.init = 16'hcaca;
    LUT4 i11417_3_lut (.A(n460_adj_600), .B(n475_adj_739), .C(rom_addr[4]), 
         .Z(n12148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11417_3_lut.init = 16'hcaca;
    LUT4 i11786_3_lut (.A(n12502), .B(n12503), .C(rom_addr[7]), .Z(n12517)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11786_3_lut.init = 16'hcaca;
    LUT4 i11785_3_lut (.A(n12500), .B(n12501), .C(rom_addr[7]), .Z(n12516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11785_3_lut.init = 16'hcaca;
    PFUMX i11592 (.BLUT(n12321), .ALUT(n12322), .C0(rom_addr[5]), .Z(n12323));
    PFUMX i12946 (.BLUT(n844), .ALUT(n13581), .C0(rom_addr[4]), .Z(n13582));
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n14313), .B(n5607), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i11763_3_lut (.A(n12440), .B(n1021), .C(rom_addr[8]), .Z(n12494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11763_3_lut.init = 16'hcaca;
    LUT4 i11116_3_lut_4_lut (.A(n15502), .B(rom_addr[3]), .C(n8380), .D(n78), 
         .Z(n6878)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11116_3_lut_4_lut.init = 16'hefe0;
    LUT4 i12345_3_lut (.A(n12347), .B(n12348), .C(rom_addr[7]), .Z(n12351)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12345_3_lut.init = 16'hcaca;
    LUT4 i12347_3_lut (.A(n13248), .B(n12420), .C(rom_addr[8]), .Z(n12324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12347_3_lut.init = 16'hcaca;
    PFUMX i11845 (.BLUT(n797), .ALUT(n828_adj_698), .C0(rom_addr[5]), 
          .Z(n12576));
    LUT4 i11804_3_lut_4_lut (.A(n14224), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_683), .Z(n12535)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11804_3_lut_4_lut.init = 16'h1f10;
    PFUMX i11642 (.BLUT(n12371), .ALUT(n12372), .C0(rom_addr[5]), .Z(n2237_adj_651));
    LUT4 i5889_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n14333)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5889_4_lut_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i11660_3_lut (.A(n12389), .B(n12390), .C(rom_addr[8]), .Z(n12391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11660_3_lut.init = 16'hcaca;
    PFUMX i13405 (.BLUT(n14398), .ALUT(n14399), .C0(rom_addr[2]), .Z(n14400));
    PFUMX i11645 (.BLUT(n12374), .ALUT(n12375), .C0(rom_addr[5]), .Z(n2300_adj_652));
    LUT4 i12351_3_lut (.A(n12249), .B(n12250), .C(rom_addr[8]), .Z(n12257)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12351_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n14129), .D(n4822), .Z(n924_adj_553)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i11648 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n12379));
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14423)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14422)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i11523_3_lut (.A(n12039), .B(n12052), .C(rom_addr[7]), .Z(n12254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11523_3_lut.init = 16'hcaca;
    PFUMX i11649 (.BLUT(n2268_adj_728), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n12380));
    LUT4 i11522_3_lut (.A(n12021), .B(n13709), .C(rom_addr[7]), .Z(n12253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11522_3_lut.init = 16'hcaca;
    LUT4 i11493_3_lut (.A(n12216), .B(n12217), .C(rom_addr[8]), .Z(n12224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11493_3_lut.init = 16'hcaca;
    L6MUX21 i12944 (.D0(n13579), .D1(n13577), .SD(rom_addr[6]), .Z(n13580));
    PFUMX i11650 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12381));
    PFUMX i12942 (.BLUT(n14106), .ALUT(n13578), .C0(rom_addr[5]), .Z(n13579));
    LUT4 i11492_3_lut (.A(n12214), .B(n12215), .C(rom_addr[7]), .Z(n12223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11492_3_lut.init = 16'hcaca;
    PFUMX i13403 (.BLUT(n14395), .ALUT(n14396), .C0(rom_addr[2]), .Z(n14397));
    LUT4 i11490_3_lut (.A(n13278), .B(n12211), .C(rom_addr[7]), .Z(n12221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11490_3_lut.init = 16'hcaca;
    LUT4 i11489_3_lut (.A(n12208), .B(n13873), .C(rom_addr[7]), .Z(n12220)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11489_3_lut.init = 16'hcaca;
    LUT4 i11496_3_lut (.A(n12222), .B(n12223), .C(rom_addr[8]), .Z(n12227)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11496_3_lut.init = 16'hcaca;
    PFUMX i13401 (.BLUT(n14392), .ALUT(n14393), .C0(rom_addr[0]), .Z(n14394));
    LUT4 i11465_3_lut (.A(n12191), .B(n12192), .C(rom_addr[8]), .Z(n12196)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11465_3_lut.init = 16'hcaca;
    LUT4 i11464_3_lut (.A(n12189), .B(n12190), .C(rom_addr[8]), .Z(n12195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11464_3_lut.init = 16'hcaca;
    PFUMX i11651 (.BLUT(n6883), .ALUT(n2427_adj_694), .C0(rom_addr[5]), 
          .Z(n12382));
    PFUMX i12940 (.BLUT(n13576), .ALUT(n13575), .C0(rom_addr[5]), .Z(n13577));
    PFUMX i11652 (.BLUT(n2460), .ALUT(n2491_adj_690), .C0(rom_addr[5]), 
          .Z(n12383));
    LUT4 i12361_3_lut (.A(n1278), .B(n12447), .C(rom_addr[8]), .Z(n12495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12361_3_lut.init = 16'hcaca;
    PFUMX i11653 (.BLUT(n2523_adj_680), .ALUT(n2554_adj_573), .C0(rom_addr[5]), 
          .Z(n12384));
    L6MUX21 i12935 (.D0(n13570), .D1(n13568), .SD(rom_addr[6]), .Z(n13571));
    PFUMX i12933 (.BLUT(n14182), .ALUT(n13569), .C0(rom_addr[5]), .Z(n13570));
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898_adj_741), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_742)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i13399 (.BLUT(n14389), .ALUT(n14390), .C0(rom_addr[2]), .Z(n14391));
    PFUMX i12931 (.BLUT(n13567), .ALUT(n1275_adj_743), .C0(rom_addr[5]), 
          .Z(n13568));
    LUT4 i7511_2_lut_rep_272_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14230)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7511_2_lut_rep_272_3_lut.init = 16'hfefe;
    LUT4 i5024_2_lut_rep_304 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14262)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5024_2_lut_rep_304.init = 16'h6666;
    PFUMX i11685 (.BLUT(n1436), .ALUT(n1467_adj_745), .C0(rom_addr[5]), 
          .Z(n12416));
    LUT4 i1_2_lut_rep_146_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14305), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n14104)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_146_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_231_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n15518), .Z(n14189)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_231_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i12365_3_lut (.A(n12220), .B(n12221), .C(rom_addr[8]), .Z(n12226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12365_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .Z(n1228_adj_746)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_4_lut_3_lut.init = 16'h1919;
    PFUMX i11686 (.BLUT(n1499_adj_747), .ALUT(n1530_adj_623), .C0(rom_addr[5]), 
          .Z(n12417));
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14216), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2204), 
         .C(rom_addr[4]), .D(n4523), .Z(n1786)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    PFUMX i13397 (.BLUT(n14386), .ALUT(n14387), .C0(rom_addr[1]), .Z(n14388));
    LUT4 i12434_2_lut_rep_331 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14289)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12434_2_lut_rep_331.init = 16'hdddd;
    LUT4 i12514_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n11929)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12514_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i11300_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n14295), .Z(n12031)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11300_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12234_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13022), 
         .D(n2538), .Z(n2555_adj_668)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12234_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n491_bdd_3_lut_13203 (.A(n491), .B(n220_adj_682), .C(rom_addr[4]), 
         .Z(n13792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n491_bdd_3_lut_13203.init = 16'hcaca;
    LUT4 i11403_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11403_3_lut.init = 16'hcaca;
    LUT4 n1226_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13543)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1226_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 i1_2_lut_rep_332 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14290)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_332.init = 16'hbbbb;
    LUT4 i5889_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14332)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5889_4_lut_4_lut_else_3_lut.init = 16'h4454;
    PFUMX i11694 (.BLUT(n1628_adj_624), .ALUT(n3749), .C0(rom_addr[5]), 
          .Z(n12425));
    LUT4 i7468_4_lut (.A(n14155), .B(rom_addr[4]), .C(n15500), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7468_4_lut.init = 16'hc088;
    PFUMX i11695 (.BLUT(n1692_adj_727), .ALUT(n1723_adj_648), .C0(rom_addr[5]), 
          .Z(n12426));
    LUT4 i11825_3_lut (.A(n12554), .B(n12555), .C(rom_addr[10]), .Z(n12556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11825_3_lut.init = 16'hcaca;
    LUT4 i11402_3_lut (.A(n270), .B(n285), .C(rom_addr[4]), .Z(n12133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11402_3_lut.init = 16'hcaca;
    LUT4 n8830_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13300)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n8830_bdd_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i12512_2_lut_rep_307 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14265)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12512_2_lut_rep_307.init = 16'hdddd;
    PFUMX i11696 (.BLUT(n1755_c), .ALUT(n1786_adj_659), .C0(rom_addr[5]), 
          .Z(n12427));
    LUT4 i12476_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n11943)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12476_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i5891_3_lut_rep_308 (.A(rom_addr[0]), .B(rom_addr[2]), .C(n15518), 
         .Z(n14266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5891_3_lut_rep_308.init = 16'hcaca;
    LUT4 i11151_2_lut_rep_309 (.A(rom_addr[0]), .B(rom_addr[4]), .Z(n14267)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11151_2_lut_rep_309.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283), .B(n2298_adj_697), 
         .C(rom_addr[4]), .Z(n2299_adj_556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i7392_4_lut (.A(rom_addr[0]), .B(n443_adj_627), .C(n14219), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7392_4_lut.init = 16'h0a22;
    LUT4 i7367_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_639)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7367_2_lut_3_lut.init = 16'h9090;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n11747)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i13394 (.BLUT(n14382), .ALUT(n14383), .C0(rom_addr[5]), .Z(n14384));
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14148), .B(n15500), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_748)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i7396_4_lut (.A(rom_addr[0]), .B(n14225), .C(n5016), .D(rom_addr[4]), 
         .Z(n2523_adj_749)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7396_4_lut.init = 16'h0a22;
    LUT4 i12238_3_lut (.A(n2523_adj_749), .B(n2554_adj_748), .C(rom_addr[5]), 
         .Z(n2555_adj_661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12238_3_lut.init = 16'hcaca;
    LUT4 i13220_else_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n14425)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C (D))))) */ ;
    defparam i13220_else_3_lut.init = 16'h4111;
    PFUMX i11700 (.BLUT(n1820_adj_622), .ALUT(n1851_adj_579), .C0(rom_addr[5]), 
          .Z(n12431));
    LUT4 i11532_3_lut (.A(n12261), .B(n12262), .C(rom_addr[10]), .Z(n12263)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11532_3_lut.init = 16'hcaca;
    LUT4 i7591_2_lut_rep_310 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14268)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7591_2_lut_rep_310.init = 16'h8888;
    LUT4 i11390_3_lut (.A(n236), .B(n251_adj_750), .C(rom_addr[4]), .Z(n12121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11390_3_lut.init = 16'hcaca;
    L6MUX21 i12909 (.D0(n13544), .D1(n14090), .SD(rom_addr[6]), .Z(n13545));
    LUT4 i11389_3_lut (.A(n541_adj_615), .B(n220_adj_751), .C(rom_addr[4]), 
         .Z(n12120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11389_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251_adj_750)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    LUT4 address_11__I_0_Mux_0_i2025_3_lut_3_lut_4_lut (.A(n15518), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2025_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 segment_led_0_bdd_2_lut_12781 (.A(n13247), .B(rom_addr[7]), .Z(n13248)) /* synthesis lut_function=(A (B)) */ ;
    defparam segment_led_0_bdd_2_lut_12781.init = 16'h8888;
    LUT4 i1_2_lut_rep_264_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14222)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_264_3_lut.init = 16'h0808;
    LUT4 rom_addr_2__bdd_4_lut_13669 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14335)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_13669.init = 16'h98d1;
    PFUMX i12907 (.BLUT(n13543), .ALUT(n14137), .C0(rom_addr[4]), .Z(n13544));
    LUT4 i11839_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14220), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14337)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11839_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    PFUMX i13392 (.BLUT(n14379), .ALUT(n14380), .C0(rom_addr[0]), .Z(n14381));
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_635)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    PFUMX i11701 (.BLUT(n1883), .ALUT(n1914_adj_742), .C0(rom_addr[5]), 
          .Z(n12432));
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14143), 
         .C(rom_addr[4]), .D(n14222), .Z(n1275_adj_743)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11964_3_lut (.A(n12123), .B(n12124), .C(rom_addr[4]), .Z(n12125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11964_3_lut.init = 16'hcaca;
    LUT4 n1274_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n2573), .C(rom_addr[4]), 
         .D(n14222), .Z(n13276)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1274_bdd_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7413_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_753)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7413_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i11506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n14201), .Z(n12237)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11506_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_0_i189_3_lut_rep_143_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n14143), .C(rom_addr[4]), .D(n14175), .Z(n14101)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i189_3_lut_rep_143_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n1635_bdd_2_lut_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n13108)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1635_bdd_2_lut_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i11384_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n124_adj_644), .C(rom_addr[4]), 
         .D(n14175), .Z(n12115)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11384_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i11759 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12490));
    PFUMX i13390 (.BLUT(n14376), .ALUT(n939), .C0(rom_addr[4]), .Z(n14378));
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14266), 
         .C(rom_addr[3]), .D(n14302), .Z(n1101_adj_708)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i11565_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15505)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i11565_then_4_lut.init = 16'h5924;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), 
         .Z(n476_adj_754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    PFUMX i11702 (.BLUT(n1947_adj_646), .ALUT(n12308), .C0(rom_addr[5]), 
          .Z(n12433));
    LUT4 i1_2_lut_rep_154_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14277), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14112)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_154_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i12143_3_lut (.A(n476_adj_754), .B(n14409), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12143_3_lut.init = 16'hcaca;
    PFUMX i14111 (.BLUT(n15504), .ALUT(n15505), .C0(rom_addr[0]), .Z(n15506));
    PFUMX i11703 (.BLUT(n2010), .ALUT(n6823), .C0(rom_addr[5]), .Z(n12434));
    LUT4 i11546_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15508)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i11546_3_lut_then_4_lut.init = 16'h1208;
    LUT4 n1483_bdd_3_lut_12872_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13502)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1483_bdd_3_lut_12872_4_lut_4_lut.init = 16'hd000;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n491), 
         .C(rom_addr[4]), .D(n14201), .Z(n507)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11071_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n2025_adj_755)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11071_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6864), 
         .C(rom_addr[5]), .D(n12305), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i11830_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n443), .C(rom_addr[4]), 
         .D(n14201), .Z(n12561)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11830_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i11712 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n12443));
    LUT4 i7504_2_lut_rep_215_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14173)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7504_2_lut_rep_215_3_lut.init = 16'h8080;
    LUT4 i12416_2_lut_rep_220_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15518), 
         .Z(n14178)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12416_2_lut_rep_220_3_lut.init = 16'h0909;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n14194), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n1946_adj_692)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut.init = 16'h6099;
    LUT4 i11381_3_lut (.A(n46_adj_13), .B(n61), .C(rom_addr[4]), .Z(n12112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11381_3_lut.init = 16'hcaca;
    LUT4 i11835_4_lut_4_lut (.A(rom_addr[0]), .B(n14205), .C(rom_addr[4]), 
         .D(n14119), .Z(n12566)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11835_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_rep_256_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15518), .Z(n14214)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_256_3_lut_4_lut.init = 16'hffbf;
    LUT4 i13210_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14429)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+(D))))) */ ;
    defparam i13210_then_4_lut.init = 16'h4041;
    PFUMX i13386 (.BLUT(n14370), .ALUT(n14371), .C0(rom_addr[0]), .Z(n14372));
    L6MUX21 i12895 (.D0(n13530), .D1(n13528), .SD(rom_addr[6]), .Z(n13531));
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n6820), 
         .C(rom_addr[4]), .D(n14175), .Z(n1467_adj_745)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7320_2_lut_rep_175_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14133)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7320_2_lut_rep_175_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i11713 (.BLUT(n1499), .ALUT(n1530_adj_676), .C0(rom_addr[5]), 
          .Z(n12444));
    LUT4 i4184_3_lut_rep_172_4_lut (.A(rom_addr[2]), .B(n14254), .C(rom_addr[4]), 
         .D(n14200), .Z(n14130)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4184_3_lut_rep_172_4_lut.init = 16'h04f4;
    LUT4 i1_2_lut_rep_247_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15518), 
         .Z(n14205)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_247_3_lut.init = 16'h6060;
    PFUMX i12893 (.BLUT(n13529), .ALUT(n14139), .C0(rom_addr[5]), .Z(n13530));
    PFUMX i11719 (.BLUT(n12448), .ALUT(n12449), .C0(rom_addr[5]), .Z(n2492_adj_657));
    LUT4 i7638_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14276), 
         .C(n14305), .D(rom_addr[5]), .Z(n2684_adj_712)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7638_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_170_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14128)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_170_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_705)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n14304), .Z(n11737)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h8000;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(n14304), .Z(n14122)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_164_3_lut_4_lut.init = 16'h8000;
    LUT4 i11504_3_lut_4_lut (.A(n14197), .B(n14269), .C(rom_addr[4]), 
         .D(n939), .Z(n12235)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i11504_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14306), .B(rom_addr[4]), 
         .C(n14216), .D(n11825), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i11839_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14220), .C(rom_addr[3]), 
         .Z(n14336)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11839_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 i7613_2_lut_rep_159_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14117)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7613_2_lut_rep_159_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668_adj_702)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    L6MUX21 i13818 (.D0(n15047), .D1(n15044), .SD(rom_addr[7]), .Z(n15048));
    LUT4 i7401_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(n15518), .Z(n46)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A ((C (D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7401_4_lut_4_lut_4_lut.init = 16'h0cc4;
    PFUMX i12890 (.BLUT(n14139), .ALUT(n13527), .C0(rom_addr[5]), .Z(n13528));
    PFUMX i13816 (.BLUT(n15046), .ALUT(n13727), .C0(rom_addr[6]), .Z(n15047));
    LUT4 i7282_2_lut_rep_184_3_lut_4_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n14142)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7282_2_lut_rep_184_3_lut_4_lut.init = 16'h0080;
    PFUMX i13814 (.BLUT(n2237_adj_726), .ALUT(n15043), .C0(rom_addr[6]), 
          .Z(n15044));
    PFUMX i11722 (.BLUT(n1692_adj_672), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n12453));
    LUT4 i5899_3_lut_4_lut_3_lut_3_lut_rep_337 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n14295)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5899_3_lut_4_lut_3_lut_3_lut_rep_337.init = 16'hc7c7;
    LUT4 i5900_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n6843)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5900_3_lut_4_lut_4_lut.init = 16'hc7a0;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_626)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3df0;
    LUT4 i12004_3_lut (.A(n1038_adj_753), .B(n1053), .C(rom_addr[4]), 
         .Z(n12056)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12004_3_lut.init = 16'hcaca;
    LUT4 i7812_2_lut_rep_328 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14286)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7812_2_lut_rep_328.init = 16'hdddd;
    LUT4 i7761_2_lut_rep_338 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14296)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7761_2_lut_rep_338.init = 16'heeee;
    PFUMX i12870 (.BLUT(n13505), .ALUT(n13504), .C0(rom_addr[6]), .Z(n13506));
    LUT4 i5902_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6845)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam i5902_3_lut_4_lut_4_lut.init = 16'h1c1f;
    LUT4 i7805_2_lut_rep_208_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(n15518), 
         .Z(n14166)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7805_2_lut_rep_208_3_lut.init = 16'hd0d0;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 n491_bdd_3_lut_13129 (.A(n236), .B(n491_adj_617), .C(rom_addr[4]), 
         .Z(n13791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n491_bdd_3_lut_13129.init = 16'hcaca;
    LUT4 i7313_2_lut_rep_266_3_lut (.A(rom_addr[0]), .B(n15518), .C(rom_addr[2]), 
         .Z(n14224)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i7313_2_lut_rep_266_3_lut.init = 16'he0e0;
    PFUMX i11723 (.BLUT(n1755), .ALUT(n1786_adj_666), .C0(rom_addr[5]), 
          .Z(n12454));
    LUT4 i1_2_lut_rep_311 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14269)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_311.init = 16'h2222;
    LUT4 i12006_3_lut (.A(n844_adj_681), .B(n859_adj_759), .C(rom_addr[4]), 
         .Z(n12053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12006_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1030_3_lut_rep_262_3_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .Z(n14220)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1030_3_lut_rep_262_3_lut.init = 16'h3e3e;
    LUT4 i4103_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5016)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4103_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i12868 (.BLUT(n1483), .ALUT(n13502), .C0(rom_addr[4]), .Z(n13503));
    LUT4 i13210_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n14428)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i13210_else_4_lut.init = 16'h0140;
    PFUMX i11729 (.BLUT(n12458), .ALUT(n12459), .C0(rom_addr[5]), .Z(n2555_adj_658));
    LUT4 i11316_3_lut (.A(n1451), .B(n1676_adj_642), .C(rom_addr[4]), 
         .Z(n12047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11316_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i277_3_lut_rep_252_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14210)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_0_i277_3_lut_rep_252_3_lut.init = 16'hc1c1;
    LUT4 i4365_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5278)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4365_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i11369_3_lut (.A(n428_adj_664), .B(n443), .C(rom_addr[4]), .Z(n12100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11369_3_lut.init = 16'hcaca;
    LUT4 i7813_2_lut_rep_248_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), .C(rom_addr[1]), 
         .Z(n14206)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7813_2_lut_rep_248_3_lut.init = 16'h0d0d;
    LUT4 i4373_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5286)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam i4373_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i5877_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6820)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i5877_4_lut_4_lut_4_lut.init = 16'he303;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2444_adj_574)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'he00f;
    LUT4 i7524_2_lut_rep_232_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14190)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i7524_2_lut_rep_232_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i11368_3_lut (.A(n205), .B(n460_adj_600), .C(rom_addr[4]), .Z(n12099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11368_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i13383 (.BLUT(n14366), .ALUT(n14367), .C0(rom_addr[0]), .Z(n14368));
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n971)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h0ef0;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i7566_2_lut_rep_258_3_lut_4_lut (.A(rom_addr[0]), .B(n15518), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14216)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i7566_2_lut_rep_258_3_lut_4_lut.init = 16'he000;
    LUT4 i11392_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n12123)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i11392_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 i7495_2_lut_rep_197_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14155)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7495_2_lut_rep_197_3_lut.init = 16'h1010;
    PFUMX i5936 (.BLUT(n6878), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n6879));
    LUT4 i5083_2_lut_rep_329 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14287)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5083_2_lut_rep_329.init = 16'h6666;
    LUT4 i5887_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n6830)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5887_3_lut_3_lut_3_lut.init = 16'h5e5e;
    LUT4 i12446_2_lut_rep_362 (.A(n15518), .B(rom_addr[3]), .Z(n14320)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12446_2_lut_rep_362.init = 16'h1111;
    LUT4 i11346_3_lut_4_lut_4_lut (.A(n14306), .B(rom_addr[3]), .C(n15499), 
         .D(rom_addr[4]), .Z(n12077)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11346_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n46_adj_13)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h0cb0;
    LUT4 i7450_2_lut_rep_354 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14312)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7450_2_lut_rep_354.init = 16'hbbbb;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n731_adj_760)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hec10;
    L6MUX21 i12847 (.D0(n13474), .D1(n13472), .SD(rom_addr[5]), .Z(n13475));
    LUT4 i1_3_lut_rep_206_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n14164)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_rep_206_4_lut.init = 16'heffe;
    LUT4 i3909_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4822)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam i3909_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    PFUMX i12845 (.BLUT(n13473), .ALUT(n14257), .C0(rom_addr[3]), .Z(n13474));
    LUT4 i11374_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14349)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i11374_3_lut_else_4_lut.init = 16'h5102;
    LUT4 i7365_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam i7365_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i5872_3_lut_4_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5872_3_lut_4_lut.init = 16'hf1e0;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_c)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 i11585_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12316)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam i11585_3_lut_4_lut_4_lut.init = 16'h1cc0;
    LUT4 i11362_4_lut (.A(n14232), .B(rom_addr[0]), .C(rom_addr[4]), .D(n5016), 
         .Z(n12093)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11362_4_lut.init = 16'h0aca;
    LUT4 i2_2_lut_rep_162_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14120)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_rep_162_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i11318_3_lut (.A(n2077), .B(n1529_c), .C(rom_addr[4]), .Z(n12049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11318_3_lut.init = 16'hcaca;
    LUT4 i5940_4_lut_4_lut (.A(n14306), .B(rom_addr[3]), .C(n14153), .D(n14267), 
         .Z(n6883)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5940_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_695)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 i1_2_lut_rep_267_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14225)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_267_3_lut.init = 16'hfefe;
    LUT4 i7540_2_lut_rep_209_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14167)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7540_2_lut_rep_209_3_lut_4_lut.init = 16'h6000;
    LUT4 i7476_2_lut_rep_233_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14191)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7476_2_lut_rep_233_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14296), .B(n14247), 
         .C(rom_addr[4]), .D(n1483_adj_671), .Z(n1499_adj_747)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14296), .B(n14247), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_638)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i1_2_lut_rep_163_2_lut_3_lut_3_lut_4_lut (.A(n15518), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14121)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_163_2_lut_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i11552_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n12283)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam i11552_3_lut_4_lut_4_lut_4_lut.init = 16'h3081;
    PFUMX i12843 (.BLUT(n14191), .ALUT(n13470), .C0(rom_addr[4]), .Z(n13472));
    LUT4 i7498_2_lut_rep_185_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14143)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7498_2_lut_rep_185_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_0_i540_3_lut_rep_246_3_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .Z(n14204)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_0_i540_3_lut_rep_246_3_lut.init = 16'hc2c2;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_c)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i12479_2_lut_rep_179_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14137)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12479_2_lut_rep_179_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_284_3_lut (.A(n15518), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14242)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_284_3_lut.init = 16'hefef;
    LUT4 i7492_2_lut_rep_187_3_lut_4_lut (.A(n15518), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n14145)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7492_2_lut_rep_187_3_lut_4_lut.init = 16'h1000;
    LUT4 i12470_2_lut_rep_363 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14321)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12470_2_lut_rep_363.init = 16'h1111;
    LUT4 i7564_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13623), 
         .Z(n3069_adj_566)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7564_2_lut_3_lut.init = 16'h1010;
    LUT4 i7534_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_adj_725), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7534_2_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(n14287), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14313), .Z(n908_adj_703)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'hf808;
    LUT4 i11546_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15507)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam i11546_3_lut_else_4_lut.init = 16'h4006;
    LUT4 i12407_2_lut_rep_312 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14270)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12407_2_lut_rep_312.init = 16'heeee;
    LUT4 i12463_2_lut_rep_343 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14301)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12463_2_lut_rep_343.init = 16'h4444;
    LUT4 i3610_3_lut_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4523)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3610_3_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 i12256_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_616), 
         .D(n1676), .Z(n1724_adj_637)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12256_3_lut_4_lut.init = 16'hf1e0;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443_adj_627)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 n5061_bdd_2_lut_12995_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13638)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n5061_bdd_2_lut_12995_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i12459_2_lut_rep_314 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14272)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12459_2_lut_rep_314.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(n14292), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14228), .Z(n2332)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'h2f20;
    LUT4 i5967_2_lut_rep_344 (.A(n15518), .B(rom_addr[2]), .Z(n14302)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5967_2_lut_rep_344.init = 16'h6666;
    LUT4 i11356_4_lut (.A(n6858), .B(n14141), .C(rom_addr[4]), .D(n14268), 
         .Z(n12087)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11356_4_lut.init = 16'hcac0;
    LUT4 i7350_2_lut_rep_183_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14141)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7350_2_lut_rep_183_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_740)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n220_adj_751)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(B (C+!(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h434f;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n308)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_3_lut_3_lut.init = 16'h3434;
    LUT4 i7188_2_lut_rep_270_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14228)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7188_2_lut_rep_270_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_0_i442_3_lut_rep_286_4_lut_3_lut (.A(rom_addr[0]), 
         .B(n15518), .C(rom_addr[2]), .Z(n14244)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i442_3_lut_rep_286_4_lut_3_lut.init = 16'h4242;
    LUT4 i4922_2_lut_rep_219_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14177)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4922_2_lut_rep_219_3_lut.init = 16'hf9f9;
    LUT4 i4326_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5239)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4326_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i12682_then_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14344)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12682_then_4_lut.init = 16'h0004;
    LUT4 n4839_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n13434)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n4839_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 i5193_2_lut_rep_230_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14188)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5193_2_lut_rep_230_3_lut.init = 16'h1e1e;
    LUT4 i12419_2_lut_rep_316 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14274)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12419_2_lut_rep_316.init = 16'hbbbb;
    L6MUX21 i12615 (.D0(n13141), .D1(n13139), .SD(rom_addr[5]), .Z(n13142));
    PFUMX i12809 (.BLUT(n13434), .ALUT(n13433), .C0(rom_addr[4]), .Z(n13435));
    LUT4 i7351_2_lut_rep_271_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14229)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7351_2_lut_rep_271_3_lut.init = 16'h6060;
    LUT4 i7318_2_lut_rep_178_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14136)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7318_2_lut_rep_178_3_lut_4_lut.init = 16'hf9f0;
    LUT4 i12280_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986_adj_588), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12280_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i11753 (.BLUT(n12480), .ALUT(n12481), .C0(rom_addr[5]), .Z(n12484));
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(n14292), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14241), .Z(n2298_adj_697)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13270 (.D0(n13974), .D1(n13971), .SD(rom_addr[5]), .Z(n13975));
    PFUMX i12613 (.BLUT(n270), .ALUT(n13140), .C0(rom_addr[4]), .Z(n13141));
    LUT4 i4119_2_lut_rep_225_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14183)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4119_2_lut_rep_225_3_lut.init = 16'h6060;
    PFUMX i13268 (.BLUT(n13973), .ALUT(n13972), .C0(rom_addr[4]), .Z(n13974));
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i7398_2_lut_rep_349 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14307)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7398_2_lut_rep_349.init = 16'heeee;
    LUT4 i11349_3_lut (.A(n2025_adj_755), .B(n2040_adj_687), .C(rom_addr[4]), 
         .Z(n12080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11349_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1307_3_lut_rep_367 (.A(rom_addr[0]), .B(n15518), 
         .C(rom_addr[2]), .Z(n14325)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1307_3_lut_rep_367.init = 16'h2424;
    LUT4 i12682_else_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n14343)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i12682_else_4_lut.init = 16'h0812;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491_adj_617)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    PFUMX i11754 (.BLUT(n12482), .ALUT(n12483), .C0(rom_addr[5]), .Z(n12485));
    PFUMX i13266 (.BLUT(n13970), .ALUT(n14232), .C0(rom_addr[4]), .Z(n13971));
    LUT4 i5893_2_lut_rep_260_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14218)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5893_2_lut_rep_260_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 i12501_2_lut_rep_274_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n15518), 
         .Z(n14232)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12501_2_lut_rep_274_3_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    LUT4 i5961_2_lut_rep_253_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14211)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5961_2_lut_rep_253_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i11406_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12137)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11406_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_590)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    PFUMX i11758 (.BLUT(n12487), .ALUT(n12488), .C0(rom_addr[5]), .Z(n12489));
    LUT4 i4457_3_lut_rep_259_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14217)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4457_3_lut_rep_259_4_lut_3_lut.init = 16'h6262;
    LUT4 i7343_2_lut_rep_204_2_lut_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14162)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7343_2_lut_rep_204_2_lut_3_lut.init = 16'h0606;
    LUT4 i5969_2_lut_rep_371 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n15496)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5969_2_lut_rep_371.init = 16'h6666;
    PFUMX i11760 (.BLUT(n349), .ALUT(n380_adj_14), .C0(rom_addr[5]), .Z(n12491));
    LUT4 i4538_3_lut_rep_261_4_lut_3_lut (.A(n15518), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14219)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4538_3_lut_rep_261_4_lut_3_lut.init = 16'hd6d6;
    LUT4 n549_bdd_3_lut_13232_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13540)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n549_bdd_3_lut_13232_4_lut.init = 16'h6000;
    LUT4 i7414_2_lut_rep_257_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14215)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7414_2_lut_rep_257_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i4430_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5343)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4430_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i7281_2_lut_rep_182_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14140)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7281_2_lut_rep_182_3_lut_4_lut.init = 16'h0090;
    PFUMX i11805 (.BLUT(n12534), .ALUT(n12535), .C0(rom_addr[5]), .Z(n12536));
    LUT4 i7810_2_lut_rep_317 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14275)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7810_2_lut_rep_317.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(n15518), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n557_adj_738)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    PFUMX i12802 (.BLUT(n14142), .ALUT(n13421), .C0(n14288), .Z(n13422));
    LUT4 i7311_2_lut_rep_202_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14160)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7311_2_lut_rep_202_3_lut.init = 16'hf6f6;
    LUT4 i2002_2_lut_rep_345 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14303)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2002_2_lut_rep_345.init = 16'h6666;
    LUT4 i5904_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n6847)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;
    defparam i5904_4_lut_4_lut_4_lut.init = 16'h07c0;
    PFUMX i11810 (.BLUT(n12537), .ALUT(n12538), .C0(rom_addr[5]), .Z(n12541));
    LUT4 i7377_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14306), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i7377_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    PFUMX i11811 (.BLUT(n12539), .ALUT(n12540), .C0(rom_addr[5]), .Z(n12542));
    LUT4 i7373_2_lut_rep_279_3_lut (.A(rom_addr[0]), .B(n15518), .C(rom_addr[2]), 
         .Z(n14237)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7373_2_lut_rep_279_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_rep_318 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14276)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_318.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n14292), .D(rom_addr[3]), .Z(n11715)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'h8000;
    LUT4 i1_2_lut_rep_227_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n15518), .Z(n14185)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_227_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n908)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C+(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h5ef0;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1172)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_3_lut.init = 16'h6363;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_575)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 i11996_3_lut (.A(n1228_adj_746), .B(n1243_adj_593), .C(rom_addr[4]), 
         .Z(n12065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11996_3_lut.init = 16'hcaca;
    LUT4 i13073_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n14347)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B+((D)+!C)))) */ ;
    defparam i13073_then_4_lut.init = 16'h7547;
    LUT4 i7600_2_lut_rep_319 (.A(rom_addr[2]), .B(rom_addr[4]), .Z(n14277)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7600_2_lut_rep_319.init = 16'heeee;
    L6MUX21 i11815 (.D0(n12544), .D1(n12545), .SD(rom_addr[5]), .Z(n12546));
    LUT4 i13073_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n14346)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i13073_else_4_lut.init = 16'h7d62;
    LUT4 i1_2_lut_rep_207_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14165)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_207_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n4_adj_15)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i7526_2_lut_rep_251_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14209)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7526_2_lut_rep_251_3_lut_4_lut.init = 16'h0060;
    LUT4 i7493_2_lut_rep_145_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14320), .Z(n14103)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i7493_2_lut_rep_145_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_236_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14194)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_236_3_lut_4_lut.init = 16'h1000;
    PFUMX i11818 (.BLUT(n12547), .ALUT(n12548), .C0(rom_addr[5]), .Z(n12549));
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut (.A(n14286), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14228), .Z(n1676_adj_763)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11274_2_lut_rep_346 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14304)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11274_2_lut_rep_346.init = 16'h2222;
    L6MUX21 i11828 (.D0(n12557), .D1(n12558), .SD(rom_addr[5]), .Z(n12559));
    PFUMX i11831 (.BLUT(n12560), .ALUT(n12561), .C0(rom_addr[5]), .Z(n12562));
    LUT4 i1_2_lut_rep_249_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14207)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_249_3_lut.init = 16'h2020;
    PFUMX i12611 (.BLUT(n13138), .ALUT(n13137), .C0(rom_addr[4]), .Z(n13139));
    LUT4 i1_2_lut_rep_224_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(n15518), .Z(n14182)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_224_3_lut_4_lut.init = 16'h2000;
    LUT4 i12149_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1076), 
         .D(n1084), .Z(n1085_adj_720)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12149_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 i7553_2_lut_rep_348 (.A(n15518), .B(rom_addr[2]), .Z(n14306)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7553_2_lut_rep_348.init = 16'heeee;
    LUT4 i11332_4_lut (.A(n14223), .B(n14268), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12063)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11332_4_lut.init = 16'hfaca;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898_adj_741)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut.init = 16'hf1e1;
    LUT4 i7845_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_737)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7845_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i11374_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14350)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam i11374_3_lut_then_4_lut.init = 16'h5c42;
    LUT4 i11375_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14353)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i11375_4_lut_then_4_lut.init = 16'ha9c8;
    LUT4 i11565_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n15504)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i11565_else_4_lut.init = 16'h5092;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i11312_3_lut (.A(n1101), .B(n731_adj_760), .C(rom_addr[4]), .Z(n12043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11312_3_lut.init = 16'hcaca;
    LUT4 n212_bdd_3_lut_12624_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13158)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n212_bdd_3_lut_12624_4_lut_4_lut_4_lut.init = 16'h4044;
    PFUMX i11836 (.BLUT(n12563), .ALUT(n12564), .C0(rom_addr[5]), .Z(n12567));
    PFUMX i11837 (.BLUT(n12565), .ALUT(n12566), .C0(rom_addr[5]), .Z(n12568));
    L6MUX21 i13191 (.D0(n13872), .D1(n13870), .SD(rom_addr[6]), .Z(n13873));
    PFUMX i11844 (.BLUT(n12573), .ALUT(n12574), .C0(rom_addr[5]), .Z(n12575));
    PFUMX i11846 (.BLUT(n12356), .ALUT(n891_adj_736), .C0(rom_addr[5]), 
          .Z(n12577));
    PFUMX i13189 (.BLUT(n14182), .ALUT(n13871), .C0(rom_addr[5]), .Z(n13872));
    PFUMX i13187 (.BLUT(n13869), .ALUT(n13868), .C0(rom_addr[5]), .Z(n13870));
    PFUMX i11853 (.BLUT(n12582), .ALUT(n12583), .C0(rom_addr[5]), .Z(n12584));
    LUT4 i7581_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_759)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7581_3_lut_3_lut_4_lut.init = 16'hf010;
    PFUMX i11284 (.BLUT(n12013), .ALUT(n12014), .C0(rom_addr[5]), .Z(n12015));
    PFUMX i11858 (.BLUT(n12585), .ALUT(n12586), .C0(rom_addr[5]), .Z(n12589));
    PFUMX i11287 (.BLUT(n12016), .ALUT(n12017), .C0(rom_addr[5]), .Z(n12018));
    LUT4 rom_addr_0__bdd_3_lut_13246_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13581)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_13246_3_lut_4_lut.init = 16'hf011;
    PFUMX i11859 (.BLUT(n12587), .ALUT(n12588), .C0(rom_addr[5]), .Z(n12590));
    L6MUX21 i13173 (.D0(n13851), .D1(n13849), .SD(rom_addr[6]), .Z(n13852));
    LUT4 i1_2_lut_rep_218_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n14176)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_218_3_lut.init = 16'h9090;
    PFUMX i11289 (.BLUT(n1117_adj_580), .ALUT(n11718), .C0(rom_addr[5]), 
          .Z(n12020));
    L6MUX21 i12590 (.D0(n13110), .D1(n13107), .SD(rom_addr[5]), .Z(n13111));
    PFUMX i13171 (.BLUT(n1676_adj_763), .ALUT(n13850), .C0(n14270), .Z(n13851));
    PFUMX i11293 (.BLUT(n12022), .ALUT(n12023), .C0(rom_addr[5]), .Z(n12024));
    PFUMX i13169 (.BLUT(n14141), .ALUT(n13848), .C0(rom_addr[5]), .Z(n13849));
    PFUMX i12588 (.BLUT(n13109), .ALUT(n13108), .C0(rom_addr[4]), .Z(n13110));
    PFUMX i12551 (.BLUT(n14216), .ALUT(n13021), .C0(n14288), .Z(n13022));
    PFUMX i12743 (.BLUT(n13332), .ALUT(n13331), .C0(rom_addr[6]), .Z(n13333));
    PFUMX i11302 (.BLUT(n12031), .ALUT(n12032), .C0(rom_addr[5]), .Z(n12033));
    PFUMX i11305 (.BLUT(n12034), .ALUT(n12035), .C0(rom_addr[5]), .Z(n12036));
    
endmodule
//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_36[1] , lcd_dc_c_8, 
            \data[7] , \data[6] , \data[5] , \data[4] , \data[3] , 
            \data[2] , \data[1] , init_data, show_char_data, debug_led1_c_5, 
            \state[1] , cnt_rom_prepare, \state[2] , \state[4] ) /* synthesis syn_module_defined=1 */ ;
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
    input [8:0]init_data;
    input [8:0]show_char_data;
    input debug_led1_c_5;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input \state[2] ;
    input \state[4] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_84;
    
    wire en_write_N_106, n13977, n13978;
    
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
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(debug_led1_c_5), 
         .Z(data_8__N_84[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    LUT4 state_2__bdd_4_lut_13445 (.A(\state[1] ), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[2]), .D(cnt_rom_prepare[1]), .Z(n13977)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut_13445.init = 16'haaea;
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n13978)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
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
    PFUMX i13273 (.BLUT(n13978), .ALUT(n13977), .C0(debug_led1_c_5), .Z(en_write_N_106));
    
endmodule
//
// Verilog Description of module segment_led
//

module segment_led (count, segment_led_c_0, segment_led_c_1, segment_led_c_2, 
            segment_led_c_3, segment_led_c_5, segment_led_c_6, count_3__N_11, 
            n6, n1, segment_led_c_4) /* synthesis syn_module_defined=1 */ ;
    input [3:0]count;
    output segment_led_c_0;
    output segment_led_c_1;
    output segment_led_c_2;
    output segment_led_c_3;
    output segment_led_c_5;
    output segment_led_c_6;
    output count_3__N_11;
    output n6;
    output n1;
    output segment_led_c_4;
    
    
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
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(count[3]), 
         .Z(count_3__N_11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i540_2_lut (.A(count[0]), .B(count[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i540_2_lut.init = 16'h6666;
    LUT4 i506_1_lut (.A(count[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i506_1_lut.init = 16'h5555;
    LUT4 i12426_4_lut (.A(count[0]), .B(count[2]), .C(count[3]), .D(count[1]), 
         .Z(segment_led_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12426_4_lut.init = 16'h0511;
    
endmodule
