//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
// Author：redstonebook
// File name: lcd_init
// Last modified Date: 2021/03/05 
// Last Version: V1.0
// Descriptions: lcd的初始化
// P143--CS
// P141--RESET
// P137--DC
// P135--MOSI
// P132--SCK
// P128--LED
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_init
// #(//仿真时调用
//     parameter   TIME100MS    = 23'd100,  //23'd5000_000  
//                 TIME150MS    = 23'd150,  //23'd7500_000  
//                 TIME120MS    = 23'd120,  //23'd6000_000  
//                 TIMES4MAX    = 18'd51 ,  //320*240*2+13（设置窗口大小）=153_613 
//                 DATA_IDLE    = 9'b0_0000_0000
// )
#(//驱动lcd时调用
    parameter   TIME100MS    = 23'd5000_000,  //23'd5000_000  
                TIME150MS    = 23'd7500_000,  //23'd7500_000  
                TIME120MS    = 23'd6000_000,  //23'd6000_000  
                TIMES4MAX    = 18'd153_613 ,  //320*240*2+13（设置窗口大小）=153_613   
                DATA_IDLE    = 9'b0_0000_0000
)
(
    input   wire            sys_clk_50MHz ,
    input   wire            sys_rst_n     ,
    input   wire            wr_done       ,
    
    
    output  reg             lcd_rst       ,
    output  reg     [8:0]   init_data     ,
    output  wire            en_write      ,
    output  wire            init_done
);
//****************** Parameter and Internal Signal *******************//
//画笔颜色
parameter   WHITE   = 16'hFFFF,
            BLACK   = 16'h0000,	  
            BLUE    = 16'h001F,  
            BRED    = 16'hF81F,
            GRED 	= 16'hFFE0,
            GBLUE	= 16'h07FF,
            RED     = 16'hF800,
            MAGENTA = 16'hF81F,
            GREEN   = 16'h07E0,
            CYAN    = 16'h7FFF,
            YELLOW  = 16'hFFE0,
            BROWN 	= 16'hBC40, //棕色
            BRRED 	= 16'hFC07, //棕红色
            GRAY  	= 16'h8430; //灰色

//----------------------------------------------------------------- 
reg [5:0]   state;
parameter   S0_DELAY100MS         = 6'b000_001, 
            S1_DELAY50MS          = 6'b000_010,
            S2_WR_90              = 6'b000_100,
            S3_DELAY120MS         = 6'b001_000,
            S4_WR_DIRECTION_CLEAR = 6'b010_000,
            DONE                  = 6'b100_000;
            
reg [22:0]  cnt_150ms;
reg         lcd_rst_high_flag;
reg [6:0]   cnt_s2_num;
reg         cnt_s2_num_done; 
reg [17:0]  cnt_s4_num;
reg         cnt_s4_num_done;   

//----------------------------------------------------------------- 
//状态跳转            
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        state <= S0_DELAY100MS;
    else
        case(state)
            S0_DELAY100MS:
                state <= (cnt_150ms == TIME100MS) ? S1_DELAY50MS : S0_DELAY100MS;
            S1_DELAY50MS:
                state <= (cnt_150ms == TIME150MS) ? S2_WR_90 : S1_DELAY50MS;
            S2_WR_90:
                state <= (cnt_s2_num_done) ? S3_DELAY120MS : S2_WR_90;
            S3_DELAY120MS:
                state <= (cnt_150ms == TIME120MS) ? S4_WR_DIRECTION_CLEAR : S3_DELAY120MS; 
            S4_WR_DIRECTION_CLEAR:
                state <= (cnt_s4_num_done) ? DONE : S4_WR_DIRECTION_CLEAR;
            DONE:
                state <= DONE;
            default:
                state <= S0_DELAY100MS;
        endcase

//cnt_150ms
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_150ms <= 23'd0;
    else if(state == S0_DELAY100MS || state == S1_DELAY50MS || state == S3_DELAY120MS )
        cnt_150ms <= cnt_150ms + 1'b1;
    else
        cnt_150ms <= 23'd0;
        
