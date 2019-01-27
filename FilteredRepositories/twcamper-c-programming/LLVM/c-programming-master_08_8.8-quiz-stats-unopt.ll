; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.8-quiz-stats.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.8-quiz-stats.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [20 x i8] c"Enter quiz scores:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Student %d: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Student Stats:\09Average\09Total\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Student %d:\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09%4d\09%4d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Quiz Stats:\09Low\09High\09Average\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Quiz %d:\09\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\09%4d\09%4d\09%4d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x [5 x i32]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %9) #3
  %10 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %40, %0
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %43

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %23)
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %25

; <label>:25:                                     ; preds = %36, %21
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %30
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %31, i64 0, i64 %33
  %35 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %34)
  br label %36

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %4, align 4, !tbaa !3
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4, !tbaa !3
  br label %25

; <label>:39:                                     ; preds = %25
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %3, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4, !tbaa !3
  br label %18

; <label>:43:                                     ; preds = %18
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %46

; <label>:46:                                     ; preds = %74, %43
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %77

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %3, align 4, !tbaa !3
  %51 = add nsw i32 %50, 1
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %51)
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %53

; <label>:53:                                     ; preds = %66, %49
  %54 = load i32, i32* %4, align 4, !tbaa !3
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %69

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %58
  %60 = load i32, i32* %4, align 4, !tbaa !3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !3
  %64 = load i32, i32* %6, align 4, !tbaa !3
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4, !tbaa !3
  br label %66

; <label>:66:                                     ; preds = %56
  %67 = load i32, i32* %4, align 4, !tbaa !3
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4, !tbaa !3
  br label %53

; <label>:69:                                     ; preds = %53
  %70 = load i32, i32* %6, align 4, !tbaa !3
  %71 = sdiv i32 %70, 5
  %72 = load i32, i32* %6, align 4, !tbaa !3
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 %71, i32 %72)
  br label %74

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %3, align 4, !tbaa !3
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4, !tbaa !3
  br label %46

; <label>:77:                                     ; preds = %46
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %80

; <label>:80:                                     ; preds = %122, %77
  %81 = load i32, i32* %4, align 4, !tbaa !3
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %125

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %4, align 4, !tbaa !3
  %85 = add nsw i32 %84, 1
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %85)
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %8, align 4, !tbaa !3
  store i32 100, i32* %7, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %87

; <label>:87:                                     ; preds = %113, %83
  %88 = load i32, i32* %3, align 4, !tbaa !3
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %116

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %3, align 4, !tbaa !3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %92
  %94 = load i32, i32* %4, align 4, !tbaa !3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !3
  store i32 %97, i32* %5, align 4, !tbaa !3
  %98 = load i32, i32* %5, align 4, !tbaa !3
  %99 = load i32, i32* %8, align 4, !tbaa !3
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %90
  %102 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %102, i32* %8, align 4, !tbaa !3
  br label %103

; <label>:103:                                    ; preds = %101, %90
  %104 = load i32, i32* %5, align 4, !tbaa !3
  %105 = load i32, i32* %7, align 4, !tbaa !3
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

; <label>:107:                                    ; preds = %103
  %108 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %108, i32* %7, align 4, !tbaa !3
  br label %109

; <label>:109:                                    ; preds = %107, %103
  %110 = load i32, i32* %5, align 4, !tbaa !3
  %111 = load i32, i32* %6, align 4, !tbaa !3
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %6, align 4, !tbaa !3
  br label %113

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %3, align 4, !tbaa !3
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4, !tbaa !3
  br label %87

; <label>:116:                                    ; preds = %87
  %117 = load i32, i32* %7, align 4, !tbaa !3
  %118 = load i32, i32* %8, align 4, !tbaa !3
  %119 = load i32, i32* %6, align 4, !tbaa !3
  %120 = sdiv i32 %119, 5
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %117, i32 %118, i32 %120)
  br label %122

; <label>:122:                                    ; preds = %116
  %123 = load i32, i32* %4, align 4, !tbaa !3
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4, !tbaa !3
  br label %80

; <label>:125:                                    ; preds = %80
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %127 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #3
  %128 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %128) #3
  %129 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %129) #3
  %130 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %130) #3
  %131 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #3
  %132 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #3
  %133 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %133) #3
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
