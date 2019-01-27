; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_recursion_fibo.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_recursion_fibo.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"Enter n: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Recursive Fibo: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Non-Recursive Fibo: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = call i32 @fibo(i32 %8)
  store i32 %9, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = call i32 @nonRecFibo(i32 %12)
  store i32 %13, i32* %3, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %14)
  %16 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @fibo(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %7, i32* %2, align 4
  br label %16

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @fibo(i32 %10)
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = sub nsw i32 %12, 2
  %14 = call i32 @fibo(i32 %13)
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %8, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @nonRecFibo(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %16, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %34

; <label>:17:                                     ; preds = %1
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  store i32 2, i32* %4, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %28, %17
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = load i32, i32* %6, align 4, !tbaa !3
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %7, align 4, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %26, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %27, i32* %6, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4, !tbaa !3
  br label %18

; <label>:31:                                     ; preds = %18
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %34

; <label>:34:                                     ; preds = %32, %15
  %35 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

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
