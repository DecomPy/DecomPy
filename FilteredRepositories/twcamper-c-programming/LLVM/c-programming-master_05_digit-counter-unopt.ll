; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_digit-counter.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_digit-counter.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"Enter a number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"The number %d has %d digits\0A\00", align 1

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
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = mul nsw i32 %13, -1
  br label %17

; <label>:15:                                     ; preds = %0
  %16 = load i32, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %17
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %37

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  store i32 2, i32* %4, align 4, !tbaa !3
  br label %36

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = icmp slt i32 %27, 1000
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  store i32 3, i32* %4, align 4, !tbaa !3
  br label %35

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = icmp slt i32 %31, 10000
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  store i32 4, i32* %4, align 4, !tbaa !3
  br label %34

; <label>:34:                                     ; preds = %33, %30
  br label %35

; <label>:35:                                     ; preds = %34, %29
  br label %36

; <label>:36:                                     ; preds = %35, %25
  br label %37

; <label>:37:                                     ; preds = %36, %21
  %38 = load i32, i32* %2, align 4, !tbaa !3
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %38, i32 %39)
  %41 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
