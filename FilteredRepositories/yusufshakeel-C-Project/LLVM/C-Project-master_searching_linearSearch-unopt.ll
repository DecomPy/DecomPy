; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_searching_linearSearch.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_searching_linearSearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [27 x i8] c"Enter the array elements: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Enter key: \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Key not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Key at index: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %17, %0
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %14
  %16 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %15)
  br label %17

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4, !tbaa !3
  br label %9

; <label>:20:                                     ; preds = %9
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %4)
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = call i32 @linearSearch(i32* %23, i32 5, i32 %24)
  store i32 %25, i32* %3, align 4, !tbaa !3
  %26 = load i32, i32* %3, align 4, !tbaa !3
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %20
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %33

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %31)
  br label %33

; <label>:33:                                     ; preds = %30, %28
  %34 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %36) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @linearSearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !7
  store i32 %1, i32* %6, align 4, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !3
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %27, %3
  %12 = load i32, i32* %8, align 4, !tbaa !3
  %13 = load i32, i32* %6, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 1
  %15 = icmp sle i32 %12, %14
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %11
  %17 = load i32*, i32** %5, align 8, !tbaa !7
  %18 = load i32, i32* %8, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = load i32, i32* %7, align 4, !tbaa !3
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %8, align 4, !tbaa !3
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %31

; <label>:26:                                     ; preds = %16
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %8, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4, !tbaa !3
  br label %11

; <label>:30:                                     ; preds = %11
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %24
  %32 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = load i32, i32* %4, align 4
  ret i32 %33
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
