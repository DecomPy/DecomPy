; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_nes.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_nes.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [16 x i8] c"lf.sfne.s error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"lf.sfne.s error\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  store float 0x40371999A0000000, float* %3, align 4, !tbaa !7
  store float 0x40371999A0000000, float* %4, align 4, !tbaa !7
  store i32 1, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load float, float* %3, align 4, !tbaa !7
  %13 = load float, float* %4, align 4, !tbaa !7
  %14 = call i32 asm "lfnes:\0A\09l.addi    $0, $0, 0x1\0A\09lf.sfne.s $1, $2\0A\09l.bf      lfnes\0A\09l.nop\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %12, float %13, i32 %11) #4, !srcloc !9
  store i32 %14, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %0
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %31

; <label>:20:                                     ; preds = %0
  store float 0x4028CCCCC0000000, float* %3, align 4, !tbaa !7
  store float 0x401F333340000000, float* %4, align 4, !tbaa !7
  store i32 3, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = load float, float* %3, align 4, !tbaa !7
  %23 = load float, float* %4, align 4, !tbaa !7
  %24 = call i32 asm "l.addi    $0, $0, 0x1\0A\09l.addi    $0, $0, 0x1\0A\09lf.sfne.s $1, $2\0A\09l.bf      1f\0A\09l.nop\0A\09l.addi    $0, $0, 0x1\0A\09l.addi    $0, $0, 0x1\0A\091:\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %22, float %23, i32 %21) #4, !srcloc !10
  store i32 %24, i32* %2, align 4, !tbaa !3
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %20
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %31

; <label>:30:                                     ; preds = %20
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %28, %18
  %32 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = load i32, i32* %1, align 4
  ret i32 %36
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
!9 = !{i32 155, i32 164, i32 197, i32 225, i32 252, i32 269}
!10 = !{i32 461, i32 485, i32 518, i32 546, i32 570, i32 587, i32 620, i32 653, i32 667}
