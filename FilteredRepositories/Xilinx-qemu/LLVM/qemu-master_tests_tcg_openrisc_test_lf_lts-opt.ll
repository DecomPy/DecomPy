; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_lts.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lf_lts.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"lf.sflt.s error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store float 1.245000e+02, float* %3, align 4
  store float 0x3FF6666660000000, float* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load float, float* %3, align 4
  %9 = load float, float* %4, align 4
  %10 = call i32 asm "lfltd:\0A\09l.addi    $0, $0, 0x1\0A\09lf.sflt.s $1, $2\0A\09l.bf      lfltd\0A\09l.nop\0A\09", "=r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %8, float %9, i32 %7) #2, !srcloc !3
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %28

; <label>:16:                                     ; preds = %0
  store i32 0, i32* %2, align 4
  store float 0x4026333340000000, float* %3, align 4
  store float 0x402A333340000000, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  store i32 2, i32* %6, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load float, float* %3, align 4
  %19 = load float, float* %4, align 4
  %20 = load float, float* %5, align 4
  %21 = call i32 asm "1:\0A\09lf.add.s  $1, $1, $3\0A\09l.addi    $0, $0, 1\0A\09lf.sflt.s $1, $2\0A\09l.bf      1b\0A\09l.nop\0A\09", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(float %18, float %19, float %20, i32 %17) #2, !srcloc !4
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %16
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %28

; <label>:27:                                     ; preds = %16
  store i32 0, i32* %1, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %25, %14
  %29 = load i32, i32* %1, align 4
  ret i32 %29
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
!3 = !{i32 156, i32 165, i32 198, i32 226, i32 253, i32 270}
!4 = !{i32 487, i32 492, i32 524, i32 555, i32 583, i32 607, i32 624}
