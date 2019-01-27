; ModuleID = 'Repositories/x893-picoC/Unfiltered/picoC-master_tests_50_logical_second_arg.c'
source_filename = "Repositories/x893-picoC/Unfiltered/picoC-master_tests_50_logical_second_arg.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c"fred\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"joe\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fred() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @joe() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fred()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %0
  %5 = call i32 @joe()
  %6 = icmp ne i32 %5, 0
  br label %7

; <label>:7:                                      ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %9)
  %11 = call i32 @fred()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %7
  %14 = call i32 @joe()
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %13, %7
  %17 = phi i1 [ true, %7 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %18)
  %20 = call i32 @joe()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %16
  %23 = call i32 @fred()
  %24 = icmp ne i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %27)
  %29 = call i32 @joe()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %25
  %32 = call i32 @fred()
  %33 = icmp ne i32 %32, 0
  br label %34

; <label>:34:                                     ; preds = %31, %25
  %35 = phi i1 [ true, %25 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %36)
  %38 = call i32 @fred()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %34
  %41 = call i32 @joe()
  %42 = add nsw i32 1, %41
  %43 = icmp ne i32 %42, 0
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i1 [ false, %34 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %46)
  %48 = call i32 @fred()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

; <label>:50:                                     ; preds = %44
  %51 = call i32 @joe()
  %52 = add nsw i32 0, %51
  %53 = icmp ne i32 %52, 0
  br label %54

; <label>:54:                                     ; preds = %50, %44
  %55 = phi i1 [ true, %44 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %56)
  %58 = call i32 @joe()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %54
  %61 = call i32 @fred()
  %62 = add nsw i32 0, %61
  %63 = icmp ne i32 %62, 0
  br label %64

; <label>:64:                                     ; preds = %60, %54
  %65 = phi i1 [ false, %54 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %66)
  %68 = call i32 @joe()
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

; <label>:70:                                     ; preds = %64
  %71 = call i32 @fred()
  %72 = add nsw i32 1, %71
  %73 = icmp ne i32 %72, 0
  br label %74

; <label>:74:                                     ; preds = %70, %64
  %75 = phi i1 [ true, %64 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %76)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
