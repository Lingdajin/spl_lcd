//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
// Author：redstonebook
// File name: show_string_number_ctrl
// Last modified Date: 2022/04/15
// Last Version: V1.0
// Descriptions: 控制字符串的显示
//----------------------------------------------------------------------------------------
//****************************************************************************************//
/*
在屏幕上显示字符串
第一行中间显示“redstonebook”共12个字符；
第二行为空；
第三行最左边显示“rxdata:”共7个字符； 
cnt1  字符  ascii码
0     r     82
1     e     69
2     d     68
3     s     83
4     t     84
5     o     79
6     n     78
7     e     69
8     b     66
9     o     79
10    o     79
11    k     75

12    r     82
13    x     83
14    d     68
15    a     65
16    t     84
17    a     65
18    :     26
*/

module show_string_number_ctrl
(
    input       wire            sys_clk             ,
    input       wire            sys_rst_n           ,
    input       wire            init_done           ,
    input       wire            show_char_done      ,
    
    output      wire            en_size             ,
    output      reg             show_char_flag      ,
    output      reg     [6:0]   ascii_num           ,
    output      reg     [8:0]   start_x             ,
    output      reg     [8:0]   start_y             
);      
//****************** Parameter and Internal Signal *******************//        
reg     [1:0]   cnt1;    

reg     [4:0]   cnt_ascii_num;

//******************************* Main Code **************************//
//en_size为1时调用字体大小为16x8，为0时调用字体大小为12x6；
assign  en_size = 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt1 <= 'd0;
    else if(show_char_flag)
        cnt1 <= 'd0;
    else if(init_done && cnt1 < 'd3)
        cnt1 <= cnt1 + 1'b1;
    else
        cnt1 <= cnt1;
        
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        show_char_flag <= 1'b0;
    else if(cnt1 == 'd2)
        show_char_flag <= 1'b1;
    else
        show_char_flag <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_ascii_num <= 'd0;
    else if(cnt_ascii_num == 18)
        cnt_ascii_num <= 'd0;
    else if(init_done && show_char_done)
        cnt_ascii_num <= cnt_ascii_num + 1'b1;
    else
        cnt_ascii_num <= cnt_ascii_num;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        ascii_num <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : ascii_num <= 'd82;
            1 : ascii_num <= 'd69;
            2 : ascii_num <= 'd68;
            3 : ascii_num <= 'd83;
            4 : ascii_num <= 'd84;
            5 : ascii_num <= 'd79;
            6 : ascii_num <= 'd78;
            7 : ascii_num <= 'd69;
            8 : ascii_num <= 'd66;
            9 : ascii_num <= 'd79;
            10: ascii_num <= 'd79;
            11: ascii_num <= 'd75;

            12: ascii_num <= 'd82;
            13: ascii_num <= 'd83;
            14: ascii_num <= 'd68;
            15: ascii_num <= 'd65;
            16: ascii_num <= 'd84;
            17: ascii_num <= 'd65;
            18: ascii_num <= 'd26;
            default: ascii_num <= 'd0;
        endcase

/* always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_x <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_x <= 'd78 ;
            1 : start_x <= 'd84 ;
            2 : start_x <= 'd90 ;
            3 : start_x <= 'd96 ;
            4 : start_x <= 'd102;
            5 : start_x <= 'd108;
            6 : start_x <= 'd114;
            7 : start_x <= 'd120;
            8 : start_x <= 'd126;
            9 : start_x <= 'd132;
            10: start_x <= 'd138;
            11: start_x <= 'd144;

            12: start_x <= 'd6 ;
            13: start_x <= 'd12;
            14: start_x <= 'd24;
            15: start_x <= 'd30;
            16: start_x <= 'd36;
            17: start_x <= 'd42;
            18: start_x <= 'd48;
            default: start_x <= 'd0;
        endcase
    else
        start_x <= 'd0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_y <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_y <= 'd12;
            1 : start_y <= 'd12;
            2 : start_y <= 'd12;
            3 : start_y <= 'd12;
            4 : start_y <= 'd12;
            5 : start_y <= 'd12;
            6 : start_y <= 'd12;
            7 : start_y <= 'd12;
            8 : start_y <= 'd12;
            9 : start_y <= 'd12;
            10: start_y <= 'd12;
            11: start_y <= 'd12;

            12: start_y <= 'd36;
            13: start_y <= 'd36;
            14: start_y <= 'd36;
            15: start_y <= 'd36;
            16: start_y <= 'd36;
            17: start_y <= 'd36;
            18: start_y <= 'd36;
            default: start_y <= 'd0;
        endcase
    else
        start_y <= 'd0; */

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_x <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_x <= 'd72 ;
            1 : start_x <= 'd80 ;
            2 : start_x <= 'd88 ;
            3 : start_x <= 'd96 ;
            4 : start_x <= 'd104;
            5 : start_x <= 'd112;
            6 : start_x <= 'd120;
            7 : start_x <= 'd128;
            8 : start_x <= 'd136;
            9 : start_x <= 'd144;
            10: start_x <= 'd152;
            11: start_x <= 'd160;

            12: start_x <= 'd8 ;
            13: start_x <= 'd16;
            14: start_x <= 'd32;
            15: start_x <= 'd40;
            16: start_x <= 'd48;
            17: start_x <= 'd56;
            18: start_x <= 'd64;
            default: start_x <= 'd0;
        endcase
    else
        start_x <= 'd0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_y <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_y <= 'd16;
            1 : start_y <= 'd16;
            2 : start_y <= 'd16;
            3 : start_y <= 'd16;
            4 : start_y <= 'd16;
            5 : start_y <= 'd16;
            6 : start_y <= 'd16;
            7 : start_y <= 'd16;
            8 : start_y <= 'd16;
            9 : start_y <= 'd16;
            10: start_y <= 'd16;
            11: start_y <= 'd16;

            12: start_y <= 'd48;
            13: start_y <= 'd48;
            14: start_y <= 'd48;
            15: start_y <= 'd48;
            16: start_y <= 'd48;
            17: start_y <= 'd48;
            18: start_y <= 'd48;
            default: start_y <= 'd0;
        endcase
    else
        start_y <= 'd0;

endmodule