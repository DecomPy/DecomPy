; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_lexicographicPermutations.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_lexicographicPermutations.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #3
  %6 = load i8*, i8** %3, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !7
  store i8 %7, i8* %5, align 1, !tbaa !7
  %8 = load i8*, i8** %4, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %10 = load i8*, i8** %3, align 8, !tbaa !3
  store i8 %9, i8* %10, align 1, !tbaa !7
  %11 = load i8, i8* %5, align 1, !tbaa !7
  %12 = load i8*, i8** %4, align 8, !tbaa !3
  store i8 %11, i8* %12, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @compare(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %5 = load i8*, i8** %3, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %7 = sext i8 %6 to i32
  %8 = load i8*, i8** %4, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = sub nsw i32 %7, %10
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define void @PrintSortedPermutations(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  %10 = call i64 @strlen(i8* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4, !tbaa !8
  %12 = load i8*, i8** %2, align 8, !tbaa !3
  %13 = load i32, i32* %3, align 4, !tbaa !8
  %14 = sext i32 %13 to i64
  call void @qsort(i8* %12, i64 %14, i64 1, i32 (i8*, i8*)* @compare)
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 1, i32* %4, align 4, !tbaa !8
  br label %16

; <label>:16:                                     ; preds = %127, %1
  %17 = load i8*, i8** %2, align 8, !tbaa !3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %17)
  %19 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = load i32, i32* %3, align 4, !tbaa !8
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %5, align 4, !tbaa !8
  br label %22

; <label>:22:                                     ; preds = %43, %16
  %23 = load i32, i32* %5, align 4, !tbaa !8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %2, align 8, !tbaa !3
  %27 = load i32, i32* %5, align 4, !tbaa !8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !7
  %31 = sext i8 %30 to i32
  %32 = load i8*, i8** %2, align 8, !tbaa !3
  %33 = load i32, i32* %5, align 4, !tbaa !8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %31, %38
  br label %40

; <label>:40:                                     ; preds = %25, %22
  %41 = phi i1 [ false, %22 ], [ %39, %25 ]
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %5, align 4, !tbaa !8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4, !tbaa !8
  br label %22

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %5, align 4, !tbaa !8
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %124

; <label>:49:                                     ; preds = %46
  %50 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #3
  %51 = load i32, i32* %5, align 4, !tbaa !8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4, !tbaa !8
  %53 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #3
  %54 = load i32, i32* %6, align 4, !tbaa !8
  store i32 %54, i32* %7, align 4, !tbaa !8
  br label %55

; <label>:55:                                     ; preds = %100, %49
  %56 = load i32, i32* %7, align 4, !tbaa !8
  %57 = load i32, i32* %3, align 4, !tbaa !8
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %2, align 8, !tbaa !3
  %61 = load i32, i32* %7, align 4, !tbaa !8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !7
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67:                                     ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %69, label %103

; <label>:69:                                     ; preds = %67
  %70 = load i8*, i8** %2, align 8, !tbaa !3
  %71 = load i32, i32* %7, align 4, !tbaa !8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !7
  %75 = sext i8 %74 to i32
  %76 = load i8*, i8** %2, align 8, !tbaa !3
  %77 = load i32, i32* %5, align 4, !tbaa !8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !7
  %81 = sext i8 %80 to i32
  %82 = icmp sgt i32 %75, %81
  br i1 %82, label %83, label %99

; <label>:83:                                     ; preds = %69
  %84 = load i8*, i8** %2, align 8, !tbaa !3
  %85 = load i32, i32* %7, align 4, !tbaa !8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1, !tbaa !7
  %89 = sext i8 %88 to i32
  %90 = load i8*, i8** %2, align 8, !tbaa !3
  %91 = load i32, i32* %6, align 4, !tbaa !8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1, !tbaa !7
  %95 = sext i8 %94 to i32
  %96 = icmp slt i32 %89, %95
  br i1 %96, label %97, label %99

; <label>:97:                                     ; preds = %83
  %98 = load i32, i32* %7, align 4, !tbaa !8
  store i32 %98, i32* %6, align 4, !tbaa !8
  br label %99

; <label>:99:                                     ; preds = %97, %83, %69
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %7, align 4, !tbaa !8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4, !tbaa !8
  br label %55

; <label>:103:                                    ; preds = %67
  %104 = load i8*, i8** %2, align 8, !tbaa !3
  %105 = load i32, i32* %5, align 4, !tbaa !8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8*, i8** %2, align 8, !tbaa !3
  %109 = load i32, i32* %6, align 4, !tbaa !8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  call void @swap(i8* %107, i8* %111)
  %112 = load i8*, i8** %2, align 8, !tbaa !3
  %113 = load i32, i32* %5, align 4, !tbaa !8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i32, i32* %3, align 4, !tbaa !8
  %118 = load i32, i32* %5, align 4, !tbaa !8
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  call void @qsort(i8* %116, i64 %121, i64 1, i32 (i8*, i8*)* @compare)
  %122 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #3
  %123 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #3
  br label %125

; <label>:124:                                    ; preds = %46
  store i32 0, i32* %4, align 4, !tbaa !8
  br label %125

; <label>:125:                                    ; preds = %124, %103
  %126 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126) #3
  br label %127

; <label>:127:                                    ; preds = %125
  %128 = load i32, i32* %4, align 4, !tbaa !8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %16, label %130

; <label>:130:                                    ; preds = %127
  %131 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #3
  %132 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #3
  ret void
}

declare i64 @strlen(i8*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %7 = load i32, i32* %2, align 4, !tbaa !8
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %10)
  call void @PrintSortedPermutations(i8* %10)
  store i32 0, i32* %1, align 4
  %12 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %12)
  %13 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
