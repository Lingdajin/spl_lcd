//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
// Author£ºredstonebook
// File name: control
// Last modified Date: 2021/03/07
// Last Version: V1.0
// Descriptions: 
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
module  control
(
    input   wire             sys_clk_50MHz       ,   
    input   wire             sys_rst_n           ,
    input   wire     [8:0]   init_data           ,
    input   wire             en_write_init       ,
    input   wire             init_done           ,
    input   wire     [8:0]   show_char_data      ,
    input   wire             en_write_show_char  ,
    
    output  reg      [8:0]   data                ,
    output  reg              en_write      
);

always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        data <= 'd0;
    else if(init_done == 1'b0)
        data <= init_data;
    else if(init_done == 1'b1)
        data <= show_char_data;
    else
        data <= data;

always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        en_write <= 'd0;
    else if(init_done == 1'b0)
        en_write <= en_write_init ;
    else if(init_done == 1'b1)
        en_write <= en_write_show_char;
    else
        en_write <= en_write;
        
endmodule