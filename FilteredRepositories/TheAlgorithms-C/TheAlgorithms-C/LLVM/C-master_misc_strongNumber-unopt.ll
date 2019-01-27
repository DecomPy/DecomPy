; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_strongNumber.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_strongNumber.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [22 x i8] c"%d is a strong number\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d is not a strong number\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Enter the number to check\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @strng(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %9, i32* %3, align 4, !tbaa !3
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %31, %1
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %37

; <label>:17:                                     ; preds = %14
  store i32 1, i32* %7, align 4, !tbaa !3
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = srem i32 %18, 10
  store i32 %19, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %20

; <label>:20:                                     ; preds = %28, %17
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %7, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4, !tbaa !3
  br label %20

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %2, align 4, !tbaa !3
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = load i32, i32* %7, align 4, !tbaa !3
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %4, align 4, !tbaa !3
  br label %14

; <label>:37:                                     ; preds = %14
  %38 = load i32, i32* %4, align 4, !tbaa !3
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %3, align 4, !tbaa !3
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %42)
  br label %47

; <label>:44:                                     ; preds = %37
  %45 = load i32, i32* %3, align 4, !tbaa !3
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %45)
  br label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %1)
  %5 = load i32, i32* %1, align 4, !tbaa !3
  call void @strng(i32 %5)
  %6 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  ret void
}

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
