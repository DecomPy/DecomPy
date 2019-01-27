; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_and_or.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_and_or.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"and error\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"andi error %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"or error\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"xor error\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"xori error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 asm "l.and  $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %6, i32 %7) #2, !srcloc !3
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %50

; <label>:14:                                     ; preds = %0
  store i32 2, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 asm "l.andi  $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #2, !srcloc !4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %21)
  store i32 -1, i32* %1, align 4
  br label %50

; <label>:23:                                     ; preds = %14
  store i32 3, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 asm "l.or   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %24, i32 %25) #2, !srcloc !5
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %23
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %50

; <label>:32:                                     ; preds = %23
  store i32 3, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 asm "l.xor  $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %33, i32 %34) #2, !srcloc !6
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %50

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 asm "l.xori  $0, $1, 0x1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %42) #2, !srcloc !7
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %41
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %50

; <label>:49:                                     ; preds = %41
  store i32 0, i32* %1, align 4
  br label %50

; <label>:50:                                     ; preds = %49, %47, %39, %30, %20, %12
  %51 = load i32, i32* %1, align 4
  ret i32 %51
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
!3 = !{i32 130, i32 150}
!4 = !{i32 311, i32 333}
!5 = !{i32 493, i32 513}
!6 = !{i32 673, i32 693}
!7 = !{i32 836, i32 858}
