set ModuleHierarchy {[{
"Name" : "kernel_cholesky_0","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_724_1_fu_44","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_724_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "row_loop","ID" : "4","Type" : "no",
		"SubLoops" : [
		{"Name" : "col_loop","ID" : "5","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_477","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "sum_loop","ID" : "7","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_kernel_cholesky_0_Pipeline_VITIS_LOOP_734_3_fu_62","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_734_3","ID" : "9","Type" : "pipeline"},]},]
}]}