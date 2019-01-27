; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_bp.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_bp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter expression: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Balanced parenthesis.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Unbalanced.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), [100 x i8]* %2)
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %42, %0
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4, !tbaa !3
  br label %42

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 41
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %3, align 4, !tbaa !3
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4, !tbaa !3
  %37 = load i32, i32* %3, align 4, !tbaa !3
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %34
  br label %45

; <label>:40:                                     ; preds = %34
  br label %41

; <label>:41:                                     ; preds = %40, %27
  br label %42

; <label>:42:                                     ; preds = %41, %24
  %43 = load i32, i32* %4, align 4, !tbaa !3
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:45:                                     ; preds = %39, %10
  %46 = load i32, i32* %3, align 4, !tbaa !3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %52

; <label>:50:                                     ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %52

; <label>:52:                                     ; preds = %50, %48
  %53 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3
  %54 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3
  %55 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %55) #3
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
!7 = !{!5, !5, i64 0}
