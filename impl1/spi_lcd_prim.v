// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 16 20:49:49 2025
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
    
    wire sys_clk_c /* synthesis is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(20[21:28])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire GND_net, VCC_net, sys_rst_n_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, 
        lcd_mosi_c, lcd_cs_c, segment_led_c_6, segment_led_c_5, segment_led_c_4, 
        segment_led_c_3, segment_led_c_2, segment_led_c_1, segment_led_c_0;
    wire [8:0]data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(34[17:21])
    
    wire wr_done;
    wire [8:0]init_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(38[17:26])
    wire [6:0]ascii_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(44[17:26])
    
    wire n14;
    wire [8:0]show_char_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(48[17:31])
    wire [3:0]count;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(58[11:16])
    
    wire count_3__N_11;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    wire [3:0]state_3__N_36;
    
    wire debug_led1_c_5;
    wire [5:0]state_adj_814;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(71[13:23])
    wire [8:0]init_data_8__N_251;
    
    wire sys_clk_50MHz_enable_81, sys_clk_50MHz_enable_53;
    wire [3:0]state_adj_819;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [2:0]cnt_rom_prepare;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(72[17:32])
    
    wire length_num_flag;
    wire [4:0]cnt_length_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    wire [8:0]end_x_8__N_306;
    wire [8:0]end_y_8__N_324;
    wire [3:0]state_3__N_379;
    wire [1:0]cnt1_adj_828;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(52[17:21])
    
    wire sys_clk_50MHz_enable_62, n1482, n5, n1, n6, n16047, n14834, 
        n8856, sys_clk_50MHz_enable_30, sys_clk_50MHz_enable_59, n6965, 
        n22, n23;
    
    VHI i2 (.Z(VCC_net));
    lcd_write lcd_write_inst (.sys_clk_50MHz(sys_clk_50MHz), .wr_done(wr_done), 
            .\state[2] (state[2]), .lcd_cs_c(lcd_cs_c), .lcd_sclk_c(lcd_sclk_c), 
            .\cnt_sclk[3] (cnt_sclk[3]), .sys_clk_50MHz_enable_62(sys_clk_50MHz_enable_62), 
            .\cnt_sclk[2] (cnt_sclk[2]), .\data[2] (data[2]), .\data[3] (data[3]), 
            .n1482(n1482), .\data[0] (data[0]), .\data[1] (data[1]), .\data[7] (data[7]), 
            .\data[4] (data[4]), .\state_3__N_36[1] (state_3__N_36[1]), 
            .n14834(n14834), .\data[5] (data[5]), .\data[6] (data[6]), 
            .lcd_mosi_c(lcd_mosi_c)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(84[12] 96[2])
    ROM128X1A mux_298_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[5])) /* synthesis initstate=0x000000000000000003C3038607107E2A */ ;
    defparam mux_298_Mux_5.initval = 128'h000000000000000003C3038607107E2A;
    ROM128X1A mux_298_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_298_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(25[21:29])
    ROM128X1A mux_298_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_298_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_298_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_251[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_298_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(24[21:27])
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(23[21:28])
    LUT4 m1_lut (.Z(n16047)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    lcd_init lcd_init_inst (.sys_clk_50MHz(sys_clk_50MHz), .sys_clk_50MHz_enable_81(sys_clk_50MHz_enable_81), 
            .n1482(n1482), .cnt_s2_num({cnt_s2_num}), .init_data({init_data}), 
            .debug_led1_c_5(debug_led1_c_5), .n16047(n16047), .lcd_rst_c(lcd_rst_c), 
            .GND_net(GND_net), .\state[4] (state_adj_814[4]), .\state[2] (state_adj_814[2]), 
            .\init_data_8__N_251[0] (init_data_8__N_251[0]), .\init_data_8__N_251[5] (init_data_8__N_251[5]), 
            .\init_data_8__N_251[4] (init_data_8__N_251[4]), .\init_data_8__N_251[2] (init_data_8__N_251[2]), 
            .wr_done(wr_done), .n6965(n6965)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(112[11] 122[2])
    LUT4 i744_2_lut (.A(wr_done), .B(state_adj_814[4]), .Z(sys_clk_50MHz_enable_81)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i744_2_lut.init = 16'hbbbb;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i1_2_lut_rep_309 (.A(length_num_flag), .B(cnt_length_num[4]), .Z(sys_clk_50MHz_enable_59)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_309.init = 16'h2222;
    LUT4 i2051_2_lut_3_lut (.A(length_num_flag), .B(cnt_length_num[4]), 
         .C(cnt_length_num[0]), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i2051_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i751_4_lut_rep_316 (.A(debug_led1_c_5), .B(state_3__N_379[1]), 
         .C(cnt1_adj_828[0]), .D(cnt1_adj_828[1]), .Z(sys_clk_50MHz_enable_30)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i751_4_lut_rep_316.init = 16'hceee;
    LUT4 i2048_2_lut_4_lut (.A(debug_led1_c_5), .B(state_3__N_379[1]), .C(cnt1_adj_828[0]), 
         .D(cnt1_adj_828[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2048_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i10210_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i10210_3_lut_4_lut.init = 16'h7f80;
    LUT4 i10203_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam i10203_2_lut_3_lut.init = 16'h7878;
    LUT4 seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut (.A(count[1]), .B(count[0]), 
         .C(count[2]), .D(count[3]), .Z(segment_led_c_5)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0571;
    LUT4 seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut (.A(count[1]), .B(count[0]), 
         .C(count[2]), .D(count[3]), .Z(segment_led_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h057a;
    LUT4 i745_4_lut (.A(state_adj_819[2]), .B(length_num_flag), .C(n8856), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_53)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i745_4_lut.init = 16'hceee;
    pll pll_u1 (.sys_clk_c(sys_clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(78[5] 82[2])
    segment_led segment_led_inst (.count({count}), .segment_led_c_0(segment_led_c_0), 
            .segment_led_c_1(segment_led_c_1), .segment_led_c_2(segment_led_c_2), 
            .segment_led_c_3(segment_led_c_3), .count_3__N_11(count_3__N_11), 
            .n6(n6), .n1(n1), .segment_led_c_4(segment_led_c_4)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(72[13] 76[2])
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n14834), .C(state[2]), .D(cnt_sclk[2]), 
         .Z(sys_clk_50MHz_enable_62)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX count_711__i3 (.D(n22), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_711__i3.GSR = "ENABLED";
    FD1S3IX count_711__i2 (.D(n23), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_711__i2.GSR = "ENABLED";
    FD1S3IX count_711__i1 (.D(n6), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_711__i1.GSR = "ENABLED";
    FD1S3IX count_711__i0 (.D(n1), .CK(debug_led2_c_3), .CD(count_3__N_11), 
            .Q(count[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(69[18:30])
    defparam count_711__i0.GSR = "ENABLED";
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(26[21:29])
    lcd_show_char lcd_show_char_inst (.show_char_data({show_char_data}), .sys_clk_50MHz(sys_clk_50MHz), 
            .cnt_length_num({cnt_length_num[4], Open_0, Open_1, Open_2, 
            cnt_length_num[0]}), .wr_done(wr_done), .length_num_flag(length_num_flag), 
            .n14(n14), .cnt_rom_prepare({cnt_rom_prepare}), .sys_clk_50MHz_enable_53(sys_clk_50MHz_enable_53), 
            .sys_clk_50MHz_enable_59(sys_clk_50MHz_enable_59), .\state[1] (state_adj_819[1]), 
            .\end_x_8__N_306[6] (end_x_8__N_306[6]), .GND_net(GND_net), 
            .\ascii_num[6] (ascii_num[6]), .\end_x_8__N_306[5] (end_x_8__N_306[5]), 
            .\ascii_num[3] (ascii_num[3]), .\ascii_num[4] (ascii_num[4]), 
            .\ascii_num[1] (ascii_num[1]), .\ascii_num[2] (ascii_num[2]), 
            .debug_led2_c_3(debug_led2_c_3), .\ascii_num[0] (ascii_num[0]), 
            .\end_x_8__N_306[7] (end_x_8__N_306[7]), .\end_y_8__N_324[5] (end_y_8__N_324[5]), 
            .\state[2] (state_adj_819[2]), .\end_x_8__N_306[4] (end_x_8__N_306[4]), 
            .\end_y_8__N_324[4] (end_y_8__N_324[4]), .\state_3__N_379[1] (state_3__N_379[1]), 
            .n8856(n8856), .\end_x_8__N_306[3] (end_x_8__N_306[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(124[16] 138[2])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(27[21:27])
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
    show_string_number_ctrl show_string_number_ctrl_inst (.\ascii_num[0] (ascii_num[0]), 
            .sys_clk_50MHz(sys_clk_50MHz), .debug_led1_c_5(debug_led1_c_5), 
            .cnt1({cnt1_adj_828}), .\state_3__N_379[1] (state_3__N_379[1]), 
            .n5(n5), .\end_y_8__N_324[4] (end_y_8__N_324[4]), .n6965(n6965), 
            .\ascii_num[3] (ascii_num[3]), .sys_clk_50MHz_enable_30(sys_clk_50MHz_enable_30), 
            .\end_x_8__N_306[7] (end_x_8__N_306[7]), .\end_x_8__N_306[6] (end_x_8__N_306[6]), 
            .\end_x_8__N_306[5] (end_x_8__N_306[5]), .\ascii_num[6] (ascii_num[6]), 
            .\end_x_8__N_306[4] (end_x_8__N_306[4]), .\end_y_8__N_324[5] (end_y_8__N_324[5]), 
            .\ascii_num[1] (ascii_num[1]), .\ascii_num[2] (ascii_num[2]), 
            .\ascii_num[4] (ascii_num[4]), .debug_led2_c_3(debug_led2_c_3), 
            .\end_x_8__N_306[3] (end_x_8__N_306[3])) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(140[26] 152[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_36[1] (state_3__N_36[1]), .debug_led1_c_5(debug_led1_c_5), 
            .lcd_dc_c_8(lcd_dc_c_8), .\data[7] (data[7]), .\data[6] (data[6]), 
            .\data[5] (data[5]), .\data[4] (data[4]), .\data[3] (data[3]), 
            .\data[2] (data[2]), .\data[1] (data[1]), .init_data({init_data}), 
            .show_char_data({show_char_data}), .\state[2] (state_adj_814[2]), 
            .\state[4] (state_adj_814[4]), .\state[1] (state_adj_819[1]), 
            .cnt_rom_prepare({cnt_rom_prepare})) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(98[10] 110[2])
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (sys_clk_50MHz, wr_done, \state[2] , lcd_cs_c, lcd_sclk_c, 
            \cnt_sclk[3] , sys_clk_50MHz_enable_62, \cnt_sclk[2] , \data[2] , 
            \data[3] , n1482, \data[0] , \data[1] , \data[7] , \data[4] , 
            \state_3__N_36[1] , n14834, \data[5] , \data[6] , lcd_mosi_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output wr_done;
    output \state[2] ;
    output lcd_cs_c;
    output lcd_sclk_c;
    output \cnt_sclk[3] ;
    input sys_clk_50MHz_enable_62;
    output \cnt_sclk[2] ;
    input \data[2] ;
    input \data[3] ;
    output n1482;
    input \data[0] ;
    input \data[1] ;
    input \data[7] ;
    input \data[4] ;
    input \state_3__N_36[1] ;
    output n14834;
    input \data[5] ;
    input \data[6] ;
    output lcd_mosi_c;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    
    wire mosi_N_75, sys_clk_50MHz_enable_105;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(44[17:22])
    wire [15:0]n154;
    
    wire mosi_N_74, mosi_N_73, sclk_flag, sclk_flag_N_81, mosi_N_72, 
        mosi_N_71, mosi_N_70, mosi_N_69, n2922, n2919, n2915;
    wire [3:0]state_3__N_44;
    wire [3:0]cnt_sclk;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(50[17:25])
    
    wire n14764;
    wire [3:0]n15;
    wire [4:0]cnt_delay;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(46[17:26])
    
    wire n6970;
    wire [4:0]n25;
    
    wire n1, sclk_N_64;
    wire [3:0]n100;
    
    wire n6012, n12437, n14659, n12429, n12440, n12372, mosi_N_76, 
        sys_clk_50MHz_enable_102;
    wire [0:0]n1069;
    wire [3:0]state_3__N_40;
    
    wire n6010, n6011, n14873, n2894, mosi_N_67, mosi_N_66, n6, 
        n12412, sys_clk_50MHz_enable_104, n13, n14, n1619;
    
    FD1P3IX cnt1_FSM_i13 (.D(n154[12]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_75));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_74), .SP(sys_clk_50MHz_enable_105), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n154[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n154[10]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_74));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_73), .SP(sys_clk_50MHz_enable_105), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n154[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n154[8]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_73));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_72), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n154[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n154[6]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_72));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_71), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n154[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n154[4]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_71));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_70), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n154[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n154[2]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_70));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_69), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n154[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n154[0]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_69));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n2922), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2919), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n2915), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_44[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n14764), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_713__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n6970), 
            .Q(cnt_delay[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_713__i4.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_81), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_44[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    FD1S3IX sclk_99 (.D(sclk_N_64), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_62), .CD(n14764), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_62), .CD(n14764), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_62), .CD(n14764), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    LUT4 i5156_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_72), .Z(n6012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5156_3_lut.init = 16'hcaca;
    LUT4 i871_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .D(\cnt_sclk[3] ), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i871_3_lut_4_lut.init = 16'h7f80;
    LUT4 i864_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i864_2_lut_3_lut.init = 16'h7878;
    LUT4 i11791_2_lut (.A(mosi_N_69), .B(mosi_N_70), .Z(n12437)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11791_2_lut.init = 16'h1111;
    LUT4 i13139_4_lut (.A(n14659), .B(mosi_N_69), .C(mosi_N_70), .D(n12429), 
         .Z(n12440)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(144[10] 157[22])
    defparam i13139_4_lut.init = 16'hfffe;
    LUT4 i11783_3_lut (.A(mosi_N_71), .B(mosi_N_72), .C(mosi_N_73), .Z(n12429)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i11783_3_lut.init = 16'h0101;
    LUT4 i13057_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n12372), .D(cnt_delay[2]), 
         .Z(n6970)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(76[10] 79[26])
    defparam i13057_4_lut.init = 16'hfffb;
    LUT4 i11728_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n12372)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11728_2_lut.init = 16'heeee;
    LUT4 i1_1_lut (.A(mosi_N_76), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_64)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i13031_4_lut (.A(cnt_sclk[0]), .B(\cnt_sclk[3] ), .C(\cnt_sclk[2] ), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_81)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(106[13:44])
    defparam i13031_4_lut.init = 16'h0200;
    LUT4 i765_1_lut (.A(wr_done), .Z(n1482)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(163[10] 166[25])
    defparam i765_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n14764), .C(state[1]), .Z(sys_clk_50MHz_enable_102)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i2066_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_74), .D(mosi_N_75), 
         .Z(n1069[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i2066_4_lut.init = 16'hcac0;
    LUT4 state_3__N_32_I_0_2_lut_rep_168 (.A(state[1]), .B(state_3__N_40[1]), 
         .Z(n14659)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam state_3__N_32_I_0_2_lut_rep_168.init = 16'h2222;
    LUT4 i5155_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(\data[7] ), 
         .D(n6010), .Z(n6011)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i5155_3_lut_4_lut.init = 16'hfd20;
    LUT4 i857_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(97[21:36])
    defparam i857_2_lut.init = 16'h6666;
    LUT4 i2080_3_lut_4_lut (.A(state[1]), .B(state_3__N_40[1]), .C(state_3__N_44[3]), 
         .D(\state[2] ), .Z(n2915)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i2080_3_lut_4_lut.init = 16'h2f22;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_76), .SP(sys_clk_50MHz_enable_102), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n154[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_75), .SP(sys_clk_50MHz_enable_105), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n154[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    LUT4 i10246_3_lut_4_lut (.A(cnt_delay[2]), .B(n14873), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10246_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5157_3_lut (.A(n6012), .B(\data[4] ), .C(mosi_N_71), .Z(n2894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5157_3_lut.init = 16'hcaca;
    LUT4 i2086_2_lut (.A(state[0]), .B(\state_3__N_36[1] ), .Z(n2922)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2086_2_lut.init = 16'h2222;
    LUT4 i12868_4_lut_4_lut (.A(n14659), .B(n12437), .C(n6011), .D(n1069[0]), 
         .Z(mosi_N_67)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[13:55])
    defparam i12868_4_lut_4_lut.init = 16'hf4b0;
    PFUMX mosi_I_1 (.BLUT(n2894), .ALUT(mosi_N_67), .C0(n12440), .Z(mosi_N_66)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;
    LUT4 i2083_4_lut (.A(state[1]), .B(\state_3__N_36[1] ), .C(state_3__N_40[1]), 
         .D(state[0]), .Z(n2919)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(62[9] 67[16])
    defparam i2083_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_40[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_343 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n14834)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_343.init = 16'heeee;
    LUT4 i13020_3_lut_rep_273_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(\cnt_sclk[3] ), 
         .D(\cnt_sclk[2] ), .Z(n14764)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i13020_3_lut_rep_273_4_lut.init = 16'h0100;
    LUT4 i13010_4_lut (.A(n12412), .B(state[0]), .C(state_3__N_40[1]), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_104)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i13010_4_lut.init = 16'hefee;
    LUT4 i11767_4_lut (.A(\state[2] ), .B(n13), .C(sclk_flag), .D(n14), 
         .Z(n12412)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i11767_4_lut.init = 16'ha080;
    LUT4 i5_4_lut (.A(mosi_N_76), .B(mosi_N_74), .C(mosi_N_70), .D(mosi_N_72), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_73), .B(mosi_N_75), .C(mosi_N_71), .D(mosi_N_69), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7388_2_lut (.A(mosi_N_66), .B(state[0]), .Z(n1619)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam i7388_2_lut.init = 16'h2222;
    LUT4 i10228_2_lut_rep_382 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n14873)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10228_2_lut_rep_382.init = 16'h8888;
    LUT4 i10239_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10239_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5154_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_69), .Z(n6010)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(145[9] 155[16])
    defparam i5154_3_lut.init = 16'hcaca;
    LUT4 i10232_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10232_2_lut_3_lut.init = 16'h7878;
    LUT4 i10225_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10225_2_lut.init = 16'h6666;
    LUT4 i10223_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam i10223_1_lut.init = 16'h5555;
    LUT4 i32_2_lut_rep_206_4_lut (.A(n14834), .B(\cnt_sclk[2] ), .C(\cnt_sclk[3] ), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_105)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_206_4_lut.init = 16'h0400;
    FD1P3AX mosi_100 (.D(n1619), .SP(sys_clk_50MHz_enable_104), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=96 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 state_3__N_33_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(169[13:44])
    defparam state_3__N_33_I_0_118_1_lut.init = 16'h5555;
    LUT4 i2049_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_62), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(94[10] 97[37])
    defparam i2049_2_lut.init = 16'h6666;
    FD1S3IX cnt_delay_713__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n6970), 
            .Q(cnt_delay[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_713__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_713__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n6970), 
            .Q(cnt_delay[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_713__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_713__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n6970), 
            .Q(cnt_delay[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_713__i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_713__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n6970), 
            .Q(cnt_delay[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(77[22:38])
    defparam cnt_delay_713__i0.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n154[14]), .SP(sys_clk_50MHz_enable_105), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_76));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_init
//

module lcd_init (sys_clk_50MHz, sys_clk_50MHz_enable_81, n1482, cnt_s2_num, 
            init_data, debug_led1_c_5, n16047, lcd_rst_c, GND_net, 
            \state[4] , \state[2] , \init_data_8__N_251[0] , \init_data_8__N_251[5] , 
            \init_data_8__N_251[4] , \init_data_8__N_251[2] , wr_done, 
            n6965) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    input sys_clk_50MHz_enable_81;
    input n1482;
    output [6:0]cnt_s2_num;
    output [8:0]init_data;
    output debug_led1_c_5;
    input n16047;
    output lcd_rst_c;
    input GND_net;
    output \state[4] ;
    output \state[2] ;
    input \init_data_8__N_251[0] ;
    input \init_data_8__N_251[5] ;
    input \init_data_8__N_251[4] ;
    input \init_data_8__N_251[2] ;
    input wr_done;
    output n6965;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [17:0]cnt_s4_num;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    
    wire n1496;
    wire [17:0]n357;
    wire [5:0]state_5__N_203;
    
    wire cnt_s4_num_done_N_285, n14841;
    wire [6:0]n24;
    wire [8:0]init_data_8__N_108;
    wire [22:0]cnt_150ms;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(69[13:22])
    
    wire cnt_150ms_22__N_232;
    wire [22:0]n97;
    
    wire sys_clk_50MHz_enable_27;
    wire [5:0]state_5__N_191;
    
    wire cnt_s2_num_done_N_283, n14676;
    wire [6:0]n159;
    
    wire lcd_rst_high_flag, n10878, n10870, n10871, n10872, n14833, 
        n14862, n12, n12274, sys_clk_50MHz_enable_90, n14828, n15, 
        n30, n12760, n46, n10932, n12739, n12749, n50, n12750, 
        n14653, n12220, n14736, n14678, n14739, n14944, n14945, 
        n14946, n9, n14637;
    wire [8:0]init_data_8__N_242;
    wire [8:0]init_data_8__N_251;
    
    wire n14782, n16, n22, n28, n14746, n14652, n14486, n8, 
        n12738, n12740, n14726, n13864, n14493, n12751, n12752, 
        n12753, n11138, n10, n8753, n18, n71, n83, n12761, n12762, 
        n10_adj_795, n14712, n14660, n30_adj_796, n31, n12447, n63, 
        n12185, n14641, n10933, n12148, n11172, n10873, n14644, 
        n14645, n4, n12266, n11004, n88, n12198, n10908, n14838, 
        n14643, n1432, n4_adj_797, n5, n13509, n12319, n6, n14840, 
        n14839, n14, n12354, n6_adj_798, n49, n14806, n6712, n9_adj_799, 
        n10867, n10868, n12747, n12748;
    wire [5:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(61[13:18])
    
    wire n2949, n14836, n14871, n12150, n12225, n6963, n12417, 
        n12390, lcd_rst_high_flag_N_281, n12394, n10_adj_800, n6653, 
        n12404;
    wire [5:0]state_5__N_185;
    
    wire n2952, n11128, n10_adj_801, n12293, n10_adj_802, n2954;
    wire [5:0]state_5__N_197;
    
    wire n2956, n12_adj_803, n12388, n10865, n10866, n2958, n10888, 
        n10887, n30_adj_804, n10886, n10885, n10884, n10869, n10883, 
        n10882, n10881, n10880, n10879;
    
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_285), .CK(sys_clk_50MHz), 
            .CD(n1482), .Q(state_5__N_203[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[10] 273[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n14841), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1S3AX init_data_i0 (.D(init_data_8__N_108[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i22.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i1 (.D(n16047), .SP(sys_clk_50MHz_enable_27), .CK(sys_clk_50MHz), 
            .Q(debug_led1_c_5));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_283), .CK(sys_clk_50MHz), 
            .CD(n1482), .Q(state_5__N_191[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    LUT4 i921_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n14676), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i921_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX lcd_rst_172 (.D(n16047), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_81), 
            .CD(n1496), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    CCU2D cnt_150ms_715_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10878), .S1(n97[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_715_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_715_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_1.INJECT1_1 = "NO";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10870), .COUT(n10871), .S0(n357[11]), 
          .S1(n357[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10871), .COUT(n10872), .S0(n357[13]), 
          .S1(n357[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_81), .CD(n1496), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_108[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i8.GSR = "ENABLED";
    LUT4 i888_2_lut_rep_342 (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .Z(n14833)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i888_2_lut_rep_342.init = 16'h8888;
    LUT4 i1_2_lut_rep_371 (.A(cnt_s4_num[9]), .B(cnt_s4_num[4]), .Z(n14862)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_371.init = 16'heeee;
    LUT4 i6_3_lut_4_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[4]), .C(n12), 
         .D(cnt_s4_num[8]), .Z(n12274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX init_data_i7 (.D(init_data_8__N_108[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i7.GSR = "ENABLED";
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
    FD1S3AX init_data_i2 (.D(init_data_8__N_108[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_108[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(150[10] 253[32])
    defparam init_data_i1.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n14828), .SP(sys_clk_50MHz_enable_90), .CD(n14841), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    PFUMX i12114 (.BLUT(n15), .ALUT(n30), .C0(cnt_s2_num[4]), .Z(n12760));
    PFUMX i12093 (.BLUT(n46), .ALUT(n10932), .C0(cnt_s2_num[4]), .Z(n12739));
    LUT4 i12103_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12749)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i12103_3_lut_4_lut_4_lut.init = 16'h6c20;
    LUT4 i268_2_lut (.A(state_5__N_203[5]), .B(\state[4] ), .Z(sys_clk_50MHz_enable_27)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i268_2_lut.init = 16'h8888;
    LUT4 mux_298_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_298_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 mux_298_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_298_Mux_1_i30_3_lut_4_lut.init = 16'h2062;
    LUT4 i1_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n50)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h581b;
    LUT4 i12104_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n12750)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i12104_4_lut_4_lut_4_lut.init = 16'h0210;
    LUT4 i1_3_lut_4_lut (.A(cnt_s4_num[0]), .B(n14653), .C(cnt_s4_num[2]), 
         .D(cnt_s4_num[1]), .Z(n12220)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_3_lut_4_lut.init = 16'h8008;
    LUT4 i914_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n14736), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i914_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_rep_187 (.A(n12274), .B(cnt_s4_num[11]), .C(cnt_s4_num[14]), 
         .Z(n14678)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_187.init = 16'hfefe;
    LUT4 i13048_2_lut_rep_162_4_lut_4_lut (.A(n14739), .B(cnt_s4_num[14]), 
         .C(cnt_s4_num[11]), .D(n12274), .Z(n14653)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i13048_2_lut_rep_162_4_lut_4_lut.init = 16'h0001;
    PFUMX i14001 (.BLUT(n14944), .ALUT(n14945), .C0(cnt_s2_num[1]), .Z(n14946));
    PFUMX i19 (.BLUT(n9), .ALUT(n14637), .C0(\state[2] ), .Z(init_data_8__N_108[8]));
    PFUMX init_data_8__I_0_i2 (.BLUT(init_data_8__N_242[1]), .ALUT(init_data_8__N_251[1]), 
          .C0(\state[2] ), .Z(init_data_8__N_108[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;
    LUT4 i895_2_lut_rep_245_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[2]), .Z(n14736)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i895_2_lut_rep_245_3_lut.init = 16'h8080;
    LUT4 i13028_4_lut (.A(cnt_s2_num[5]), .B(n14782), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_283)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i13028_4_lut.init = 16'h1000;
    PFUMX i34 (.BLUT(n16), .ALUT(n22), .C0(cnt_s4_num[0]), .Z(n28));
    LUT4 i743_1_lut (.A(\state[4] ), .Z(n1496)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i743_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_adj_32 (.A(n14746), .B(n14652), .C(n14486), .D(n14653), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_32.init = 16'hfeee;
    L6MUX21 i12094 (.D0(n12738), .D1(n12739), .SD(cnt_s2_num[5]), .Z(n12740));
    LUT4 n2998_bdd_4_lut (.A(n14726), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n13864)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n2998_bdd_4_lut.init = 16'h31cf;
    LUT4 cnt_s4_num_1__bdd_4_lut_14189 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[3]), .Z(n14486)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B+!((D)+!C)))) */ ;
    defparam cnt_s4_num_1__bdd_4_lut_14189.init = 16'h1981;
    LUT4 cnt_s4_num_0__bdd_4_lut_14676 (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[1]), .Z(n14493)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam cnt_s4_num_0__bdd_4_lut_14676.init = 16'hd6bf;
    PFUMX init_data_8__I_0_i4 (.BLUT(init_data_8__N_242[3]), .ALUT(init_data_8__N_251[3]), 
          .C0(\state[2] ), .Z(init_data_8__N_108[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;
    L6MUX21 i12107 (.D0(n12751), .D1(n12752), .SD(cnt_s2_num[5]), .Z(n12753));
    LUT4 i13065_4_lut (.A(n12274), .B(n11138), .C(cnt_s4_num[17]), .D(cnt_s4_num[1]), 
         .Z(cnt_s4_num_done_N_285)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(270[13:36])
    defparam i13065_4_lut.init = 16'h0010;
    LUT4 i5_3_lut (.A(cnt_s4_num[14]), .B(n10), .C(cnt_s4_num[3]), .Z(n11138)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hdfdf;
    LUT4 i4_4_lut (.A(n8753), .B(n18), .C(cnt_s4_num[12]), .D(cnt_s4_num[11]), 
         .Z(n10)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hdfff;
    PFUMX i88 (.BLUT(n12220), .ALUT(n71), .C0(cnt_s4_num[3]), .Z(n83));
    LUT4 i7885_2_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), .Z(n8753)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7885_2_lut.init = 16'h8888;
    L6MUX21 i12116 (.D0(n12760), .D1(n12761), .SD(cnt_s2_num[5]), .Z(n12762));
    LUT4 i2_3_lut (.A(cnt_s4_num[16]), .B(cnt_s4_num[13]), .C(cnt_s4_num[15]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i5_4_lut (.A(cnt_s4_num[5]), .B(cnt_s4_num[7]), .C(cnt_s4_num[6]), 
         .D(cnt_s4_num[10]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut_rep_221 (.A(cnt_150ms[0]), .B(n10_adj_795), .C(cnt_150ms[1]), 
         .Z(n14712)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_3_lut_rep_221.init = 16'hfefe;
    LUT4 i1_2_lut_rep_169_4_lut (.A(cnt_150ms[0]), .B(n10_adj_795), .C(cnt_150ms[1]), 
         .D(cnt_150ms[5]), .Z(n14660)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_2_lut_rep_169_4_lut.init = 16'hfffe;
    PFUMX mux_298_Mux_7_i63 (.BLUT(n30_adj_796), .ALUT(n31), .C0(n12447), 
          .Z(n63));
    LUT4 i2_3_lut_rep_150_4_lut (.A(cnt_150ms[5]), .B(n14712), .C(n12185), 
         .D(cnt_150ms[6]), .Z(n14641)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut_rep_150_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n10933)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[1]), .Z(n12148)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i12537_3_lut (.A(n12148), .B(n11172), .C(cnt_s2_num[5]), .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12537_3_lut.init = 16'hcaca;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10873), .S0(n357[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i20_4_lut (.A(\state[4] ), .B(\init_data_8__N_251[0] ), .C(\state[2] ), 
         .D(n8), .Z(init_data_8__N_108[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i20_4_lut.init = 16'hcac0;
    LUT4 init_data_8__I_0_i8_4_lut (.A(init_data_8__N_242[7]), .B(n63), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i7532_4_lut (.A(n14644), .B(\state[4] ), .C(n14645), .D(n4), 
         .Z(init_data_8__N_242[7])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7532_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(259[10] 264[34])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 init_data_8__I_0_i7_4_lut (.A(init_data_8__N_242[7]), .B(n12740), 
         .C(\state[2] ), .D(cnt_s2_num[6]), .Z(init_data_8__N_108[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 init_data_8__I_0_i6_4_lut (.A(n12266), .B(\init_data_8__N_251[5] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_33 (.A(n14653), .B(n14645), .C(n11004), .D(n88), 
         .Z(n12266)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_33.init = 16'heeec;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n12198), .B(\init_data_8__N_251[4] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_34 (.A(n14652), .B(n10908), .C(n14838), .D(n14746), 
         .Z(n12198)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_34.init = 16'hfeee;
    LUT4 i2_4_lut (.A(cnt_s4_num[2]), .B(n14643), .C(cnt_s4_num[3]), .D(cnt_s4_num[0]), 
         .Z(n10908)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0480;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n1432), .B(\init_data_8__N_251[2] ), 
         .C(\state[2] ), .D(\state[4] ), .Z(init_data_8__N_108[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(216[10] 253[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hcac0;
    LUT4 i907_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n14833), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i907_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_35 (.A(n14653), .B(cnt_s4_num[3]), .C(n14493), .D(n4_adj_797), 
         .Z(n5)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A ((D)+!B)) */ ;
    defparam i1_4_lut_adj_35.init = 16'hf531;
    LUT4 i1_4_lut_adj_36 (.A(cnt_s4_num[2]), .B(n14652), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n4_adj_797)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'hfeef;
    LUT4 i2_4_lut_adj_37 (.A(n13509), .B(n12319), .C(n8753), .D(cnt_s4_num[3]), 
         .Z(n6)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i2_4_lut_adj_37.init = 16'hcc8c;
    LUT4 i5_3_lut_4_lut (.A(n18), .B(n14840), .C(cnt_s4_num[5]), .D(n14839), 
         .Z(n14)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_153_3_lut_3_lut_4_lut (.A(n18), .B(n14840), .C(n14678), 
         .D(cnt_s4_num[0]), .Z(n14644)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_153_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i13055_2_lut_rep_152_3_lut_3_lut_4_lut (.A(n18), .B(n14840), .C(n14678), 
         .D(cnt_s4_num[1]), .Z(n14643)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i13055_2_lut_rep_152_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i7541_4_lut (.A(n14653), .B(\state[4] ), .C(n14645), .D(n50), 
         .Z(init_data_8__N_242[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7541_4_lut.init = 16'hc8c0;
    LUT4 i2_4_lut_adj_38 (.A(cnt_s4_num[14]), .B(n12354), .C(n14862), 
         .D(n14), .Z(n6_adj_798)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i2_4_lut_adj_38.init = 16'h0100;
    LUT4 i11712_4_lut (.A(cnt_s4_num[6]), .B(cnt_s4_num[8]), .C(cnt_s4_num[10]), 
         .D(cnt_s4_num[7]), .Z(n12354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11712_4_lut.init = 16'hfffe;
    LUT4 i893_2_lut_3_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i893_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_adj_39 (.A(n14746), .B(cnt_s4_num[3]), .C(n6_adj_798), 
         .D(cnt_s4_num[11]), .Z(n22)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_39.init = 16'haaba;
    LUT4 i1_4_lut_adj_40 (.A(cnt_s4_num[3]), .B(n14643), .C(cnt_s4_num[2]), 
         .D(n49), .Z(n16)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_adj_40.init = 16'ha888;
    LUT4 i7891_2_lut_rep_315 (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .Z(n14806)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7891_2_lut_rep_315.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(cnt_150ms[17]), .B(cnt_150ms[20]), .C(n6712), 
         .Z(n9_adj_799)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hf7f7;
    LUT4 n2998_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[5]), .Z(n14945)) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam n2998_bdd_3_lut_4_lut_then_4_lut.init = 16'hff5d;
    LUT4 n2998_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[5]), .Z(n14944)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B+(C+(D)))) */ ;
    defparam n2998_bdd_3_lut_4_lut_else_4_lut.init = 16'hdf74;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10872), .COUT(n10873), .S0(n357[15]), 
          .S1(n357[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    LUT4 i7548_3_lut (.A(n14652), .B(\state[4] ), .C(n28), .Z(init_data_8__N_242[1])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(253[9:32])
    defparam i7548_3_lut.init = 16'hc8c8;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10867), .COUT(n10868), .S0(n357[5]), .S1(n357[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_41 (.A(\state[4] ), .B(n14645), .C(n5), .D(n6), 
         .Z(n9)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_4_lut_adj_41.init = 16'h8aaa;
    LUT4 i13135_2_lut (.A(cnt_s2_num[5]), .B(cnt_s2_num[4]), .Z(n12447)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i13135_2_lut.init = 16'hbbbb;
    PFUMX i12105 (.BLUT(n12747), .ALUT(n12748), .C0(cnt_s2_num[4]), .Z(n12751));
    LUT4 i2113_2_lut_4_lut (.A(n14660), .B(cnt_150ms[6]), .C(n12185), 
         .D(state[0]), .Z(n2949)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2113_2_lut_4_lut.init = 16'hfb00;
    PFUMX i12106 (.BLUT(n12749), .ALUT(n12750), .C0(cnt_s2_num[4]), .Z(n12752));
    LUT4 i1_rep_126_2_lut_4_lut (.A(n14678), .B(n18), .C(n14840), .D(cnt_s4_num[1]), 
         .Z(n13509)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_126_2_lut_4_lut.init = 16'hfffe;
    LUT4 i902_2_lut_rep_185_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n14676)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i902_2_lut_rep_185_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n14678), .B(n18), .C(n14840), .D(n83), .Z(n1432)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i900_2_lut_3_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i900_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_154_4_lut (.A(n14678), .B(n18), .C(n14840), .D(n14746), 
         .Z(n14645)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_154_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_345 (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .Z(n14836)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_2_lut_rep_345.init = 16'h8888;
    LUT4 i1_2_lut_rep_380 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .Z(n14871)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_380.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut_adj_42 (.A(n14678), .B(n18), .C(n14840), .D(n14836), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_42.init = 16'hfffe;
    LUT4 i2_2_lut_rep_291_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n14782)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_291_3_lut_4_lut.init = 16'hfbff;
    PFUMX i12115 (.BLUT(n12150), .ALUT(n12225), .C0(cnt_s2_num[4]), .Z(n12761));
    LUT4 i6086_1_lut (.A(state[0]), .Z(n6963)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6086_1_lut.init = 16'h5555;
    LUT4 i13043_4_lut (.A(cnt_150ms[6]), .B(n12417), .C(n12185), .D(n12390), 
         .Z(lcd_rst_high_flag_N_281)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[39:70])
    defparam i13043_4_lut.init = 16'h0400;
    LUT4 i11772_4_lut (.A(cnt_150ms[3]), .B(cnt_150ms[2]), .C(cnt_150ms[0]), 
         .D(n12394), .Z(n12417)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11772_4_lut.init = 16'h8000;
    LUT4 i11746_2_lut (.A(cnt_150ms[5]), .B(cnt_150ms[22]), .Z(n12390)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11746_2_lut.init = 16'h8888;
    LUT4 i11750_2_lut (.A(cnt_150ms[1]), .B(cnt_150ms[4]), .Z(n12394)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11750_2_lut.init = 16'h8888;
    LUT4 i5_4_lut_adj_43 (.A(cnt_150ms[18]), .B(n10_adj_800), .C(cnt_150ms[20]), 
         .D(cnt_150ms[9]), .Z(n12185)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i5_4_lut_adj_43.init = 16'hfdff;
    LUT4 i4_4_lut_adj_44 (.A(cnt_150ms[7]), .B(cnt_150ms[17]), .C(n6712), 
         .D(n6653), .Z(n10_adj_800)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_44.init = 16'hfffe;
    LUT4 i3_4_lut_adj_45 (.A(cnt_150ms[21]), .B(cnt_150ms[12]), .C(cnt_150ms[13]), 
         .D(n12404), .Z(n6712)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_45.init = 16'hfeff;
    LUT4 i11760_3_lut (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .Z(n12404)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11760_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_46 (.A(cnt_150ms[15]), .B(cnt_150ms[14]), .C(cnt_150ms[16]), 
         .D(cnt_150ms[10]), .Z(n6653)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(86[26:50])
    defparam i3_4_lut_adj_46.init = 16'hfffb;
    LUT4 i1_2_lut_rep_255_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n14746)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(73[13:23])
    defparam i1_2_lut_rep_255_3_lut.init = 16'h8080;
    LUT4 i508_2_lut_rep_337 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n14828)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i508_2_lut_rep_337.init = 16'h6666;
    LUT4 i4_4_lut_adj_47 (.A(cnt_150ms[3]), .B(cnt_150ms[4]), .C(cnt_150ms[22]), 
         .D(cnt_150ms[2]), .Z(n10_adj_795)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_47.init = 16'hffef;
    LUT4 i2116_4_lut (.A(state[1]), .B(n14641), .C(state_5__N_185[1]), 
         .D(state[0]), .Z(n2952)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2116_4_lut.init = 16'hb3a0;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(n14871), 
         .D(cnt_s2_num[4]), .Z(n11172)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 i1_4_lut_adj_48 (.A(cnt_150ms[6]), .B(n11128), .C(n10_adj_801), 
         .D(n12293), .Z(state_5__N_185[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i1_4_lut_adj_48.init = 16'hfffd;
    LUT4 i5_3_lut_adj_49 (.A(cnt_150ms[12]), .B(n10_adj_802), .C(cnt_150ms[13]), 
         .Z(n11128)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i5_3_lut_adj_49.init = 16'hdfdf;
    LUT4 i4_4_lut_adj_50 (.A(cnt_150ms[11]), .B(cnt_150ms[8]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[5]), .Z(n10_adj_801)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i4_4_lut_adj_50.init = 16'hfeff;
    LUT4 i4_4_lut_adj_51 (.A(cnt_150ms[21]), .B(n14806), .C(n6653), .D(n14712), 
         .Z(n10_adj_802)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_4_lut_adj_51.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n12225)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n12150)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(133[23:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    LUT4 i2_3_lut_adj_52 (.A(cnt_150ms[9]), .B(cnt_150ms[18]), .C(cnt_150ms[7]), 
         .Z(n12293)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(84[26:50])
    defparam i2_3_lut_adj_52.init = 16'hefef;
    LUT4 i2118_4_lut (.A(\state[2] ), .B(state_5__N_185[1]), .C(state_5__N_191[3]), 
         .D(state[1]), .Z(n2954)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2118_4_lut.init = 16'h3b0a;
    LUT4 i2120_4_lut (.A(state[3]), .B(state_5__N_191[3]), .C(state_5__N_197[3]), 
         .D(\state[2] ), .Z(n2956)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2120_4_lut.init = 16'heca0;
    LUT4 i6_4_lut (.A(n12293), .B(n12_adj_803), .C(cnt_150ms[14]), .D(cnt_150ms[6]), 
         .Z(state_5__N_197[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_347 (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .Z(n14838)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_347.init = 16'h8888;
    LUT4 i5_4_lut_adj_53 (.A(n9_adj_799), .B(cnt_150ms[16]), .C(n14660), 
         .D(n12388), .Z(n12_adj_803)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i5_4_lut_adj_53.init = 16'hfbff;
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10865), .COUT(n10866), .S0(n357[1]), .S1(n357[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    LUT4 i11744_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n12388)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11744_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n88)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h080b;
    LUT4 i2122_4_lut (.A(\state[4] ), .B(state_5__N_197[3]), .C(state_5__N_203[5]), 
         .D(state[3]), .Z(n2958)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2122_4_lut.init = 16'h3b0a;
    CCU2D cnt_150ms_715_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10888), .S0(n97[21]), .S1(n97[22]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10887), .COUT(n10888), .S0(n97[19]), .S1(n97[20]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_21.INJECT1_1 = "NO";
    PFUMX i12092 (.BLUT(n10933), .ALUT(n30_adj_804), .C0(cnt_s2_num[4]), 
          .Z(n12738));
    LUT4 i1_2_lut_rep_348 (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n14839)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_2_lut_rep_348.init = 16'hdddd;
    CCU2D cnt_150ms_715_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10886), .COUT(n10887), .S0(n97[17]), .S1(n97[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_19.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10866), .COUT(n10867), .S0(n357[3]), .S1(n357[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[3]), .Z(n11004)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i2_3_lut_4_lut.init = 16'h00d0;
    LUT4 i1_2_lut_rep_349 (.A(cnt_s4_num[12]), .B(cnt_s4_num[17]), .Z(n14840)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_349.init = 16'heeee;
    LUT4 i740_1_lut_rep_350 (.A(\state[2] ), .Z(n14841)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i740_1_lut_rep_350.init = 16'h5555;
    LUT4 i2054_2_lut_3_lut_3_lut (.A(\state[2] ), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i2054_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i1_3_lut_rep_161_4_lut (.A(cnt_s4_num[12]), .B(cnt_s4_num[17]), 
         .C(n18), .D(n14678), .Z(n14652)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_161_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_248_3_lut (.A(cnt_s4_num[12]), .B(cnt_s4_num[17]), 
         .C(n18), .Z(n14739)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_248_3_lut.init = 16'hfefe;
    LUT4 i741_2_lut_rep_256_2_lut (.A(\state[2] ), .B(wr_done), .Z(sys_clk_50MHz_enable_90)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i741_2_lut_rep_256_2_lut.init = 16'hdddd;
    CCU2D cnt_150ms_715_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10885), .COUT(n10886), .S0(n97[15]), .S1(n97[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10884), .COUT(n10885), .S0(n97[13]), .S1(n97[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_15.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10865), .S1(n357[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10869), .COUT(n10870), .S0(n357[9]), .S1(n357[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    LUT4 i7441_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12753), .Z(init_data_8__N_251[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7441_2_lut_2_lut.init = 16'h4444;
    LUT4 n13865_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n13864), 
         .D(n14946), .Z(n14637)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam n13865_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7452_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n12762), .Z(init_data_8__N_251[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(141[13:32])
    defparam i7452_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_54 (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(n14652), 
         .D(cnt_s4_num[0]), .Z(n12319)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(217[9] 251[16])
    defparam i1_4_lut_4_lut_adj_54.init = 16'hfffb;
    CCU2D cnt_150ms_715_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10883), .COUT(n10884), .S0(n97[11]), .S1(n97[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_55 (.A(cnt_s4_num[1]), .B(n14653), .C(n14645), 
         .D(cnt_s4_num[2]), .Z(n71)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_55.init = 16'hf400;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_281), .CK(sys_clk_50MHz), 
            .CD(n6963), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=122 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i7421_2_lut_rep_235_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n14726)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7421_2_lut_rep_235_2_lut.init = 16'h4444;
    LUT4 mux_298_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_804)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_298_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 mux_298_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_796)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_298_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n10932)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i12101_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .D(cnt_s2_num[3]), .Z(n12747)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A ((D)+!B))) */ ;
    defparam i12101_3_lut_4_lut.init = 16'h20cc;
    LUT4 i12102_4_lut_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n12748)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i12102_4_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 mux_298_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_298_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i13152_3_lut (.A(state[3]), .B(state[1]), .C(state[0]), .Z(cnt_150ms_22__N_232)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(103[13:86])
    defparam i13152_3_lut.init = 16'h0101;
    LUT4 i6088_1_lut (.A(debug_led1_c_5), .Z(n6965)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam i6088_1_lut.init = 16'h5555;
    FD1S3IX cnt_150ms_715__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_715__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_232), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715__i0.GSR = "ENABLED";
    CCU2D cnt_150ms_715_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10882), .COUT(n10883), .S0(n97[9]), .S1(n97[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10881), .COUT(n10882), .S0(n97[7]), .S1(n97[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10880), .COUT(n10881), .S0(n97[5]), .S1(n97[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10879), .COUT(n10880), .S0(n97[3]), .S1(n97[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_150ms_715_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10878), .COUT(n10879), .S0(n97[1]), .S1(n97[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_715_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_715_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_715_add_4_3.INJECT1_1 = "NO";
    FD1S3AY state_FSM_i6 (.D(n2949), .CK(sys_clk_50MHz), .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n2952), .CK(sys_clk_50MHz), .Q(state[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2954), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2956), .CK(sys_clk_50MHz), .Q(state[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2958), .CK(sys_clk_50MHz), .Q(\state[4] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10868), .COUT(n10869), .S0(n357[7]), .S1(n357[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_init.v(262[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    
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
// Verilog Description of module segment_led
//

module segment_led (count, segment_led_c_0, segment_led_c_1, segment_led_c_2, 
            segment_led_c_3, count_3__N_11, n6, n1, segment_led_c_4) /* synthesis syn_module_defined=1 */ ;
    input [3:0]count;
    output segment_led_c_0;
    output segment_led_c_1;
    output segment_led_c_2;
    output segment_led_c_3;
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
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(count[3]), 
         .Z(count_3__N_11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i532_2_lut (.A(count[0]), .B(count[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i532_2_lut.init = 16'h6666;
    LUT4 i495_1_lut (.A(count[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/segment_led.v(8[2] 20[9])
    defparam i495_1_lut.init = 16'h5555;
    LUT4 i13038_4_lut (.A(count[0]), .B(count[2]), .C(count[3]), .D(count[1]), 
         .Z(segment_led_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i13038_4_lut.init = 16'h0511;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (show_char_data, sys_clk_50MHz, cnt_length_num, wr_done, 
            length_num_flag, n14, cnt_rom_prepare, sys_clk_50MHz_enable_53, 
            sys_clk_50MHz_enable_59, \state[1] , \end_x_8__N_306[6] , 
            GND_net, \ascii_num[6] , \end_x_8__N_306[5] , \ascii_num[3] , 
            \ascii_num[4] , \ascii_num[1] , \ascii_num[2] , debug_led2_c_3, 
            \ascii_num[0] , \end_x_8__N_306[7] , \end_y_8__N_324[5] , 
            \state[2] , \end_x_8__N_306[4] , \end_y_8__N_324[4] , \state_3__N_379[1] , 
            n8856, \end_x_8__N_306[3] ) /* synthesis syn_module_defined=1 */ ;
    output [8:0]show_char_data;
    input sys_clk_50MHz;
    output [4:0]cnt_length_num;
    input wr_done;
    output length_num_flag;
    input n14;
    output [2:0]cnt_rom_prepare;
    input sys_clk_50MHz_enable_53;
    input sys_clk_50MHz_enable_59;
    output \state[1] ;
    input \end_x_8__N_306[6] ;
    input GND_net;
    input \ascii_num[6] ;
    input \end_x_8__N_306[5] ;
    input \ascii_num[3] ;
    input \ascii_num[4] ;
    input \ascii_num[1] ;
    input \ascii_num[2] ;
    output debug_led2_c_3;
    input \ascii_num[0] ;
    input \end_x_8__N_306[7] ;
    input \end_y_8__N_324[5] ;
    output \state[2] ;
    input \end_x_8__N_306[4] ;
    input \end_y_8__N_324[4] ;
    input \state_3__N_379[1] ;
    output n8856;
    input \end_x_8__N_306[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire sys_clk_50MHz_enable_83;
    wire [8:0]show_char_data_8__N_286;
    wire [11:0]rom_addr;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(75[17:25])
    
    wire sys_clk_50MHz_enable_101;
    wire [5:0]cnt_wr_color_data;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(88[17:34])
    
    wire cnt_wr_color_data_5__N_450;
    wire [5:0]n21;
    
    wire the1_wr_done;
    wire [3:0]state_3__N_383;
    
    wire state1_finish_flag_N_470;
    wire [7:0]temp;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(79[17:21])
    
    wire sys_clk_50MHz_enable_88;
    wire [7:0]temp_7__N_356;
    
    wire length_num_flag_N_473;
    wire [3:0]state_3__N_387;
    wire [2:0]n12;
    
    wire n12348, n14743, n14687, n14666, n1851, sys_clk_50MHz_enable_73;
    wire [5:0]n422;
    wire [2:0]n132;
    wire [4:0]n365;
    wire [4:0]cnt_length_num_c;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(85[17:31])
    
    wire n14674, n14668, n14670, n12952;
    wire [15:0]n463;
    
    wire cnt_set_windows_3__N_395, n14874, n14700, n2943, n14669, 
        n14704, n6036, n10877, n1420, n10876;
    wire [6:0]n1412;
    
    wire n14869, n14667, n12195, n272, n6, n1373, n14809, n12240, 
        n11050, n6947, n6028, n270, n14729, n12763, n10875, n6968;
    wire [7:0]rom_q;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(76[17:22])
    
    wire n10874, n1831, n6967, n14881, n14882, n14883;
    wire [4:0]n1;
    
    wire n14880, n5994, n14805, n14711, n891, n3, n14825, n14859, 
        n125, n14428, n6_adj_781, n759, n2986, n14818, n14662, 
        n14708, n14783;
    wire [15:0]n33;
    
    wire n12235;
    wire [8:0]show_char_data_8__N_460;
    
    wire n12281, n6030, n12444, n14842, n14804, n6026, n6032, 
        n14917, n14916, n14647, n12215, n14801, n14872, n2984, 
        n12406, n14692, n14832, n6777, n14651, n16039, n14760, 
        n1851_adj_782, n1069, n14866, n1084, n1834, n14777, n1275, 
        n14727, n14728, n1148, n14808, n14654, n14793, n158, n14741, 
        n1565, n14689, n14706, n3205, n1101, n1149, n1628, n1596, 
        n14918;
    wire [3:0]state;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    
    wire n2959, n10, n2962, n2964, n14664, n14682, n2428, n6_adj_783, 
        n5, n126, n14757, n14655, n14857, n508, n12226, n5980, 
        n14661, n892, n11180, n1534, n4, n14646, n12901, n14671, 
        n16036, n94, n14694, n2141, n6536, n14663, n12247, n603, 
        n2652, n1172, n2025, n12604, n14814, n14541, n6151, n13591, 
        n14364, n13126, n510, n127, n13099, n3083, n1661, n1723, 
        n6817, n11133, n509, n1405, n1278, n12857, n14665, n14673, 
        n6801, n10927, n14852, n1436, n1076, n1085, n14638, n12947, 
        n4094, n3069, n12867, n4094_adj_784, n12237, n12950, n4094_adj_785, 
        n308, n301, n317, n14820, n14843, n11178, n46, n62, 
        n46_adj_786, n62_adj_787, n8984, n1403, n2332, n2364, n1565_adj_788, 
        n2395, n1596_adj_789, n6295, n796, n14744, n828, n1211, 
        n14778, n1530, n379, n380, n4803, n14724, n828_adj_790, 
        n4019, n1467, n4_adj_791, n14686, n4_adj_792, n2040, n380_adj_793, 
        n2300, n1643, n1530_adj_794, n13663, n13664, n14636, n14649, 
        n2621, n14650;
    
    FD1P3AX data_i6 (.D(show_char_data_8__N_286[6]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(cnt_length_num[0]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_286[5]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_450), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_178 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(116[10] 119[30])
    defparam the1_wr_done_178.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_180 (.D(state1_finish_flag_N_470), .CK(sys_clk_50MHz), 
            .Q(state_3__N_383[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[10] 137[36])
    defparam state1_finish_flag_180.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_356[0]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_286[4]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_473), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(189[10] 204[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    FD1P3AX data_i0 (.D(show_char_data_8__N_286[0]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3IX cnt_length_num__i0 (.D(n14), .CK(sys_clk_50MHz), .CD(state_3__N_387[3]), 
            .Q(cnt_length_num[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_286[3]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i3.GSR = "ENABLED";
    LUT4 i11706_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n12348)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11706_2_lut_2_lut.init = 16'hdddd;
    FD1P3AX temp_i2 (.D(temp_7__N_356[2]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_286[2]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(show_char_data_8__N_286[1]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 i11875_2_lut_rep_252_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14743)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11875_2_lut_rep_252_2_lut.init = 16'h4444;
    FD1P3AX temp_i1 (.D(temp_7__N_356[1]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i1.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14687), .D(n14666), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    FD1P3AX temp_i6 (.D(temp_7__N_356[6]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n422[5]), .SP(sys_clk_50MHz_enable_73), 
            .CD(cnt_wr_color_data_5__N_450), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_53), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_53), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i4 (.D(n365[4]), .SP(sys_clk_50MHz_enable_59), 
            .CD(state_3__N_387[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i3 (.D(n365[3]), .SP(sys_clk_50MHz_enable_59), 
            .CD(state_3__N_387[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n422[4]), .SP(sys_clk_50MHz_enable_73), 
            .CD(cnt_wr_color_data_5__N_450), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_183_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .Z(n14674)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_183_3_lut_3_lut.init = 16'h4040;
    FD1P3AX temp_i5 (.D(temp_7__N_356[5]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i2 (.D(n365[2]), .SP(sys_clk_50MHz_enable_59), 
            .CD(state_3__N_387[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_length_num__i1 (.D(n365[1]), .SP(sys_clk_50MHz_enable_59), 
            .CD(state_3__N_387[3]), .CK(sys_clk_50MHz), .Q(cnt_length_num_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(210[10] 217[49])
    defparam cnt_length_num__i1.GSR = "ENABLED";
    LUT4 i12306_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n14668), 
         .D(n14670), .Z(n12952)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12306_4_lut_4_lut.init = 16'hd1c0;
    FD1P3AX temp_i4 (.D(temp_7__N_356[4]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n422[3]), .SP(sys_clk_50MHz_enable_73), 
            .CD(cnt_wr_color_data_5__N_450), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n422[2]), .SP(sys_clk_50MHz_enable_73), 
            .CD(cnt_wr_color_data_5__N_450), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n463[15]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n422[1]), .SP(sys_clk_50MHz_enable_73), 
            .CD(cnt_wr_color_data_5__N_450), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[10] 228[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    LUT4 i7380_4_lut_4_lut (.A(n14874), .B(n14700), .C(\state[1] ), .D(n2943), 
         .Z(show_char_data_8__N_286[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i7380_4_lut_4_lut.init = 16'h3f2f;
    LUT4 i1_2_lut_rep_178_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14669)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_178_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 show_char_data_8__I_0_i7_4_lut (.A(n14704), .B(\end_x_8__N_306[6] ), 
         .C(\state[1] ), .D(n6036), .Z(show_char_data_8__N_286[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i7_4_lut.init = 16'h0aca;
    FD1P3AX temp_i3 (.D(temp_7__N_356[3]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i3.GSR = "ENABLED";
    CCU2D add_705_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10877), 
          .S0(n1420));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_705_cout.INIT0 = 16'h0000;
    defparam add_705_cout.INIT1 = 16'h0000;
    defparam add_705_cout.INJECT1_0 = "NO";
    defparam add_705_cout.INJECT1_1 = "NO";
    FD1P3AX data_i7 (.D(show_char_data_8__N_286[7]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i7.GSR = "ENABLED";
    CCU2D add_705_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\ascii_num[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10876), .COUT(n10877), .S0(n1412[5]), .S1(n1412[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_705_7.INIT0 = 16'hf000;
    defparam add_705_7.INIT1 = 16'h0555;
    defparam add_705_7.INJECT1_0 = "NO";
    defparam add_705_7.INJECT1_1 = "NO";
    LUT4 i13146_3_lut_rep_176_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14869), .D(rom_addr[5]), .Z(n14667)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i13146_3_lut_rep_176_4_lut_4_lut_4_lut.init = 16'hffbf;
    LUT4 i4_4_lut (.A(cnt_wr_color_data[0]), .B(n12195), .C(n272), .D(n6), 
         .Z(n1373)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(n14809), 
         .D(rom_addr[4]), .Z(n12240)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i7389_4_lut (.A(n11050), .B(n463[5]), .C(\end_x_8__N_306[5] ), 
         .D(n6947), .Z(n6028)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i7389_4_lut.init = 16'hfcdd;
    LUT4 i12546_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n14729), .Z(n12763)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12546_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2D add_705_5 (.A0(\ascii_num[3] ), .B0(cnt_length_num_c[2]), .C0(cnt_length_num_c[3]), 
          .D0(cnt_length_num[4]), .A1(\ascii_num[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10875), .COUT(n10876), .S0(n1412[3]), 
          .S1(n1412[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_705_5.INIT0 = 16'h556a;
    defparam add_705_5.INIT1 = 16'hfaaa;
    defparam add_705_5.INJECT1_0 = "NO";
    defparam add_705_5.INJECT1_1 = "NO";
    FD1P3AX data_i8 (.D(show_char_data_8__N_286[8]), .SP(sys_clk_50MHz_enable_83), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(234[10] 260[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_88), .CD(n6968), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(161[10] 182[16])
    defparam temp_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(n1420), .SP(sys_clk_50MHz_enable_101), .CK(sys_clk_50MHz), 
            .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    CCU2D add_705_3 (.A0(cnt_length_num[4]), .B0(n1831), .C0(\ascii_num[1] ), 
          .D0(GND_net), .A1(cnt_length_num[4]), .B1(n1831), .C1(\ascii_num[2] ), 
          .D1(GND_net), .CIN(n10874), .COUT(n10875), .S0(n1412[1]), 
          .S1(n1412[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_705_3.INIT0 = 16'he1e1;
    defparam add_705_3.INIT1 = 16'he1e1;
    defparam add_705_3.INJECT1_0 = "NO";
    defparam add_705_3.INJECT1_1 = "NO";
    FD1S3IX state_FSM_i1 (.D(state_3__N_387[3]), .CK(sys_clk_50MHz), .CD(n6967), 
            .Q(debug_led2_c_3));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3AX rom_addr_i0_i10 (.D(n1412[6]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(n1412[5]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(n1412[4]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(n1412[3]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    PFUMX i13961 (.BLUT(n14881), .ALUT(n14882), .C0(rom_addr[3]), .Z(n14883));
    FD1P3AX rom_addr_i0_i6 (.D(n1412[2]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[1]), .C(cnt_wr_color_data[3]), 
         .Z(n12195)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AX rom_addr_i0_i5 (.D(n1412[1]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(n1412[0]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(n1[1]), .SP(sys_clk_50MHz_enable_101), .CK(sys_clk_50MHz), 
            .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    LUT4 show_char_data_8__I_0_i2_4_lut (.A(n14880), .B(n5994), .C(\state[1] ), 
         .D(n14700), .Z(show_char_data_8__N_286[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i2_4_lut.init = 16'h0aca;
    LUT4 i5139_4_lut (.A(n14805), .B(n463[9]), .C(n14711), .D(n11050), 
         .Z(n5994)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5139_4_lut.init = 16'hcecf;
    LUT4 i7560_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7560_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    FD1P3AX rom_addr_i0_i2 (.D(n3), .SP(sys_clk_50MHz_enable_101), .CK(sys_clk_50MHz), 
            .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    LUT4 i7508_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14825), 
         .D(n14859), .Z(n125)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7508_4_lut_4_lut.init = 16'h5140;
    LUT4 n476_bdd_4_lut (.A(n463[3]), .B(n463[5]), .C(n463[2]), .D(n463[4]), 
         .Z(n14428)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam n476_bdd_4_lut.init = 16'hccef;
    FD1P3AX rom_addr_i0_i1 (.D(cnt_length_num_c[1]), .SP(sys_clk_50MHz_enable_101), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    LUT4 i13014_4_lut (.A(n463[15]), .B(n463[11]), .C(n463[13]), .D(n6_adj_781), 
         .Z(n759)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i13014_4_lut.init = 16'h0001;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n14704), .B(n2986), .C(\state[1] ), 
         .D(n14700), .Z(show_char_data_8__N_286[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_171_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n14818), .D(rom_addr[2]), .Z(n14662)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_171_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_adj_26 (.A(n463[12]), .B(n463[14]), .Z(n6_adj_781)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i1_2_lut_adj_26.init = 16'heeee;
    CCU2D add_705_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_length_num[4]), .B1(n1831), .C1(\ascii_num[0] ), .D1(GND_net), 
          .COUT(n10874), .S1(n1412[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam add_705_1.INIT0 = 16'hF000;
    defparam add_705_1.INIT1 = 16'h6969;
    defparam add_705_1.INJECT1_0 = "NO";
    defparam add_705_1.INJECT1_1 = "NO";
    LUT4 i943_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i943_3_lut.init = 16'h6a6a;
    LUT4 i936_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(146[28:50])
    defparam i936_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n14882)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i2050_2_lut_4_lut (.A(debug_led2_c_3), .B(n272), .C(n14708), 
         .D(cnt_wr_color_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(223[13:52])
    defparam i2050_2_lut_4_lut.init = 16'h10ef;
    LUT4 i1022_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n14783), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n422[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i1022_3_lut_4_lut.init = 16'h7f80;
    LUT4 i591_2_lut_rep_209 (.A(n33[10]), .B(n759), .Z(n14700)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i591_2_lut_rep_209.init = 16'hbbbb;
    LUT4 i2153_4_lut_4_lut (.A(n33[10]), .B(n759), .C(n463[9]), .D(n12235), 
         .Z(show_char_data_8__N_460[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2153_4_lut_4_lut.init = 16'hccc8;
    LUT4 i2159_4_lut_4_lut (.A(n33[10]), .B(n759), .C(n463[9]), .D(n12281), 
         .Z(show_char_data_8__N_460[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i2159_4_lut_4_lut.init = 16'hc8cc;
    LUT4 i5180_2_lut_3_lut_4_lut (.A(n33[10]), .B(n759), .C(n6030), .D(n14874), 
         .Z(n6036)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5180_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i13137_2_lut_3_lut (.A(n33[10]), .B(n759), .C(\state[1] ), .Z(n12444)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i13137_2_lut_3_lut.init = 16'hbfbf;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n14880), 
         .C(\state[1] ), .D(show_char_data_8__N_460[3]), .Z(show_char_data_8__N_286[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(254[10] 260[22])
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i958_2_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), .Z(n365[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i958_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_rep_166_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), .C(n272), 
         .D(debug_led2_c_3), .Z(sys_clk_50MHz_enable_73)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_166_4_lut.init = 16'hfff2;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_356[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_356[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_356[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_356[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_356[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_356[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n14842), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_356[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5170_3_lut_4_lut (.A(n14804), .B(n463[7]), .C(n463[9]), .D(n14805), 
         .Z(n6026)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i5170_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1_3_lut_4_lut (.A(n14804), .B(n463[7]), .C(n463[5]), .D(n6032), 
         .Z(n12235)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i2_3_lut_4_lut (.A(n14804), .B(n463[7]), .C(n463[4]), .D(n463[5]), 
         .Z(n12281)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 state_3__N_376_I_0_196_2_lut (.A(\state[1] ), .B(the1_wr_done), 
         .Z(cnt_set_windows_3__N_395)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(127[13:44])
    defparam state_3__N_376_I_0_196_2_lut.init = 16'h8888;
    LUT4 i994_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n422[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i994_2_lut.init = 16'h6666;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n14704), .B(\end_x_8__N_306[7] ), 
         .C(\state[1] ), .D(n6036), .Z(show_char_data_8__N_286[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i7672_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14917)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7672_4_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i7672_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14916)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7672_4_lut_4_lut_else_4_lut.init = 16'h0405;
    LUT4 i1_2_lut_rep_156_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n14647)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_156_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n12215)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i979_3_lut_4_lut (.A(cnt_length_num_c[2]), .B(n14801), .C(cnt_length_num_c[3]), 
         .D(cnt_length_num[4]), .Z(n365[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i979_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1015_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n14872), 
         .C(cnt_wr_color_data[4]), .D(cnt_wr_color_data[3]), .Z(n422[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i1015_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2148_4_lut (.A(n6028), .B(\end_y_8__N_324[5] ), .C(n14874), 
         .D(n14804), .Z(n2984)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2148_4_lut.init = 16'hc0ca;
    LUT4 i2_2_lut (.A(\state[1] ), .B(\state[2] ), .Z(sys_clk_50MHz_enable_83)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1054_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1831)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1054_2_lut.init = 16'h8888;
    LUT4 i6090_1_lut (.A(\state[2] ), .Z(n6967)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i6090_1_lut.init = 16'h5555;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n2984), .ALUT(show_char_data_8__N_460[5]), 
          .C0(n12444), .Z(show_char_data_8__N_286[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;
    LUT4 i1052_2_lut (.A(cnt_length_num_c[3]), .B(cnt_length_num_c[2]), 
         .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(155[21:85])
    defparam i1052_2_lut.init = 16'h6666;
    LUT4 i960_2_lut_rep_310 (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .Z(n14801)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i960_2_lut_rep_310.init = 16'h8888;
    LUT4 i972_2_lut_3_lut_4_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .D(cnt_length_num_c[2]), .Z(n365[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i972_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i11762_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[3]), .Z(n12406)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i11762_2_lut_3_lut.init = 16'h8080;
    LUT4 i965_2_lut_3_lut (.A(cnt_length_num_c[1]), .B(cnt_length_num[0]), 
         .C(cnt_length_num_c[2]), .Z(n365[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(217[27:48])
    defparam i965_2_lut_3_lut.init = 16'h7878;
    LUT4 i1090_1_lut (.A(cnt_length_num_c[2]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[24:58])
    defparam i1090_1_lut.init = 16'h5555;
    LUT4 i587_2_lut_rep_313 (.A(n463[6]), .B(n463[8]), .Z(n14804)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i587_2_lut_rep_313.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14881)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i1_2_lut_rep_220_3_lut (.A(n463[6]), .B(n463[8]), .C(n463[7]), 
         .Z(n14711)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_220_3_lut.init = 16'hfefe;
    LUT4 n14428_bdd_2_lut_3_lut (.A(n463[6]), .B(n463[8]), .C(n14428), 
         .Z(n6030)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n14428_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i585_2_lut_rep_314 (.A(n463[4]), .B(n463[5]), .Z(n14805)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i585_2_lut_rep_314.init = 16'heeee;
    LUT4 i7394_4_lut_4_lut (.A(n463[4]), .B(n463[5]), .C(n14804), .D(n11050), 
         .Z(n2943)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i7394_4_lut_4_lut.init = 16'hf3f2;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_470)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(134[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 i5911_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14692), 
         .D(n14832), .Z(n6777)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i5911_4_lut_4_lut.init = 16'h7340;
    LUT4 i7786_2_lut_rep_160_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n14651)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7786_2_lut_rep_160_3_lut_4_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i7612_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n16039), 
         .D(n14760), .Z(n1851_adj_782)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7612_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n14866), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i7671_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n14777), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7671_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i11719_2_lut_rep_236_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14727)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11719_2_lut_rep_236_2_lut.init = 16'hdddd;
    LUT4 i7641_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n14859), 
         .D(n14728), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7641_4_lut_4_lut.init = 16'h5140;
    LUT4 i7856_2_lut_rep_163_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(n14808), .D(rom_addr[0]), .Z(n14654)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7856_2_lut_rep_163_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i7629_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14729), .C(rom_addr[3]), 
         .D(n14793), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7629_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i7674_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n14741), .C(rom_addr[3]), 
         .D(n14777), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7674_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i2369_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n14689), 
         .D(n14706), .Z(n3205)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2369_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n14654), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i2150_4_lut (.A(\end_x_8__N_306[4] ), .B(\end_y_8__N_324[4] ), 
         .C(n14874), .D(n6030), .Z(n2986)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i2150_4_lut.init = 16'hc0ca;
    LUT4 i7771_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1628)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7771_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i2047_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_53), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(143[10] 146[51])
    defparam i2047_2_lut.init = 16'h6666;
    LUT4 i7875_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n14866), 
         .D(rom_addr[3]), .Z(n1596)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7875_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i996_2_lut_rep_381 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n14872)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i996_2_lut_rep_381.init = 16'h8888;
    LUT4 i1003_2_lut_rep_292_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n14783)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i1003_2_lut_rep_292_3_lut.init = 16'h8080;
    LUT4 i1001_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n422[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i1001_2_lut_3_lut.init = 16'h7878;
    LUT4 i1008_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n422[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(228[30:54])
    defparam i1008_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i589_2_lut_rep_383 (.A(n463[7]), .B(n463[9]), .Z(n14874)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i589_2_lut_rep_383.init = 16'heeee;
    PFUMX i13983 (.BLUT(n14916), .ALUT(n14917), .C0(rom_addr[3]), .Z(n14918));
    LUT4 i153_2_lut_rep_389 (.A(\state[2] ), .B(temp[0]), .Z(n14880)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i153_2_lut_rep_389.init = 16'h2222;
    LUT4 i7417_2_lut_rep_213_3_lut (.A(\state[2] ), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n14704)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam i7417_2_lut_rep_213_3_lut.init = 16'h2f2f;
    LUT4 show_char_data_8__I_0_i3_3_lut_4_lut (.A(\state[2] ), .B(temp[0]), 
         .C(\state[1] ), .D(show_char_data_8__N_460[2]), .Z(show_char_data_8__N_286[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[13:55])
    defparam show_char_data_8__I_0_i3_3_lut_4_lut.init = 16'hf202;
    LUT4 i2123_2_lut (.A(state[0]), .B(\state_3__N_379[1] ), .Z(n2959)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2123_2_lut.init = 16'h2222;
    LUT4 i5_3_lut (.A(n12195), .B(n10), .C(cnt_wr_color_data[5]), .Z(length_num_flag_N_473)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5_3_lut.init = 16'h0808;
    LUT4 i4_4_lut_adj_27 (.A(cnt_wr_color_data[4]), .B(\state[2] ), .C(cnt_wr_color_data[0]), 
         .D(the1_wr_done), .Z(n10)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut_adj_27.init = 16'h4000;
    LUT4 i2126_4_lut (.A(\state[1] ), .B(\state_3__N_379[1] ), .C(state_3__N_383[2]), 
         .D(state[0]), .Z(n2962)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2126_4_lut.init = 16'hce0a;
    LUT4 i2128_4_lut (.A(\state[2] ), .B(state_3__N_383[2]), .C(state_3__N_387[3]), 
         .D(\state[1] ), .Z(n2964)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2128_4_lut.init = 16'hce0a;
    LUT4 show_char_data_8__I_0_i1_4_lut (.A(n14880), .B(n6026), .C(\state[1] ), 
         .D(n14700), .Z(show_char_data_8__N_286[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(249[10] 260[22])
    defparam show_char_data_8__I_0_i1_4_lut.init = 16'h0aca;
    LUT4 i2149_3_lut_4_lut_4_lut (.A(\state[1] ), .B(n759), .C(n14880), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_460[5])) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam i2149_3_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n14664), 
         .C(n14682), .D(rom_addr[0]), .Z(n2428)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n6_adj_783), 
         .C(n5), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_5_i508_4_lut_4_lut (.A(rom_addr[6]), .B(n14757), 
         .C(n14655), .D(n14857), .Z(n508)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i508_4_lut_4_lut.init = 16'hd850;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n12226), 
         .C(n5980), .D(n14661), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i7854_3_lut_3_lut (.A(rom_addr[6]), .B(n11180), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7854_3_lut_3_lut.init = 16'h0202;
    LUT4 i7986_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n8856)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7986_2_lut.init = 16'heeee;
    LUT4 i12255_4_lut_4_lut (.A(rom_addr[3]), .B(n4), .C(rom_addr[6]), 
         .D(n14646), .Z(n12901)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12255_4_lut_4_lut.init = 16'hbfb0;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14671), .D(n16036), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14832), .D(n14694), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_28 (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14857), .D(rom_addr[5]), .Z(n6536)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_28.init = 16'h0040;
    LUT4 i1_2_lut_rep_172_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n14663)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_172_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_29 (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n14869), .D(rom_addr[0]), .Z(n12247)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_29.init = 16'h4000;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n14694), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i11958_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n12604)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i11958_4_lut_4_lut.init = 16'h7340;
    LUT4 n13024_bdd_3_lut_13891_3_lut_3_lut (.A(rom_addr[4]), .B(n14814), 
         .C(rom_addr[3]), .Z(n14541)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13024_bdd_3_lut_13891_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_30 (.A(rom_addr[3]), .B(rom_addr[5]), 
         .C(n14869), .D(rom_addr[4]), .Z(n6151)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_30.init = 16'h4000;
    LUT4 n109_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n13591), 
         .D(n1834), .Z(n14364)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n109_bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i12534_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n13126)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12534_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i12453_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n13099)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12453_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i2247_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n6151), 
         .D(n14662), .Z(n3083)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2247_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i12904_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n6817)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12904_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12879_3_lut_3_lut (.A(rom_addr[7]), .B(n11133), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12879_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12211_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278), .Z(n12857)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12211_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_174_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14665)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_174_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_rep_182_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .Z(n14673)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_182_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_351 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n14842)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_351.init = 16'hbbbb;
    LUT4 i13060_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_101)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i13060_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_217_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n14708)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_217_3_lut.init = 16'hbfbf;
    LUT4 i13102_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1373), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_88)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i13102_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 temp_7__N_435_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(debug_led2_c_3), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_450)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_435_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i6091_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1373), .D(cnt_rom_prepare[1]), .Z(n6968)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6091_2_lut_3_lut_4_lut.init = 16'h0b0f;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(n6801), .C(rom_addr[0]), 
         .Z(n10927)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i5176_3_lut (.A(n11050), .B(\end_x_8__N_306[3] ), .C(n6947), 
         .Z(n6032)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(235[9] 248[16])
    defparam i5176_3_lut.init = 16'hc5c5;
    LUT4 i8056_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n14852), .D(rom_addr[3]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i8056_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i12768_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n1084), .C(n1076), 
         .D(rom_addr[4]), .Z(n1085)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i12768_3_lut_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_198_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14689)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_198_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7687_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14638), 
         .D(n12947), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7687_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i7472_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n12867), .Z(n4094_adj_784)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7472_4_lut_4_lut.init = 16'h5140;
    LUT4 i7975_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n12237), 
         .D(n12950), .Z(n4094_adj_785)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7975_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_3_lut_adj_31 (.A(n463[3]), .B(n463[1]), .C(n463[2]), .Z(n11050)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_31.init = 16'hfefe;
    LUT4 i6072_3_lut (.A(n463[2]), .B(n463[4]), .C(n463[3]), .Z(n6947)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i6072_3_lut.init = 16'hcece;
    LUT4 i2204_1_lut_rep_329 (.A(rom_addr[5]), .Z(n14820)) /* synthesis lut_function=(!(A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2204_1_lut_rep_329.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14818), 
         .C(n14843), .D(rom_addr[7]), .Z(n11178)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46), 
         .C(n14669), .D(rom_addr[1]), .Z(n62)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n14665), 
         .C(rom_addr[0]), .D(n46_adj_786), .Z(n62_adj_787)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n8984), 
         .C(rom_addr[4]), .D(n14777), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i1_2_lut_rep_155_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14843), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14646)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_155_3_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n14671), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_788), 
         .C(n2395), .Z(n1596_adj_789)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n14843), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n6295)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n14744), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n14778), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n14673), 
         .C(rom_addr[0]), .D(n379), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n12226), 
         .C(n4803), .D(n14724), .Z(n828_adj_790)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4019), 
         .C(n14778), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_791), 
         .C(n12215), .D(n14686), .Z(n1723)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_792), 
         .C(rom_addr[4]), .D(n2040), .Z(n380_adj_793)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i7469_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n2040), 
         .D(n14671), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i7469_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n14778), .D(rom_addr[0]), .Z(n1530_adj_794)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n13664_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13663), 
         .D(n13664), .Z(n14636)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam n13664_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n14649), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i76_2_lut (.A(\state[2] ), .B(the1_wr_done), .Z(n272)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(172[13:55])
    defparam i76_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_159_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[5]), 
         .C(n14857), .D(rom_addr[4]), .Z(n14650)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(152[10] 155[86])
    defparam i1_2_lut_rep_159_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i118_4_lut (.A(n12406), .B(length_num_flag), .C(cnt_length_num[4]), 
         .D(cnt_length_num_c[2]), .Z(state_3__N_387[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(214[13:77])
    defparam i118_4_lut.init = 16'h0800;
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n463[14]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n463[13]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n463[12]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n463[11]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n463[9]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n463[8]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n463[7]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n463[6]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n463[5]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n463[4]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n463[3]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n463[2]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n463[1]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n463[0]), .SP(cnt_set_windows_3__N_395), 
            .CK(sys_clk_50MHz), .Q(n463[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(128[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i4 (.D(n2959), .CK(sys_clk_50MHz), .PD(debug_led2_c_3), 
            .Q(state[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2962), .CK(sys_clk_50MHz), .Q(\state[1] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n2964), .CK(sys_clk_50MHz), .Q(\state[2] ));   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(106[9] 111[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n14706(n14706), .n14728(n14728), 
            .n14687(n14687), .n2040(n2040), .n14744(n14744), .n14778(n14778), 
            .n14651(n14651), .n14364(n14364), .n14636(n14636), .n14674(n14674), 
            .n1211(n1211), .n14809(n14809), .n14671(n14671), .n14686(n14686), 
            .n16036(n16036), .n14869(n14869), .n1405(n1405), .n4(n4_adj_791), 
            .n12604(n12604), .n14757(n14757), .n14866(n14866), .n10927(n10927), 
            .n301(n301), .n1148(n1148), .n158(n158), .n14843(n14843), 
            .n14661(n14661), .n2141(n2141), .n12240(n12240), .n1565(n1565), 
            .n1596(n1596), .n1851(n1851_adj_782), .n1530(n1530), .n13664(n13664), 
            .n2395(n2395), .rom_q({rom_q}), .n379(n379), .n1069(n1069), 
            .n4_adj_1(n4_adj_792), .n46(n46), .n5980(n5980), .n46_adj_2(n46_adj_786), 
            .n12247(n12247), .n828(n828_adj_790), .n1643(n1643), .n14694(n14694), 
            .n14777(n14777), .n4019(n4019), .n380(n380), .n14918(n14918), 
            .n270(n270), .n6777(n6777), .n62(n62), .n2621(n2621), .n14638(n14638), 
            .n4094(n4094), .n4094_adj_3(n4094_adj_785), .n4094_adj_4(n4094_adj_784), 
            .n317(n317), .n1530_adj_5(n1530_adj_794), .n1628(n1628), .n1661(n1661), 
            .n828_adj_6(n828), .n13591(n13591), .n14743(n14743), .n12763(n12763), 
            .n12857(n12857), .n14666(n14666), .n14793(n14793), .n16039(n16039), 
            .n14729(n14729), .n8984(n8984), .n62_adj_7(n62_adj_787), .n11133(n11133), 
            .n14832(n14832), .n14667(n14667), .n13099(n13099), .n892(n892), 
            .n14808(n14808), .n13126(n13126), .n1834(n1834), .n14692(n14692), 
            .n14818(n14818), .n14727(n14727), .n14673(n14673), .n14852(n14852), 
            .n603(n603), .n12226(n12226), .n14825(n14825), .n14859(n14859), 
            .n12867(n12867), .n12950(n12950), .n2025(n2025), .n891(n891), 
            .n14857(n14857), .n14665(n14665), .n14814(n14814), .n2332(n2332), 
            .n6817(n6817), .n1534(n1534), .n1565_adj_8(n1565_adj_788), 
            .n1278(n1278), .n14668(n14668), .n12348(n12348), .n6295(n6295), 
            .n3083(n3083), .n14682(n14682), .n14689(n14689), .n509(n509), 
            .n510(n510), .n12947(n12947), .n1851_adj_9(n1851), .n12237(n12237), 
            .n14650(n14650), .n3069(n3069), .n14663(n14663), .n14664(n14664), 
            .n1149(n1149), .n14883(n14883), .n1101(n1101), .n14820(n14820), 
            .n4_adj_10(n4), .n1403(n1403), .n796(n796), .n4803(n4803), 
            .n6801(n6801), .n14655(n14655), .n125(n125), .n1275(n1275), 
            .n14741(n14741), .n1596_adj_11(n1596_adj_789), .n13663(n13663), 
            .n1085(n1085), .n2364(n2364), .n1467(n1467), .n14670(n14670), 
            .n308(n308), .n1172(n1172), .n380_adj_12(n380_adj_793), .n6(n6_adj_783), 
            .n14760(n14760), .n14649(n14649), .n5(n5), .n94(n94), .n126(n126), 
            .n127(n127), .n2428(n2428), .n2300(n2300), .n14724(n14724), 
            .n14647(n14647), .n1076(n1076), .n14541(n14541), .n11178(n11178), 
            .n11180(n11180), .n6536(n6536), .n3205(n3205), .n12901(n12901), 
            .n12952(n12952), .n1436(n1436)) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(279[10] 283[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n14706, n14728, n14687, n2040, n14744, 
            n14778, n14651, n14364, n14636, n14674, n1211, n14809, 
            n14671, n14686, n16036, n14869, n1405, n4, n12604, 
            n14757, n14866, n10927, n301, n1148, n158, n14843, 
            n14661, n2141, n12240, n1565, n1596, n1851, n1530, 
            n13664, n2395, rom_q, n379, n1069, n4_adj_1, n46, 
            n5980, n46_adj_2, n12247, n828, n1643, n14694, n14777, 
            n4019, n380, n14918, n270, n6777, n62, n2621, n14638, 
            n4094, n4094_adj_3, n4094_adj_4, n317, n1530_adj_5, n1628, 
            n1661, n828_adj_6, n13591, n14743, n12763, n12857, n14666, 
            n14793, n16039, n14729, n8984, n62_adj_7, n11133, n14832, 
            n14667, n13099, n892, n14808, n13126, n1834, n14692, 
            n14818, n14727, n14673, n14852, n603, n12226, n14825, 
            n14859, n12867, n12950, n2025, n891, n14857, n14665, 
            n14814, n2332, n6817, n1534, n1565_adj_8, n1278, n14668, 
            n12348, n6295, n3083, n14682, n14689, n509, n510, 
            n12947, n1851_adj_9, n12237, n14650, n3069, n14663, 
            n14664, n1149, n14883, n1101, n14820, n4_adj_10, n1403, 
            n796, n4803, n6801, n14655, n125, n1275, n14741, n1596_adj_11, 
            n13663, n1085, n2364, n1467, n14670, n308, n1172, 
            n380_adj_12, n6, n14760, n14649, n5, n94, n126, n127, 
            n2428, n2300, n14724, n14647, n1076, n14541, n11178, 
            n11180, n6536, n3205, n12901, n12952, n1436) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n14706;
    output n14728;
    output n14687;
    output n2040;
    output n14744;
    output n14778;
    input n14651;
    input n14364;
    input n14636;
    input n14674;
    output n1211;
    output n14809;
    output n14671;
    output n14686;
    output n16036;
    output n14869;
    output n1405;
    output n4;
    input n12604;
    output n14757;
    output n14866;
    input n10927;
    output n301;
    input n1148;
    input n158;
    output n14843;
    output n14661;
    input n2141;
    input n12240;
    input n1565;
    input n1596;
    input n1851;
    input n1530;
    output n13664;
    output n2395;
    output [7:0]rom_q;
    output n379;
    output n1069;
    output n4_adj_1;
    output n46;
    output n5980;
    output n46_adj_2;
    input n12247;
    input n828;
    output n1643;
    output n14694;
    output n14777;
    output n4019;
    input n380;
    input n14918;
    output n270;
    input n6777;
    input n62;
    input n2621;
    output n14638;
    input n4094;
    input n4094_adj_3;
    input n4094_adj_4;
    input n317;
    input n1530_adj_5;
    input n1628;
    output n1661;
    input n828_adj_6;
    output n13591;
    input n14743;
    input n12763;
    input n12857;
    output n14666;
    output n14793;
    output n16039;
    output n14729;
    output n8984;
    input n62_adj_7;
    output n11133;
    output n14832;
    input n14667;
    input n13099;
    input n892;
    output n14808;
    input n13126;
    output n1834;
    output n14692;
    output n14818;
    input n14727;
    input n14673;
    output n14852;
    output n603;
    output n12226;
    output n14825;
    output n14859;
    output n12867;
    output n12950;
    output n2025;
    input n891;
    output n14857;
    input n14665;
    output n14814;
    output n2332;
    input n6817;
    input n1534;
    output n1565_adj_8;
    output n1278;
    output n14668;
    input n12348;
    input n6295;
    input n3083;
    output n14682;
    input n14689;
    input n509;
    output n510;
    output n12947;
    input n1851_adj_9;
    output n12237;
    input n14650;
    output n3069;
    input n14663;
    output n14664;
    input n1149;
    input n14883;
    output n1101;
    input n14820;
    output n4_adj_10;
    input n1403;
    output n796;
    output n4803;
    output n6801;
    output n14655;
    input n125;
    input n1275;
    output n14741;
    input n1596_adj_11;
    output n13663;
    input n1085;
    input n2364;
    input n1467;
    output n14670;
    output n308;
    output n1172;
    input n380_adj_12;
    output n6;
    output n14760;
    output n14649;
    output n5;
    input n94;
    input n126;
    output n127;
    input n2428;
    input n2300;
    output n14724;
    input n14647;
    output n1076;
    input n14541;
    input n11178;
    output n11180;
    input n6536;
    input n3205;
    input n12901;
    input n12952;
    input n1436;
    
    
    wire n2283, n12758, n12765, n380_c, n13093, n13008, n13009, 
        n2300_c, n14410, n14409, n14411, n13742, n13743, n2237, 
        n13731, n13732, n13029, n13030, n2492, n14848, n14813, 
        n13035, n13036, n2555, n14776, n956, n8469, n12782, n13729, 
        n13728, n13730, n13569, n14730, n12713, n14846, n2267, 
        n12875, n13041, n13042, n13043, n14723, n13044, n13045, 
        n13046, n14367, n14365, n14368, n14948, n14366, n14719, 
        n14773, n189, n14684, n1883, n1914, n13048, n14363, n14979, 
        n14980, n14981, n1947, n12905, n13049, n13725, n13726, 
        n14896, n14897, n924, n14861, n2620, n14220, n2010, n6747, 
        n13050, n2283_adj_553, n2298, n13054, n13055, n13056, n13057, 
        n13058, n13059, n13579, n12898, n13580, n12254, n12248, 
        n13061, n14900, n14977, n14978, n2141_c, n2173, n1514, 
        n14770, n13063, n13064, n13065, n13066, n13067, n13068, 
        n14346, n14345, n14347, n14973, n14974, n14975, n1451, 
        n1436_c, n1467_c, n13071, n14970, n14971, n14830, n14972, 
        n14648, n5437, n14893, n14894, n14895, n1499, n1530_c, 
        n13072, n14343, n14344, n14967, n14968, n14969, n13723, 
        n13724, n16043, n16044, n16045, n1692, n1723, n13078, 
        n14721, n1755, n1786, n13079, n14964, n14965, n14966, 
        n14266, n14854, n1435, n12536, n12537, n12538, n1341, 
        n10921, n14713, n14961, n14962, n14963, n14765, n12549, 
        n12550, n12551, n12455, n12555, n12556, n12557, n12558, 
        n12559, n12560, n14675, n14803, n14879, n14860, n1244, 
        n12564, n12565, n12566, n14317, n14315, n14318, n1054, 
        n1085_c, n1086, n14745, n270_c, n14958, n14959, n14960, 
        n16040, n16041, n16042, n12573, n12574, n12575, n684, 
        n699, n12702, n14769, n12576, n12577, n12578, n14890, 
        n14891, n14892, n12579, n12580, n12583, n12581, n12582, 
        n12584, n12586, n12587, n12588, n94_c, n10915, n126_c, 
        n12589, n12590, n12591, n349, n380_adj_554, n12593, n14685, 
        n14314, n14863, n12595, n12596, n12597, n1820, n1851_c, 
        n13047, n14316, n12598, n12599, n12600, n12605, n12606, 
        n12607, n12608, n12609, n14887, n14888, n14889, n13533, 
        n14718, n13534, n12610, n12611, n12614, n12612, n12613, 
        n12615, n12620, n12621, n12622, n1435_adj_555, n1659, n14864, 
        n12623, n12624, n12627, n12483, n12625, n12626, n12628, 
        n12630, n12631, n12632, n14865, n12633, n12634, n12635, 
        n13034, n891_c, n12637, n12639, n12640, n12641, n2685, 
        n3069_c, n3069_adj_556, n12642, n12643, n12644, n14954, 
        n14955, n14956, n14762, n12645, n12646, n12649, n12647, 
        n12648, n12650, n14858, n236, n12696, n1117, n12659, n2523, 
        n2554, n2555_adj_557, n12661, n12662, n12663, n12664, n12665, 
        n12666, n14951, n14952, n14953, n604, n12695, n12670, 
        n12671, n12672, n2444, n12673, n12674, n12675, n1117_adj_558, 
        n1149_c, n14699, n190, n5553, n12685, n12686, n12689, 
        n12687, n12688, n12690, n14885, n4833, n14884, n14886, 
        n4_adj_559, n14947, n14949, n2173_adj_561, n557, n428, n12693, 
        n526, n205, n12692, n12698, n14270, n14267, n14271, n14269, 
        n14268, n14817, n1820_adj_562, n1852, n2283_adj_564, n2490, 
        n2491, n14781, n12694, n14821, n1531, n12697, n14749, 
        n1628_c, n12699, n364, n6772, n12358, n557_adj_566, n12701, 
        n12703, n13536, n2348, n2426, n2427, n1002, n12839, n3070, 
        n205_adj_567, n506, n747, n1931, n924_adj_568, n12232, n526_adj_569, 
        n635, n1691, n13647, n506_adj_570, n13125, n526_adj_571, 
        n1228, n13648, n6768, n6744, n14221, n1451_adj_573, n6791, 
        n13683, n13680, n13684, n2444_adj_574, n971, n1595, n526_adj_576, 
        n2475, n2491_adj_577, n14679, n14633, n731, n14815, n1676, 
        n6806, n827, n12500, n829, n908, n460, n13682, n13681, 
        n124, n12714, n12715, n2009, n14688, n428_adj_578, n2411, 
        n2459, n2427_adj_579, n2298_adj_580, n109, n12716, n12717, 
        n12720, n14690, n1196, n1770, n2077, n14118, n13744, n13745, 
        n2040_adj_581, n12718, n12719, n12721, n1913, n270_adj_582, 
        n2009_adj_583, n1514_adj_584, n5019, n14695, n1243, n812, 
        n2588, n12744, n14035, n491, n797, n828_adj_585, n12636, 
        n2444_adj_586, n14851, n14425, n1596_adj_587, n8958, n13629, 
        n2522, n668, n12723, n12724, n12725, n1483, n604_adj_588, 
        n2396, n381, n2109, n14440, n13013, n318, n14772, n653, 
        n653_adj_591, n13023, n6161, n732, n13033, n61, n63, n859, 
        n653_adj_592, n1549, n1564, n1529, n1676_adj_593, n14867, 
        n12726, n12727, n12728, n1466, n13535, n14763, n13017, 
        n14412, n12864, n3070_adj_594, n14937, n14816, n14466, n14753, 
        n13673, n1692_adj_595, n16037, n2025_c, n14759, n1038, n1054_adj_596, 
        n14755, n2205, n2237_adj_597, n14847, n2492_adj_598, n14442, 
        n14443, n14680, n2268, n2299, n2300_adj_599, n14799, n2428_c, 
        n12854, n1403_c, n12955, n1309, n12954, n1914_adj_600, n14941, 
        n14942, n14943, n12732, n12733, n12734, n1786_adj_601, n1084, 
        n1914_adj_602, n1658, n12837, n12838, n12861, n2009_adj_604, 
        n2010_adj_605, n1529_adj_606, n1530_adj_607, n1786_adj_608, 
        n1483_adj_609, n1499_adj_610, n14740, n1692_adj_611, n12741, 
        n1739, n1786_adj_612, n1787, n1676_adj_613, n1692_adj_614, 
        n14925, n2078, n12992, n12993, n12994, n13103, n13104, 
        n13105, n12540, n13679, n13678, n12735, n12736, n12737, 
        n1851_adj_615, n13083, n12803, n12804, n12805, n2047, n684_adj_617, 
        n12895, n604_adj_618, n12891, n286, n12592, n16038, n12835, 
        n12836, n1531_adj_620, n16035, n1755_adj_621, n12742, n12743, 
        n14868, n428_adj_622, n12889, n14709, n2522_adj_623, n2554_adj_624, 
        n205_adj_625, n12888, n6573, n11179, n12850, n12851, n12853, 
        n12988, n12989, n12990, n12991, n12961, n1723_adj_626, n14791, 
        n2205_adj_627, n2426_adj_628, n12879, n1549_adj_629, n1565_adj_630, 
        n2573, n13101, n13102, n14950, n1835, n1435_adj_631, n14811, 
        n2141_adj_632, n12773, n12878, n2428_adj_633, n6770, n890, 
        n1692_adj_634, n1466_adj_635, n2460, n12962, n1787_adj_636, 
        n1787_adj_637, n1947_adj_638, n1181, n1212, n1213, n13024, 
        n14542, n14780, n2009_adj_639, n12801, n12802, n860, n12471, 
        n892_c, n1786_adj_640, n1659_adj_642, n829_adj_644, n124_adj_645, 
        n1946, n3070_adj_646, n4386, n1707, n1723_adj_647, n12833, 
        n12834, n1883_adj_648, n1915, n716, n764, n13636, n1852_adj_649, 
        n12887, n2685_adj_650, n12757, n12759, n12844, n12845, n14771, 
        n13945, n1882, n1883_adj_651, n6749, n2573_adj_652, n12951, 
        n12848, n12849, n12852, n12764, n12769, n13944, n13946, 
        n12236, n12855, n12856, n12859, n12858, n12860, n2298_adj_653, 
        n12876, n12766, n12767, n12768, n2396_adj_654, n1467_adj_655, 
        n2364_c, n12862, n12863, n301_adj_656, n1017, n221, n14735, 
        n14756, n13943, n12913, n12914, n12915, n444, n445, n12980, 
        n12981, n13652, n12812, n12772, n12774, n954, n2589, n16033, 
        n12982, n12983, n620, n1785, n428_adj_657, n14761, n2298_adj_658, 
        n12984, n12985, n14717, n61_adj_659, n63_adj_661, n3475, 
        n316, n3070_adj_662, n2685_adj_663, n12986, n12987, n14909, 
        n1020, n13100, n893, n14903, n14905, n12932, n14904, n1691_adj_665, 
        n12925, n3070_adj_666, n12806, n12807, n12808, n13019, n445_adj_667, 
        n14908, n14223, n14224, n12874, n3069_adj_668, n6807, n1243_adj_669, 
        n14742, n1707_adj_670, n14907, n12799, n12800, n2009_adj_671, 
        n13633, n14911, n14910, n2237_adj_672, n14915, n12561, n1676_adj_673, 
        n604_adj_674, n2108, n1565_adj_675, n1597, n124_adj_676, n14037, 
        n14038, n12906, n12907, n12908, n14222, n397, n14914, 
        n1084_adj_677, n12846, n12847, n443, n14913, n13005, n14658, 
        n766, n1021, n14827, n2380, n4850, n14041, n731_adj_678, 
        n12865, n12866, n13006, n13007, n844, n637, n1212_adj_679, 
        n12885, n12886, n4087, n1978, n2522_adj_680, n2523_adj_681, 
        n6750, n13666, n12948, n12949, n12770, n12771, n13596, 
        n12904, n220, n15810, n14794, n13012, n13087, n13088, 
        n13089, n1053, n15809, n14924, n2110, n15812, n1914_adj_682, 
        n14715, n15813, n13018, n14920, n14919, n255, n510_c, 
        n12910, n15833, n15832, n14921, n444_adj_683, n12601, n15835, 
        n12783, n12784, n12795, n12789, n12790, n12798, n15836, 
        n14923, n14922, n14082, n14927, n2317, n14926, n4907, 
        n12616, n12629, n12842, n13026, n13027, n13028, n2040_adj_684, 
        n12542, n14642, n12541, n12638, n12651, n12843, n14930, 
        n12870, n12871, n12873, n14849, n2365, n2428_adj_687, n12911, 
        n12667, n12921, n12922, n12924, n12926, n12927, n12930, 
        n12943, n12944, n12946, n381_adj_688, n12966, n14929, n475, 
        n13076, n1468, n12975, n14716, n12900, n1724, n12977, 
        n14819, n14831, n890_adj_689, n12999, n13000, n13001, n12529, 
        n1789, n14933, n620_adj_690, n635_adj_691, n13051, n13052, 
        n13053, n13060, n13062, n13085, n13086, n1612, n1628_adj_692, 
        n14932, n1946_adj_693, n2045, n14936, n12543, n12544, n12545, 
        n589, n14935, n14938, n14939, n14940, n5207, n220_adj_694, 
        n699_adj_695, n14906, n12548, n1597_adj_697, n12535, n2555_adj_698, 
        n13109, n13110, n253, n14754, n190_adj_699, n14824, n14463, 
        n2538, n14912, n2110_adj_700, n6783, n2492_adj_701, n1275_c, 
        n1276, n12655, n14902, n12657, n541, n6767, n12364, n6811, 
        n2365_adj_702, n2492_adj_703, n12658, n12660, n14725, n13635, 
        n12811, n2283_adj_704, n2299_adj_705, n14693, n860_adj_706, 
        n4_adj_707, n542, n78, n986, n572, n1867, n14084, n13581, 
        n12896, n5519, n13097, n13090, n13094, n14928, n30, n285, 
        n14414, n2173_adj_708, n12909, n12912, n589_adj_709, n12902, 
        n12781, n12794, n12777, n12778, n12792, n12775, n15815, 
        n12791, n5873, n2492_adj_710, n1149_adj_711, n12793, n1597_adj_712, 
        n12787, n574, n604_adj_713, n3413, n2365_adj_714, n1915_adj_715, 
        n12459, n1021_adj_716, n13074, n13075, n12563, n3599, n1278_adj_717, 
        n507, n13082, n2556, n13599, n2174, n12369, n12883, n12884, 
        n12779, n12780, n12881, n12882, n2429, n3206, n908_adj_719, 
        n2301, n3148, n12958, n12959, n12960, n1243_adj_720, n14544, 
        n13096, n14468, n12722, n12700, n12594, n12603, n12841, 
        n1979, n12824, n12809, n12810, n12825, n12826, n12585, 
        n12840, n12815, n12816, n12828, n12813, n12814, n12827, 
        n12903, n14899, n12892, n12821, n12822, n12831, n12953, 
        n2684, n12872, n12923, n2300_adj_721, n12869, n12931, n12945, 
        n2237_adj_722, n12978, n12979, n12976, n12972, n12973, n12970, 
        n14042, n12968, n12969, n475_adj_723, n12967, n2555_adj_724, 
        n12964, n12965, n14934, n13677, n2428_adj_725, n14444, n12691, 
        n12669, n2555_adj_726, n12746, n14681, n2396_adj_727, n12823, 
        n12832, n12929, n14122, n12820, n12830, n12817, n14546, 
        n12829, n12539, n12935, n12936, n12942, n12937, n12938, 
        n12939, n12940, n12211, n14720, n12797, n2110_adj_729, n12796, 
        n12956, n12957, n557_adj_730, n476, n507_adj_731, n12745, 
        n2621_adj_732, n2141_adj_735, n2173_adj_736, n2173_adj_737, 
        n13080, n13081, n15838, n12786, n12788, n1660, n443_adj_738, 
        n12602, n14683, n508, n14931, n1915_adj_739, n2554_adj_740, 
        n4580, n2523_adj_741, n13746, n12919, n12996, n12997, n12998, 
        n6948, n12890, n12893, n13011, n14121, n14119, n12868, 
        n4842, n13667, n476_adj_742, n508_adj_743, n13077, n1038_adj_744, 
        n4067, n13651, n13649, n14120, n684_adj_747, n13650, n251, 
        n13084, n364_adj_748, n12894, n2236, n14696, n13538, n3313, 
        n13220, n1883_adj_749, n220_adj_750, n13570, n2333, n13727, 
        n12562, n14845, n251_adj_751, n14083, n13593, n15837, n15834, 
        n1117_adj_752, n2268_adj_753, n15814, n15811, n1898, n12668, 
        n13594, n1244_adj_754, n61_adj_756, n1867_adj_757, n14812, 
        n1883_adj_758, n1275_adj_760, n1101_adj_761, n1676_adj_764, 
        n1228_adj_766, n5558, n13032, n1724_adj_767, n1724_adj_768, 
        n1292, n364_adj_769, n13571, n14752, n14635, n13634, n13631, 
        n859_adj_771, n13632, n13578, n668_adj_774, n1660_adj_777, 
        n5334, n13942, n13630, n14545, n14543, n14465, n13537, 
        n14467, n14464, n1228_adj_778, n14901, n13595, n14441, n1659_adj_779, 
        n14413;
    
    LUT4 i12112_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(rom_addr[4]), 
         .D(n2283), .Z(n12758)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12112_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12447_4_lut (.A(n12765), .B(n380_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n13093)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12447_4_lut.init = 16'hca0a;
    LUT4 i7605_2_lut_rep_237_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14728)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7605_2_lut_rep_237_2_lut_3_lut.init = 16'h6f6f;
    PFUMX i12364 (.BLUT(n13008), .ALUT(n13009), .C0(rom_addr[5]), .Z(n2300_c));
    PFUMX i13780 (.BLUT(n14410), .ALUT(n14409), .C0(rom_addr[4]), .Z(n14411));
    PFUMX i13296 (.BLUT(n13742), .ALUT(n14687), .C0(rom_addr[4]), .Z(n13743));
    PFUMX i13285 (.BLUT(n2237), .ALUT(n13731), .C0(rom_addr[6]), .Z(n13732));
    PFUMX i12385 (.BLUT(n13029), .ALUT(n13030), .C0(rom_addr[5]), .Z(n2492));
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n14848), .B(n2040), .C(rom_addr[4]), 
         .D(n14813), .Z(n380_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    PFUMX i12391 (.BLUT(n13035), .ALUT(n13036), .C0(rom_addr[5]), .Z(n2555));
    LUT4 i7657_2_lut_rep_285_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n14776)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7657_2_lut_rep_285_2_lut_3_lut.init = 16'h0606;
    LUT4 i12136_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n8469), 
         .Z(n12782)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12136_4_lut.init = 16'hca0a;
    PFUMX i13283 (.BLUT(n13729), .ALUT(n13728), .C0(rom_addr[3]), .Z(n13730));
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13569)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 i12067_4_lut (.A(rom_addr[0]), .B(n14744), .C(rom_addr[4]), .D(n14730), 
         .Z(n12713)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12067_4_lut.init = 16'hcac0;
    LUT4 i12229_3_lut_4_lut (.A(rom_addr[1]), .B(n14846), .C(rom_addr[4]), 
         .D(n2267), .Z(n12875)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12229_3_lut_4_lut.init = 16'hf101;
    PFUMX i12397 (.BLUT(n13041), .ALUT(n13042), .C0(rom_addr[5]), .Z(n13043));
    LUT4 i7481_2_lut_rep_232_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14723)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7481_2_lut_rep_232_3_lut.init = 16'h9090;
    PFUMX i12400 (.BLUT(n13044), .ALUT(n13045), .C0(rom_addr[5]), .Z(n13046));
    LUT4 i4174_3_lut_rep_287_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14778)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4174_3_lut_rep_287_4_lut_3_lut.init = 16'hd6d6;
    L6MUX21 i13746 (.D0(n14367), .D1(n14365), .SD(rom_addr[6]), .Z(n14368));
    LUT4 i5927_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14948)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5927_3_lut_4_lut_then_4_lut.init = 16'h5285;
    PFUMX i13744 (.BLUT(n14651), .ALUT(n14366), .C0(rom_addr[5]), .Z(n14367));
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), 
         .C(rom_addr[4]), .D(n14773), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_193_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14684)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_193_3_lut_4_lut.init = 16'h8000;
    PFUMX i12402 (.BLUT(n1883), .ALUT(n1914), .C0(rom_addr[5]), .Z(n13048));
    PFUMX i13742 (.BLUT(n14364), .ALUT(n14363), .C0(rom_addr[5]), .Z(n14365));
    PFUMX i14025 (.BLUT(n14979), .ALUT(n14980), .C0(rom_addr[0]), .Z(n14981));
    PFUMX i12403 (.BLUT(n1947), .ALUT(n12905), .C0(rom_addr[5]), .Z(n13049));
    PFUMX i13280 (.BLUT(n13725), .ALUT(n14636), .C0(rom_addr[6]), .Z(n13726));
    LUT4 i4098_3_lut_rep_239_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14730)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4098_3_lut_rep_239_4_lut_3_lut.init = 16'h6262;
    PFUMX i13971 (.BLUT(n14896), .ALUT(n14897), .C0(rom_addr[0]), .Z(n924));
    LUT4 n2172_bdd_3_lut_4_lut (.A(n14861), .B(n14674), .C(rom_addr[5]), 
         .D(n2620), .Z(n14220)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2172_bdd_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12404 (.BLUT(n2010), .ALUT(n6747), .C0(rom_addr[5]), .Z(n13050));
    LUT4 i12363_3_lut (.A(n2283_adj_553), .B(n2298), .C(rom_addr[4]), 
         .Z(n13009)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12363_3_lut.init = 16'hcaca;
    L6MUX21 i12410 (.D0(n13054), .D1(n13055), .SD(rom_addr[5]), .Z(n13056));
    PFUMX i12413 (.BLUT(n13057), .ALUT(n13058), .C0(rom_addr[5]), .Z(n13059));
    LUT4 i7573_2_lut_rep_196_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14687)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7573_2_lut_rep_196_3_lut_4_lut.init = 16'h0090;
    PFUMX i13186 (.BLUT(n13579), .ALUT(n12898), .C0(rom_addr[5]), .Z(n13580));
    PFUMX i12415 (.BLUT(n12254), .ALUT(n12248), .C0(rom_addr[6]), .Z(n13061));
    PFUMX i14023 (.BLUT(n14900), .ALUT(n14977), .C0(rom_addr[0]), .Z(n14978));
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n14861), .B(n14674), 
         .C(rom_addr[5]), .D(n2141_c), .Z(n2173)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 i3760_2_lut_rep_279_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14770)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3760_2_lut_rep_279_3_lut.init = 16'h6060;
    L6MUX21 i12419 (.D0(n13063), .D1(n13064), .SD(rom_addr[5]), .Z(n13065));
    PFUMX i12422 (.BLUT(n13066), .ALUT(n13067), .C0(rom_addr[5]), .Z(n13068));
    PFUMX i13728 (.BLUT(n14346), .ALUT(n14345), .C0(rom_addr[6]), .Z(n14347));
    PFUMX i14021 (.BLUT(n14973), .ALUT(n14974), .C0(rom_addr[0]), .Z(n14975));
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    PFUMX i12425 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n13071));
    PFUMX i14019 (.BLUT(n14970), .ALUT(n14971), .C0(n14830), .Z(n14972));
    LUT4 n221_bdd_4_lut (.A(n14648), .B(n5437), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n14346)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut.init = 16'haa30;
    PFUMX i13969 (.BLUT(n14893), .ALUT(n14894), .C0(rom_addr[0]), .Z(n14895));
    PFUMX i12426 (.BLUT(n1499), .ALUT(n1530_c), .C0(rom_addr[5]), .Z(n13072));
    PFUMX i13726 (.BLUT(n1211), .ALUT(n14343), .C0(rom_addr[4]), .Z(n14344));
    PFUMX i14017 (.BLUT(n14967), .ALUT(n14968), .C0(rom_addr[1]), .Z(n14969));
    LUT4 i5076_2_lut_rep_318 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n14809)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5076_2_lut_rep_318.init = 16'h6666;
    PFUMX i13278 (.BLUT(n14671), .ALUT(n13723), .C0(rom_addr[4]), .Z(n13724));
    PFUMX i14712 (.BLUT(n16043), .ALUT(n16044), .C0(rom_addr[0]), .Z(n16045));
    PFUMX i12432 (.BLUT(n1692), .ALUT(n1723), .C0(rom_addr[5]), .Z(n13078));
    LUT4 i7484_2_lut_rep_230_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14721)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7484_2_lut_rep_230_3_lut.init = 16'hf6f6;
    PFUMX i12433 (.BLUT(n1755), .ALUT(n1786), .C0(rom_addr[5]), .Z(n13079));
    PFUMX i14015 (.BLUT(n14964), .ALUT(n14965), .C0(rom_addr[1]), .Z(n14966));
    LUT4 n1340_bdd_4_lut_13663 (.A(n14686), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16036), .Z(n14266)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1340_bdd_4_lut_13663.init = 16'haca0;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14854), 
         .C(rom_addr[3]), .D(n14869), .Z(n1435)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i11892 (.BLUT(n12536), .ALUT(n12537), .C0(rom_addr[5]), .Z(n12538));
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n10921), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7791_2_lut_rep_222_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14713)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7791_2_lut_rep_222_3_lut_4_lut.init = 16'h6000;
    PFUMX i14013 (.BLUT(n14961), .ALUT(n14962), .C0(rom_addr[1]), .Z(n14963));
    LUT4 i5895_2_lut_rep_274_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14765)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5895_2_lut_rep_274_3_lut.init = 16'hf6f6;
    PFUMX i11905 (.BLUT(n12549), .ALUT(n12550), .C0(rom_addr[5]), .Z(n12551));
    LUT4 i13112_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n12455)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13112_3_lut.init = 16'h7f7f;
    PFUMX i11911 (.BLUT(n12555), .ALUT(n12556), .C0(rom_addr[5]), .Z(n12557));
    PFUMX i11914 (.BLUT(n12558), .ALUT(n12559), .C0(rom_addr[5]), .Z(n12560));
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_157_4_lut (.A(rom_addr[0]), 
         .B(n14719), .C(rom_addr[4]), .D(n14675), .Z(n14648)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_157_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut (.A(n14803), .B(n14879), 
         .C(rom_addr[4]), .D(n14860), .Z(n1244)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut.init = 16'h8f80;
    PFUMX i11920 (.BLUT(n12564), .ALUT(n12565), .C0(rom_addr[5]), .Z(n12566));
    L6MUX21 i13702 (.D0(n14317), .D1(n14315), .SD(rom_addr[6]), .Z(n14318));
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[6]), .Z(n4)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h9990;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085_c), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7798_2_lut_rep_254_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n14745)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7798_2_lut_rep_254_3_lut_3_lut.init = 16'h4040;
    LUT4 i11703_3_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n270_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11703_3_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    PFUMX i14011 (.BLUT(n14958), .ALUT(n14959), .C0(rom_addr[3]), .Z(n14960));
    PFUMX i14710 (.BLUT(n16040), .ALUT(n16041), .C0(rom_addr[4]), .Z(n16042));
    PFUMX i11929 (.BLUT(n12573), .ALUT(n12574), .C0(rom_addr[5]), .Z(n12575));
    PFUMX i12056 (.BLUT(n684), .ALUT(n699), .C0(rom_addr[4]), .Z(n12702));
    LUT4 i5889_2_lut_rep_278_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14769)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5889_2_lut_rep_278_3_lut.init = 16'h6f6f;
    PFUMX i11932 (.BLUT(n12576), .ALUT(n12577), .C0(rom_addr[5]), .Z(n12578));
    PFUMX i13967 (.BLUT(n14890), .ALUT(n14891), .C0(rom_addr[1]), .Z(n14892));
    PFUMX i11937 (.BLUT(n12579), .ALUT(n12580), .C0(rom_addr[5]), .Z(n12583));
    PFUMX i11938 (.BLUT(n12581), .ALUT(n12582), .C0(rom_addr[5]), .Z(n12584));
    PFUMX i11942 (.BLUT(n12586), .ALUT(n12587), .C0(rom_addr[5]), .Z(n12588));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_c), .ALUT(n10915), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i11945 (.BLUT(n12589), .ALUT(n12590), .C0(rom_addr[5]), .Z(n12591));
    PFUMX i11947 (.BLUT(n349), .ALUT(n380_adj_554), .C0(rom_addr[5]), 
          .Z(n12593));
    PFUMX i13698 (.BLUT(n14685), .ALUT(n14314), .C0(rom_addr[5]), .Z(n14315));
    LUT4 i4775_2_lut_rep_372 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14863)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4775_2_lut_rep_372.init = 16'h8888;
    PFUMX i11951 (.BLUT(n12595), .ALUT(n12596), .C0(rom_addr[5]), .Z(n12597));
    PFUMX i12401 (.BLUT(n1820), .ALUT(n1851_c), .C0(rom_addr[5]), .Z(n13047));
    PFUMX i13700 (.BLUT(n14316), .ALUT(n14685), .C0(rom_addr[5]), .Z(n14317));
    PFUMX i11954 (.BLUT(n12598), .ALUT(n12599), .C0(rom_addr[5]), .Z(n12600));
    PFUMX i11960 (.BLUT(n12604), .ALUT(n12605), .C0(rom_addr[5]), .Z(n12606));
    PFUMX i11963 (.BLUT(n12607), .ALUT(n12608), .C0(rom_addr[5]), .Z(n12609));
    PFUMX i13965 (.BLUT(n14887), .ALUT(n14888), .C0(rom_addr[0]), .Z(n14889));
    PFUMX i13158 (.BLUT(n13533), .ALUT(n14718), .C0(rom_addr[4]), .Z(n13534));
    PFUMX i11968 (.BLUT(n12610), .ALUT(n12611), .C0(rom_addr[5]), .Z(n12614));
    PFUMX i11969 (.BLUT(n12612), .ALUT(n12613), .C0(rom_addr[5]), .Z(n12615));
    LUT4 i1_2_lut_rep_266_2_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .Z(n14757)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_266_2_lut_3_lut.init = 16'h0808;
    PFUMX i11976 (.BLUT(n12620), .ALUT(n12621), .C0(rom_addr[5]), .Z(n12622));
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435_adj_555), .B(n14854), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1659)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 i11835_2_lut_rep_373 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14864)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11835_2_lut_rep_373.init = 16'h4444;
    PFUMX i11981 (.BLUT(n12623), .ALUT(n12624), .C0(rom_addr[5]), .Z(n12627));
    LUT4 i13114_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n12483)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13114_2_lut_3_lut.init = 16'hfbfb;
    PFUMX i11982 (.BLUT(n12625), .ALUT(n12626), .C0(rom_addr[5]), .Z(n12628));
    PFUMX i11986 (.BLUT(n12630), .ALUT(n12631), .C0(rom_addr[5]), .Z(n12632));
    LUT4 i13089_2_lut_rep_374 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n14865)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13089_2_lut_rep_374.init = 16'h1111;
    PFUMX i11989 (.BLUT(n12633), .ALUT(n12634), .C0(rom_addr[5]), .Z(n12635));
    PFUMX i11991 (.BLUT(n13034), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n12637));
    PFUMX i11995 (.BLUT(n12639), .ALUT(n12640), .C0(rom_addr[5]), .Z(n12641));
    LUT4 i7788_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7788_2_lut_3_lut.init = 16'h1010;
    LUT4 i7822_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13726), 
         .Z(n3069_adj_556)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7822_2_lut_3_lut.init = 16'h1010;
    PFUMX i11998 (.BLUT(n12642), .ALUT(n12643), .C0(rom_addr[5]), .Z(n12644));
    PFUMX i14008 (.BLUT(n14954), .ALUT(n14955), .C0(rom_addr[2]), .Z(n14956));
    LUT4 i7642_2_lut_rep_375 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14866)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7642_2_lut_rep_375.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_271_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14762)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_271_3_lut_4_lut.init = 16'hffbf;
    PFUMX i12003 (.BLUT(n12645), .ALUT(n12646), .C0(rom_addr[5]), .Z(n12649));
    PFUMX i12004 (.BLUT(n12647), .ALUT(n12648), .C0(rom_addr[5]), .Z(n12650));
    LUT4 i12050_3_lut_4_lut (.A(n14858), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n12696)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12050_3_lut_4_lut.init = 16'h6f60;
    PFUMX i12013 (.BLUT(n1117), .ALUT(n10927), .C0(rom_addr[5]), .Z(n12659));
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_adj_557)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12017 (.BLUT(n12661), .ALUT(n12662), .C0(rom_addr[5]), .Z(n12663));
    PFUMX i12020 (.BLUT(n12664), .ALUT(n12665), .C0(rom_addr[5]), .Z(n12666));
    PFUMX i14006 (.BLUT(n14951), .ALUT(n14952), .C0(rom_addr[1]), .Z(n14953));
    LUT4 i12049_3_lut (.A(n301), .B(n604), .C(rom_addr[4]), .Z(n12695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12049_3_lut.init = 16'hcaca;
    PFUMX i12026 (.BLUT(n12670), .ALUT(n12671), .C0(rom_addr[5]), .Z(n12672));
    LUT4 address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut.init = 16'h0430;
    PFUMX i12029 (.BLUT(n12673), .ALUT(n12674), .C0(rom_addr[5]), .Z(n12675));
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117_adj_558), .ALUT(n1148), 
          .C0(rom_addr[5]), .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7784_2_lut_rep_208_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14699)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7784_2_lut_rep_208_3_lut_4_lut.init = 16'h4000;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i4717_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5553)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4717_3_lut_3_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 i7846_2_lut_rep_170_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(n14843), .Z(n14661)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7846_2_lut_rep_170_3_lut_4_lut.init = 16'h0040;
    PFUMX i12043 (.BLUT(n12685), .ALUT(n12686), .C0(rom_addr[5]), .Z(n12689));
    PFUMX i12044 (.BLUT(n12687), .ALUT(n12688), .C0(rom_addr[5]), .Z(n12690));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14885)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hc3a1;
    LUT4 i3997_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3997_3_lut_3_lut.init = 16'hcbcb;
    PFUMX i13963 (.BLUT(n14884), .ALUT(n14885), .C0(rom_addr[4]), .Z(n14886));
    LUT4 i1_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n4_adj_559)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut.init = 16'hb0b0;
    PFUMX i14003 (.BLUT(n14947), .ALUT(n14948), .C0(rom_addr[0]), .Z(n14949));
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n12240), .C0(rom_addr[5]), 
          .Z(n2173_adj_561)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12047_3_lut (.A(n557), .B(n428), .C(rom_addr[4]), .Z(n12693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12047_3_lut.init = 16'hcaca;
    LUT4 i12046_3_lut (.A(n526), .B(n205), .C(rom_addr[4]), .Z(n12692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12046_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14884)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'hc080;
    PFUMX i12052 (.BLUT(n1565), .ALUT(n1596), .C0(rom_addr[5]), .Z(n12698));
    L6MUX21 i13666 (.D0(n14270), .D1(n14267), .SD(rom_addr[6]), .Z(n14271));
    PFUMX i13664 (.BLUT(n14269), .ALUT(n14268), .C0(n14817), .Z(n14270));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820_adj_562), .ALUT(n1851), 
          .C0(rom_addr[5]), .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283_adj_564), .B(n2490), 
         .C(rom_addr[4]), .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_290_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14781)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_290_3_lut.init = 16'hbfbf;
    PFUMX i12048 (.BLUT(n12692), .ALUT(n12693), .C0(rom_addr[5]), .Z(n12694));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n14821), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12051 (.BLUT(n12695), .ALUT(n12696), .C0(rom_addr[5]), .Z(n12697));
    LUT4 i1_2_lut_rep_258_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14749)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_258_3_lut.init = 16'hfbfb;
    PFUMX i12053 (.BLUT(n1628_c), .ALUT(n1659), .C0(rom_addr[5]), .Z(n12699));
    LUT4 n549_bdd_4_lut_13782_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[5]), .Z(n13728)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (((D)+!C)+!B))) */ ;
    defparam n549_bdd_4_lut_13782_4_lut.init = 16'h2860;
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut.init = 16'h8809;
    LUT4 i5906_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6772)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5906_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 i11699_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n236)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11699_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h2242;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n12358)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2283)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_3_i2283_3_lut_4_lut_4_lut_4_lut.init = 16'h2181;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n557_adj_566)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut.init = 16'h81a1;
    LUT4 n2552_bdd_3_lut_13573_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13664)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2552_bdd_3_lut_13573_4_lut_4_lut.init = 16'hf7c0;
    L6MUX21 i12057 (.D0(n12701), .D1(n12702), .SD(rom_addr[5]), .Z(n12703));
    LUT4 n2521_bdd_3_lut_13904_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n13536)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;
    defparam n2521_bdd_3_lut_13904_4_lut_4_lut.init = 16'h6181;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut.init = 16'h0803;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1002)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut.init = 16'h5121;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut (.A(n12839), .B(n3070), .C(rom_addr[11]), 
         .D(rom_addr[10]), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_567)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 n2062_bdd_3_lut_13352_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13742)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2062_bdd_3_lut_13352_4_lut_4_lut_4_lut.init = 16'h4008;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_568), .ALUT(n12232), 
          .C0(rom_addr[5]), .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_569)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h400c;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1069)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h1418;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hc181;
    LUT4 n730_bdd_3_lut_13220_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13647)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_13220_4_lut_4_lut_4_lut.init = 16'h04c0;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506_adj_570)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 i12533_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13125)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12533_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_571)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4_adj_1)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    LUT4 i11693_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1228)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11693_3_lut_4_lut_3_lut_4_lut.init = 16'h1181;
    LUT4 n730_bdd_3_lut_13227_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n13648)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_13227_4_lut_4_lut.init = 16'h3f20;
    LUT4 i5902_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n6768)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5902_3_lut_4_lut_4_lut.init = 16'hd838;
    LUT4 i5878_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n6744)) /* synthesis lut_function=(A (B (C))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5878_4_lut_4_lut_4_lut.init = 16'hc585;
    LUT4 n1969_bdd_4_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14221)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1969_bdd_4_lut_3_lut_4_lut.init = 16'h1911;
    LUT4 i5939_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451_adj_573)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5939_4_lut_4_lut_4_lut.init = 16'h8505;
    LUT4 i7591_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n46)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7591_4_lut_4_lut_4_lut.init = 16'h6070;
    LUT4 i5925_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n6791)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5925_3_lut_4_lut_4_lut.init = 16'h10c0;
    LUT4 i2712_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[5]), .Z(n5980)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2712_3_lut_4_lut_4_lut_4_lut.init = 16'heffd;
    L6MUX21 i13248 (.D0(n13683), .D1(n13680), .SD(rom_addr[5]), .Z(n13684));
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444_adj_574)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n46_adj_2)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3188;
    PFUMX i13661 (.BLUT(n14685), .ALUT(n14266), .C0(rom_addr[5]), .Z(n14267));
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n526_adj_576)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h787a;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491_adj_577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 n10995_bdd_4_lut (.A(n14679), .B(rom_addr[4]), .C(n12247), .D(rom_addr[5]), 
         .Z(n14633)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n10995_bdd_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 i11718_3_lut_4_lut (.A(n14854), .B(rom_addr[3]), .C(n14815), 
         .D(n1676), .Z(n6806)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11718_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n12500), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n908)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut.init = 16'h7a78;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    PFUMX i13246 (.BLUT(n13682), .ALUT(n13681), .C0(rom_addr[4]), .Z(n13683));
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    PFUMX i12069 (.BLUT(n12713), .ALUT(n12714), .C0(rom_addr[5]), .Z(n12715));
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 i7524_2_lut_rep_197_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14688)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7524_2_lut_rep_197_4_lut_4_lut.init = 16'h0081;
    LUT4 i11965_3_lut_4_lut (.A(n14858), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428_adj_578), .Z(n12611)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11965_3_lut_4_lut.init = 16'hf909;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 i7681_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298_adj_580)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7681_4_lut_4_lut.init = 16'hf8f6;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    PFUMX i12074 (.BLUT(n12716), .ALUT(n12717), .C0(rom_addr[5]), .Z(n12720));
    LUT4 i7497_2_lut_rep_199_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14690)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7497_2_lut_rep_199_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 n1403_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14118)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1403_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 n13744_bdd_3_lut_13303 (.A(n13744), .B(n13743), .C(rom_addr[5]), 
         .Z(n13745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13744_bdd_3_lut_13303.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040_adj_581)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    PFUMX i12075 (.BLUT(n12718), .ALUT(n12719), .C0(rom_addr[5]), .Z(n12721));
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 i12692_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[4]), 
         .D(n270_adj_582), .Z(n13044)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12692_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_583)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut.init = 16'h7882;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_584)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 i4183_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5019)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4183_3_lut_4_lut_4_lut_4_lut.init = 16'hf6d6;
    LUT4 i7530_2_lut_rep_204_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14695)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7530_2_lut_rep_204_4_lut_4_lut.init = 16'h2900;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 n1340_bdd_3_lut_13697_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14269)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1340_bdd_3_lut_13697_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 i12098_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(rom_addr[4]), 
         .D(n2588), .Z(n12744)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12098_3_lut_4_lut.init = 16'h2f20;
    LUT4 n730_bdd_3_lut_13471_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14035)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n730_bdd_3_lut_13471_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 i11984_3_lut_4_lut (.A(rom_addr[0]), .B(n14769), .C(rom_addr[4]), 
         .D(n14745), .Z(n12630)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11984_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    PFUMX i11990 (.BLUT(n797), .ALUT(n828_adj_585), .C0(rom_addr[5]), 
          .Z(n12636));
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_586)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2444_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 n1293_bdd_4_lut (.A(n14694), .B(n14851), .C(n14861), .D(rom_addr[4]), 
         .Z(n14425)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut.init = 16'h30aa;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n14769), 
         .C(rom_addr[4]), .D(n14718), .Z(n1596_adj_587)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 i5880_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n8958)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5880_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 n1657_bdd_3_lut_13207_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13629)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_13207_4_lut_4_lut.init = 16'h2c41;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_3_i188_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i188_3_lut_4_lut_4_lut.init = 16'h01c0;
    PFUMX i12079 (.BLUT(n12723), .ALUT(n12724), .C0(rom_addr[5]), .Z(n12725));
    LUT4 i12041_3_lut_4_lut (.A(n14777), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n12687)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i12041_3_lut_4_lut.init = 16'h9f90;
    LUT4 i3183_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n4019)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3183_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_588)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364), .ALUT(n380), .C0(n14821), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 n1293_bdd_3_lut_13804 (.A(n14966), .B(n14918), .C(rom_addr[5]), 
         .Z(n14440)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1293_bdd_3_lut_13804.init = 16'hacac;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut.init = 16'hf813;
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n13013), .ALUT(n6777), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11977_3_lut_4_lut (.A(n14772), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653), .Z(n12623)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11977_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11940_3_lut_4_lut (.A(n14772), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_591), .Z(n12586)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11940_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2506_bdd_3_lut_13834_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13723)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2506_bdd_3_lut_13834_4_lut_4_lut.init = 16'hc807;
    LUT4 i12377_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13023)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12377_3_lut_4_lut_4_lut.init = 16'hcf02;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n14749), 
         .C(n6161), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    LUT4 i12387_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13033)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12387_3_lut_4_lut_4_lut.init = 16'h7402;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n12500), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 i7631_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653_adj_592)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i7631_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 i7571_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7571_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    LUT4 i11933_3_lut_4_lut (.A(rom_addr[0]), .B(n14749), .C(rom_addr[4]), 
         .D(n14773), .Z(n12579)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11933_3_lut_4_lut.init = 16'hf202;
    LUT4 i7520_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7520_4_lut_4_lut.init = 16'h2880;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_593)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 i7639_2_lut_rep_376 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14867)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7639_2_lut_rep_376.init = 16'h4040;
    PFUMX i12082 (.BLUT(n12726), .ALUT(n12727), .C0(rom_addr[5]), .Z(n12728));
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 i11913_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(rom_addr[4]), 
         .D(n14813), .Z(n12559)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11913_3_lut_4_lut.init = 16'hf202;
    LUT4 n2521_bdd_2_lut_13903_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13535)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2521_bdd_2_lut_13903_4_lut_4_lut.init = 16'h1800;
    LUT4 i7491_2_lut_4_lut (.A(n14763), .B(n14719), .C(rom_addr[4]), .D(rom_addr[0]), 
         .Z(n1851_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7491_2_lut_4_lut.init = 16'h3a00;
    LUT4 i12371_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13017)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12371_3_lut_4_lut_4_lut.init = 16'h0294;
    LUT4 n549_bdd_4_lut_13949_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n14412)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_13949_4_lut.init = 16'h9080;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut (.A(n12864), .B(n3070_adj_594), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut.init = 16'h0ac0;
    LUT4 i12389_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(rom_addr[4]), 
         .D(n2522), .Z(n13035)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12389_3_lut_4_lut.init = 16'hf202;
    LUT4 i7756_2_lut_rep_147_4_lut (.A(n14937), .B(n2621), .C(n14816), 
         .D(n14865), .Z(n14638)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7756_2_lut_rep_147_4_lut.init = 16'hca00;
    LUT4 rom_addr_6__bdd_4_lut_14067 (.A(n14671), .B(rom_addr[4]), .C(n14854), 
         .D(rom_addr[3]), .Z(n14466)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam rom_addr_6__bdd_4_lut_14067.init = 16'h88b8;
    LUT4 i12384_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(rom_addr[4]), 
         .D(n14713), .Z(n13030)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12384_3_lut_4_lut.init = 16'h2f20;
    LUT4 n762_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14753), .C(rom_addr[4]), 
         .D(n379), .Z(n13673)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n762_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11944_3_lut_4_lut (.A(rom_addr[0]), .B(n14753), .C(rom_addr[4]), 
         .D(n747), .Z(n12590)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11944_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11912_3_lut_4_lut (.A(rom_addr[0]), .B(n14753), .C(rom_addr[4]), 
         .D(n2588), .Z(n12558)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11912_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14753), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_595)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 i11994_3_lut_4_lut (.A(n16037), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n12640)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11994_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11910_3_lut_4_lut (.A(n16037), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14759), .Z(n12556)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11910_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n16037), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054_adj_596)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n14755), 
         .C(rom_addr[5]), .D(n2205), .Z(n2237_adj_597)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), 
         .C(n14847), .D(n2283_adj_564), .Z(n2492_adj_598)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 n14442_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14762), .C(rom_addr[5]), 
         .D(n14442), .Z(n14443)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n14442_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 i7782_2_lut_rep_189_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14680)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7782_2_lut_rep_189_3_lut_4_lut.init = 16'h0040;
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_adj_599)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i6080_3_lut_4_lut (.A(rom_addr[0]), .B(n14706), .C(n14799), .D(n2426), 
         .Z(n2428_c)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i6080_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n12854), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(rom_q[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12309_3_lut_4_lut (.A(rom_addr[0]), .B(n14762), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n12955)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12309_3_lut_4_lut.init = 16'hf101;
    LUT4 i12308_3_lut_4_lut (.A(rom_addr[0]), .B(n14762), .C(rom_addr[5]), 
         .D(n1309), .Z(n12954)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12308_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914_adj_600)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    PFUMX i13999 (.BLUT(n14941), .ALUT(n14942), .C0(rom_addr[2]), .Z(n14943));
    PFUMX i12088 (.BLUT(n12732), .ALUT(n12733), .C0(rom_addr[5]), .Z(n12734));
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n2426), .Z(n1786_adj_601)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 i12081_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), .C(rom_addr[4]), 
         .D(n1084), .Z(n12727)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12081_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n14745), .Z(n1628_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_602)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 i11985_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), .C(rom_addr[4]), 
         .D(n1658), .Z(n12631)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11985_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12193 (.D0(n12837), .D1(n12838), .SD(rom_addr[10]), .Z(n12839));
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n14718), .Z(n1820)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n12861), .ALUT(n4094_adj_3), 
          .C0(rom_addr[11]), .Z(rom_q[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n2009_adj_604), .Z(n2010_adj_605)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n14763), 
         .C(rom_addr[4]), .D(n1529_adj_606), .Z(n1530_adj_607)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_608)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n14803), .B(n14879), 
         .C(rom_addr[4]), .D(n1483_adj_609), .Z(n1499_adj_610)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14765), 
         .C(rom_addr[5]), .D(n14740), .Z(n1692_adj_611)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h2a20;
    LUT4 i12095_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[4]), 
         .D(n2009_adj_583), .Z(n12741)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12095_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786_adj_612), 
          .C0(rom_addr[5]), .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), 
         .C(rom_addr[5]), .D(n1676_adj_613), .Z(n1692_adj_614)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), 
         .C(rom_addr[4]), .D(n14688), .Z(n1755)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12087_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[4]), 
         .D(n14925), .Z(n12733)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12087_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14765), 
         .C(rom_addr[4]), .D(n14749), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    L6MUX21 i12348 (.D0(n12992), .D1(n12993), .SD(rom_addr[10]), .Z(n12994));
    L6MUX21 i12459 (.D0(n13103), .D1(n13104), .SD(rom_addr[10]), .Z(n13105));
    LUT4 i11904_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[4]), 
         .D(n1643), .Z(n12550)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11904_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11894_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[5]), 
         .D(n1914_adj_602), .Z(n12540)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11894_3_lut_4_lut.init = 16'hf202;
    PFUMX i13244 (.BLUT(n13679), .ALUT(n13678), .C0(rom_addr[4]), .Z(n13680));
    PFUMX i12091 (.BLUT(n12735), .ALUT(n12736), .C0(rom_addr[5]), .Z(n12737));
    LUT4 i12437_3_lut_4_lut (.A(rom_addr[0]), .B(n14765), .C(rom_addr[5]), 
         .D(n1851_adj_615), .Z(n13083)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12437_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12159 (.D0(n12803), .D1(n12804), .SD(rom_addr[10]), .Z(n12805));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_4), 
          .C0(rom_addr[11]), .Z(rom_q[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12249_4_lut (.A(n684_adj_617), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(n14860), .Z(n12895)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12249_4_lut.init = 16'hca0a;
    LUT4 i12245_3_lut (.A(n205_adj_567), .B(n604_adj_618), .C(rom_addr[4]), 
         .Z(n12891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12245_3_lut.init = 16'hcaca;
    PFUMX i11946 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n12592));
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_394 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16038)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_394.init = 16'he8e8;
    PFUMX i12192 (.BLUT(n12835), .ALUT(n12836), .C0(rom_addr[9]), .Z(n12838));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_584), .ALUT(n1530_adj_5), 
          .C0(n14821), .Z(n1531_adj_620)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n14777), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16035), .Z(n1755_adj_621)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    PFUMX i12097 (.BLUT(n12741), .ALUT(n12742), .C0(rom_addr[5]), .Z(n12743));
    LUT4 i5103_2_lut_rep_377 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14868)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5103_2_lut_rep_377.init = 16'h6666;
    LUT4 i12243_3_lut (.A(n506_adj_570), .B(n428_adj_622), .C(rom_addr[4]), 
         .Z(n12889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12243_3_lut.init = 16'hcaca;
    LUT4 i12390_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), .C(rom_addr[4]), 
         .D(n2522_adj_623), .Z(n13036)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12390_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_624)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 i12242_3_lut (.A(n526_adj_571), .B(n205_adj_625), .C(rom_addr[4]), 
         .Z(n12888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12242_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n14762), .B(rom_addr[7]), .C(n6573), .D(rom_addr[5]), 
         .Z(n11179)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 i12090_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1529), .Z(n12736)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12090_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12207 (.D0(n12850), .D1(n12851), .SD(rom_addr[9]), .Z(n12853));
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1676), .Z(n94_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14777), .Z(n1723)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut.init = 16'h02f2;
    L6MUX21 i12346 (.D0(n12988), .D1(n12989), .SD(rom_addr[9]), .Z(n12992));
    L6MUX21 i12347 (.D0(n12990), .D1(n12991), .SD(rom_addr[9]), .Z(n12993));
    LUT4 i12315_3_lut_4_lut (.A(rom_addr[0]), .B(n14770), .C(rom_addr[4]), 
         .D(n2426), .Z(n12961)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12315_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_573), .Z(n1723_adj_626)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n16035), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14791), .Z(n2205_adj_627)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 i12233_3_lut (.A(n2411), .B(n2426_adj_628), .C(rom_addr[4]), 
         .Z(n12879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12233_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), 
         .C(rom_addr[4]), .D(n1549_adj_629), .Z(n1565_adj_630)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    PFUMX i12458 (.BLUT(n13101), .ALUT(n13102), .C0(rom_addr[9]), .Z(n13104));
    LUT4 i11918_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n14950), .Z(n12564)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i11918_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11891_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n1835), .Z(n12537)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11891_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), 
         .C(rom_addr[4]), .D(n1435_adj_631), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_4_lut (.A(rom_addr[0]), .B(n14811), 
         .C(rom_addr[4]), .D(n14718), .Z(n2141_adj_632)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12127_3_lut_4_lut (.A(rom_addr[0]), .B(n14811), .C(rom_addr[4]), 
         .D(n684_adj_617), .Z(n12773)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12127_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12865_3_lut (.A(n12878), .B(n12879), .C(rom_addr[5]), .Z(n2428_adj_633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12865_3_lut.init = 16'hcaca;
    LUT4 i5904_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n6770)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5904_3_lut_4_lut_4_lut.init = 16'h0b5b;
    LUT4 i12002_3_lut_4_lut (.A(rom_addr[0]), .B(n14811), .C(rom_addr[4]), 
         .D(n1002), .Z(n12648)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12002_3_lut_4_lut.init = 16'h2f20;
    LUT4 i11950_3_lut_4_lut (.A(rom_addr[0]), .B(n14811), .C(rom_addr[4]), 
         .D(n890), .Z(n12596)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11950_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14778), 
         .C(rom_addr[5]), .D(n14765), .Z(n1692_adj_634)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 i11975_3_lut_4_lut (.A(rom_addr[0]), .B(n14778), .C(rom_addr[4]), 
         .D(n1466_adj_635), .Z(n12621)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11975_3_lut_4_lut.init = 16'hf202;
    LUT4 i12362_3_lut_4_lut (.A(rom_addr[0]), .B(n14778), .C(rom_addr[4]), 
         .D(n2588), .Z(n13008)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12362_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), 
         .C(rom_addr[4]), .D(n2444_adj_574), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12316_3_lut_4_lut (.A(rom_addr[0]), .B(n14778), .C(rom_addr[4]), 
         .D(n2444_adj_586), .Z(n12962)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12316_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14778), 
         .C(rom_addr[5]), .D(n1786_adj_608), .Z(n1787_adj_636)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n14778), 
         .C(rom_addr[5]), .D(n1786_adj_601), .Z(n1787_adj_637)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n14778), 
         .C(n5019), .D(rom_addr[5]), .Z(n1947_adj_638)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n13024_bdd_3_lut (.A(n13024), .B(n13023), .C(rom_addr[4]), .Z(n14542)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n13024_bdd_3_lut.init = 16'hacac;
    LUT4 i12072_3_lut_4_lut (.A(n14780), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009), .Z(n12718)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12072_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n14780), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_639), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i12158 (.BLUT(n12801), .ALUT(n12802), .C0(rom_addr[9]), .Z(n12804));
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860), .C0(n12471), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(n14780), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14699), .Z(n1786_adj_640)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7787_4_lut (.A(n1628), .B(rom_addr[6]), .C(n1659_adj_642), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7787_4_lut.init = 16'hc088;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_6), .C0(n14821), 
          .Z(n829_adj_644)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 n109_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14781), .C(rom_addr[4]), 
         .D(n124_adj_645), .Z(n14363)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n109_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut (.A(n14777), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2040), .Z(n1403_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n14777), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i4095_4_lut (.A(n13105), .B(n3070_adj_646), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n14680), .D(n4386), .Z(n924_adj_568)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n3914_bdd_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n13591)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (D)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n3914_bdd_4_lut_4_lut_4_lut.init = 16'h5590;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n14777), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707), .Z(n1723_adj_647)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12191 (.BLUT(n12833), .ALUT(n12834), .C0(rom_addr[9]), .Z(n12837));
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883_adj_648), .B(n1786_adj_608), 
         .C(rom_addr[5]), .Z(n1915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n14817), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7650_4_lut (.A(rom_addr[0]), .B(n14765), .C(n13636), .D(rom_addr[5]), 
         .Z(n1852_adj_649)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7650_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n12887), .B(n2685_adj_650), 
         .C(rom_addr[9]), .D(n14865), .Z(n3070_adj_646)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    PFUMX i12113 (.BLUT(n12757), .ALUT(n12758), .C0(rom_addr[5]), .Z(n12759));
    PFUMX i12204 (.BLUT(n12844), .ALUT(n12845), .C0(rom_addr[8]), .Z(n12850));
    LUT4 i11988_3_lut_4_lut (.A(n14723), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n12634)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11988_3_lut_4_lut.init = 16'hefe0;
    LUT4 n1628_bdd_4_lut_13882 (.A(n1628), .B(n14743), .C(n14771), .D(rom_addr[5]), 
         .Z(n13945)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n1628_bdd_4_lut_13882.init = 16'haac0;
    LUT4 i11974_3_lut_4_lut (.A(n14723), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435), .Z(n12620)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11974_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n14723), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_adj_651)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12071_3_lut_4_lut (.A(n14854), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n12358), .Z(n12717)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12071_3_lut_4_lut.init = 16'h2f20;
    LUT4 i5883_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), .C(rom_addr[5]), 
         .D(n2522_adj_623), .Z(n6749)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i5883_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12305_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), .C(rom_addr[4]), 
         .D(n2573_adj_652), .Z(n12951)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12305_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12206 (.BLUT(n12848), .ALUT(n12849), .C0(rom_addr[9]), .Z(n12852));
    PFUMX i12119 (.BLUT(n12763), .ALUT(n12764), .C0(rom_addr[5]), .Z(n12765));
    LUT4 i12123_3_lut_4_lut (.A(n14854), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14780), .Z(n12769)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12123_3_lut_4_lut.init = 16'hf202;
    LUT4 n13945_bdd_3_lut (.A(n13945), .B(n13944), .C(rom_addr[6]), .Z(n13946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13945_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n12236)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    L6MUX21 i12213 (.D0(n12855), .D1(n12856), .SD(rom_addr[9]), .Z(n12859));
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(n14854), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14723), .Z(n1883)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hf2c2;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(n14854), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14780), .Z(n1820_adj_562)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h2f2c;
    LUT4 i12232_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), .C(rom_addr[4]), 
         .D(n14879), .Z(n12878)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12232_3_lut_4_lut.init = 16'hf808;
    PFUMX i12214 (.BLUT(n12857), .ALUT(n12858), .C0(rom_addr[9]), .Z(n12860));
    LUT4 i12230_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), .C(rom_addr[4]), 
         .D(n2298_adj_653), .Z(n12876)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12230_3_lut_4_lut.init = 16'hf808;
    PFUMX i12122 (.BLUT(n12766), .ALUT(n12767), .C0(rom_addr[5]), .Z(n12768));
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14709), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_654)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n6744), 
         .C(rom_addr[4]), .D(n14753), .Z(n1467_adj_655)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut_4_lut (.A(n14854), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14666), .Z(n2364_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut_4_lut.init = 16'h2f2c;
    PFUMX i12218 (.BLUT(n12862), .ALUT(n12863), .C0(rom_addr[9]), .Z(n12864));
    LUT4 i12399_3_lut_4_lut (.A(n14793), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_656), .Z(n13045)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12399_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n16036), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n16036), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14735), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_395 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16039)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_395.init = 16'h1c1c;
    LUT4 n1243_bdd_4_lut (.A(n14756), .B(n14755), .C(rom_addr[0]), .D(rom_addr[4]), 
         .Z(n13943)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A ((C+!(D))+!B))) */ ;
    defparam n1243_bdd_4_lut.init = 16'h0caa;
    PFUMX i12269 (.BLUT(n12913), .ALUT(n12914), .C0(rom_addr[8]), .Z(n12915));
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n16045), .B(n444), .C(rom_addr[5]), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    PFUMX i12342 (.BLUT(n12980), .ALUT(n12981), .C0(rom_addr[8]), .Z(n12988));
    LUT4 i12872_3_lut (.A(n445), .B(n13652), .C(rom_addr[6]), .Z(n12812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12872_3_lut.init = 16'hcaca;
    PFUMX i12128 (.BLUT(n12772), .ALUT(n12773), .C0(rom_addr[5]), .Z(n12774));
    LUT4 address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_adj_582)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n14425), .C(n2589), 
         .D(rom_addr[6]), .Z(n16033)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    PFUMX i12343 (.BLUT(n12982), .ALUT(n12983), .C0(rom_addr[8]), .Z(n12989));
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14854), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h0a43;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n16035), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14729), .Z(n428_adj_657)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14761), .Z(n2298_adj_658)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut.init = 16'h1f10;
    PFUMX i12344 (.BLUT(n12984), .ALUT(n12985), .C0(rom_addr[8]), .Z(n12990));
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14717), .Z(n8984)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_659), .ALUT(n62_adj_7), 
          .C0(n12500), .Z(n63_adj_661)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n3475), .Z(n11133)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14832), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut (.A(n12994), .B(n3070_adj_662), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n12915), .B(n2685_adj_663), 
         .C(rom_addr[9]), .D(n14865), .Z(n3070_adj_662)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut (.A(n12560), .B(n14975), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n2685_adj_663)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2685_4_lut.init = 16'h0aca;
    PFUMX i12345 (.BLUT(n12986), .ALUT(n12987), .C0(rom_addr[8]), .Z(n12991));
    LUT4 i7515_4_lut (.A(rom_addr[0]), .B(n14909), .C(n14667), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7515_4_lut.init = 16'h0a22;
    PFUMX i12457 (.BLUT(n13099), .ALUT(n13100), .C0(rom_addr[9]), .Z(n13103));
    LUT4 i12881_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12881_3_lut.init = 16'hcaca;
    LUT4 n5368_bdd_4_lut (.A(n14879), .B(rom_addr[4]), .C(rom_addr[1]), 
         .D(n14765), .Z(n13636)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B !(C)))) */ ;
    defparam n5368_bdd_4_lut.init = 16'h10dc;
    LUT4 rom_addr_2__bdd_4_lut_14089 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14903)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_14089.init = 16'h98d1;
    LUT4 i11901_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14905)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11901_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i8006_2_lut_rep_378 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14869)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8006_2_lut_rep_378.init = 16'h8888;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n12932), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i11901_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14904)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11901_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n16038), .Z(n1691_adj_665)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n14832), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n12925), .ALUT(n3069_adj_556), 
          .C0(rom_addr[9]), .Z(n3070_adj_666)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i12162 (.BLUT(n12806), .ALUT(n12807), .C0(rom_addr[5]), .Z(n12808));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n13019), .B(n444), .C(rom_addr[5]), 
         .Z(n445_adj_667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 i5250_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n14908)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5250_4_lut_then_4_lut.init = 16'hffef;
    PFUMX i13623 (.BLUT(n14223), .ALUT(n14220), .C0(rom_addr[6]), .Z(n14224));
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n12874), .ALUT(n3069_adj_668), 
          .C0(rom_addr[9]), .Z(n3070_adj_594)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    PFUMX i5941 (.BLUT(n6806), .ALUT(n1723_adj_626), .C0(rom_addr[5]), 
          .Z(n6807));
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n16036), .Z(n2573_adj_652)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n14793), .Z(n1243_adj_669)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n14809), .B(n14808), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n14742), .Z(n1707_adj_670)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 i5250_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .Z(n14907)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5250_4_lut_else_4_lut.init = 16'hfbfb;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n16037), .Z(n2283_adj_553)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    PFUMX i10256 (.BLUT(n13125), .ALUT(n13126), .C0(rom_addr[5]), .Z(n8469));
    PFUMX i12157 (.BLUT(n12799), .ALUT(n12800), .C0(rom_addr[9]), .Z(n12803));
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[4]), .D(n14740), .Z(n1676_adj_613)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n14793), .Z(n2009_adj_671)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 n1699_bdd_3_lut_13754_4_lut (.A(rom_addr[0]), .B(n14858), .C(rom_addr[3]), 
         .D(n1834), .Z(n13633)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1699_bdd_3_lut_13754_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14911)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(rom_addr[3]), .D(n14692), .Z(n1466_adj_635)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14910)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i7942_2_lut_3_lut_4_lut (.A(rom_addr[5]), .B(n14818), .C(rom_addr[0]), 
         .D(n14727), .Z(n2237_adj_672)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7942_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i11915_3_lut_4_lut (.A(rom_addr[2]), .B(n14673), .C(rom_addr[5]), 
         .D(n14915), .Z(n12561)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11915_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut (.A(n12805), .B(n3070_adj_666), 
         .C(rom_addr[11]), .D(rom_addr[10]), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i4095_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14777), .Z(n1676_adj_673)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604_adj_674)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(n16039), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i12731_3_lut_4_lut (.A(n14730), .B(n12226), .C(rom_addr[5]), 
         .D(n1565_adj_675), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12731_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14777), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14867), .Z(n124_adj_676)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    LUT4 n14037_bdd_3_lut (.A(n14037), .B(n924), .C(rom_addr[5]), .Z(n14038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14037_bdd_3_lut.init = 16'hcaca;
    LUT4 n915_bdd_3_lut_13945_4_lut (.A(n14830), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14825), .Z(n14409)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n915_bdd_3_lut_13945_4_lut.init = 16'h8f80;
    PFUMX i12262 (.BLUT(n12906), .ALUT(n12907), .C0(rom_addr[4]), .Z(n12908));
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14825), .Z(n1946)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13621 (.BLUT(n14221), .ALUT(n14780), .C0(rom_addr[4]), .Z(n14222));
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14859), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14914)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D))+!B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_then_4_lut.init = 16'hd210;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14859), .Z(n1435_adj_555)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n14830), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16036), .Z(n1084_adj_677)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_391 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16035)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_391.init = 16'h8181;
    PFUMX i12205 (.BLUT(n12846), .ALUT(n12847), .C0(rom_addr[8]), .Z(n12851));
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14729), .Z(n443)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14913)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_else_4_lut.init = 16'h80f0;
    LUT4 i12359_3_lut_4_lut (.A(n14830), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14780), .Z(n13005)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12359_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7760_2_lut_rep_167_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14658)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7760_2_lut_rep_167_3_lut_4_lut_4_lut.init = 16'h4000;
    PFUMX i12210 (.BLUT(n766), .ALUT(n1021), .C0(rom_addr[8]), .Z(n12856));
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_639)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut (.A(n14830), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14827), .Z(n124_adj_645)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14859), .Z(n2380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14777), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 i12080_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n4850), 
         .D(n14867), .Z(n12726)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12080_4_lut_4_lut.init = 16'h7340;
    LUT4 n924_bdd_3_lut_13823 (.A(n924), .B(n14969), .C(rom_addr[5]), 
         .Z(n14041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n924_bdd_3_lut_13823.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n14813), 
         .C(rom_addr[4]), .D(n1549_adj_629), .Z(n1565_adj_675)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n14813), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_615)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    LUT4 i12118_3_lut_4_lut (.A(rom_addr[1]), .B(n14813), .C(rom_addr[4]), 
         .D(n301_adj_656), .Z(n12764)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12118_3_lut_4_lut.init = 16'h1f10;
    LUT4 i11979_3_lut_4_lut (.A(rom_addr[1]), .B(n14813), .C(rom_addr[4]), 
         .D(n731_adj_678), .Z(n12625)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i11979_3_lut_4_lut.init = 16'hf101;
    PFUMX i12221 (.BLUT(n12865), .ALUT(n12866), .C0(rom_addr[8]), .Z(n12867));
    PFUMX i12361 (.BLUT(n13005), .ALUT(n13006), .C0(rom_addr[4]), .Z(n13007));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), 
         .C(rom_addr[3]), .D(n14832), .Z(n844)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 i7510_2_lut_4_lut (.A(n14671), .B(n14675), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7510_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n14858), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n12358), .Z(n1212_adj_679)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    PFUMX i12241 (.BLUT(n12885), .ALUT(n12886), .C0(rom_addr[8]), .Z(n12887));
    LUT4 i7527_4_lut_4_lut (.A(n14765), .B(rom_addr[4]), .C(n4087), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7527_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n14717), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_680), .Z(n2523_adj_681)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n14858), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n14832), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    LUT4 i5884_3_lut_4_lut (.A(n14717), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n6749), .Z(n6750)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5884_3_lut_4_lut.init = 16'hf808;
    LUT4 n1243_bdd_3_lut_4_lut (.A(rom_addr[2]), .B(n14818), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n13666)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h4004;
    PFUMX i12304 (.BLUT(n12948), .ALUT(n12949), .C0(rom_addr[8]), .Z(n12950));
    LUT4 i12788_3_lut (.A(n12769), .B(n12770), .C(rom_addr[5]), .Z(n12771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12788_3_lut.init = 16'hcaca;
    LUT4 n6296_bdd_3_lut_13650_4_lut (.A(rom_addr[2]), .B(n14818), .C(n14763), 
         .D(rom_addr[4]), .Z(n13596)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6296_bdd_3_lut_13650_4_lut.init = 16'h44f0;
    LUT4 i12258_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), .C(n16035), 
         .D(rom_addr[3]), .Z(n12904)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12258_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 n220_bdd_3_lut (.A(n220), .B(n205), .C(rom_addr[4]), .Z(n15810)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut.init = 16'hacac;
    LUT4 i12366_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), .C(n14794), 
         .D(rom_addr[3]), .Z(n13012)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12366_3_lut_3_lut_4_lut.init = 16'h11f0;
    L6MUX21 i12443 (.D0(n13087), .D1(n13088), .SD(rom_addr[7]), .Z(n13089));
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(n16037), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 n220_bdd_3_lut_14561 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n15809)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_14561.init = 16'hacac;
    LUT4 i12791_3_lut (.A(n14943), .B(n14924), .C(rom_addr[5]), .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12791_3_lut.init = 16'hcaca;
    LUT4 n14715_bdd_4_lut (.A(n14719), .B(n668), .C(rom_addr[0]), .D(rom_addr[4]), 
         .Z(n15812)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n14715_bdd_4_lut.init = 16'hcc50;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_682)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 n14715_bdd_2_lut (.A(n14715), .B(rom_addr[0]), .Z(n15813)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n14715_bdd_2_lut.init = 16'h4444;
    PFUMX i12373 (.BLUT(n13017), .ALUT(n13018), .C0(rom_addr[4]), .Z(n13019));
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n14920)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14919)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    PFUMX i12209 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n12855));
    LUT4 i12264_3_lut (.A(n2237), .B(n2300_adj_599), .C(rom_addr[6]), 
         .Z(n12910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12264_3_lut.init = 16'hcaca;
    LUT4 n14686_bdd_2_lut (.A(n14762), .B(rom_addr[0]), .Z(n15833)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n14686_bdd_2_lut.init = 16'h1111;
    LUT4 n14686_bdd_4_lut (.A(n14686), .B(n14830), .C(n14879), .D(rom_addr[4]), 
         .Z(n15832)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n14686_bdd_4_lut.init = 16'haac0;
    LUT4 i12800_3_lut (.A(n14921), .B(n444_adj_683), .C(rom_addr[5]), 
         .Z(n12601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12800_3_lut.init = 16'hcaca;
    LUT4 n14777_bdd_4_lut_14585 (.A(n14719), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n15835)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n14777_bdd_4_lut_14585.init = 16'h11f0;
    L6MUX21 i12149 (.D0(n12783), .D1(n12784), .SD(rom_addr[7]), .Z(n12795));
    L6MUX21 i12152 (.D0(n12789), .D1(n12790), .SD(rom_addr[7]), .Z(n12798));
    LUT4 n14777_bdd_4_lut (.A(n14777), .B(n1835), .C(rom_addr[3]), .D(rom_addr[4]), 
         .Z(n15836)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam n14777_bdd_4_lut.init = 16'hf5cc;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14923)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14922)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    LUT4 n205_bdd_3_lut_13510 (.A(n205), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n14082)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n205_bdd_3_lut_13510.init = 16'h2020;
    LUT4 rom_addr_0__bdd_4_lut_14005 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14925)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_14005.init = 16'h7002;
    LUT4 address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(n14793), .D(rom_addr[3]), .Z(n2426_adj_628)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2426_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14927)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n14848), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14780), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14926)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    LUT4 i12086_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14858), .C(rom_addr[4]), 
         .D(n4907), .Z(n12732)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12086_4_lut_4_lut_4_lut.init = 16'h01a1;
    L6MUX21 i12196 (.D0(n12616), .D1(n12629), .SD(rom_addr[7]), .Z(n12842));
    PFUMX i12382 (.BLUT(n13026), .ALUT(n13027), .C0(rom_addr[4]), .Z(n13028));
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(n14854), .D(rom_addr[3]), .Z(n2040_adj_684)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14858), 
         .C(n16036), .D(rom_addr[3]), .Z(n2522_adj_680)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i11896_4_lut (.A(n14686), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n12542)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i11896_4_lut.init = 16'haaca;
    LUT4 i12553_3_lut (.A(n6772), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12553_3_lut.init = 16'hcaca;
    LUT4 i11895_3_lut (.A(n1914_adj_602), .B(n14642), .C(rom_addr[5]), 
         .Z(n12541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11895_3_lut.init = 16'hcaca;
    L6MUX21 i12197 (.D0(n12638), .D1(n12651), .SD(rom_addr[7]), .Z(n12843));
    LUT4 i12358_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14930)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i12358_then_3_lut.init = 16'h3838;
    L6MUX21 i12227 (.D0(n12870), .D1(n12871), .SD(rom_addr[7]), .Z(n12873));
    LUT4 i2_3_lut_4_lut (.A(rom_addr[5]), .B(n14857), .C(rom_addr[0]), 
         .D(n14849), .Z(n10921)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    L6MUX21 i12265 (.D0(n2365), .D1(n2428_adj_687), .SD(rom_addr[6]), 
            .Z(n12911));
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_392 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16036)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_392.init = 16'h1818;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_623)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_393 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16037)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_393.init = 16'h3838;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n16039), .Z(n2009_adj_604)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    PFUMX i12408 (.BLUT(n397), .ALUT(n6768), .C0(rom_addr[4]), .Z(n13054));
    LUT4 i12021_3_lut_4_lut (.A(rom_addr[0]), .B(n14665), .C(rom_addr[5]), 
         .D(n1212_adj_679), .Z(n12667)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12021_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i12278 (.D0(n12921), .D1(n12922), .SD(rom_addr[7]), .Z(n12924));
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n16036), .Z(n1435_adj_631)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12284 (.D0(n12926), .D1(n12927), .SD(rom_addr[7]), .Z(n12930));
    L6MUX21 i12300 (.D0(n12943), .D1(n12944), .SD(rom_addr[7]), .Z(n12946));
    LUT4 i12260_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), .C(rom_addr[3]), 
         .D(n14814), .Z(n12906)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12260_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n14761), .Z(n2332)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12320 (.D0(n13046), .D1(n381_adj_688), .SD(rom_addr[6]), 
            .Z(n12966));
    LUT4 i12358_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14929)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i12358_else_3_lut.init = 16'h0484;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n14772), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 i11931_3_lut (.A(n475), .B(n205), .C(rom_addr[4]), .Z(n12577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11931_3_lut.init = 16'hcaca;
    PFUMX i12409 (.BLUT(n428_adj_657), .ALUT(n443), .C0(rom_addr[4]), 
          .Z(n13055));
    LUT4 i12430_3_lut_4_lut (.A(rom_addr[0]), .B(n14665), .C(rom_addr[5]), 
         .D(n1565_adj_630), .Z(n13076)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i12430_3_lut_4_lut.init = 16'h1f10;
    LUT4 n954_bdd_3_lut_4_lut (.A(n14832), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14671), .Z(n14316)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n954_bdd_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i12329 (.D0(n1468), .D1(n1531_adj_620), .SD(rom_addr[6]), 
            .Z(n12975));
    LUT4 i12254_3_lut_4_lut (.A(n14843), .B(n14716), .C(rom_addr[6]), 
         .D(n14667), .Z(n12900)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12254_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n14793), .Z(n1483_adj_609)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n14861), 
         .C(rom_addr[3]), .D(n14793), .Z(n428_adj_622)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), 
         .C(rom_addr[3]), .D(n14854), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i12331 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n12977));
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), 
         .C(rom_addr[3]), .D(n14854), .Z(n1707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 i12068_3_lut_4_lut (.A(n14819), .B(n14831), .C(rom_addr[4]), 
         .D(n890_adj_689), .Z(n12714)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i12068_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i12355 (.D0(n12999), .D1(n13000), .SD(rom_addr[7]), .Z(n13001));
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707_adj_670), .ALUT(n6817), 
          .C0(n12529), .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i13241_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14933)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i13241_then_4_lut.init = 16'h272b;
    LUT4 i12161_3_lut_4_lut (.A(rom_addr[0]), .B(n14781), .C(rom_addr[4]), 
         .D(n14690), .Z(n12807)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12161_3_lut_4_lut.init = 16'hf101;
    PFUMX i12418 (.BLUT(n620_adj_690), .ALUT(n635_adj_691), .C0(rom_addr[4]), 
          .Z(n13064));
    L6MUX21 i12407 (.D0(n13051), .D1(n13052), .SD(rom_addr[7]), .Z(n13053));
    L6MUX21 i12416 (.D0(n13060), .D1(n13061), .SD(rom_addr[7]), .Z(n13062));
    PFUMX i12442 (.BLUT(n13085), .ALUT(n13086), .C0(rom_addr[6]), .Z(n13088));
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n14781), 
         .C(rom_addr[4]), .D(n1612), .Z(n1628_adj_692)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13241_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14932)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C+!(D)))) */ ;
    defparam i13241_else_4_lut.init = 16'h0f28;
    LUT4 i2_3_lut_4_lut_adj_18 (.A(rom_addr[0]), .B(n14869), .C(rom_addr[5]), 
         .D(n14863), .Z(n12248)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_18.init = 16'h8000;
    LUT4 i11903_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), .C(rom_addr[4]), 
         .D(n1946_adj_693), .Z(n12549)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11903_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), 
         .C(rom_addr[3]), .D(n16035), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    LUT4 i7466_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7466_2_lut_4_lut.init = 16'hca00;
    LUT4 i5947_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n14936)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5947_4_lut_then_4_lut.init = 16'h0e01;
    L6MUX21 i11899 (.D0(n12543), .D1(n12544), .SD(rom_addr[7]), .Z(n12545));
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), 
         .C(rom_addr[3]), .D(n16036), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5947_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14935)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5947_4_lut_else_4_lut.init = 16'h0808;
    LUT4 i5881_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), .C(rom_addr[3]), 
         .D(n8958), .Z(n6747)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i5881_3_lut_4_lut.init = 16'h08f8;
    PFUMX i13997 (.BLUT(n14938), .ALUT(n14939), .C0(rom_addr[2]), .Z(n14940));
    LUT4 i12261_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), .C(rom_addr[3]), 
         .D(n14692), .Z(n12907)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12261_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n14867), .B(n5207), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220_adj_694)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    LUT4 i13000_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n5207)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13000_2_lut.init = 16'h9999;
    LUT4 i12381_3_lut_4_lut (.A(rom_addr[0]), .B(n14869), .C(rom_addr[3]), 
         .D(n14742), .Z(n13027)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12381_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(n5207), .B(n16039), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n699_adj_695)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc0ca;
    LUT4 i11953_3_lut (.A(n1069), .B(n1084_adj_677), .C(rom_addr[4]), 
         .Z(n12599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11953_3_lut.init = 16'hcaca;
    LUT4 i12829_3_lut (.A(n14978), .B(n14906), .C(rom_addr[5]), .Z(n12548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12829_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565_adj_8), .B(n1596_adj_587), 
         .C(rom_addr[5]), .Z(n1597_adj_697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 i12835_3_lut (.A(n14972), .B(n14956), .C(rom_addr[5]), .Z(n12535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12835_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n14658), .B(n14717), .C(rom_addr[5]), 
         .D(n14864), .Z(n2555_adj_698)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    PFUMX i12465 (.BLUT(n13109), .ALUT(n13110), .C0(rom_addr[7]), .Z(n1278));
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n12908), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i7543_4_lut (.A(rom_addr[0]), .B(n14715), .C(n14754), .D(rom_addr[5]), 
         .Z(n190_adj_699)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7543_4_lut.init = 16'h0a22;
    LUT4 rom_addr_6__bdd_3_lut_13846_4_lut_4_lut (.A(n14858), .B(n14690), 
         .C(rom_addr[4]), .D(n14824), .Z(n14463)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_13846_4_lut_4_lut.init = 16'hc0c5;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n14854), .B(n14692), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 i12851_3_lut (.A(n14949), .B(n14912), .C(rom_addr[5]), .Z(n2110_adj_700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12851_3_lut.init = 16'hcaca;
    LUT4 i5963_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n6783)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5963_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491), .C(rom_addr[5]), 
         .Z(n2492_adj_701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_c), .C0(rom_addr[5]), 
          .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12855_3_lut (.A(n12655), .B(n14902), .C(rom_addr[5]), .Z(n12657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12855_3_lut.init = 16'hcaca;
    LUT4 i11927_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n6767), .Z(n12573)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11927_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5945_4_lut_4_lut (.A(n14858), .B(rom_addr[3]), .C(n14717), .D(n12364), 
         .Z(n6811)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i5945_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12860_3_lut (.A(n14895), .B(n14963), .C(rom_addr[5]), .Z(n2365_adj_702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12860_3_lut.init = 16'hcaca;
    LUT4 i12863_3_lut (.A(n14960), .B(n14981), .C(rom_addr[5]), .Z(n2492_adj_703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12863_3_lut.init = 16'hcaca;
    L6MUX21 i12014 (.D0(n12658), .D1(n12659), .SD(rom_addr[6]), .Z(n12660));
    LUT4 address_11__I_0_Mux_6_i1309_3_lut_4_lut (.A(n14832), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14668), .Z(n1309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1309_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n14725), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14729), .Z(n61_adj_659)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n14858), .B(rom_addr[4]), 
         .C(n14756), .D(n12348), .Z(n1117_adj_558)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i12165_3_lut (.A(n12675), .B(n13635), .C(rom_addr[6]), .Z(n12811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12165_3_lut.init = 16'hcaca;
    LUT4 i12070_3_lut_4_lut_4_lut (.A(n14858), .B(rom_addr[3]), .C(n16035), 
         .D(rom_addr[4]), .Z(n12716)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i12070_3_lut_4_lut_4_lut.init = 16'hfcd1;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14939)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14938)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 i12711_3_lut (.A(n2283_adj_704), .B(n2298_adj_580), .C(rom_addr[4]), 
         .Z(n2299_adj_705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12711_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n14693), .B(n14692), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860_adj_706)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 i12662_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n12565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12662_3_lut.init = 16'hcaca;
    LUT4 i12396_3_lut_4_lut (.A(n14848), .B(n14879), .C(rom_addr[4]), 
         .D(n205), .Z(n13042)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i12396_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut (.A(n14694), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(n14851), .Z(n2141_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut.init = 16'h0aca;
    LUT4 i12464_4_lut (.A(n14980), .B(n1276), .C(rom_addr[6]), .D(n4_adj_707), 
         .Z(n13110)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12464_4_lut.init = 16'hcac0;
    LUT4 i12463_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n6295), 
         .Z(n13109)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i12463_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n14860), 
         .C(rom_addr[4]), .D(n526_adj_569), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n14803), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14832), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n14803), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16039), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_4_lut (.A(n14803), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14854), .Z(n572)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_4_lut.init = 16'h7f70;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n14860), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_648)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i12934_3_lut (.A(n14084), .B(n13581), .C(rom_addr[7]), .Z(n1021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12934_3_lut.init = 16'hcaca;
    LUT4 i12451_4_lut (.A(n12896), .B(rom_addr[0]), .C(rom_addr[6]), .D(n5519), 
         .Z(n13097)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i12451_4_lut.init = 16'h0aca;
    LUT4 i12444_4_lut (.A(n14940), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n13090)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12444_4_lut.init = 16'hcac0;
    LUT4 i12449_3_lut (.A(n13093), .B(n13094), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12449_3_lut.init = 16'hcaca;
    LUT4 i12439_3_lut (.A(n14928), .B(n1978), .C(rom_addr[5]), .Z(n13085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12439_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_4_lut (.A(n14803), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14742), .Z(n653)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_4_lut.init = 16'hf707;
    LUT4 i12015_3_lut_4_lut (.A(rom_addr[1]), .B(n14879), .C(rom_addr[4]), 
         .D(n30), .Z(n12661)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12015_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n14692), .B(n14772), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 i12915_3_lut (.A(n14414), .B(n2173_adj_708), .C(rom_addr[6]), 
         .Z(n12909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12915_3_lut.init = 16'hcaca;
    LUT4 i12268_3_lut (.A(n12911), .B(n12912), .C(rom_addr[7]), .Z(n12914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12268_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14832), 
         .C(rom_addr[3]), .D(n14869), .Z(n589_adj_709)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i7465_4_lut (.A(rom_addr[0]), .B(n3083), .C(n12902), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7465_4_lut.init = 16'h0a22;
    LUT4 i1_2_lut_adj_19 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n12226)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i12148_3_lut (.A(n12781), .B(n12782), .C(rom_addr[7]), .Z(n12794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12148_3_lut.init = 16'hcaca;
    LUT4 i12146_3_lut (.A(n12777), .B(n12778), .C(rom_addr[7]), .Z(n12792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12146_3_lut.init = 16'hcaca;
    LUT4 i12145_3_lut (.A(n12775), .B(n15815), .C(rom_addr[7]), .Z(n12791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12145_3_lut.init = 16'hcaca;
    LUT4 i7831_4_lut_4_lut (.A(n14682), .B(rom_addr[5]), .C(n5873), .D(rom_addr[0]), 
         .Z(n2492_adj_710)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7831_4_lut_4_lut.init = 16'h7400;
    L6MUX21 i12137 (.D0(n12600), .D1(n1149_adj_711), .SD(rom_addr[6]), 
            .Z(n12783));
    LUT4 i12154_3_lut (.A(n12793), .B(n12794), .C(rom_addr[8]), .Z(n12800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12154_3_lut.init = 16'hcaca;
    L6MUX21 i12141 (.D0(n1597_adj_712), .D1(n12632), .SD(rom_addr[6]), 
            .Z(n12787));
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n14689), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i12417 (.BLUT(n589), .ALUT(n604_adj_713), .C0(rom_addr[4]), 
          .Z(n13063));
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n14682), .B(n3413), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_714)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    L6MUX21 i12143 (.D0(n1852), .D1(n1915_adj_715), .SD(rom_addr[6]), 
            .Z(n12789));
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_706), .ALUT(n893), 
          .C0(n12459), .Z(n1021_adj_716)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12925_3_lut (.A(n13090), .B(n14347), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12925_3_lut.init = 16'hcaca;
    LUT4 i12429_3_lut (.A(n14318), .B(n13074), .C(rom_addr[7]), .Z(n13075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12429_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n12563), 
         .C(rom_addr[7]), .D(n3599), .Z(n1278_adj_717)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n12455), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12623_3_lut_4_lut (.A(n14814), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n12643)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12623_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i12456_3_lut (.A(n13082), .B(n13089), .C(rom_addr[8]), .Z(n13102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12456_3_lut.init = 16'hcaca;
    LUT4 i12303_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n13599), 
         .Z(n12949)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12303_4_lut.init = 16'hcac0;
    LUT4 i12302_4_lut (.A(n2174), .B(rom_addr[0]), .C(rom_addr[7]), .D(n12369), 
         .Z(n12948)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12302_4_lut.init = 16'hca0a;
    LUT4 i12360_3_lut (.A(n14854), .B(n14772), .C(rom_addr[3]), .Z(n13006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12360_3_lut.init = 16'hcaca;
    LUT4 i12240_3_lut (.A(n12883), .B(n12884), .C(rom_addr[7]), .Z(n12886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12240_3_lut.init = 16'hcaca;
    L6MUX21 i12147 (.D0(n12779), .D1(n12780), .SD(rom_addr[7]), .Z(n12793));
    LUT4 i12239_3_lut (.A(n12881), .B(n12882), .C(rom_addr[7]), .Z(n12885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12239_3_lut.init = 16'hcaca;
    LUT4 i12220_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n3206), 
         .Z(n12866)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i12220_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(n14809), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14867), .Z(n908_adj_719)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'hf808;
    LUT4 i12219_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n3148), 
         .Z(n12865)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i12219_4_lut.init = 16'hc0ca;
    PFUMX i13995 (.BLUT(n14935), .ALUT(n14936), .C0(rom_addr[0]), .Z(n14937));
    LUT4 i12314_3_lut (.A(n12958), .B(n12959), .C(rom_addr[7]), .Z(n12960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12314_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n14809), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14780), .Z(n1243_adj_720)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8032_2_lut_rep_175_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n14666)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8032_2_lut_rep_175_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i12217_3_lut (.A(n13001), .B(n13053), .C(rom_addr[8]), .Z(n12863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12217_3_lut.init = 16'hcaca;
    LUT4 n1181_bdd_3_lut_13910_4_lut (.A(rom_addr[0]), .B(n14740), .C(rom_addr[4]), 
         .D(n1196), .Z(n14544)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1181_bdd_3_lut_13910_4_lut.init = 16'h8f80;
    LUT4 i12452_3_lut (.A(n13096), .B(n13097), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12452_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut (.A(n14809), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n14859), .Z(n2283_adj_564)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12201_3_lut (.A(n14468), .B(n12722), .C(rom_addr[7]), .Z(n12847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12201_3_lut.init = 16'hcaca;
    LUT4 i12200_3_lut (.A(n12700), .B(n6807), .C(rom_addr[7]), .Z(n12846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12200_3_lut.init = 16'hcaca;
    LUT4 i12195_3_lut (.A(n12594), .B(n12603), .C(rom_addr[7]), .Z(n12841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12195_3_lut.init = 16'hcaca;
    L6MUX21 i12178 (.D0(n1979), .D1(n12743), .SD(rom_addr[6]), .Z(n12824));
    L6MUX21 i12179 (.D0(n12809), .D1(n12810), .SD(rom_addr[7]), .Z(n12825));
    PFUMX i12180 (.BLUT(n12811), .ALUT(n12812), .C0(rom_addr[7]), .Z(n12826));
    LUT4 i12194_3_lut (.A(n14368), .B(n12585), .C(rom_addr[7]), .Z(n12840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12194_3_lut.init = 16'hcaca;
    LUT4 i12203_3_lut (.A(n12842), .B(n12843), .C(rom_addr[8]), .Z(n12849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12203_3_lut.init = 16'hcaca;
    LUT4 i12182_3_lut (.A(n12815), .B(n12816), .C(rom_addr[7]), .Z(n12828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12182_3_lut.init = 16'hcaca;
    LUT4 n14222_bdd_3_lut_14133 (.A(n14222), .B(n2109), .C(rom_addr[5]), 
         .Z(n14223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14222_bdd_3_lut_14133.init = 16'hcaca;
    LUT4 i11853_2_lut_rep_308 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14799)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11853_2_lut_rep_308.init = 16'h8888;
    LUT4 i12181_3_lut (.A(n12813), .B(n12814), .C(rom_addr[7]), .Z(n12827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12181_3_lut.init = 16'hcaca;
    LUT4 i11854_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n12500)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11854_1_lut_2_lut.init = 16'h7777;
    LUT4 i12689_3_lut (.A(n12903), .B(n12904), .C(rom_addr[4]), .Z(n12905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12689_3_lut.init = 16'hcaca;
    LUT4 i12962_3_lut (.A(n12827), .B(n12828), .C(rom_addr[8]), .Z(n12834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12962_3_lut.init = 16'hcaca;
    LUT4 i12719_3_lut (.A(n14899), .B(n635), .C(rom_addr[4]), .Z(n12892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12719_3_lut.init = 16'hcaca;
    L6MUX21 i12185 (.D0(n12821), .D1(n12822), .SD(rom_addr[7]), .Z(n12831));
    LUT4 i12939_3_lut (.A(n12791), .B(n12792), .C(rom_addr[8]), .Z(n12799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12939_3_lut.init = 16'hcaca;
    LUT4 i7907_4_lut (.A(n12953), .B(n14865), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069_adj_668)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7907_4_lut.init = 16'hc088;
    LUT4 i12228_3_lut (.A(n12872), .B(n12873), .C(rom_addr[8]), .Z(n12874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12228_3_lut.init = 16'hcaca;
    LUT4 i12279_3_lut (.A(n12923), .B(n12924), .C(rom_addr[8]), .Z(n12925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12279_3_lut.init = 16'hcaca;
    L6MUX21 i12223 (.D0(n12808), .D1(n2300_adj_721), .SD(rom_addr[6]), 
            .Z(n12869));
    PFUMX i12224 (.BLUT(n2365_adj_714), .ALUT(n2428_adj_633), .C0(rom_addr[6]), 
          .Z(n12870));
    LUT4 i12286_3_lut (.A(n12930), .B(n12931), .C(rom_addr[8]), .Z(n12932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12286_3_lut.init = 16'hcaca;
    LUT4 i5892_4_lut_4_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n14942)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i5892_4_lut_4_lut_then_3_lut.init = 16'h2020;
    PFUMX i12225 (.BLUT(n2492_adj_703), .ALUT(n6750), .C0(rom_addr[6]), 
          .Z(n12871));
    LUT4 i7742_2_lut_rep_312 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14803)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7742_2_lut_rep_312.init = 16'heeee;
    LUT4 i12301_3_lut (.A(n12945), .B(n12946), .C(rom_addr[8]), .Z(n12947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12301_3_lut.init = 16'hcaca;
    LUT4 i12454_3_lut (.A(n13062), .B(n1021_adj_716), .C(rom_addr[8]), 
         .Z(n13100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12454_3_lut.init = 16'hcaca;
    L6MUX21 i12236 (.D0(n2237_adj_722), .D1(n2300_c), .SD(rom_addr[6]), 
            .Z(n12882));
    PFUMX i12237 (.BLUT(n2365_adj_702), .ALUT(n2428_c), .C0(rom_addr[6]), 
          .Z(n12883));
    LUT4 i12341_3_lut (.A(n12978), .B(n12979), .C(rom_addr[7]), .Z(n12987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12341_3_lut.init = 16'hcaca;
    LUT4 i12340_3_lut (.A(n12976), .B(n12977), .C(rom_addr[7]), .Z(n12986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12340_3_lut.init = 16'hcaca;
    L6MUX21 i12238 (.D0(n2492), .D1(n2555), .SD(rom_addr[6]), .Z(n12884));
    LUT4 i12339_3_lut (.A(n14271), .B(n12975), .C(rom_addr[7]), .Z(n12985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12339_3_lut.init = 16'hcaca;
    LUT4 i12338_3_lut (.A(n12972), .B(n12973), .C(rom_addr[7]), .Z(n12984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12338_3_lut.init = 16'hcaca;
    LUT4 i12337_3_lut (.A(n12970), .B(n14042), .C(rom_addr[7]), .Z(n12983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12337_3_lut.init = 16'hcaca;
    LUT4 i12336_3_lut (.A(n12968), .B(n12969), .C(rom_addr[7]), .Z(n12982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12336_3_lut.init = 16'hcaca;
    LUT4 i12126_3_lut (.A(n506), .B(n475_adj_723), .C(rom_addr[4]), .Z(n12772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12126_3_lut.init = 16'hcaca;
    LUT4 i12335_3_lut (.A(n12966), .B(n12967), .C(rom_addr[7]), .Z(n12981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12335_3_lut.init = 16'hcaca;
    PFUMX i12266 (.BLUT(n2492_adj_598), .ALUT(n2555_adj_724), .C0(rom_addr[6]), 
          .Z(n12912));
    LUT4 i12334_3_lut (.A(n12964), .B(n12965), .C(rom_addr[7]), .Z(n12980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12334_3_lut.init = 16'hcaca;
    LUT4 i12124_4_lut (.A(n5207), .B(n14668), .C(rom_addr[4]), .D(n14818), 
         .Z(n12770)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12124_4_lut.init = 16'hcac0;
    LUT4 n13724_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14682), .C(rom_addr[5]), 
         .D(n13724), .Z(n13725)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n13724_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i12953_3_lut (.A(n12909), .B(n12910), .C(rom_addr[7]), .Z(n12913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12953_3_lut.init = 16'hcaca;
    LUT4 n13676_bdd_3_lut (.A(n14934), .B(n13673), .C(rom_addr[5]), .Z(n13677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13676_bdd_3_lut.init = 16'hcaca;
    LUT4 i12121_3_lut (.A(n428_adj_622), .B(n684_adj_617), .C(rom_addr[4]), 
         .Z(n12767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12121_3_lut.init = 16'hcaca;
    LUT4 i12120_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n12766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12120_3_lut.init = 16'hcaca;
    LUT4 i12212_3_lut (.A(n1789), .B(n12545), .C(rom_addr[8]), .Z(n12858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12212_3_lut.init = 16'hcaca;
    LUT4 i7486_2_lut_rep_302_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14793)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7486_2_lut_rep_302_3_lut.init = 16'he0e0;
    PFUMX i12275 (.BLUT(n12657), .ALUT(n2428_adj_725), .C0(rom_addr[6]), 
          .Z(n12921));
    LUT4 i12959_3_lut (.A(n12840), .B(n12841), .C(rom_addr[8]), .Z(n12848)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12959_3_lut.init = 16'hcaca;
    LUT4 i12199_3_lut (.A(n14444), .B(n12691), .C(rom_addr[7]), .Z(n12845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12199_3_lut.init = 16'hcaca;
    LUT4 i12198_3_lut (.A(n12660), .B(n12669), .C(rom_addr[7]), .Z(n12844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12198_3_lut.init = 16'hcaca;
    LUT4 i12111_3_lut (.A(n2444), .B(n2459), .C(rom_addr[4]), .Z(n12757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12111_3_lut.init = 16'hcaca;
    PFUMX i12276 (.BLUT(n2492_adj_701), .ALUT(n2555_adj_726), .C0(rom_addr[6]), 
          .Z(n12922));
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    PFUMX i12280 (.BLUT(n2110_adj_700), .ALUT(n2173), .C0(rom_addr[6]), 
          .Z(n12926));
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_238_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14729)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_238_3_lut.init = 16'hc1c1;
    PFUMX i12281 (.BLUT(n2237_adj_597), .ALUT(n12746), .C0(rom_addr[6]), 
          .Z(n12927));
    LUT4 i12187_3_lut (.A(n12825), .B(n12826), .C(rom_addr[8]), .Z(n12833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12187_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n14681), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12186_3_lut (.A(n12823), .B(n12824), .C(rom_addr[7]), .Z(n12832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12186_3_lut.init = 16'hcaca;
    L6MUX21 i12283 (.D0(n12759), .D1(n2555_adj_557), .SD(rom_addr[6]), 
            .Z(n12929));
    LUT4 i12184_3_lut (.A(n14122), .B(n12820), .C(rom_addr[7]), .Z(n12830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12184_3_lut.init = 16'hcaca;
    LUT4 i12183_3_lut (.A(n12817), .B(n14546), .C(rom_addr[7]), .Z(n12829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12183_3_lut.init = 16'hcaca;
    LUT4 i11893_3_lut_4_lut (.A(rom_addr[0]), .B(n14682), .C(rom_addr[5]), 
         .D(n1851_adj_9), .Z(n12539)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11893_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12296 (.D0(n12935), .D1(n12936), .SD(rom_addr[6]), .Z(n12942));
    L6MUX21 i12297 (.D0(n12937), .D1(n12938), .SD(rom_addr[6]), .Z(n12943));
    L6MUX21 i12298 (.D0(n12939), .D1(n12940), .SD(rom_addr[6]), .Z(n12944));
    PFUMX i12312 (.BLUT(n12954), .ALUT(n12955), .C0(rom_addr[6]), .Z(n12958));
    LUT4 i12190_3_lut (.A(n12831), .B(n12832), .C(rom_addr[8]), .Z(n12836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12190_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n12211), .C(rom_addr[6]), .D(n12236), 
         .Z(n12237)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_20 (.A(n14709), .B(rom_addr[8]), .C(n14720), .D(rom_addr[4]), 
         .Z(n12211)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h3022;
    LUT4 i12156_3_lut (.A(n12797), .B(n12798), .C(rom_addr[8]), .Z(n12802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12156_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n14682), 
         .C(n14650), .D(rom_addr[6]), .Z(n2110_adj_729)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 i12155_3_lut (.A(n12795), .B(n12796), .C(rom_addr[8]), .Z(n12801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12155_3_lut.init = 16'hcaca;
    L6MUX21 i12313 (.D0(n12956), .D1(n12957), .SD(rom_addr[6]), .Z(n12959));
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_730), .B(n1211), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507_adj_731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n14818), 
         .C(rom_addr[4]), .D(n14744), .Z(n891_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    PFUMX i12319 (.BLUT(n190_adj_699), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n12965));
    LUT4 i12099_3_lut (.A(n2283_adj_564), .B(n2298_adj_658), .C(rom_addr[4]), 
         .Z(n12745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12099_3_lut.init = 16'hcaca;
    L6MUX21 i12323 (.D0(n13068), .D1(n764), .SD(rom_addr[6]), .Z(n12969));
    LUT4 i12849_3_lut (.A(n12744), .B(n12745), .C(rom_addr[5]), .Z(n12746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12849_3_lut.init = 16'hcaca;
    LUT4 i7927_4_lut (.A(n2621_adj_732), .B(n14865), .C(n2684), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7927_4_lut.init = 16'hc088;
    L6MUX21 i12324 (.D0(n829_adj_644), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n12970));
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_710), .ALUT(n2555_adj_698), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i2312_3_lut_4_lut (.A(n14857), .B(n14663), .C(rom_addr[6]), .D(n14664), 
         .Z(n3148)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2312_3_lut_4_lut.init = 16'h7f70;
    LUT4 i12968_3_lut (.A(n1278_adj_717), .B(n13075), .C(rom_addr[8]), 
         .Z(n13101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12968_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n14689), .Z(n2621_adj_732)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_281_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14772)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_281_3_lut.init = 16'h3e3e;
    PFUMX i12326 (.BLUT(n12535), .ALUT(n1149), .C0(rom_addr[6]), .Z(n12972));
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n14857), .B(n14674), 
         .C(rom_addr[5]), .D(n2141_adj_735), .Z(n2173_adj_736)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n14857), .B(n14674), 
         .C(rom_addr[5]), .D(n2141_adj_632), .Z(n2173_adj_737)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12436_3_lut (.A(n13080), .B(n13081), .C(rom_addr[7]), .Z(n13082)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12436_3_lut.init = 16'hcaca;
    LUT4 i5892_4_lut_4_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n14941)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i5892_4_lut_4_lut_else_3_lut.init = 16'h4454;
    L6MUX21 i12327 (.D0(n1213), .D1(n12538), .SD(rom_addr[6]), .Z(n12973));
    LUT4 i12973_3_lut (.A(n12829), .B(n12830), .C(rom_addr[8]), .Z(n12835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12973_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(n14857), .B(n14674), 
         .C(rom_addr[5]), .D(n14883), .Z(n2173_adj_708)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 i12150_3_lut (.A(n15838), .B(n12786), .C(rom_addr[7]), .Z(n12796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12150_3_lut.init = 16'hcaca;
    LUT4 i12151_3_lut (.A(n12787), .B(n12788), .C(rom_addr[7]), .Z(n12797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12151_3_lut.init = 16'hcaca;
    LUT4 i13008_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n12471)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13008_2_lut.init = 16'hbbbb;
    LUT4 i12089_3_lut (.A(n1643), .B(n1549_adj_629), .C(rom_addr[4]), 
         .Z(n12735)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12089_3_lut.init = 16'hcaca;
    PFUMX i12330 (.BLUT(n1597_adj_697), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n12976));
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n4087), .Z(n1786_adj_612)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_578), .B(n443_adj_738), 
         .C(rom_addr[4]), .Z(n444_adj_683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 i12215_3_lut (.A(n12859), .B(n12860), .C(rom_addr[10]), .Z(n12861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12215_3_lut.init = 16'hcaca;
    LUT4 n2545_bdd_4_lut (.A(n14717), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(n14869), .Z(n13682)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n2545_bdd_4_lut.init = 16'ha0ac;
    LUT4 i11956_3_lut (.A(n476), .B(n507_adj_731), .C(rom_addr[5]), .Z(n12602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11956_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut (.A(rom_addr[1]), .B(n14683), 
         .C(rom_addr[4]), .D(n14813), .Z(n2141_adj_735)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut.init = 16'hc0ca;
    LUT4 i12321_3_lut (.A(n13056), .B(n508), .C(rom_addr[6]), .Z(n12967)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12321_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n14931), .B(n507_adj_731), 
         .C(rom_addr[5]), .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283_adj_564), .B(n2298), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i12208_3_lut (.A(n12852), .B(n12853), .C(rom_addr[10]), .Z(n12854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12208_3_lut.init = 16'hcaca;
    LUT4 i7582_4_lut (.A(rom_addr[0]), .B(n443_adj_738), .C(n14778), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7582_4_lut.init = 16'h0a22;
    LUT4 i12322_3_lut (.A(n13059), .B(n13065), .C(rom_addr[6]), .Z(n12968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12322_3_lut.init = 16'hcaca;
    PFUMX i12332 (.BLUT(n12548), .ALUT(n1915_adj_739), .C0(rom_addr[6]), 
          .Z(n12978));
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n14735), .B(n16038), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_740)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i12299_3_lut (.A(n14224), .B(n12942), .C(rom_addr[7]), .Z(n12945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12299_3_lut.init = 16'hcaca;
    LUT4 i7586_4_lut (.A(rom_addr[0]), .B(n14719), .C(n4580), .D(rom_addr[4]), 
         .Z(n2523_adj_741)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7586_4_lut.init = 16'h0a22;
    LUT4 i12285_3_lut (.A(n13746), .B(n12929), .C(rom_addr[7]), .Z(n12931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12285_3_lut.init = 16'hcaca;
    LUT4 i12944_4_lut (.A(n2573), .B(n16033), .C(rom_addr[6]), .D(n14817), 
         .Z(n2685)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i12944_4_lut.init = 16'hccca;
    L6MUX21 i12333 (.D0(n12551), .D1(n12557), .SD(rom_addr[6]), .Z(n12979));
    LUT4 i12277_3_lut (.A(n12919), .B(n13732), .C(rom_addr[7]), .Z(n12923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12277_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110_adj_729), 
          .C0(n14816), .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12857_3_lut (.A(n2523_adj_741), .B(n2554_adj_740), .C(rom_addr[5]), 
         .Z(n2555_adj_724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12857_3_lut.init = 16'hcaca;
    LUT4 i4479_2_lut_rep_317 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14808)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4479_2_lut_rep_317.init = 16'h8888;
    L6MUX21 i12353 (.D0(n14633), .D1(n12996), .SD(rom_addr[6]), .Z(n12999));
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n14681), 
         .C(rom_addr[5]), .D(n2396_adj_654), .Z(n2428_adj_725)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i12354 (.D0(n12997), .D1(n12998), .SD(rom_addr[6]), .Z(n13000));
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549), .ALUT(n1564), .C0(rom_addr[4]), 
          .Z(n1565_adj_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7580_4_lut (.A(rom_addr[0]), .B(n14770), .C(n14706), .D(n6948), 
         .Z(n2237)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7580_4_lut.init = 16'h0a88;
    LUT4 i6073_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6948)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6073_2_lut.init = 16'heeee;
    L6MUX21 i12450 (.D0(n12890), .D1(n12893), .SD(rom_addr[6]), .Z(n13096));
    LUT4 i12574_3_lut (.A(n13011), .B(n13012), .C(rom_addr[4]), .Z(n13013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12574_3_lut.init = 16'hcaca;
    PFUMX i13993 (.BLUT(n14932), .ALUT(n14933), .C0(rom_addr[0]), .Z(n14934));
    L6MUX21 i12405 (.D0(n13047), .D1(n13048), .SD(rom_addr[6]), .Z(n13051));
    LUT4 n1340_bdd_4_lut (.A(n14685), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n16036), .Z(n14268)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut.init = 16'hb888;
    L6MUX21 i13541 (.D0(n14121), .D1(n14119), .SD(rom_addr[6]), .Z(n14122));
    L6MUX21 i12406 (.D0(n13049), .D1(n13050), .SD(rom_addr[6]), .Z(n13052));
    LUT4 n1211_bdd_3_lut_13730_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14343)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam n1211_bdd_3_lut_13730_3_lut_4_lut.init = 16'h8088;
    LUT4 i12226_3_lut (.A(n12868), .B(n12869), .C(rom_addr[7]), .Z(n12872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12226_3_lut.init = 16'hcaca;
    LUT4 i12078_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n4842), 
         .Z(n12724)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i12078_4_lut.init = 16'hc0ca;
    LUT4 i12077_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n4833), 
         .Z(n12723)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i12077_4_lut.init = 16'hc0ca;
    PFUMX i13234 (.BLUT(n14756), .ALUT(n13666), .C0(n14820), .Z(n13667));
    LUT4 i5972_2_lut_rep_370 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14861)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5972_2_lut_rep_370.init = 16'h6666;
    LUT4 i12168_3_lut (.A(n12703), .B(n13677), .C(rom_addr[6]), .Z(n12814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12168_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), 
         .Z(n476_adj_742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i12756_3_lut (.A(n476_adj_742), .B(n14889), .C(rom_addr[5]), 
         .Z(n508_adj_743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12756_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 i7667_4_lut (.A(n14776), .B(rom_addr[4]), .C(n14858), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7667_4_lut.init = 16'hc088;
    LUT4 i12169_4_lut (.A(rom_addr[0]), .B(n13684), .C(rom_addr[6]), .D(n14953), 
         .Z(n12815)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12169_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i5927_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14947)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5927_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 i1_2_lut_rep_262_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14753)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_262_3_lut.init = 16'h8080;
    L6MUX21 i12428 (.D0(n13071), .D1(n13072), .SD(rom_addr[6]), .Z(n13074));
    LUT4 i11725_4_lut (.A(n14869), .B(n14743), .C(rom_addr[5]), .D(rom_addr[6]), 
         .Z(n12369)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11725_4_lut.init = 16'h8008;
    PFUMX i12434 (.BLUT(n13076), .ALUT(n13077), .C0(rom_addr[6]), .Z(n13080));
    LUT4 i2763_3_lut (.A(n16042), .B(n6295), .C(rom_addr[6]), .Z(n3599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2763_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_adj_585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i7604_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_744)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i7604_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i12421_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684_adj_617), .C(rom_addr[4]), 
         .D(n14709), .Z(n13067)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12421_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i3231_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n4067)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3231_3_lut_3_lut.init = 16'h7474;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n4_adj_10)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h8808;
    L6MUX21 i13225 (.D0(n13651), .D1(n13649), .SD(rom_addr[5]), .Z(n13652));
    PFUMX i13991 (.BLUT(n14929), .ALUT(n14930), .C0(rom_addr[1]), .Z(n14931));
    PFUMX i13539 (.BLUT(n14120), .ALUT(n14685), .C0(rom_addr[5]), .Z(n14121));
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n14692), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_c), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2577_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14719), .C(rom_addr[4]), 
         .D(n14808), .Z(n3413)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2577_3_lut_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n6573)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h0008;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n205), 
         .C(rom_addr[4]), .D(n14709), .Z(n507)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i11980_4_lut_4_lut (.A(rom_addr[0]), .B(n14740), .C(rom_addr[4]), 
         .D(n14684), .Z(n12626)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11980_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n6161)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h8000;
    LUT4 i3251_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4087)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i3251_3_lut_4_lut_3_lut.init = 16'h4848;
    PFUMX i13537 (.BLUT(n14118), .ALUT(n1403), .C0(n14821), .Z(n14119));
    LUT4 i7720_2_lut_rep_286_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14777)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7720_2_lut_rep_286_3_lut.init = 16'hfefe;
    LUT4 i7893_2_lut_rep_192_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14683)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7893_2_lut_rep_192_3_lut_3_lut_4_lut.init = 16'h0008;
    L6MUX21 i12435 (.D0(n13078), .D1(n13079), .SD(rom_addr[6]), .Z(n13081));
    LUT4 i11978_4_lut_4_lut (.A(n14868), .B(rom_addr[4]), .C(n5207), .D(n684_adj_747), 
         .Z(n12624)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11978_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    PFUMX i13223 (.BLUT(n270_c), .ALUT(n13650), .C0(rom_addr[4]), .Z(n13651));
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0580;
    LUT4 i7716_2_lut_rep_289_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14780)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7716_2_lut_rep_289_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_272_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14763)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_272_3_lut.init = 16'h0808;
    LUT4 i12042_3_lut (.A(n2077), .B(n1529_adj_606), .C(rom_addr[4]), 
         .Z(n12688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12042_3_lut.init = 16'hcaca;
    LUT4 n221_bdd_3_lut_14047 (.A(n221), .B(n14344), .C(rom_addr[5]), 
         .Z(n14345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_14047.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_639), .B(n1529), 
         .C(rom_addr[4]), .Z(n1530_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    LUT4 i3744_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4580)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i3744_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i4601_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14749), .C(rom_addr[4]), 
         .D(n14808), .Z(n5437)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4601_3_lut_4_lut_4_lut.init = 16'hacfc;
    LUT4 i3967_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4803)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i3967_3_lut_4_lut_3_lut.init = 16'hb8b8;
    PFUMX i12441 (.BLUT(n13083), .ALUT(n13084), .C0(rom_addr[6]), .Z(n13087));
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n14692), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364_adj_748), .Z(n380_adj_554)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    LUT4 i5935_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n6801)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i5935_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i7746_2_lut_rep_336_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14827)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i7746_2_lut_rep_336_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_730)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 n2332_bdd_3_lut_13944_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n2332), .Z(n13744)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2332_bdd_3_lut_13944_4_lut.init = 16'h2f20;
    LUT4 rom_addr_0__bdd_4_lut_14027 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n14950)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_14027.init = 16'h0da3;
    PFUMX i11897 (.BLUT(n12539), .ALUT(n12540), .C0(rom_addr[6]), .Z(n12543));
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 i12039_3_lut_4_lut (.A(rom_addr[0]), .B(n14749), .C(rom_addr[4]), 
         .D(n1435_adj_555), .Z(n12685)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i12039_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2025_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i12248_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n14709), .Z(n12894)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12248_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n14803), .B(n14879), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2685_3_lut_4_lut (.A(n14696), .B(n12236), 
         .C(rom_addr[6]), .D(n13538), .Z(n2685_adj_650)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i2685_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7919_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n14721), 
         .D(rom_addr[3]), .Z(n3313)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7919_4_lut_4_lut.init = 16'hd100;
    LUT4 i12040_3_lut (.A(n1451_adj_573), .B(n1676_adj_673), .C(rom_addr[4]), 
         .Z(n12686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12040_3_lut.init = 16'hcaca;
    LUT4 i11887_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n14772), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14971)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11887_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428_adj_578)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 i4006_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4842)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i4006_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i11887_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n14772), .C(rom_addr[3]), 
         .Z(n14970)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11887_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914_adj_600), .D(n13220), .Z(n1883_adj_749)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i11898 (.BLUT(n12541), .ALUT(n12542), .C0(rom_addr[6]), .Z(n12544));
    LUT4 n2545_bdd_3_lut_13293_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n13681)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n2545_bdd_3_lut_13293_3_lut_4_lut.init = 16'hf011;
    LUT4 i12010_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14900)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12010_4_lut_else_4_lut.init = 16'h8888;
    LUT4 i12994_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n13220)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12994_2_lut.init = 16'h9999;
    LUT4 i7715_2_lut_rep_195_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14686)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7715_2_lut_rep_195_3_lut_4_lut.init = 16'h0080;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428), .B(n684_adj_617), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    PFUMX i13989 (.BLUT(n14926), .ALUT(n14927), .C0(rom_addr[0]), .Z(n14928));
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220_adj_750)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut_4_lut.init = 16'h07a7;
    L6MUX21 i12448 (.D0(n12768), .D1(n12774), .SD(rom_addr[6]), .Z(n13094));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14974)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0521;
    LUT4 i4071_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4907)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i4071_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n14973)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 rom_addr_0__bdd_4_lut_13203_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n13570)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_13203_4_lut.init = 16'h00a1;
    LUT4 i12018_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n14903), .Z(n12664)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12018_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2639_4_lut (.A(rom_addr[1]), .B(n14762), .C(rom_addr[5]), .D(n14727), 
         .Z(n3475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2639_4_lut.init = 16'hcfca;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 n13730_bdd_3_lut (.A(n13730), .B(n13727), .C(rom_addr[4]), .Z(n13731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13730_bdd_3_lut.init = 16'hcaca;
    PFUMX i11917 (.BLUT(n12561), .ALUT(n12562), .C0(rom_addr[6]), .Z(n12563));
    LUT4 i11934_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n2283_adj_553), .Z(n12580)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11934_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut (.A(n14845), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14827), .Z(n251_adj_751)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut.init = 16'hf808;
    LUT4 n4804_bdd_3_lut_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14952)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n4804_bdd_3_lut_3_lut_then_4_lut.init = 16'h0100;
    PFUMX i13511 (.BLUT(n14083), .ALUT(n14082), .C0(rom_addr[6]), .Z(n14084));
    PFUMX i13987 (.BLUT(n14922), .ALUT(n14923), .C0(rom_addr[0]), .Z(n14924));
    L6MUX21 i11939 (.D0(n12583), .D1(n12584), .SD(rom_addr[6]), .Z(n12585));
    L6MUX21 i11948 (.D0(n12592), .D1(n12593), .SD(rom_addr[6]), .Z(n12594));
    PFUMX i12414 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n13060));
    LUT4 n6150_bdd_3_lut_13192_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n14706), .D(n14808), .Z(n13593)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6150_bdd_3_lut_13192_4_lut_4_lut.init = 16'h4703;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut (.A(n14845), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14859), .Z(n2283_adj_704)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14867), 
         .C(rom_addr[3]), .D(n14803), .Z(n731_adj_678)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    L6MUX21 i14588 (.D0(n15837), .D1(n15834), .SD(rom_addr[6]), .Z(n15838));
    LUT4 i4998_3_lut_rep_190_4_lut_4_lut (.A(rom_addr[2]), .B(n14706), .C(rom_addr[4]), 
         .D(n14808), .Z(n14681)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4998_3_lut_rep_190_4_lut_4_lut.init = 16'h3530;
    PFUMX i14586 (.BLUT(n15836), .ALUT(n15835), .C0(rom_addr[5]), .Z(n15837));
    PFUMX i13985 (.BLUT(n14919), .ALUT(n14920), .C0(rom_addr[2]), .Z(n14921));
    PFUMX i11957 (.BLUT(n12601), .ALUT(n12602), .C0(rom_addr[6]), .Z(n12603));
    L6MUX21 i12318 (.D0(n63_adj_661), .D1(n13043), .SD(rom_addr[6]), .Z(n12964));
    L6MUX21 i11970 (.D0(n12614), .D1(n12615), .SD(rom_addr[6]), .Z(n12616));
    PFUMX i14583 (.BLUT(n15833), .ALUT(n15832), .C0(rom_addr[5]), .Z(n15834));
    L6MUX21 i11983 (.D0(n12627), .D1(n12628), .SD(rom_addr[6]), .Z(n12629));
    LUT4 i1_2_lut_rep_164_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n12236), .D(n14818), .Z(n14655)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_164_3_lut_4_lut_4_lut.init = 16'h8000;
    L6MUX21 i12273 (.D0(n12644), .D1(n2173_adj_561), .SD(rom_addr[6]), 
            .Z(n12919));
    LUT4 i12028_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n12674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12028_3_lut.init = 16'hcaca;
    LUT4 i12027_3_lut (.A(n270_c), .B(n285), .C(rom_addr[4]), .Z(n12673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12027_3_lut.init = 16'hcaca;
    LUT4 i8021_2_lut_rep_388 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14879)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8021_2_lut_rep_388.init = 16'h8888;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_752)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444_adj_586), .Z(n2268_adj_753)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i14566 (.D0(n15814), .D1(n15811), .SD(rom_addr[6]), .Z(n15815));
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i14564 (.BLUT(n15813), .ALUT(n15812), .C0(rom_addr[5]), .Z(n15814));
    LUT4 n4804_bdd_3_lut_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n14951)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A !(B (D)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n4804_bdd_3_lut_3_lut_else_4_lut.init = 16'h6da3;
    L6MUX21 i11992 (.D0(n12636), .D1(n12637), .SD(rom_addr[6]), .Z(n12638));
    LUT4 i11900_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14977)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11900_3_lut_4_lut_then_4_lut.init = 16'hb88a;
    PFUMX i12235 (.BLUT(n2110), .ALUT(n2173_adj_737), .C0(rom_addr[6]), 
          .Z(n12881));
    LUT4 n12898_bdd_3_lut (.A(n908_adj_719), .B(n205), .C(rom_addr[4]), 
         .Z(n13579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12898_bdd_3_lut.init = 16'hcaca;
    LUT4 i11996_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1211), .Z(n12642)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i11996_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i12005 (.D0(n12649), .D1(n12650), .SD(rom_addr[6]), .Z(n12651));
    LUT4 i7781_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(rom_addr[0]), .D(n14818), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7781_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    PFUMX i14562 (.BLUT(n15810), .ALUT(n15809), .C0(rom_addr[5]), .Z(n15811));
    PFUMX i12222 (.BLUT(n12771), .ALUT(n2173_adj_736), .C0(rom_addr[6]), 
          .Z(n12868));
    LUT4 i7795_2_lut_rep_268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14759)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i7795_2_lut_rep_268_3_lut_4_lut.init = 16'h0888;
    LUT4 i7763_2_lut_rep_300_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14791)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i7763_2_lut_rep_300_3_lut_4_lut.init = 16'h8008;
    LUT4 i12160_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n12806)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12160_3_lut_4_lut.init = 16'hf808;
    LUT4 i12025_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n12671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12025_3_lut.init = 16'hcaca;
    LUT4 i7821_2_lut_rep_244_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14735)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i7821_2_lut_rep_244_3_lut.init = 16'h8080;
    LUT4 i12024_3_lut (.A(n205_adj_625), .B(n220_adj_750), .C(rom_addr[4]), 
         .Z(n12670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12024_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14859), .D(n14831), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    L6MUX21 i12163 (.D0(n12663), .D1(n12666), .SD(rom_addr[6]), .Z(n12809));
    LUT4 i7762_2_lut_rep_265_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14756)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i7762_2_lut_rep_265_3_lut_4_lut.init = 16'h8880;
    LUT4 i11721_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n12364)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11721_2_lut.init = 16'heeee;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_638), 
          .C0(n14817), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n14848), .D(n14780), .Z(n1483)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    PFUMX i12023 (.BLUT(n12667), .ALUT(n12668), .C0(rom_addr[6]), .Z(n12669));
    LUT4 i5029_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n14720), .C(rom_addr[4]), 
         .D(n14808), .Z(n5873)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5029_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n6150_bdd_3_lut_13199_4_lut_4_lut (.A(rom_addr[2]), .B(n14719), 
         .C(rom_addr[5]), .D(n14808), .Z(n13594)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6150_bdd_3_lut_13199_4_lut_4_lut.init = 16'h3530;
    L6MUX21 i12129 (.D0(n63), .D1(n12566), .SD(rom_addr[6]), .Z(n12775));
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_669), 
         .C(rom_addr[4]), .Z(n1244_adj_754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i12783_3_lut (.A(n1244_adj_754), .B(n1275), .C(rom_addr[5]), 
         .Z(n12668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12783_3_lut.init = 16'hcaca;
    LUT4 i8031_2_lut_rep_234_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n14725)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8031_2_lut_rep_234_2_lut.init = 16'hdddd;
    LUT4 i12383_4_lut_4_lut (.A(rom_addr[2]), .B(n4_adj_559), .C(rom_addr[4]), 
         .D(n2444_adj_586), .Z(n13029)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12383_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_218_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n14709)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_218_3_lut_3_lut.init = 16'h4040;
    LUT4 i7665_2_lut_rep_250_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n14741)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7665_2_lut_rep_250_3_lut_3_lut.init = 16'h5454;
    PFUMX i13981 (.BLUT(n14913), .ALUT(n14914), .C0(rom_addr[1]), .Z(n14915));
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n14852), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14777), .Z(n61_adj_756)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 i12420_3_lut (.A(n6770), .B(n668), .C(rom_addr[4]), .Z(n13066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12420_3_lut.init = 16'hcaca;
    LUT4 i13508_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14955)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam i13508_then_4_lut.init = 16'h0090;
    LUT4 i12016_3_lut (.A(n46_adj_2), .B(n61_adj_756), .C(rom_addr[4]), 
         .Z(n12662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12016_3_lut.init = 16'hcaca;
    L6MUX21 i12045 (.D0(n12689), .D1(n12690), .SD(rom_addr[6]), .Z(n12691));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14897)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut.init = 16'h1500;
    PFUMX i13476 (.BLUT(n14041), .ALUT(n14038), .C0(rom_addr[6]), .Z(n14042));
    LUT4 i7655_4_lut (.A(n14859), .B(rom_addr[4]), .C(n16038), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7655_4_lut.init = 16'hc088;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_757), .ALUT(n1883_adj_749), 
          .C0(n14817), .Z(n1915_adj_715)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7669_4_lut (.A(rom_addr[0]), .B(n14719), .C(n14781), .D(rom_addr[4]), 
         .Z(n1117)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7669_4_lut.init = 16'h0a22;
    LUT4 i13132_2_lut_rep_321 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14812)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13132_2_lut_rep_321.init = 16'hdddd;
    LUT4 i13062_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n12459)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13062_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i5204_2_lut_rep_253_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14744)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5204_2_lut_rep_253_3_lut.init = 16'h1e1e;
    LUT4 i12096_3_lut_4_lut (.A(n14852), .B(n14879), .C(rom_addr[4]), 
         .D(n2040_adj_581), .Z(n12742)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i12096_3_lut_4_lut.init = 16'hf404;
    PFUMX i13221 (.BLUT(n13648), .ALUT(n13647), .C0(rom_addr[3]), .Z(n13649));
    LUT4 i7588_2_lut_rep_322 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14813)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7588_2_lut_rep_322.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n14852), .B(n14879), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_758)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i12009_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n12655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12009_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n14896)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut.init = 16'h0400;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_11), 
          .C0(n12500), .Z(n1597_adj_712)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i13508_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n14954)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i13508_else_4_lut.init = 16'h0260;
    LUT4 i13092_2_lut_rep_227_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14718)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13092_2_lut_rep_227_3_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), 
         .C(rom_addr[4]), .D(n14683), .Z(n1275_adj_760)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i12054 (.D0(n12698), .D1(n12699), .SD(rom_addr[6]), .Z(n12700));
    LUT4 n2552_bdd_2_lut_13809_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n13663)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_13809_3_lut_4_lut.init = 16'h0007;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_761), .ALUT(n1117_adj_752), 
          .C0(n14817), .Z(n1149_adj_711)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i5894_3_lut_rep_323 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n14814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5894_3_lut_rep_323.init = 16'hcaca;
    LUT4 i5915_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14888)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5915_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 i2023_2_lut_rep_339 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14830)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2023_2_lut_rep_339.init = 16'h6666;
    LUT4 i7419_2_lut_rep_324 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n14815)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7419_2_lut_rep_324.init = 16'heeee;
    LUT4 i5915_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14887)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5915_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 i12620_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n12647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12620_3_lut.init = 16'hcaca;
    PFUMX i12012 (.BLUT(n1054_adj_596), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n12658));
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 i12000_3_lut (.A(n2009_adj_671), .B(n954), .C(rom_addr[4]), .Z(n12646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12000_3_lut.init = 16'hcaca;
    LUT4 i11999_3_lut (.A(n908), .B(n205), .C(rom_addr[4]), .Z(n12645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11999_3_lut.init = 16'hcaca;
    L6MUX21 i12076 (.D0(n12720), .D1(n12721), .SD(rom_addr[6]), .Z(n12722));
    LUT4 i13095_2_lut_rep_325 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n14816)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13095_2_lut_rep_325.init = 16'heeee;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_727), 
          .C0(n14817), .Z(n2428_adj_687)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i12412_3_lut (.A(n557_adj_730), .B(n572), .C(rom_addr[4]), .Z(n13058)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12412_3_lut.init = 16'hcaca;
    LUT4 i11909_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n2009_adj_671), .Z(n12555)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11909_3_lut_4_lut.init = 16'hf202;
    PFUMX i13979 (.BLUT(n14910), .ALUT(n14911), .C0(rom_addr[0]), .Z(n14912));
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n14821), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n14827), 
         .C(rom_addr[3]), .D(n14725), .Z(n716)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12271_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14980)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i12271_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i4014_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n4850)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4014_3_lut_4_lut_3_lut.init = 16'hd9d9;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_653)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'hf006;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n4067), .ALUT(n1692_adj_614), 
          .C0(n12483), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n14723), 
         .C(rom_addr[3]), .D(n14725), .Z(n1676_adj_764)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i12271_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n14979)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i12271_4_lut_else_3_lut.init = 16'h0402;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n12500), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i8018_2_lut_rep_179_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .Z(n14670)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i8018_2_lut_rep_179_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i12411_4_lut (.A(n14868), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n13057)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12411_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n1228_adj_766)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut_3_lut.init = 16'h4343;
    LUT4 i4722_3_lut_4_lut_4_lut (.A(n14818), .B(n14781), .C(rom_addr[5]), 
         .D(n14843), .Z(n5558)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4722_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i11993_4_lut (.A(n14718), .B(rom_addr[0]), .C(rom_addr[4]), .D(n4580), 
         .Z(n12639)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i11993_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .Z(n308)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_4_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i12270_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14959)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12270_3_lut_4_lut_then_4_lut.init = 16'h744c;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n1172)) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut.init = 16'h5959;
    LUT4 i7562_2_lut_rep_280_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14771)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7562_2_lut_rep_280_3_lut.init = 16'h6060;
    LUT4 i13099_2_lut_rep_326 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14817)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13099_2_lut_rep_326.init = 16'heeee;
    LUT4 n2596_bdd_3_lut_13916_4_lut (.A(rom_addr[0]), .B(n14857), .C(rom_addr[3]), 
         .D(n14794), .Z(n13533)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2596_bdd_3_lut_13916_4_lut.init = 16'h7f70;
    LUT4 i12626_3_lut (.A(n13032), .B(n13033), .C(rom_addr[4]), .Z(n13034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12626_3_lut.init = 16'hcaca;
    PFUMX i13977 (.BLUT(n14907), .ALUT(n14908), .C0(rom_addr[5]), .Z(n14909));
    LUT4 i12747_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_611), 
         .D(n1676_adj_764), .Z(n1724_adj_767)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12747_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i12729_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_634), 
         .D(n1676_adj_593), .Z(n1724_adj_768)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12729_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i11962_4_lut (.A(n14671), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12608)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i11962_4_lut.init = 16'hca0a;
    LUT4 i11987_4_lut (.A(n6783), .B(n14695), .C(rom_addr[4]), .D(n14869), 
         .Z(n12633)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11987_4_lut.init = 16'hcac0;
    LUT4 i13074_2_lut_rep_327 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n14818)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13074_2_lut_rep_327.init = 16'h1111;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_769), .ALUT(n380_adj_12), 
          .C0(n14821), .Z(n381_adj_688)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n14857), 
         .C(rom_addr[3]), .D(n14761), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13472 (.BLUT(n668), .ALUT(n14035), .C0(rom_addr[4]), .Z(n14037));
    LUT4 i7816_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n684)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7816_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 n915_bdd_2_lut_13946_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n14410)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n915_bdd_2_lut_13946_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_225_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n14716)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_225_3_lut.init = 16'hfefe;
    L6MUX21 i12131 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n12777));
    PFUMX i13182 (.BLUT(n13570), .ALUT(n13569), .C0(rom_addr[0]), .Z(n13571));
    PFUMX i12132 (.BLUT(n445_adj_667), .ALUT(n508_adj_743), .C0(rom_addr[6]), 
          .Z(n12778));
    PFUMX i13975 (.BLUT(n14904), .ALUT(n14905), .C0(rom_addr[0]), .Z(n14906));
    LUT4 i1_2_lut_rep_352 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14843)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_352.init = 16'heeee;
    L6MUX21 i12133 (.D0(n12575), .D1(n12578), .SD(rom_addr[6]), .Z(n12779));
    LUT4 i2_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_224_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14715)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_224_3_lut_4_lut.init = 16'hffef;
    L6MUX21 i12134 (.D0(n12588), .D1(n12591), .SD(rom_addr[6]), .Z(n12780));
    LUT4 n549_bdd_3_lut_13820_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n13729)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam n549_bdd_3_lut_13820_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_191_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14682)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_191_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n14818), 
         .B(rom_addr[5]), .C(n14760), .D(n14843), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    L6MUX21 i12135 (.D0(n829), .D1(n12597), .SD(rom_addr[6]), .Z(n12781));
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n14772), .B(n603), .C(rom_addr[3]), 
         .Z(n699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i5061_2_lut_rep_261_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14752)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5061_2_lut_rep_261_3_lut.init = 16'hf9f9;
    LUT4 i7680_2_lut_rep_354 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14845)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7680_2_lut_rep_354.init = 16'hbbbb;
    LUT4 i7747_2_lut_rep_340 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14831)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7747_2_lut_rep_340.init = 16'h2222;
    LUT4 i1_2_lut_rep_173_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14843), .D(rom_addr[5]), .Z(n14664)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_173_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4683_3_lut_4_lut_4_lut (.A(n14818), .B(n6161), .C(rom_addr[5]), 
         .D(n14843), .Z(n5519)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4683_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 rom_addr_1__bdd_4_lut_14010 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14899)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam rom_addr_1__bdd_4_lut_14010.init = 16'h6144;
    LUT4 i7552_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7552_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i1_2_lut_rep_228_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14719)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_228_3_lut.init = 16'hfefe;
    L6MUX21 i12138 (.D0(n12606), .D1(n12609), .SD(rom_addr[6]), .Z(n12784));
    LUT4 i11967_3_lut (.A(n620), .B(n205_adj_625), .C(rom_addr[4]), .Z(n12613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11967_3_lut.init = 16'hcaca;
    LUT4 i11966_3_lut (.A(n491), .B(n604_adj_588), .C(rom_addr[4]), .Z(n12612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11966_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549_adj_629)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 n6296_bdd_3_lut_4_lut_4_lut (.A(n14818), .B(n13596), .C(rom_addr[5]), 
         .D(n14843), .Z(n14635)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n6296_bdd_3_lut_4_lut_4_lut.init = 16'hc0ca;
    LUT4 i12955_3_lut_4_lut (.A(n13946), .B(rom_addr[7]), .C(rom_addr[8]), 
         .D(n12960), .Z(n12862)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i12955_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 n549_bdd_4_lut_13282 (.A(n2298), .B(n14859), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n13727)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam n549_bdd_4_lut_13282.init = 16'haafc;
    LUT4 i7752_2_lut_rep_180_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14671)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7752_2_lut_rep_180_3_lut_4_lut.init = 16'h0010;
    L6MUX21 i12140 (.D0(n12622), .D1(n1531), .SD(rom_addr[6]), .Z(n12786));
    LUT4 i5974_2_lut_rep_355 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14846)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5974_2_lut_rep_355.init = 16'h6666;
    LUT4 i12365_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n13011)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12365_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 i11964_3_lut (.A(n526_adj_576), .B(n443_adj_738), .C(rom_addr[4]), 
         .Z(n12610)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11964_3_lut.init = 16'hcaca;
    PFUMX i12142 (.BLUT(n1724_adj_767), .ALUT(n1787_adj_637), .C0(rom_addr[6]), 
          .Z(n12788));
    LUT4 i1_2_lut_rep_249_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14740)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_249_3_lut.init = 16'h6060;
    LUT4 i7556_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635_adj_691)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7556_2_lut_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n14857), 
         .C(rom_addr[3]), .D(n16035), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13035_2_lut_rep_264_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n14755)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13035_2_lut_rep_264_3_lut.init = 16'h0909;
    L6MUX21 i12144 (.D0(n12635), .D1(n12641), .SD(rom_addr[6]), .Z(n12790));
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n14831), 
         .D(rom_addr[4]), .Z(n12232)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_201_4_lut_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14692)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_201_4_lut_4_lut_3_lut.init = 16'h4242;
    LUT4 i12638_3_lut (.A(n1228_adj_766), .B(n1243_adj_720), .C(rom_addr[4]), 
         .Z(n12607)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12638_3_lut.init = 16'hcaca;
    L6MUX21 i13212 (.D0(n13634), .D1(n13631), .SD(rom_addr[5]), .Z(n13635));
    LUT4 i4696_2_lut_rep_356 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n14847)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i4696_2_lut_rep_356.init = 16'hbbbb;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443_adj_738)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i12992_2_lut_rep_357 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14848)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12992_2_lut_rep_357.init = 16'h9999;
    LUT4 n2286_bdd_4_lut_13876_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n684_adj_747)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n2286_bdd_4_lut_13876_4_lut.init = 16'hc39c;
    LUT4 i7712_2_lut_rep_158_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n14843), .D(rom_addr[0]), .Z(n14649)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7712_2_lut_rep_158_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i11959_4_lut (.A(n14745), .B(n14869), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n12605)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11959_4_lut.init = 16'hfaca;
    LUT4 i12641_3_lut (.A(n1038_adj_744), .B(n1053), .C(rom_addr[4]), 
         .Z(n12598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12641_3_lut.init = 16'hcaca;
    LUT4 i12395_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n78), .Z(n13041)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12395_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_3_lut_adj_24.init = 16'h9090;
    LUT4 i1_3_lut_rep_263_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n14754)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_3_lut_rep_263_4_lut.init = 16'heffe;
    LUT4 i2_3_lut_4_lut_adj_25 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(n14863), .Z(n10915)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_adj_25.init = 16'h9000;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_adj_769)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h5009;
    LUT4 i7758_2_lut_rep_203_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n14694)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7758_2_lut_rep_203_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i12644_3_lut (.A(n844), .B(n859_adj_771), .C(rom_addr[4]), .Z(n12595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12644_3_lut.init = 16'hcaca;
    LUT4 i7533_2_lut_rep_270_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14761)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7533_2_lut_rep_270_3_lut.init = 16'h0909;
    PFUMX i13210 (.BLUT(n13633), .ALUT(n13632), .C0(rom_addr[4]), .Z(n13634));
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n14812), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i13142_2_lut_rep_358 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14849)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13142_2_lut_rep_358.init = 16'h1111;
    LUT4 n13580_bdd_3_lut (.A(n13580), .B(n13578), .C(rom_addr[6]), .Z(n13581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n13580_bdd_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_14041 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_adj_656)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_14041.init = 16'hb124;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668_adj_774)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n14812), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 i7717_2_lut_rep_368 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14859)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i7717_2_lut_rep_368.init = 16'h1010;
    LUT4 i1_2_lut_rep_320_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n14811)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_320_3_lut.init = 16'hefef;
    LUT4 i13094_2_lut_rep_205_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n14696)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13094_2_lut_rep_205_3_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237_adj_672), .ALUT(n2300), 
          .C0(rom_addr[6]), .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=279, LSE_RLINE=283 */ ;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A+!(B (D)+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut_4_lut.init = 16'h4410;
    LUT4 i2754_4_lut_else_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), .C(rom_addr[1]), 
         .Z(n16040)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2754_4_lut_else_4_lut.init = 16'hfdfd;
    L6MUX21 i12164 (.D0(n190), .D1(n12672), .SD(rom_addr[6]), .Z(n12810));
    L6MUX21 i12167 (.D0(n12694), .D1(n12697), .SD(rom_addr[6]), .Z(n12813));
    L6MUX21 i12170 (.D0(n12715), .D1(n12725), .SD(rom_addr[6]), .Z(n12816));
    LUT4 i13082_2_lut_rep_369 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14860)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13082_2_lut_rep_369.init = 16'h4444;
    L6MUX21 i12171 (.D0(n12728), .D1(n1149_c), .SD(rom_addr[6]), .Z(n12817));
    LUT4 i3907_2_lut_rep_328 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n14819)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3907_2_lut_rep_328.init = 16'h2222;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i11943_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n12589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11943_3_lut.init = 16'hcaca;
    LUT4 i12270_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n14958)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12270_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 i13017_2_lut_rep_194_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(n14866), .Z(n14685)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i13017_2_lut_rep_194_3_lut_4_lut.init = 16'h0004;
    LUT4 address_11__I_0_Mux_5_i1244_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14891)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1244_3_lut_then_4_lut.init = 16'h4020;
    L6MUX21 i12174 (.D0(n12734), .D1(n12737), .SD(rom_addr[6]), .Z(n12820));
    PFUMX i12175 (.BLUT(n1597), .ALUT(n1660_adj_777), .C0(rom_addr[6]), 
          .Z(n12821));
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14793), .Z(n653_adj_591)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    PFUMX i12176 (.BLUT(n1724_adj_768), .ALUT(n1787_adj_636), .C0(rom_addr[6]), 
          .Z(n12822));
    LUT4 i11734_2_lut_rep_360 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11734_2_lut_rep_360.init = 16'heeee;
    LUT4 i7843_2_lut_rep_361 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n14852)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7843_2_lut_rep_361.init = 16'h8888;
    LUT4 i7770_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14727), .Z(n5334)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7770_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i1_2_lut_rep_233_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14724)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_233_3_lut_4_lut.init = 16'h2022;
    PFUMX i12177 (.BLUT(n1852_adj_649), .ALUT(n1915), .C0(rom_addr[6]), 
          .Z(n12823));
    PFUMX i13411 (.BLUT(n13943), .ALUT(n13942), .C0(rom_addr[5]), .Z(n13944));
    LUT4 i11941_3_lut (.A(n684_adj_747), .B(n699_adj_695), .C(rom_addr[4]), 
         .Z(n12587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11941_3_lut.init = 16'hcaca;
    PFUMX i13208 (.BLUT(n13630), .ALUT(n13629), .C0(rom_addr[4]), .Z(n13631));
    LUT4 i7734_2_lut_rep_282_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14773)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7734_2_lut_rep_282_3_lut_4_lut.init = 16'h0440;
    LUT4 i12252_3_lut_4_lut (.A(rom_addr[0]), .B(n14719), .C(rom_addr[4]), 
         .D(n890_adj_689), .Z(n12898)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12252_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i13896 (.D0(n14545), .D1(n14543), .SD(rom_addr[6]), .Z(n14546));
    LUT4 n46_bdd_3_lut (.A(n46), .B(n301), .C(rom_addr[4]), .Z(n14366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n46_bdd_3_lut.init = 16'hcaca;
    PFUMX i13894 (.BLUT(n14647), .ALUT(n14544), .C0(rom_addr[5]), .Z(n14545));
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 rom_addr_6__bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14465)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam rom_addr_6__bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i2754_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(rom_addr[1]), .Z(n16041)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2754_4_lut_then_4_lut.init = 16'hffef;
    PFUMX i12231 (.BLUT(n12875), .ALUT(n12876), .C0(rom_addr[5]), .Z(n2300_adj_721));
    PFUMX i13892 (.BLUT(n14542), .ALUT(n14541), .C0(rom_addr[5]), .Z(n14543));
    LUT4 i11936_3_lut (.A(n428), .B(n251_adj_751), .C(rom_addr[4]), .Z(n12582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11936_3_lut.init = 16'hcaca;
    LUT4 i11935_3_lut (.A(n205_adj_567), .B(n220_adj_694), .C(rom_addr[4]), 
         .Z(n12581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11935_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1244_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n14890)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1244_3_lut_else_4_lut.init = 16'hd109;
    LUT4 i3550_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4386)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i3550_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i12652_3_lut (.A(n589_adj_709), .B(n604_adj_674), .C(rom_addr[4]), 
         .Z(n12576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12652_3_lut.init = 16'hcaca;
    LUT4 i11928_3_lut (.A(n557_adj_566), .B(n526_adj_569), .C(rom_addr[4]), 
         .Z(n12574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11928_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i7482_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_606)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7482_4_lut_4_lut.init = 16'hc700;
    LUT4 i13041_2_lut_rep_330 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14821)) /* synthesis lut_function=((B)+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13041_2_lut_rep_330.init = 16'hdddd;
    LUT4 i12853_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n13667), 
         .D(n2538), .Z(n2555_adj_726)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12853_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i13097_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n12529)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i13097_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i7502_2_lut_rep_226_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n14717)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7502_2_lut_rep_226_3_lut.init = 16'hf8f8;
    LUT4 i12368_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14894)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12368_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 n1657_bdd_3_lut_4_lut (.A(n14848), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n14825), .Z(n13630)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1657_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i12368_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n14893)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12368_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_303_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14794)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_303_3_lut.init = 16'hc2c2;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14692), .Z(n428)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_251_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n14742)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_251_3_lut.init = 16'h7c7c;
    PFUMX i10540 (.BLUT(n11178), .ALUT(n11179), .C0(rom_addr[8]), .Z(n11180));
    LUT4 n858_bdd_3_lut_13250_4_lut (.A(rom_addr[0]), .B(n14866), .C(rom_addr[3]), 
         .D(n14692), .Z(n13679)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n858_bdd_3_lut_13250_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14832), .Z(n220)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1946_adj_693)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut.init = 16'h3883;
    LUT4 i12369_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n14962)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i12369_3_lut_4_lut_then_4_lut.init = 16'h0401;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_151_4_lut (.A(rom_addr[0]), 
         .B(n14719), .C(rom_addr[4]), .D(n2040), .Z(n14642)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_151_4_lut.init = 16'hf202;
    PFUMX i12244 (.BLUT(n12888), .ALUT(n12889), .C0(rom_addr[5]), .Z(n12890));
    LUT4 i12376_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n16044)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (C (D)+!C !(D))+!B (C)))) */ ;
    defparam i12376_then_4_lut.init = 16'h5294;
    LUT4 i11696_2_lut_rep_333 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14824)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i11696_2_lut_rep_333.init = 16'h8888;
    LUT4 i7566_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14858), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7566_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    PFUMX i12055 (.BLUT(n653_adj_592), .ALUT(n668_adj_774), .C0(rom_addr[4]), 
          .Z(n12701));
    LUT4 i7765_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n14863), 
         .D(rom_addr[2]), .Z(n1659_adj_642)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7765_2_lut_4_lut_4_lut.init = 16'h70c0;
    LUT4 i7719_4_lut (.A(rom_addr[0]), .B(n14752), .C(n14765), .D(rom_addr[4]), 
         .Z(n1085_c)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7719_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n14773), 
         .C(rom_addr[4]), .D(n14755), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_363 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14854)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_363.init = 16'h8383;
    LUT4 i12376_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n16043)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i12376_else_4_lut.init = 16'h5902;
    LUT4 n858_bdd_3_lut_13243_4_lut (.A(rom_addr[0]), .B(n14866), .C(n14772), 
         .D(rom_addr[3]), .Z(n13678)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n858_bdd_3_lut_13243_4_lut.init = 16'h22f0;
    PFUMX i2370 (.BLUT(n6536), .ALUT(n3205), .C0(rom_addr[6]), .Z(n3206));
    LUT4 i12369_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n14961)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12369_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i12378_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n13024)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12378_3_lut_4_lut_4_lut_4_lut.init = 16'h3081;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), .C(n14692), 
         .D(rom_addr[3]), .Z(n13650)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_690)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i12807_3_lut (.A(n14892), .B(n1275_adj_760), .C(rom_addr[5]), 
         .Z(n12562)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12807_3_lut.init = 16'hcaca;
    LUT4 i12257_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n12903)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12257_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    L6MUX21 i13162 (.D0(n13537), .D1(n13534), .SD(rom_addr[5]), .Z(n13538));
    LUT4 i12386_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), .C(rom_addr[3]), 
         .D(n16039), .Z(n13032)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12386_3_lut_4_lut.init = 16'h2f20;
    LUT4 n5558_bdd_4_lut (.A(n5558), .B(rom_addr[0]), .C(n5553), .D(n14817), 
         .Z(n13578)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B ((D)+!C)))) */ ;
    defparam n5558_bdd_4_lut.init = 16'h440c;
    PFUMX i12247 (.BLUT(n12891), .ALUT(n12892), .C0(rom_addr[5]), .Z(n12893));
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_713)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n14866), 
         .C(rom_addr[3]), .D(n14772), .Z(n890_adj_689)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1274_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n2573_adj_652), 
         .C(rom_addr[4]), .D(n14763), .Z(n14120)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1274_bdd_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n205_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), .C(n14857), 
         .D(n14863), .Z(n14083)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n205_bdd_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n13007), 
         .C(rom_addr[5]), .D(n14808), .Z(n1660)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7697_2_lut_rep_366 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14857)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7697_2_lut_rep_366.init = 16'h2222;
    LUT4 i1_2_lut_rep_184_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n14675)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_184_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n4_adj_707)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i7759_2_lut_rep_269_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14760)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7759_2_lut_rep_269_3_lut.init = 16'h2020;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14832), 
         .C(rom_addr[3]), .D(n14869), .Z(n475)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i12250 (.BLUT(n12894), .ALUT(n12895), .C0(rom_addr[5]), .Z(n12896));
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14864), .C(n14857), 
         .D(rom_addr[5]), .Z(n12254)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i7745_2_lut_rep_202_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14693)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7745_2_lut_rep_202_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_758), .B(n1914_adj_600), 
         .C(rom_addr[5]), .Z(n1915_adj_739)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n14832), .B(n14685), .C(rom_addr[5]), 
         .D(n14863), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14814), 
         .C(rom_addr[3]), .D(n14861), .Z(n1101_adj_761)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i12019_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n124_adj_676), .C(rom_addr[4]), 
         .D(n14753), .Z(n12665)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12019_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12900_3_lut (.A(n2010_adj_605), .B(n14886), .C(rom_addr[5]), 
         .Z(n13086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12900_3_lut.init = 16'hcaca;
    LUT4 i12815_3_lut (.A(n1883_adj_651), .B(n1914_adj_682), .C(rom_addr[5]), 
         .Z(n13084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12815_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14694), 
         .C(rom_addr[4]), .D(n14720), .Z(n2620)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_7_i2620_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i5901_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n6767)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i5901_3_lut_3_lut_3_lut.init = 16'hc7c7;
    PFUMX i13160 (.BLUT(n13536), .ALUT(n13535), .C0(rom_addr[4]), .Z(n13537));
    L6MUX21 i13830 (.D0(n14467), .D1(n14464), .SD(rom_addr[5]), .Z(n14468));
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n6791), 
         .C(rom_addr[5]), .D(n13028), .Z(n1660_adj_777)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 i7738_2_lut_rep_334_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n14825)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7738_2_lut_rep_334_3_lut.init = 16'h0202;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(n14848), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n14859), .Z(n364_adj_748)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'hf202;
    PFUMX i12256 (.BLUT(n12900), .ALUT(n12901), .C0(rom_addr[7]), .Z(n12902));
    LUT4 i12674_3_lut (.A(n1228_adj_778), .B(n1243), .C(rom_addr[4]), 
         .Z(n12536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12674_3_lut.init = 16'hcaca;
    PFUMX i13828 (.BLUT(n14466), .ALUT(n14465), .C0(rom_addr[6]), .Z(n14467));
    LUT4 i1_2_lut_rep_229_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14720)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i1_2_lut_rep_229_2_lut_3_lut.init = 16'h0202;
    LUT4 i7766_2_lut_rep_177_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n14668)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7766_2_lut_rep_177_3_lut_3_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14965)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'ha0a2;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14692), 
         .C(rom_addr[3]), .D(n14857), .Z(n684_adj_617)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12010_4_lut_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14901)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam i12010_4_lut_then_4_lut.init = 16'hf284;
    LUT4 i7908_2_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14869), .C(n14743), 
         .D(rom_addr[5]), .Z(n2684)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i7908_2_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_341 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n14832)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_341.init = 16'h2424;
    L6MUX21 i13197 (.D0(n14635), .D1(n13595), .SD(rom_addr[6]), .Z(n13599));
    LUT4 i12372_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n13018)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12372_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 n1293_bdd_3_lut_13938_4_lut_4_lut (.A(rom_addr[0]), .B(n14832), 
         .C(rom_addr[3]), .D(n14857), .Z(n14441)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1293_bdd_3_lut_13938_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14794), 
         .C(rom_addr[3]), .D(n14857), .Z(n205_adj_625)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n14964)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !(C+(D))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'ha08d;
    LUT4 i12380_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16035), .C(rom_addr[3]), 
         .D(n14857), .Z(n13026)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n14793), .C(rom_addr[3]), .D(n14857), .Z(n604_adj_618)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut_4_lut.init = 16'h5303;
    LUT4 i8002_2_lut_rep_367 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n14858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8002_2_lut_rep_367.init = 16'heeee;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_673), .B(n1691_adj_665), 
         .C(rom_addr[4]), .Z(n1692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 n1340_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n14749), .C(rom_addr[4]), 
         .D(n14773), .Z(n14314)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n14769), .Z(n1659_adj_779)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    PFUMX i12289 (.BLUT(n2205_adj_627), .ALUT(n2236), .C0(rom_addr[5]), 
          .Z(n12935));
    LUT4 i7877_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_c)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7877_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_4_lut.init = 16'hf1e1;
    LUT4 n1699_bdd_2_lut_13753_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n13632)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1699_bdd_2_lut_13753_3_lut_3_lut.init = 16'h1010;
    LUT4 i12073_3_lut_4_lut (.A(n14851), .B(n14869), .C(rom_addr[4]), 
         .D(n2040_adj_684), .Z(n12719)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam i12073_3_lut_4_lut.init = 16'hf808;
    LUT4 i4996_3_lut_rep_215_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n14706)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i4996_3_lut_rep_215_4_lut_3_lut.init = 16'hdede;
    LUT4 i1_2_lut_rep_188_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14679)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_188_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i13474_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n14968)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i13474_then_3_lut.init = 16'h6161;
    LUT4 i13474_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n14967)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A ((C)+!B))) */ ;
    defparam i13474_else_3_lut.init = 16'h0686;
    LUT4 n1243_bdd_2_lut_4_lut (.A(rom_addr[2]), .B(n14818), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n13942)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/char_ram.v(8[3] 4110[10])
    defparam n1243_bdd_2_lut_4_lut.init = 16'h8400;
    LUT4 i7839_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_771)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i7839_3_lut_3_lut_4_lut.init = 16'hf010;
    PFUMX i13826 (.BLUT(n5334), .ALUT(n14463), .C0(rom_addr[6]), .Z(n14464));
    PFUMX i13807 (.BLUT(n14443), .ALUT(n14440), .C0(rom_addr[6]), .Z(n14444));
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_757)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    PFUMX i13805 (.BLUT(n14694), .ALUT(n14441), .C0(rom_addr[4]), .Z(n14442));
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1612)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h01a0;
    PFUMX i12290 (.BLUT(n2268_adj_753), .ALUT(n2299_adj_705), .C0(rom_addr[5]), 
          .Z(n12936));
    PFUMX i13193 (.BLUT(n13594), .ALUT(n13593), .C0(rom_addr[4]), .Z(n13595));
    PFUMX i13298 (.BLUT(n13745), .ALUT(n2427), .C0(rom_addr[6]), .Z(n13746));
    PFUMX i12291 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n12937));
    PFUMX i12292 (.BLUT(n6811), .ALUT(n2427_adj_579), .C0(rom_addr[5]), 
          .Z(n12938));
    PFUMX i12293 (.BLUT(n2460), .ALUT(n2491_adj_577), .C0(rom_addr[5]), 
          .Z(n12939));
    L6MUX21 i13785 (.D0(n14413), .D1(n14411), .SD(rom_addr[5]), .Z(n14414));
    PFUMX i13783 (.BLUT(n14412), .ALUT(n14857), .C0(rom_addr[3]), .Z(n14413));
    PFUMX i13973 (.BLUT(n14900), .ALUT(n14901), .C0(rom_addr[0]), .Z(n14902));
    PFUMX i12294 (.BLUT(n2523_adj_681), .ALUT(n2554_adj_624), .C0(rom_addr[5]), 
          .Z(n12940));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n475_adj_723)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h3310;
    PFUMX i12307 (.BLUT(n12951), .ALUT(n12952), .C0(rom_addr[5]), .Z(n12953));
    PFUMX i12310 (.BLUT(n1436), .ALUT(n1467_adj_655), .C0(rom_addr[5]), 
          .Z(n12956));
    LUT4 i12818_3_lut (.A(n13571), .B(n1659_adj_779), .C(rom_addr[5]), 
         .Z(n13077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12818_3_lut.init = 16'hcaca;
    PFUMX i12311 (.BLUT(n1499_adj_610), .ALUT(n1530_adj_607), .C0(rom_addr[5]), 
          .Z(n12957));
    PFUMX i12317 (.BLUT(n12961), .ALUT(n12962), .C0(rom_addr[5]), .Z(n2237_adj_722));
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_778)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    PFUMX i12350 (.BLUT(n1628_adj_692), .ALUT(n3313), .C0(rom_addr[5]), 
          .Z(n12996));
    LUT4 i5920_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i5920_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i12351 (.BLUT(n1692_adj_595), .ALUT(n1723_adj_647), .C0(rom_addr[5]), 
          .Z(n12997));
    PFUMX i12352 (.BLUT(n1755_adj_621), .ALUT(n1786_adj_640), .C0(rom_addr[5]), 
          .Z(n12998));
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (\ascii_num[0] , sys_clk_50MHz, debug_led1_c_5, 
            cnt1, \state_3__N_379[1] , n5, \end_y_8__N_324[4] , n6965, 
            \ascii_num[3] , sys_clk_50MHz_enable_30, \end_x_8__N_306[7] , 
            \end_x_8__N_306[6] , \end_x_8__N_306[5] , \ascii_num[6] , 
            \end_x_8__N_306[4] , \end_y_8__N_324[5] , \ascii_num[1] , 
            \ascii_num[2] , \ascii_num[4] , debug_led2_c_3, \end_x_8__N_306[3] ) /* synthesis syn_module_defined=1 */ ;
    output \ascii_num[0] ;
    input sys_clk_50MHz;
    input debug_led1_c_5;
    output [1:0]cnt1;
    output \state_3__N_379[1] ;
    input n5;
    output \end_y_8__N_324[4] ;
    input n6965;
    output \ascii_num[3] ;
    input sys_clk_50MHz_enable_30;
    output \end_x_8__N_306[7] ;
    output \end_x_8__N_306[6] ;
    output \end_x_8__N_306[5] ;
    output \ascii_num[6] ;
    output \end_x_8__N_306[4] ;
    output \end_y_8__N_324[5] ;
    output \ascii_num[1] ;
    output \ascii_num[2] ;
    output \ascii_num[4] ;
    input debug_led2_c_3;
    output \end_x_8__N_306[3] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire debug_led2_c_3 /* synthesis SET_AS_NETWORK=debug_led2_c_3, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/lcd_show_char.v(62[17:22])
    wire [6:0]ascii_num_6__N_526;
    wire [8:0]start_y_8__N_542;
    
    wire show_char_flag_N_551;
    wire [31:0]n259;
    
    wire cnt_ascii_num_4__N_525, n6959;
    wire [1:0]n1;
    
    wire sys_clk_50MHz_enable_50;
    wire [8:0]start_x_8__N_533;
    
    wire n6673, n12308, n6600, n12311, n12180;
    wire [5:0]n1579;
    
    wire n2920, n14640, n14786, n7, n14707, n14787, n14875, n14877, 
        n14483, n14656, n14795, n14802, n6, n14796, n6_adj_552;
    wire [3:0]n1541;
    
    wire n14876, n6007, n14878, n14731, n8835, n1153, n14798, 
        n14096, n14095, n14484, n2877, n2941;
    wire [4:0]n1573;
    
    wire n14823;
    
    FD1P3AX ascii_num__i1 (.D(ascii_num_6__N_526[0]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_379[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(start_y_8__N_542[4]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_y_8__N_324[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(209[10] 234[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX show_char_flag_40 (.D(show_char_flag_N_551), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_379[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_40.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i0 (.D(n6959), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_525), 
            .Q(n259[0]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i0.GSR = "ENABLED";
    FD1P3AX ascii_num__i4 (.D(ascii_num_6__N_526[3]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n1[1]), .SP(sys_clk_50MHz_enable_30), .CD(\state_3__N_379[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i19 (.D(n259[18]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_525));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i19.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i18 (.D(n259[17]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[18]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i18.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i17 (.D(n259[16]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[17]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i17.GSR = "ENABLED";
    FD1S3IX start_x__i5 (.D(start_x_8__N_533[7]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_x_8__N_306[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i16 (.D(n259[15]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[16]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i16.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i15 (.D(n259[14]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[15]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i14 (.D(n259[13]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[14]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i13 (.D(n259[12]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[13]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i12 (.D(n259[11]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[12]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i11 (.D(n259[10]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[11]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i10 (.D(n259[9]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[10]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i9 (.D(n259[8]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[9]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i9.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(start_x_8__N_533[6]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_x_8__N_306[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i8 (.D(n259[7]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[8]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n259[6]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[7]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n259[5]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[6]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n259[4]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[5]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n259[3]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[4]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n259[2]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[3]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n259[1]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[2]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i1 (.D(n259[0]), .SP(sys_clk_50MHz_enable_50), 
            .CD(cnt_ascii_num_4__N_525), .CK(sys_clk_50MHz), .Q(n259[1]));   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    FD1S3IX start_x__i3 (.D(start_x_8__N_533[5]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_x_8__N_306[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i3.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n6673), .B(n12308), .C(n6600), .D(n12311), .Z(n12180)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3AX ascii_num__i6 (.D(ascii_num_6__N_526[6]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(start_x_8__N_533[4]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_x_8__N_306[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i2.GSR = "ENABLED";
    FD1S3IX start_y__i2 (.D(start_y_8__N_542[5]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_y_8__N_324[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(209[10] 234[24])
    defparam start_y__i2.GSR = "ENABLED";
    FD1P3AX ascii_num__i2 (.D(ascii_num_6__N_526[1]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    FD1P3AX ascii_num__i3 (.D(ascii_num_6__N_526[2]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3AX ascii_num__i5 (.D(ascii_num_6__N_526[4]), .SP(debug_led1_c_5), 
            .CK(sys_clk_50MHz), .Q(\ascii_num[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(91[10] 114[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    LUT4 mux_836_i4_4_lut (.A(n1579[3]), .B(n2920), .C(n14640), .D(n14786), 
         .Z(ascii_num_6__N_526[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam mux_836_i4_4_lut.init = 16'h0aca;
    LUT4 i7396_2_lut (.A(cnt_ascii_num_4__N_525), .B(n259[18]), .Z(n1579[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i7396_2_lut.init = 16'h4444;
    LUT4 i1037_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(66[17:28])
    defparam i1037_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(n7), .B(n14707), .C(n259[5]), .D(n259[4]), .Z(start_x_8__N_533[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(n259[14]), .B(n259[3]), .C(n259[6]), .D(n259[11]), 
         .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 n6673_bdd_4_lut (.A(n6673), .B(n14787), .C(n14875), .D(n14877), 
         .Z(n14483)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam n6673_bdd_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_4_lut (.A(n259[18]), .B(n14656), .C(n14707), .D(n12180), 
         .Z(start_y_8__N_542[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(n259[18]), .B(n14656), .C(n259[5]), 
         .D(n12308), .Z(start_x_8__N_533[6])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i4_4_lut_adj_11 (.A(n259[1]), .B(n14795), .C(n14802), .D(n6), 
         .Z(start_x_8__N_533[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_11.init = 16'hfffe;
    LUT4 i7554_2_lut_3_lut_4_lut (.A(n259[0]), .B(n14795), .C(n14796), 
         .D(n12180), .Z(ascii_num_6__N_526[6])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i7554_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n259[0]), .B(n14795), .C(n259[12]), 
         .D(n259[4]), .Z(n6_adj_552)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_12 (.A(n259[15]), .B(n14802), .C(n6600), .D(n259[18]), 
         .Z(start_y_8__N_542[5])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_12.init = 16'hfffe;
    LUT4 i5151_4_lut_4_lut (.A(n14877), .B(n14787), .C(n1541[2]), .D(n14876), 
         .Z(n6007)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i5151_4_lut_4_lut.init = 16'hff10;
    LUT4 i2084_4_lut_4_lut (.A(n259[11]), .B(n14878), .C(n14731), .D(n8835), 
         .Z(n2920)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i2084_4_lut_4_lut.init = 16'h3233;
    LUT4 i573_2_lut_3_lut_4_lut (.A(n259[11]), .B(n14878), .C(n14876), 
         .D(n14877), .Z(n1153)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i573_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n259[1]), .B(n259[3]), .Z(n12308)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(n259[13]), .B(n259[14]), .C(n259[12]), .Z(n6600)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_13 (.A(n259[11]), .B(n259[7]), .Z(n12311)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'heeee;
    PFUMX mux_836_i3 (.BLUT(n1579[2]), .ALUT(n6007), .C0(n14640), .Z(ascii_num_6__N_526[2]));
    LUT4 i1_2_lut_rep_304 (.A(n259[2]), .B(n259[6]), .Z(n14795)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_304.init = 16'heeee;
    LUT4 i1_2_lut_rep_149_3_lut_4_lut (.A(n259[2]), .B(n259[6]), .C(n12180), 
         .D(n259[0]), .Z(n14640)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_149_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_165_3_lut_4_lut (.A(n259[2]), .B(n259[6]), .C(n259[4]), 
         .D(n259[0]), .Z(n14656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_165_3_lut_4_lut.init = 16'hfffe;
    LUT4 i569_2_lut_rep_305 (.A(n259[18]), .B(cnt_ascii_num_4__N_525), .Z(n14796)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i569_2_lut_rep_305.init = 16'heeee;
    LUT4 i19_2_lut_rep_306 (.A(debug_led1_c_5), .B(debug_led2_c_3), .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(83[13:40])
    defparam i19_2_lut_rep_306.init = 16'h8888;
    LUT4 i6082_2_lut_3_lut (.A(debug_led1_c_5), .B(debug_led2_c_3), .C(n259[0]), 
         .Z(n6959)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(83[13:40])
    defparam i6082_2_lut_3_lut.init = 16'h7070;
    LUT4 reduce_or_710_i5_2_lut_rep_307 (.A(n259[15]), .B(n259[17]), .Z(n14798)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_710_i5_2_lut_rep_307.init = 16'heeee;
    LUT4 i7980_2_lut_3_lut_4_lut (.A(n259[15]), .B(n259[17]), .C(cnt_ascii_num_4__N_525), 
         .D(n259[18]), .Z(n1579[2])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7980_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 n774_bdd_3_lut_4_lut (.A(n259[15]), .B(n259[17]), .C(n259[18]), 
         .D(cnt_ascii_num_4__N_525), .Z(n14096)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam n774_bdd_3_lut_4_lut.init = 16'h00f1;
    LUT4 i3_2_lut_rep_311 (.A(n259[16]), .B(n259[17]), .Z(n14802)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut_rep_311.init = 16'heeee;
    LUT4 i1_2_lut_rep_216_3_lut (.A(n259[16]), .B(n259[17]), .C(n259[15]), 
         .Z(n14707)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_216_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_14 (.A(n14798), .B(n259[10]), .C(n259[8]), .D(n6_adj_552), 
         .Z(start_x_8__N_533[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_14.init = 16'hfffe;
    PFUMX i13523 (.BLUT(n14096), .ALUT(n14095), .C0(n14640), .Z(ascii_num_6__N_526[4]));
    LUT4 i1_2_lut_rep_384 (.A(n259[7]), .B(n259[1]), .Z(n14875)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_384.init = 16'heeee;
    LUT4 i7967_2_lut_3_lut (.A(n259[7]), .B(n259[1]), .C(n259[8]), .Z(n8835)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i7967_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_385 (.A(n259[14]), .B(n259[2]), .Z(n14876)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_385.init = 16'heeee;
    LUT4 n14483_bdd_2_lut_3_lut (.A(n259[14]), .B(n259[2]), .C(n14483), 
         .Z(n14484)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam n14483_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i2044_3_lut_3_lut_4_lut (.A(n259[14]), .B(n259[2]), .C(n14878), 
         .D(n14877), .Z(n2877)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i2044_3_lut_3_lut_4_lut.init = 16'h1101;
    PFUMX mux_819_i1 (.BLUT(n2941), .ALUT(n2877), .C0(n1153), .Z(n1573[0]));
    LUT4 n774_bdd_3_lut_13522_4_lut (.A(n259[14]), .B(n259[2]), .C(n14877), 
         .D(n14878), .Z(n14095)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam n774_bdd_3_lut_13522_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_386 (.A(n259[13]), .B(n259[3]), .Z(n14877)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_386.init = 16'heeee;
    LUT4 i565_2_lut_rep_295_3_lut_4_lut (.A(n259[13]), .B(n259[3]), .C(n259[2]), 
         .D(n259[14]), .Z(n14786)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i565_2_lut_rep_295_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_387 (.A(n259[12]), .B(n259[0]), .Z(n14878)) /* synthesis lut_function=(A+(B)) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i1_2_lut_rep_387.init = 16'heeee;
    LUT4 i563_2_lut_rep_296_3_lut (.A(n259[12]), .B(n259[0]), .C(n259[11]), 
         .Z(n14787)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam i563_2_lut_rep_296_3_lut.init = 16'hfefe;
    FD1S3IX start_x__i1 (.D(start_x_8__N_533[3]), .CK(sys_clk_50MHz), .CD(n6965), 
            .Q(\end_x_8__N_306[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=152 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(179[10] 204[24])
    defparam start_x__i1.GSR = "ENABLED";
    LUT4 i2105_3_lut_4_lut_4_lut (.A(n259[8]), .B(n14875), .C(n14823), 
         .D(n259[5]), .Z(n2941)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(84[26:46])
    defparam i2105_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 mux_836_i1_4_lut (.A(n14798), .B(n1573[0]), .C(n14640), .D(n14796), 
         .Z(ascii_num_6__N_526[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(92[9] 114[16])
    defparam mux_836_i1_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_332 (.A(n259[10]), .B(n259[9]), .Z(n14823)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_332.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(n259[10]), .B(n259[9]), .C(n259[8]), 
         .D(n259[5]), .Z(n6673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'hfffe;
    LUT4 i1_2_lut_rep_240_3_lut (.A(n259[10]), .B(n259[9]), .C(n259[5]), 
         .Z(n14731)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_240_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_16 (.A(n259[10]), .B(n259[9]), .C(n259[8]), 
         .D(n12311), .Z(start_x_8__N_533[7])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_16.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(n259[10]), .B(n259[9]), .C(n259[13]), 
         .D(n259[5]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'hfffe;
    LUT4 i2103_2_lut_3_lut_4_lut (.A(n259[10]), .B(n259[9]), .C(n259[8]), 
         .D(n259[5]), .Z(n1541[2])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2103_2_lut_3_lut_4_lut.init = 16'hffef;
    PFUMX i13844 (.BLUT(n1579[3]), .ALUT(n14484), .C0(n14640), .Z(ascii_num_6__N_526[1]));
    LUT4 i13025_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_551)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/show_string_number_ctrl.v(73[13:24])
    defparam i13025_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module control
//

module control (\data[0] , sys_clk_50MHz, \state_3__N_36[1] , debug_led1_c_5, 
            lcd_dc_c_8, \data[7] , \data[6] , \data[5] , \data[4] , 
            \data[3] , \data[2] , \data[1] , init_data, show_char_data, 
            \state[2] , \state[4] , \state[1] , cnt_rom_prepare) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_36[1] ;
    input debug_led1_c_5;
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
    input \state[2] ;
    input \state[4] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=sys_clk_50MHz, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/spi_lcd.v(33[17:30])
    wire [8:0]data_8__N_84;
    
    wire en_write_N_106, n14395, n14394;
    
    FD1S3AX data_i0 (.D(data_8__N_84[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_106), .CK(sys_clk_50MHz), .Q(\state_3__N_36[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=98, LSE_RLINE=110 */ ;   // d:/codefield/verilog/diamond_design/spi_lcd/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    PFUMX i13768 (.BLUT(n14395), .ALUT(n14394), .C0(debug_led1_c_5), .Z(en_write_N_106));
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
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n14395)) /* synthesis lut_function=(A+(B)) */ ;
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
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n14394)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
    
endmodule
