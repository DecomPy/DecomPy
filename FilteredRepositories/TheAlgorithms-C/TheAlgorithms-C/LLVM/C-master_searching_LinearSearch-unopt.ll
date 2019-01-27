; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_LinearSearch.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_LinearSearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [30 x i8] c"Enter the size of the array:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Enter the contents for an array of size %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Enter the value to be searched:\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Value %d is in the array.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Value %d is not in the array.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @linearsearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %25, %3
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !7
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %15
  store i32 1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %29

; <label>:24:                                     ; preds = %15
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:28:                                     ; preds = %11
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %23
  %30 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %1)
  %11 = load i32, i32* %1, align 4, !tbaa !7
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* %1, align 4, !tbaa !7
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  store i32 0, i32* %2, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %26, %0
  %18 = load i32, i32* %2, align 4, !tbaa !7
  %19 = load i32, i32* %1, align 4, !tbaa !7
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %2, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %14, i64 %23
  %25 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %24)
  br label %26

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %2, align 4, !tbaa !7
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4, !tbaa !7
  br label %17

; <label>:29:                                     ; preds = %17
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  %31 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %3)
  %32 = load i32, i32* %1, align 4, !tbaa !7
  %33 = load i32, i32* %3, align 4, !tbaa !7
  %34 = call i32 @linearsearch(i32* %14, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %3, align 4, !tbaa !7
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %37)
  br label %42

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %3, align 4, !tbaa !7
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %40)
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3
  %46 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
