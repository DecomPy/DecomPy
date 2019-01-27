; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_TowerOfHanoi.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_TowerOfHanoi.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [30 x i8] c"Move disk : %d from %c to %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Number of disks: \0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hanoi(i32, i8 signext, i8 signext, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %4
  br label %29

; <label>:12:                                     ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i8, i8* %6, align 1
  %16 = load i8, i8* %8, align 1
  %17 = load i8, i8* %7, align 1
  call void @hanoi(i32 %14, i8 signext %15, i8 signext %16, i8 signext %17)
  %18 = load i32, i32* %5, align 4
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %7, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %18, i32 %20, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i8, i8* %8, align 1
  %27 = load i8, i8* %7, align 1
  %28 = load i8, i8* %6, align 1
  call void @hanoi(i32 %25, i8 signext %26, i8 signext %27, i8 signext %28)
  br label %29

; <label>:29:                                     ; preds = %11, %12
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %5 = load i32, i32* %2, align 4
  call void @hanoi(i32 %5, i8 signext 65, i8 signext 66, i8 signext 67)
  ret i32 0
}

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