//lcd_rst_high_flag
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        lcd_rst_high_flag <= 1'b0;
    else if(state == S0_DELAY100MS && (cnt_150ms == TIME100MS - 1'b1))
        lcd_rst_high_flag <= 1'b1;
    else
        lcd_rst_high_flag <= 1'b0;

//lcd_rst
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        lcd_rst <= 1'b0;
    else if(lcd_rst_high_flag)
        lcd_rst <= 1'b1;
    else
        lcd_rst <= lcd_rst;
//----------------------------------------------------------------- 
//cnt_s2_num决定要传的命令/数据
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_s2_num <= 7'd0;
    else if(state != S2_WR_90)
        cnt_s2_num <= 7'd0;
    else if(wr_done && state == S2_WR_90)
        cnt_s2_num <= cnt_s2_num + 1'b1;
    else
        cnt_s2_num <= cnt_s2_num;

//cnt_s2_num_done == 1'b1则S2_WR_90完成
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_s2_num_done <= 1'b0;
    else if(cnt_s2_num == 7'd89 && wr_done == 1'b1)
        cnt_s2_num_done <= 1'b1;
    else
        cnt_s2_num_done <= 1'b0;
        
//init_data[8:0]
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        init_data <= DATA_IDLE;
    else if(state == S2_WR_90)
        //初始化命令/数据，直接借用厂家的
        case(cnt_s2_num)    //init_data[8] == 1'b1写数据； == 1'b0写命令
            	7'd0:  init_data <= 9'h011 ;
            7'd1:  init_data <= 9'h036 ;
				7'd2:  init_data <= 9'h100 ;   //竖屏显示
            //7'd2 :  init_data <= 9'h1a0;     //横屏显示

            7'd3 :  init_data <= 9'h03a ; 
            7'd4 :  init_data <= 9'h105 ;                        
            7'd5 :  init_data <= 9'h0b2 ;                        
            7'd6 :  init_data <= 9'h10c ;                        
            7'd7 :  init_data <= 9'h10c ;  
            7'd8 :  init_data <= 9'h100 ;                        
            7'd9 :  init_data <= 9'h133 ;                        
            7'd10 :  init_data <= 9'h133 ;                        
            7'd11 :  init_data <= 9'h0b7 ;                        
            7'd12 :  init_data <= 9'h135 ;  
            7'd13:  init_data <= 9'h0bb ;                        
            7'd14:  init_data <= 9'h132 ;                        
            7'd15:  init_data <= 9'h0c2 ;                        
            7'd16:  init_data <= 9'h101 ;  
            7'd17:  init_data <= 9'h0c3 ;                        
            7'd18:  init_data <= 9'h115 ;                        
            7'd19:  init_data <= 9'h0c4 ;                        
            7'd20:  init_data <= 9'h120 ;                        
            7'd21:  init_data <= 9'h0c6 ;                        
            7'd22:  init_data <= 9'h10f ;	
            7'd23:  init_data <= 9'h0d0 ;                        
            7'd24:  init_data <= 9'h1a4 ;  
            7'd25:  init_data <= 9'h1a1 ;                        
            7'd26:  init_data <= 9'h0e0 ;                        
            7'd27:  init_data <= 9'h1d0 ;  
            7'd28:  init_data <= 9'h108 ;                        
            7'd29:  init_data <= 9'h10e ;  
            7'd30:  init_data <= 9'h109 ;                        
            7'd31:  init_data <= 9'h109 ;  
            7'd32:  init_data <= 9'h105 ;                        
            7'd33:  init_data <= 9'h131 ;                        
            7'd34:  init_data <= 9'h133 ;  
            7'd35:  init_data <= 9'h148 ;                        
            7'd36:  init_data <= 9'h117 ;  
            7'd37:  init_data <= 9'h114 ;                        
            7'd38:  init_data <= 9'h115 ;				
            7'd39:  init_data <= 9'h131 ;                        
            7'd40:  init_data <= 9'h134 ;  
            7'd41:  init_data <= 9'h0e1 ;                        
            7'd42:  init_data <= 9'h1d0 ;                        
            7'd43:  init_data <= 9'h108 ;  
            7'd44:  init_data <= 9'h10e ;                        
            7'd45:  init_data <= 9'h109 ;                        
            7'd46:  init_data <= 9'h109 ;  
            7'd47:  init_data <= 9'h115 ;                        
            7'd48:  init_data <= 9'h131 ;  
            7'd49:  init_data <= 9'h133 ;                        
            7'd50:  init_data <= 9'h148 ;  
            7'd51:  init_data <= 9'h117 ;                        
            7'd52:  init_data <= 9'h114 ;                        
            7'd53:  init_data <= 9'h115 ;                        
            7'd54:  init_data <= 9'h131 ;                        
            7'd55:  init_data <= 9'h134 ;                        
            7'd56:  init_data <= 9'h021 ;                        
            7'd57:  init_data <= 9'h029 ;
            default: init_data <= DATA_IDLE;
        endcase
        
    else if(state == S4_WR_DIRECTION_CLEAR)
        case(cnt_s4_num)
            'd0 :  init_data <= 9'h029;
            //设置LCD显示方向
            'd1 :  init_data <= 9'h036;
            'd2 :  init_data <= 9'h100;   //竖屏显示
            //'d2 :  init_data <= 9'h1a0;     //横屏显示
            
            //LCD显示窗口设置
            'd3 :  init_data <= 9'h02a;
                             
            'd4 :  init_data <= 9'h100;
            'd5 :  init_data <= 9'h100;
            'd6 :  init_data <= 9'h100;
            'd7 :  init_data <= 9'h1ef;
                             
            'd8 :  init_data <= 9'h02b;
                             
            'd9 :  init_data <= 9'h100;
            'd10:  init_data <= 9'h100;
            'd11:  init_data <= 9'h101;
            'd12:  init_data <= 9'h13f;
                             
            'd13:  init_data <= 9'h02c;
            
            //填充对应点的颜色
            default : 
                //当cnt_s4_num大于14且为偶数时，传输颜色数据的高8位
                if(cnt_s4_num >= 'd14 && cnt_s4_num[0] == 0)
                    init_data <= {1'b1,WHITE[15:8]};
                //当cnt_s4_num大于14且为奇数时，传输颜色数据的低8位
                else if(cnt_s4_num >= 'd14 && cnt_s4_num[0] == 1)
                    init_data <= {1'b1,WHITE[7:0]};
                else
                    init_data <= DATA_IDLE;
        endcase
    else
        init_data <= DATA_IDLE;

//cnt_s4_num决定要传的命令/数据
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_s4_num <= 18'd0;
    else if(state != S4_WR_DIRECTION_CLEAR)
        cnt_s4_num <= 18'd0;
    else if(wr_done && state == S4_WR_DIRECTION_CLEAR)
        cnt_s4_num <= cnt_s4_num + 1'b1;
    else                   
        cnt_s4_num <= cnt_s4_num;

//cnt_s4_num_done
always@(posedge sys_clk_50MHz or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_s4_num_done <= 1'b0;
    else if(cnt_s4_num == TIMES4MAX && wr_done == 1'b1)
        cnt_s4_num_done <= 1'b1;
    else
        cnt_s4_num_done <= 1'b0;  
        
assign en_write = (state == S2_WR_90 || state == S4_WR_DIRECTION_CLEAR) ? 1'b1 : 1'b0;      

assign init_done = (state == DONE) ? 1'b1 : 1'b0;        
        
endmodule