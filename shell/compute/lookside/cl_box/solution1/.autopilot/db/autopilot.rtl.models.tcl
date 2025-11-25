set SynModuleInfo {
  {SRCNAME cl_box_Pipeline_1 MODELNAME cl_box_Pipeline_1 RTLNAME cl_box_cl_box_Pipeline_1
    SUBMODULES {
      {MODELNAME cl_box_flow_control_loop_pipe_sequential_init RTLNAME cl_box_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cl_box_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cl_box_Pipeline_VITIS_LOOP_22_1 MODELNAME cl_box_Pipeline_VITIS_LOOP_22_1 RTLNAME cl_box_cl_box_Pipeline_VITIS_LOOP_22_1}
  {SRCNAME cl_box MODELNAME cl_box RTLNAME cl_box IS_TOP 1
    SUBMODULES {
      {MODELNAME cl_box_cmd_array_RAM_AUTO_1R1W RTLNAME cl_box_cmd_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
