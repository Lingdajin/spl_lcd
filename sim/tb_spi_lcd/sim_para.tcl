lappend auto_path "D:/Program/Diamond/diamond/3.13/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {tb_spi_lcd}
set ::bali::simulation::Para(PROJECTPATH) {D:/CodeField/Verilog/Diamond_design/spi_lcd/sim}
set ::bali::simulation::Para(FILELIST) {"D:/CodeField/Verilog/Diamond_design/spi_lcd/source/show_string_number_ctrl.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/rom/rom_8x4096.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_show_char.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_init.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/control.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/lcd_write.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/pll/pll.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/spi_lcd.v" "D:/CodeField/Verilog/Diamond_design/spi_lcd/source/spi_lcd_tb.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(LANGSTDLIST) {"Verilog 2001" "" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "" "Verilog 2001" "Verilog 2001" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {spi_lcd_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {D:/Program/Diamond/diamond/3.13}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
