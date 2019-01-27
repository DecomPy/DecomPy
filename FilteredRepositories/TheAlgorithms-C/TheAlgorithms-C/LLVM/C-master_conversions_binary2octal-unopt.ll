; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_binary2octal.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_binary2octal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [22 x i8] c"Enter the binary no: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\0AOctal equivalent is: %d\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @three_digits(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 1, i32* %5, align 4, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %28, %1
  %12 = load i32, i32* %6, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %11
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  br label %31

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = srem i32 %17, 10
  store i32 %18, i32* %3, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4, !tbaa !3
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %4, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = mul nsw i32 %24, 10
  store i32 %25, i32* %5, align 4, !tbaa !3
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = sdiv i32 %26, 10
  store i32 %27, i32* %2, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4, !tbaa !3
  br label %11

; <label>:31:                                     ; preds = %14
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  ret i32 %32
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 1, i32* %4, align 4, !tbaa !3
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  %15 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 1, i32* %8, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  br label %18

; <label>:18:                                     ; preds = %47, %0
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %55

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = icmp sgt i32 %22, 111
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = call i32 @three_digits(i32 %25)
  store i32 %26, i32* %6, align 4, !tbaa !3
  br label %29

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %28, i32* %6, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %27, %24
  %30 = load i32, i32* %2, align 4, !tbaa !3
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %2, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %32

; <label>:32:                                     ; preds = %35, %29
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %47

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %6, align 4, !tbaa !3
  %37 = srem i32 %36, 10
  store i32 %37, i32* %5, align 4, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = sdiv i32 %38, 10
  store i32 %39, i32* %6, align 4, !tbaa !3
  %40 = load i32, i32* %4, align 4, !tbaa !3
  %41 = load i32, i32* %5, align 4, !tbaa !3
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %3, align 4, !tbaa !3
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %3, align 4, !tbaa !3
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %4, align 4, !tbaa !3
  br label %32

; <label>:47:                                     ; preds = %32
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = load i32, i32* %8, align 4, !tbaa !3
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %7, align 4, !tbaa !3
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4, !tbaa !3
  %53 = load i32, i32* %8, align 4, !tbaa !3
  %54 = mul nsw i32 %53, 10
  store i32 %54, i32* %8, align 4, !tbaa !3
  br label %18

; <label>:55:                                     ; preds = %18
  %56 = load i32, i32* %7, align 4, !tbaa !3
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %56)
  %58 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3
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
