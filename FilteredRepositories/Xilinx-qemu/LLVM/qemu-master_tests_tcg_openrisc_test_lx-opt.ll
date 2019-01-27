; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"lbz error, %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lbs error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"lhs error, %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lhz error\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"lws error, %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lwz error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [50 x i32], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 35, i32* %4, align 4
  %5 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %6 = call i32 asm "l.ori r8, r0, 0x123\0A\09l.sb  0x4 + $1, r8\0A\09\0A\09l.lbz $0, 0x4 + $1\0A\09", "=r,=*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5, i32* %5) #2, !srcloc !3
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %11)
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:13:                                     ; preds = %0
  store i32 35, i32* %4, align 4
  %14 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %15 = call i32 asm "l.lbs $0, 0x4 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %14) #3, !srcloc !4
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %13
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:21:                                     ; preds = %13
  store i32 4369, i32* %4, align 4
  %22 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %23 = call i32 asm "l.ori r8, r0, 0x1111\0A\09l.sh  0x20 + $1, r8\0A\09\0A\09l.lhs $0, 0x20 + $1\0A\09", "=r,=*m,~{dirflag},~{fpsr},~{flags}"(i32* %22) #2, !srcloc !5
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:30:                                     ; preds = %21
  store i32 4369, i32* %4, align 4
  %31 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %32 = call i32 asm "l.lhz $0, 0x20 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %31) #3, !srcloc !6
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %30
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:38:                                     ; preds = %30
  store i32 17895987, i32* %4, align 4
  %39 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %40 = call i32 asm "l.ori r8, r0, 0x1233\0A\09l.movhi r1, 0x111\0A\09l.or  r8, r8, r1\0A\09l.sw  0x123 + $1, r8\0A\09\0A\09l.lws $0, 0x123 + $1\0A\09", "=r,=*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %39, i32* %39) #2, !srcloc !7
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %45)
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:47:                                     ; preds = %38
  store i32 17895987, i32* %4, align 4
  %48 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %49 = call i32 asm "l.lwz $0, 0x123 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %48) #3, !srcloc !8
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %56

; <label>:55:                                     ; preds = %47
  store i32 0, i32* %1, align 4
  br label %56

; <label>:56:                                     ; preds = %55, %53, %44, %36, %27, %19, %10
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 116, i32 138, i32 168, i32 180, i32 210}
!4 = !{i32 367, i32 388}
!5 = !{i32 545, i32 568, i32 599, i32 611, i32 642}
!6 = !{i32 801, i32 823}
!7 = !{i32 983, i32 1006, i32 1035, i32 1063, i32 1095, i32 1107, i32 1139}
!8 = !{i32 1301, i32 1324}
