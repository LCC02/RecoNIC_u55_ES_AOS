puts "Generating mcs file"
set root_dir [file normalize ..]
set script_dir ${root_dir}/script
set nic_dir ${root_dir}/base_nics/open-nic-shell
set default_bitstream ${nic_dir}/build/au55c/open_nic_shell/open_nic_shell.runs/impl_1/open_nic_shell.bit

set interface SPIx4
set start_address 0x01002000
set bit_file $default_bitstream 
set mcs_file "reconic_u55c.mcs"

write_cfgmem -format mcs -size 128 -interface $interface -loadbit "up $start_address $bit_file" -file "$mcs_file"