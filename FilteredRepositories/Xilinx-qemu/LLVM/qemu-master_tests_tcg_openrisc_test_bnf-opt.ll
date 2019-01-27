; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_bnf.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_bnf.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"l.bnf error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 asm "l.sfeqi $1, 0x0\0A\09l.bnf 1f\0A\09l.nop\0A\09\0A\09l.addi $0, $0, 0x1\0A\09l.addi $0, $0, 0x1\0A\09\0A\091:\0A\09l.addi $0, $0, 0x1\0A\09", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %6, i32 %5) #2, !srcloc !3
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %23

; <label>:13:                                     ; preds = %0
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 asm "l.sfeqi $1, 0x1\0A\09l.bnf 1f\0A\09l.nop\0A\09\0A\09l.addi $0, $0, 0x1\0A\09l.addi $0, $0, 0x1\0A\09\0A\091:\0A\09l.addi $0, $0, 0x1\0A\09", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %15, i32 %14) #2, !srcloc !4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %13
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %23

; <label>:22:                                     ; preds = %13
  store i32 0, i32* %1, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %20, %11
  %24 = load i32, i32* %1, align 4
  ret i32 %24
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
!3 = !{i32 125, i32 143, i32 163, i32 180, i32 192, i32 222, i32 252, i32 264, i32 278, i32 308}
!4 = !{i32 483, i32 501, i32 521, i32 538, i32 550, i32 580, i32 610, i32 622, i32 636, i32 666}
