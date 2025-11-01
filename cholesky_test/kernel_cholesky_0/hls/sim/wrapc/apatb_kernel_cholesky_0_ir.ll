; ModuleID = 'D:/Xillinx_Project/PROJECT/cholesky_test/kernel_cholesky_0/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" = type { %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" }
%"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" = type { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define i32 @apatb_kernel_cholesky_0_ir(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture nonnull dereferenceable(4) %matrixAStrm, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture nonnull dereferenceable(4) %matrixLStrm) local_unnamed_addr #1 {
entry:
  %matrixAStrm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i32* %matrixAStrm_copy, i32 0) ]
  %matrixLStrm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i32* %matrixLStrm_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* nonnull %matrixAStrm, i32* nonnull align 512 %matrixAStrm_copy, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* nonnull %matrixLStrm, i32* nonnull align 512 %matrixLStrm_copy)
  %0 = call i32 @apatb_kernel_cholesky_0_hw(i32* %matrixAStrm_copy, i32* %matrixLStrm_copy)
  call void @copy_back(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %matrixAStrm, i32* %matrixAStrm_copy, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %matrixLStrm, i32* %matrixLStrm_copy)
  ret i32 %0
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.609"(i32* align 512 %1, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.609"(i32* align 512 %3, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %2, i32* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.604"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.604"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture, i32* noalias nocapture align 512) unnamed_addr #5 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %9 = call { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>s.i32"(i32 %8)
  %newret = extractvalue { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } %9, 0
  %oldret1 = insertvalue %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" undef, %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } %9, 1
  %oldret3 = insertvalue %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" %oldret1, %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" undef, %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" %oldret3, 0
  store %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" %oldret, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %3
  %10 = bitcast %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>s.i32"(i32 %A) #6 {
  %1 = trunc i32 %A to i16
  %.0 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %1, 0
  %.01 = insertvalue %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.0, 0
  %.02 = insertvalue %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" %.01, 0
  %2 = lshr i32 %A, 16
  %3 = trunc i32 %2 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %3, 0
  %.05 = insertvalue %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.04, 0
  %.06 = insertvalue %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" %.05, 0
  %newret = insertvalue { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } undef, %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %.02, 0
  %newret2 = insertvalue { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } %newret, %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %.06, 1
  ret { %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>", %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" } %newret2
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.609"(i32* noalias align 512 %dst, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.612"(i32* nonnull align 512 %dst, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>.612"(i32* noalias nocapture align 512, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>", %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>s"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>s"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>" %A, 0
  %A.0.0 = extractvalue %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0 to i32
  %A.0.1 = extractvalue %"class.hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >" %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_fixed_base<16, 1, true, AP_RND_CONV, AP_WRAP, 0>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.1.0.0, 0
  %2 = zext i16 %A.0.1.0.0.0 to i32
  %3 = shl nuw i32 %2, 16
  %4 = or i32 %3, %1
  ret i32 %4
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @apatb_kernel_cholesky_0_hw(i32*, i32*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias, i32* noalias align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %2, i32* align 512 %3)
  ret void
}

declare i32 @kernel_cholesky_0_hw_stub(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture nonnull, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* noalias nocapture nonnull)

define i32 @kernel_cholesky_0_hw_stub_wrapper(i32*, i32*) #7 {
entry:
  %2 = call i8* @malloc(i64 4)
  %3 = bitcast i8* %2 to %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"*
  %4 = call i8* @malloc(i64 4)
  %5 = bitcast i8* %4 to %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"*
  call void @copy_out(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %3, i32* %0, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %5, i32* %1)
  %6 = call i32 @kernel_cholesky_0_hw_stub(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %3, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %5)
  call void @copy_in(%"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %3, i32* %0, %"class.hls::stream<hls::x_complex<ap_fixed<16, 1, AP_RND_CONV, AP_WRAP, 0> >, 0>"* %5, i32* %1)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret i32 %6
}

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { alwaysinline nounwind readnone willreturn }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
