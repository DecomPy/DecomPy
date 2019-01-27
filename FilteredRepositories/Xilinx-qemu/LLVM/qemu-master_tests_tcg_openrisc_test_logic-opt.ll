; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_logic.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_logic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"sll error\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"slli error\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"srli error\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ror error\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rori error\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sra error\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"srai error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 38723, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32 154892, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 asm "l.sll    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %6, i32 %7) #2, !srcloc !3
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:14:                                     ; preds = %0
  store i32 38723, i32* %3, align 4
  store i32 154892, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 asm "l.slli   $0, $1, 0x2\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #2, !srcloc !4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:22:                                     ; preds = %14
  store i32 30292, i32* %3, align 4
  store i32 3, i32* %4, align 4
  store i32 3786, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 asm "l.srl    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %23, i32 %24) #2, !srcloc !5
  store i32 %25, i32* %2, align 4
  store i32 30292, i32* %3, align 4
  store i32 3786, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 asm "l.srli   $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %26) #2, !srcloc !6
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %22
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:33:                                     ; preds = %22
  store i32 -2147483647, i32* %3, align 4
  store i32 4, i32* %4, align 4
  store i32 402653184, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 asm "l.ror    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %34, i32 %35) #2, !srcloc !7
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %33
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:42:                                     ; preds = %33
  store i32 -2147483647, i32* %3, align 4
  store i32 402653184, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 asm "l.rori   $0, $1, 0x4\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %43) #2, !srcloc !8
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:50:                                     ; preds = %42
  store i32 -2147483647, i32* %3, align 4
  store i32 3, i32* %4, align 4
  store i32 -268435456, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 asm "l.sra    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %51, i32 %52) #2, !srcloc !9
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %50
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:59:                                     ; preds = %50
  store i32 -2147483647, i32* %3, align 4
  store i32 -268435456, i32* %5, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 asm "l.srai   $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %60) #2, !srcloc !10
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %59
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:67:                                     ; preds = %59
  store i32 0, i32* %1, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %65, %57, %48, %40, %31, %20, %12
  %69 = load i32, i32* %1, align 4
  ret i32 %69
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
!3 = !{i32 139, i32 161}
!4 = !{i32 342, i32 365}
!5 = !{i32 551, i32 573}
!6 = !{i32 673, i32 696}
!7 = !{i32 890, i32 912}
!8 = !{i32 1100, i32 1123}
!9 = !{i32 1318, i32 1340}
!10 = !{i32 1528, i32 1551}
