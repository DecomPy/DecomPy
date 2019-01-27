; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_2darray.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_2darray.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Even numbers\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x [3 x i32]], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast [3 x [3 x i32]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %7) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %27, %0
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %23, %11
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %17
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %20
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %21)
  br label %23

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %3, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4, !tbaa !3
  br label %12

; <label>:26:                                     ; preds = %12
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:30:                                     ; preds = %8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %32

; <label>:32:                                     ; preds = %63, %30
  %33 = load i32, i32* %2, align 4, !tbaa !3
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %66

; <label>:35:                                     ; preds = %32
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %36

; <label>:36:                                     ; preds = %59, %35
  %37 = load i32, i32* %3, align 4, !tbaa !3
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %62

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %2, align 4, !tbaa !3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %41
  %43 = load i32, i32* %3, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %42, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !3
  %47 = srem i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %39
  %50 = load i32, i32* %2, align 4, !tbaa !3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %51
  %53 = load i32, i32* %3, align 4, !tbaa !3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %52, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !3
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %56)
  br label %58

; <label>:58:                                     ; preds = %49, %39
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %3, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4, !tbaa !3
  br label %36

; <label>:62:                                     ; preds = %36
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %2, align 4, !tbaa !3
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4, !tbaa !3
  br label %32

; <label>:66:                                     ; preds = %32
  %67 = bitcast [3 x [3 x i32]]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %67) #3
  %68 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
  %69 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @scanf(i8*, ...) #2

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
