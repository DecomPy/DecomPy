; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.14.reverse-sentence.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.14.reverse-sentence.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter a sentence: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [255 x i8], align 16
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #3
  store i8 0, i8* %5, align 1, !tbaa !3
  %9 = bitcast [255 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %9) #3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !6
  br label %11

; <label>:11:                                     ; preds = %21, %0
  %12 = call i32 @getchar()
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1, !tbaa !3
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 10
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %4, align 1, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !6
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %19
  store i8 %17, i8* %20, align 1, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %3, align 4, !tbaa !6
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4, !tbaa !6
  br label %11

; <label>:24:                                     ; preds = %11
  %25 = load i32, i32* %3, align 4, !tbaa !6
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %26
  store i8 0, i8* %27, align 1, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !6
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4, !tbaa !6
  %30 = load i32, i32* %3, align 4, !tbaa !6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !3
  store i8 %33, i8* %4, align 1, !tbaa !3
  %34 = load i8, i8* %4, align 1, !tbaa !3
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 46
  br i1 %36, label %45, label %37

; <label>:37:                                     ; preds = %24
  %38 = load i8, i8* %4, align 1, !tbaa !3
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 63
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %37
  %42 = load i8, i8* %4, align 1, !tbaa !3
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 33
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %41, %37, %24
  %46 = load i8, i8* %4, align 1, !tbaa !3
  store i8 %46, i8* %5, align 1, !tbaa !3
  %47 = load i32, i32* %3, align 4, !tbaa !6
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %48
  store i8 0, i8* %49, align 1, !tbaa !3
  br label %50

; <label>:50:                                     ; preds = %45, %41
  br label %51

; <label>:51:                                     ; preds = %116, %50
  %52 = load i32, i32* %3, align 4, !tbaa !6
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %119

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %3, align 4, !tbaa !6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !3
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %64, label %61

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %3, align 4, !tbaa !6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %116

; <label>:64:                                     ; preds = %61, %54
  %65 = load i32, i32* %3, align 4, !tbaa !6
  store i32 %65, i32* %2, align 4, !tbaa !6
  %66 = load i32, i32* %3, align 4, !tbaa !6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1, !tbaa !3
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %64
  %73 = load i32, i32* %3, align 4, !tbaa !6
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4, !tbaa !6
  br label %75

; <label>:75:                                     ; preds = %72, %64
  br label %76

; <label>:76:                                     ; preds = %92, %75
  %77 = load i32, i32* %3, align 4, !tbaa !6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !3
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 32
  br i1 %82, label %83, label %90

; <label>:83:                                     ; preds = %76
  %84 = load i32, i32* %3, align 4, !tbaa !6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !3
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br label %90

; <label>:90:                                     ; preds = %83, %76
  %91 = phi i1 [ false, %76 ], [ %89, %83 ]
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %90
  %93 = load i32, i32* %3, align 4, !tbaa !6
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1, !tbaa !3
  %97 = sext i8 %96 to i32
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %97)
  %99 = load i32, i32* %3, align 4, !tbaa !6
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4, !tbaa !6
  br label %76

; <label>:101:                                    ; preds = %90
  %102 = load i32, i32* %2, align 4, !tbaa !6
  store i32 %102, i32* %3, align 4, !tbaa !6
  %103 = load i32, i32* %3, align 4, !tbaa !6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

; <label>:105:                                    ; preds = %101
  %106 = load i8, i8* %5, align 1, !tbaa !3
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %105
  %109 = load i8, i8* %5, align 1, !tbaa !3
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %110)
  br label %112

; <label>:112:                                    ; preds = %108, %105
  br label %115

; <label>:113:                                    ; preds = %101
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 32)
  br label %115

; <label>:115:                                    ; preds = %113, %112
  br label %116

; <label>:116:                                    ; preds = %115, %61
  %117 = load i32, i32* %3, align 4, !tbaa !6
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %3, align 4, !tbaa !6
  br label %51

; <label>:119:                                    ; preds = %51
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %121 = bitcast [255 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %121) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %4) #3
  %122 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #3
  %123 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #3
  %124 = load i32, i32* %1, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
