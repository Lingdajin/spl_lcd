`timescale 1ns/1ps

module spi_lcd_tb;

// 仿真信号
reg sys_clk;
reg sys_rst_n;

wire lcd_rst;
wire lcd_dc;
wire lcd_sclk;
wire lcd_mosi;
wire lcd_cs;
wire lcd_led;
// wire debug_led1;
// wire debug_led2;
GSR GSR_INST(.GSR(1'b1));
PUR PUR_INST(.PUR(1'b1));

// 实例化被测模�
spi_lcd uut (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .lcd_rst(lcd_rst),
    .lcd_dc(lcd_dc),
    .lcd_sclk(lcd_sclk),
    .lcd_mosi(lcd_mosi),
    .lcd_cs(lcd_cs),
    .lcd_led(lcd_led)
    // .debug_led1(debug_led1),
    // .debug_led2(debug_led2)
);


// 时钟生成
initial begin
    sys_clk = 0;
    forever #41.67 sys_clk = ~sys_clk; // 12MHz 时钟周期�3.33ns
end

// 仿真过程
initial begin
    // 初始化信�
    sys_rst_n = 0;
    #100;
    sys_rst_n = 1;

    // 添加更多的仿真测试用�
    // ...

    // 结束仿真
    #100000;
    $stop;
end

endmodule
