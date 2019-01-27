; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.7-matrix.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.7-matrix.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Enter row %d: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Row Totals:\09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Column Totals:\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x [5 x i32]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %6) #3
  %7 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %33, %0
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %36

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %16)
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %29, %14
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %23
  %25 = load i32, i32* %4, align 4, !tbaa !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 %26
  %28 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %27)
  br label %29

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4, !tbaa !3
  br label %18

; <label>:32:                                     ; preds = %18
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:36:                                     ; preds = %11
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %39

; <label>:39:                                     ; preds = %62, %36
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %65

; <label>:42:                                     ; preds = %39
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %56, %42
  %44 = load i32, i32* %4, align 4, !tbaa !3
  %45 = icmp slt i32 %44, 5
  br i1 %45, label %46, label %59

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %48
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !3
  %54 = load i32, i32* %5, align 4, !tbaa !3
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %5, align 4, !tbaa !3
  br label %56

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %4, align 4, !tbaa !3
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4, !tbaa !3
  br label %43

; <label>:59:                                     ; preds = %43
  %60 = load i32, i32* %5, align 4, !tbaa !3
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %60)
  br label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4, !tbaa !3
  br label %39

; <label>:65:                                     ; preds = %39
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %68

; <label>:68:                                     ; preds = %91, %65
  %69 = load i32, i32* %4, align 4, !tbaa !3
  %70 = icmp slt i32 %69, 5
  br i1 %70, label %71, label %94

; <label>:71:                                     ; preds = %68
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %72

; <label>:72:                                     ; preds = %85, %71
  %73 = load i32, i32* %3, align 4, !tbaa !3
  %74 = icmp slt i32 %73, 5
  br i1 %74, label %75, label %88

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %3, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %77
  %79 = load i32, i32* %4, align 4, !tbaa !3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %78, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !3
  %83 = load i32, i32* %5, align 4, !tbaa !3
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %5, align 4, !tbaa !3
  br label %85

; <label>:85:                                     ; preds = %75
  %86 = load i32, i32* %3, align 4, !tbaa !3
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4, !tbaa !3
  br label %72

; <label>:88:                                     ; preds = %72
  %89 = load i32, i32* %5, align 4, !tbaa !3
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %89)
  br label %91

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %4, align 4, !tbaa !3
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4, !tbaa !3
  br label %68

; <label>:94:                                     ; preds = %68
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %96 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3
  %97 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3
  %98 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3
  %99 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %99) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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
