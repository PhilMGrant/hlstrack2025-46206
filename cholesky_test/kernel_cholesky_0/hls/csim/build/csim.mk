# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../solver/L1/tests/cholesky/host/test_cholesky.cpp ../../../../../solver/L1/tests/cholesky/kernel/kernel_cholesky_0.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vitis/2024.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vitis/2024.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -Wl,--stack,0x40000000
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --sysroot=D:/Xilinx/Vitis/2024.2/tps/mingw/10.0.0/win64.o/nt
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --sysroot=D:/Xilinx/Vitis/2024.2/tps/mingw/10.0.0/win64.o/nt



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test_cholesky.o: ../../../../../solver/L1/tests/cholesky/host/test_cholesky.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../../solver/L1/tests/cholesky/host/test_cholesky.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0 -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/host/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/kernel/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/include/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/include/hw -I../../../../../../host -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../../utils/L1/include/. -DMATRIX_DIM=3 -DMATRIX_LOWER_TRIANGULAR=0 -DSEL_ARCH=0 -D_DATA_PATH=D:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/datas/. -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_cholesky.d

$(ObjDir)/kernel_cholesky_0.o: ../../../../../solver/L1/tests/cholesky/kernel/kernel_cholesky_0.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../../solver/L1/tests/cholesky/kernel/kernel_cholesky_0.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0 -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/host/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/kernel/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/include/. -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/include/hw -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L2/include -ID:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../../utils/L1/include/. -DMATRIX_DIM=3 -DMATRIX_LOWER_TRIANGULAR=0 -DSEL_ARCH=0 -D_DATA_PATH=D:/Xillinx_Project/PROJECT/solver/L1/tests/cholesky/complex_fixed_arch0/../../../../L1/tests/cholesky/datas/.  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/kernel_cholesky_0.d
