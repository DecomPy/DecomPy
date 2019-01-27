; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_eqs.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_eqs.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"lf.sfeq.s error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store float 1.225000e+02, float* %4, align 4
  store float 1.235000e+02, float* %5, align 4
  store i32 3, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = call i32 asm "lfeqd:\0A\09l.addi    $0, $0, 0x1\0A\09lf.sfeq.s $1, $2\0A\09l.bf      lfeqd\0A\09l.nop\0A\09l.addi    $0, $0, 0x1\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %7, float %8, i32 %6) #2, !srcloc !3
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %26

; <label>:15:                                     ; preds = %0
  store float 1.350000e+01, float* %4, align 4
  store float 1.350000e+01, float* %5, align 4
  store i32 3, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load float, float* %4, align 4
  %18 = load float, float* %5, align 4
  %19 = call i32 asm "lf.sfeq.s $1, $2\0A\09l.bf      1f\0A\09l.nop\0A\09l.addi    r4, r4, 0x1\0A\091:\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %17, float %18, i32 %16) #2, !srcloc !4
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
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
!3 = !{i32 151, i32 160, i32 193, i32 221, i32 248, i32 265, i32 298}
!4 = !{i32 493, i32 512, i32 536, i32 553, i32 586, i32 600}
