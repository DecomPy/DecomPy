; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141209_2.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141209_2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.array = private unnamed_addr constant [13 x i32] [i32 3, i32 2, i32 1, i32 9, i32 2, i32 1, i32 4, i32 5, i32 7, i32 6, i32 2, i32 8, i32 5], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"n==%d   outer==%d   inner==%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [13 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %14 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* %14) #3
  %15 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([13 x i32]* @main.array to i8*), i64 52, i1 false)
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 9, i32* %7, align 4, !tbaa !3
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  store i32 0, i32* %12, align 4, !tbaa !3
  %22 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  store i32 0, i32* %13, align 4, !tbaa !3
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %33, %2
  %24 = load i32, i32* %8, align 4, !tbaa !3
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !3
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %31)
  br label %33

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %8, align 4, !tbaa !3
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4, !tbaa !3
  br label %23

; <label>:36:                                     ; preds = %23
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %89, %36
  %39 = load i32, i32* %9, align 4, !tbaa !3
  %40 = load i32, i32* %7, align 4, !tbaa !3
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %92

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %13, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4, !tbaa !3
  store i32 0, i32* %10, align 4, !tbaa !3
  br label %46

; <label>:46:                                     ; preds = %85, %43
  %47 = load i32, i32* %10, align 4, !tbaa !3
  %48 = load i32, i32* %7, align 4, !tbaa !3
  %49 = load i32, i32* %9, align 4, !tbaa !3
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %88

; <label>:53:                                     ; preds = %46
  %54 = load i32, i32* %12, align 4, !tbaa !3
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4, !tbaa !3
  %56 = load i32, i32* %10, align 4, !tbaa !3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !3
  %60 = load i32, i32* %10, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !3
  %65 = icmp sgt i32 %59, %64
  br i1 %65, label %66, label %84

; <label>:66:                                     ; preds = %53
  %67 = load i32, i32* %10, align 4, !tbaa !3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !3
  store i32 %70, i32* %11, align 4, !tbaa !3
  %71 = load i32, i32* %10, align 4, !tbaa !3
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !3
  %76 = load i32, i32* %10, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %77
  store i32 %75, i32* %78, align 4, !tbaa !3
  %79 = load i32, i32* %11, align 4, !tbaa !3
  %80 = load i32, i32* %10, align 4, !tbaa !3
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %82
  store i32 %79, i32* %83, align 4, !tbaa !3
  br label %84

; <label>:84:                                     ; preds = %66, %53
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %10, align 4, !tbaa !3
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4, !tbaa !3
  br label %46

; <label>:88:                                     ; preds = %46
  br label %89

; <label>:89:                                     ; preds = %88
  %90 = load i32, i32* %9, align 4, !tbaa !3
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4, !tbaa !3
  br label %38

; <label>:92:                                     ; preds = %38
  %93 = load i32, i32* %7, align 4, !tbaa !3
  %94 = load i32, i32* %13, align 4, !tbaa !3
  %95 = load i32, i32* %12, align 4, !tbaa !3
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %93, i32 %94, i32 %95)
  %97 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3
  %98 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #3
  %99 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #3
  %100 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #3
  %101 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #3
  %102 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #3
  %103 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #3
  %104 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 52, i8* %104) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

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
