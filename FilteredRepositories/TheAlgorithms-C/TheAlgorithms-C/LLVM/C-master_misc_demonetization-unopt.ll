; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_demonetization.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_demonetization.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [18 x i8] c"Number of coins? \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"coin? \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"---- your requests --- \0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"amount? exit(0) \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @ways(i32, i32*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !3
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %7, align 4, !tbaa !3
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %40

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  store i32 1, i32* %4, align 4
  br label %40

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %7, align 4, !tbaa !3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = load i32*, i32** %6, align 8, !tbaa !7
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @ways(i32 %23, i32* %24, i32 %26)
  %28 = load i32, i32* %5, align 4, !tbaa !3
  %29 = load i32*, i32** %6, align 8, !tbaa !7
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !3
  %35 = sub nsw i32 %28, %34
  %36 = load i32*, i32** %6, align 8, !tbaa !7
  %37 = load i32, i32* %7, align 4, !tbaa !3
  %38 = call i32 @ways(i32 %35, i32* %36, i32 %37)
  %39 = add nsw i32 %27, %38
  store i32 %39, i32* %4, align 4
  br label %40

; <label>:40:                                     ; preds = %22, %21, %17, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %28, %0
  %19 = load i32, i32* %7, align 4, !tbaa !3
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %24 = load i32, i32* %7, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %16, i64 %25
  %27 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %26)
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %7, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4, !tbaa !3
  br label %18

; <label>:31:                                     ; preds = %18
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %40, %31
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  %36 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %4)
  %37 = load i32, i32* %4, align 4, !tbaa !3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %34
  br label %45

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %4, align 4, !tbaa !3
  %42 = load i32, i32* %2, align 4, !tbaa !3
  %43 = call i32 @ways(i32 %41, i32* %16, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %43)
  br label %33

; <label>:45:                                     ; preds = %39
  store i32 0, i32* %1, align 4
  %46 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
