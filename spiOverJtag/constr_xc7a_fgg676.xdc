set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH {4} [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVTTL} [get_ports {csn}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVTTL} [get_ports {sdi_dq0}]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVTTL} [get_ports {sdo_dq1}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVTTL} [get_ports {wpn_dq2}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVTTL} [get_ports {hldn_dq3}]

create_clock -period 33.000 -name jtag_tck -waveform {0.000 16.500} [get_pins {bscane2_inst/DRCK}]
create_clock -period 33.000 -name vers_tck -waveform {0.000 16.500} [get_pins {bscane2_version/DRCK}]
