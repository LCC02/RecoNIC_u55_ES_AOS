set SynModuleInfo {
  {SRCNAME mmult_Pipeline_1 MODELNAME mmult_Pipeline_1 RTLNAME mmult_mmult_Pipeline_1
    SUBMODULES {
      {MODELNAME mmult_flow_control_loop_pipe_sequential_init RTLNAME mmult_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mmult_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mmult_Pipeline_2 MODELNAME mmult_Pipeline_2 RTLNAME mmult_mmult_Pipeline_2}
  {SRCNAME mmult_Pipeline_systolic1 MODELNAME mmult_Pipeline_systolic1 RTLNAME mmult_mmult_Pipeline_systolic1
    SUBMODULES {
      {MODELNAME mmult_mul_32s_32s_32_2_1 RTLNAME mmult_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mmult_Pipeline_4 MODELNAME mmult_Pipeline_4 RTLNAME mmult_mmult_Pipeline_4
    SUBMODULES {
      {MODELNAME mmult_sparsemux_33_4_32_1_1 RTLNAME mmult_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME mmult MODELNAME mmult RTLNAME mmult IS_TOP 1
    SUBMODULES {
      {MODELNAME mmult_localA_RAM_AUTO_1R1W RTLNAME mmult_localA_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mmult_systolic_m_axi RTLNAME mmult_systolic_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
    }
  }
}
