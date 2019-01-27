; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_extx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_extx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"extbs error\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"extbz error\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"exths error\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"exthz error\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"extws error\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"extwz error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 131, i32* %3, align 4
  store i32 -125, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 asm "l.extbs  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %5) #2, !srcloc !3
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:12:                                     ; preds = %0
  store i32 131, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 asm "l.extbz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %13) #2, !srcloc !4
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %12
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:20:                                     ; preds = %12
  store i32 32899, i32* %3, align 4
  store i32 -32637, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 asm "l.exths  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %21) #2, !srcloc !5
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:28:                                     ; preds = %20
  store i32 32899, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 asm "l.exthz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %29) #2, !srcloc !6
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %28
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:36:                                     ; preds = %28
  store i32 17, i32* %3, align 4
  store i32 17, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 asm "l.extws  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %37) #2, !srcloc !7
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %36
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 asm "l.extwz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %45) #2, !srcloc !8
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %44
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %53

; <label>:52:                                     ; preds = %44
  store i32 0, i32* %1, align 4
  br label %53

; <label>:53:                                     ; preds = %52, %50, %42, %34, %26, %18, %10
  %54 = load i32, i32* %1, align 4
  ret i32 %54
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
!3 = !{i32 124, i32 142}
!4 = !{i32 298, i32 316}
!5 = !{i32 494, i32 512}
!6 = !{i32 670, i32 688}
!7 = !{i32 858, i32 876}
!8 = !{i32 1014, i32 1032}
