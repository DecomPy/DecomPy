; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141002_1.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141002_1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [7 x i8] c"g(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"f(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"f(-9) == %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @g(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %4)
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %8, %1
  %12 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %12, i32* %2, align 4
  br label %24

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = sub nsw i32 %17, 2
  %19 = call i32 @g(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %24

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = add nsw i32 %21, 2
  %23 = call i32 @g(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %20, %16, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %4)
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = add nsw i32 %9, 5
  %11 = call i32 @g(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %16

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 5
  %15 = call i32 @g(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 -9)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %2)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
