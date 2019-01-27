; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_nes.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_nes.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [16 x i8] c"lf.sfne.s error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"lf.sfne.s error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store float 0x40371999A0000000, float* %3, align 4
  store float 0x40371999A0000000, float* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load float, float* %3, align 4
  %8 = load float, float* %4, align 4
  %9 = call i32 asm "lfnes:\0A\09l.addi    $0, $0, 0x1\0A\09lf.sfne.s $1, $2\0A\09l.bf      lfnes\0A\09l.nop\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %7, float %8, i32 %6) #2, !srcloc !3
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %26

; <label>:15:                                     ; preds = %0
  store float 0x4028CCCCC0000000, float* %3, align 4
  store float 0x401F333340000000, float* %4, align 4
  store i32 3, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load float, float* %3, align 4
  %18 = load float, float* %4, align 4
  %19 = call i32 asm "l.addi    $0, $0, 0x1\0A\09l.addi    $0, $0, 0x1\0A\09lf.sfne.s $1, $2\0A\09l.bf      1f\0A\09l.nop\0A\09l.addi    $0, $0, 0x1\0A\09l.addi    $0, $0, 0x1\0A\091:\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %17, float %18, i32 %16) #2, !srcloc !4
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %26

; <label>:25:                                     ; preds = %15
  store i32 0, i32* %1, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %23, %13
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 155, i32 164, i32 197, i32 225, i32 252, i32 269}
!4 = !{i32 461, i32 485, i32 518, i32 546, i32 570, i32 587, i32 620, i32 653, i32 667}
