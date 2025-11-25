set ModuleHierarchy {[{
"Name" : "mmult","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mmult_Pipeline_1_fu_1322","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Loop 1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_mmult_Pipeline_2_fu_1345","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Loop 1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_mmult_Pipeline_systolic1_fu_1368","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "systolic1","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_mmult_Pipeline_4_fu_1674","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Loop 1","ID" : "8","Type" : "pipeline"},]},]
}]}