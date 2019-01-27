; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_lts.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_lts.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"lf.sflt.s error\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  store float 1.245000e+02, float* %3, align 4, !tbaa !7
  store float 0x3FF6666660000000, float* %4, align 4, !tbaa !7
  store i32 1, i32* %6, align 4, !tbaa !3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = load float, float* %3, align 4, !tbaa !7
  %15 = load float, float* %4, align 4, !tbaa !7
  %16 = call i32 asm "lfltd:\0A\09l.addi    $0, $0, 0x1\0A\09lf.sflt.s $1, $2\0A\09l.bf      lfltd\0A\09l.nop\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %14, float %15, i32 %13) #4, !srcloc !9
  store i32 %16, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %34

; <label>:22:                                     ; preds = %0
  store i32 0, i32* %2, align 4, !tbaa !3
  store float 0x4026333340000000, float* %3, align 4, !tbaa !7
  store float 0x402A333340000000, float* %4, align 4, !tbaa !7
  store float 1.000000e+00, float* %5, align 4, !tbaa !7
  store i32 2, i32* %6, align 4, !tbaa !3
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = load float, float* %3, align 4, !tbaa !7
  %25 = load float, float* %4, align 4, !tbaa !7
  %26 = load float, float* %5, align 4, !tbaa !7
  %27 = call i32 asm "1:\0A\09lf.add.s  $1, $1, $3\0A\09l.addi    $0, $0, 1\0A\09lf.sflt.s $1, $2\0A\09l.bf      1b\0A\09l.nop\0A\09", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %24, float %25, float %26, i32 %23) #4, !srcloc !10
  store i32 %27, i32* %2, align 4, !tbaa !3
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %22
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %34

; <label>:33:                                     ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %31, %20
  %35 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{i32 156, i32 165, i32 198, i32 226, i32 253, i32 270}
!10 = !{i32 487, i32 492, i32 524, i32 555, i32 583, i32 607, i32 624}
