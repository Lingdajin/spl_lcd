lappend auto_path "D:/Program/Diamond/diamond/3.13/data/script"
package require tbdeclaration_generation

set ::bali::Para(MODNAME) pll
set ::bali::Para(PROJECT) spi_lcd
set ::bali::Para(PACKAGE) {"D:/Program/Diamond/diamond/3.13/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"D:/Program/Diamond/diamond/3.13/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(TFT) {"D:/Program/Diamond/diamond/3.13/data/templates/tfi_f.tft"}
set ::bali::Para(FILELIST) {"D:/CodeField/Verilog/Diamond_design/spi_lcd/source/spi_lcd.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/control.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_write.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_init.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_show_char.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/rom_8x4096.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/pll.v=work,Verilog_2001" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/show_string_number_ctrl.v=work,Verilog_2001" }
set ::bali::Para(INCLUDEPATH) {"D:/CodeField/Verilog/Diamond_design/spi_lcd/source" "D:/CodeField/Verilog/Diamond_design/spi_lcd" }
puts "set parameters done"
::bali::GenerateTbDeclaration
