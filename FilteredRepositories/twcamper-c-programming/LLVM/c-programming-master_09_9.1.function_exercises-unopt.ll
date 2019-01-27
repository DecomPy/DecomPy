; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.1.function_exercises.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.1.function_exercises.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@day_of_year.month_lengths = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [35 x i8] c"Exercise 9.2 - enter x, y, and n: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Are x and y between 0 and n? %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Exercise 9.3 - enter m and n: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Greatest Common Divisor: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Exercise 9.4 - enter a date as mm/dd/yyyy: \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d/%d/%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Day of Year: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @check(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %7 = load i32, i32* %4, align 4, !tbaa !3
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = load i32, i32* %6, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = icmp slt i32 %17, %18
  br label %20

; <label>:20:                                     ; preds = %16, %13, %9, %3
  %21 = phi i1 [ false, %13 ], [ false, %9 ], [ false, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define i32 @gcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  br label %7

; <label>:7:                                      ; preds = %10, %2
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = srem i32 %11, %12
  store i32 %13, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %14, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %15, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:16:                                     ; preds = %7
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  ret i32 %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @day_of_year(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [12 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %10 = bitcast [12 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %10) #3
  %11 = bitcast [12 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([12 x i32]* @day_of_year.month_lengths to i8*), i64 48, i1 false)
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %9, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = srem i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = srem i32 %18, 100
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17, %3
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = srem i32 %22, 400
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %21, %17
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 1
  store i32 29, i32* %26, align 4, !tbaa !3
  br label %27

; <label>:27:                                     ; preds = %25, %21
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %40, %27
  %29 = load i32, i32* %8, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %8, align 4, !tbaa !3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !3
  %38 = load i32, i32* %9, align 4, !tbaa !3
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4, !tbaa !3
  br label %40

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4, !tbaa !3
  br label %28

; <label>:43:                                     ; preds = %28
  %44 = load i32, i32* %9, align 4, !tbaa !3
  %45 = load i32, i32* %5, align 4, !tbaa !3
  %46 = add nsw i32 %44, %45
  %47 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast [12 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %49) #3
  ret i32 %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32* %2, i32* %3, i32* %4)
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = call i32 @check(i32 %10, i32 %11, i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  %16 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32* %2, i32* %3)
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = call i32 @gcd(i32 %17, i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32* %2, i32* %3, i32* %4)
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = load i32, i32* %3, align 4, !tbaa !3
  %25 = load i32, i32* %4, align 4, !tbaa !3
  %26 = call i32 @day_of_year(i32 %23, i32 %24, i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 %26)
  %28 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
