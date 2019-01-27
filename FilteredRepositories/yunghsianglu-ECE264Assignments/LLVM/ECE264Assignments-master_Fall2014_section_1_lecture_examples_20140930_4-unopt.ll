; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20140930_4.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20140930_4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"f(0) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"f(1) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"f(2) == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"f(3) == %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"f(4) == %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"f(5) == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"f(6) == %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"f(7) == %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"f(8) == %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %33, %1
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %19, i32* %6, align 4, !tbaa !3
  store i32 %19, i32* %5, align 4, !tbaa !3
  store i32 %19, i32* %4, align 4, !tbaa !3
  br label %32

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %24, i32* %5, align 4, !tbaa !3
  store i32 %24, i32* %4, align 4, !tbaa !3
  br label %31

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %4, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %29, i32* %6, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %30, i32* %5, align 4, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %25, %23
  br label %32

; <label>:32:                                     ; preds = %31, %18
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:36:                                     ; preds = %11
  %37 = load i32, i32* %4, align 4, !tbaa !3
  %38 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  %41 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  ret i32 %37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %6 = call i32 @f(i32 0)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %6)
  %8 = call i32 @f(i32 1)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %8)
  %10 = call i32 @f(i32 2)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  %12 = call i32 @f(i32 3)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %12)
  %14 = call i32 @f(i32 4)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  %16 = call i32 @f(i32 5)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %16)
  %18 = call i32 @f(i32 6)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %18)
  %20 = call i32 @f(i32 7)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %20)
  %22 = call i32 @f(i32 8)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %22)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
