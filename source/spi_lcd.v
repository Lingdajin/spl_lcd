//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
// Author：redstonebook
// File name: spi_lcd
// Last modified Date: 2021/03/05 
// Last Version: V1.0
// Descriptions: lcd的顶层模块
// P143--CS
// P141--RESET
// P137--DC
// P135--MOSI
// P132--SCK
// P128--LED
// PIN_91、PIN_90、PIN_ 89 和 PIN_88 引脚分别对应控制按键 K1~K4
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  spi_lcd
(
    input           sys_clk ,
    input           sys_rst_n     ,
    
    output          lcd_rst       ,
    output          lcd_dc        ,
    output          lcd_sclk      ,
    output          lcd_mosi      ,
    output          lcd_cs        ,
    output          lcd_led
);
wire            sys_clk_50MHz;
wire    [8:0]   data;   
wire            en_write;
wire            wr_done; 

wire    [8:0]   init_data;
wire            en_write_init;
wire            init_done;

wire            en_size            ;
wire            show_char_flag     ;
wire    [6:0]   ascii_num          ;
wire    [8:0]   start_x            ;
wire    [8:0]   start_y            ;

wire    [8:0]   show_char_data     ;
wire            en_write_show_char ;
wire            show_char_done     ;  

assign  lcd_led = 1'b1;  

pll pll_u1
(
    .CLKI( sys_clk ), 
    .CLKOP( sys_clk_50MHz )
);

lcd_write  lcd_write_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),
    .sys_rst_n    (sys_rst_n    ),
    .data         (data         ),
    .en_write     (en_write     ),
                                
    .wr_done      (wr_done      ),
    .cs           (lcd_cs       ),
    .dc           (lcd_dc       ),
    .sclk         (lcd_sclk     ),
    .mosi         (lcd_mosi     )
);

control  control_inst
(
    .sys_clk_50MHz          (sys_clk_50MHz       ), 
    .sys_rst_n              (sys_rst_n           ),
    .init_data              (init_data           ),
    .en_write_init          (en_write_init       ),
    .init_done              (init_done           ),
    .show_char_data         (show_char_data      ),
    .en_write_show_char     (en_write_show_char  ),

    .data                   (data                ),
    .en_write               (en_write            )
);

lcd_init  lcd_init_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),
    .sys_rst_n    (sys_rst_n    ),
    .wr_done      (wr_done      ),

    .lcd_rst      (lcd_rst      ),
    .init_data    (init_data    ),
    .en_write     (en_write_init),
    .init_done    (init_done    )
);

lcd_show_char  lcd_show_char_inst
(
    .sys_clk             (sys_clk_50MHz     ),
    .sys_rst_n           (sys_rst_n         ),
    .wr_done             (wr_done           ),
    .en_size             (en_size           ),
    .show_char_flag      (show_char_flag    ),   //显示字符标志信号
    .ascii_num           (ascii_num         ),   //需要显示字符的ascii码
    .start_x             (start_x           ),   //起点的x坐标    
    .start_y             (start_y           ),   //起点的y坐标    

    .show_char_data      (show_char_data    ),   //传输的命令或者数据
    .en_write_show_char  (en_write_show_char),   //使能写spi信号
    .show_char_done      (show_char_done    )    //显示字符完成标志信号
);

show_string_number_ctrl  show_string_number_ctrl_inst
(
    .sys_clk             (sys_clk_50MHz ),
    .sys_rst_n           (sys_rst_n     ),
    .init_done           (init_done     ),
    .show_char_done      (show_char_done),
 
    .en_size             (en_size       ), 
    .show_char_flag      (show_char_flag),
    .ascii_num           (ascii_num     ),
    .start_x             (start_x       ),
    .start_y             (start_y       )
);

endmodule