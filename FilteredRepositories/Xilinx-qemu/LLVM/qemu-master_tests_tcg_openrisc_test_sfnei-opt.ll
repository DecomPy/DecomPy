; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_sfnei.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_sfnei.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"sfnei error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 asm "1:\0A\09l.addi   $0, $0, 3\0A\09l.sfnei  $0, 0x3\0A\09l.bf 1b\0A\09l.nop\0A\09", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %4) #2, !srcloc !3
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %20

; <label>:11:                                     ; preds = %0
  store i32 0, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 asm "1:\0A\09l.addi   $0, $0, 1\0A\09l.sfnei  $0, 0x3\0A\09l.bf 1b\0A\09l.nop\0A\09", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %12) #2, !srcloc !4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %20

; <label>:19:                                     ; preds = %11
  store i32 0, i32* %1, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %17, %9
  %21 = load i32, i32* %1, align 4
  ret i32 %21
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
!3 = !{i32 109, i32 114, i32 144, i32 172, i32 191, i32 208}
!4 = !{i32 358, i32 363, i32 393, i32 421, i32 440, i32 457}
