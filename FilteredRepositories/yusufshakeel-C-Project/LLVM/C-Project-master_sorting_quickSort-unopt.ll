; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_quickSort.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_quickSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [6 x i32] [i32 5, i32 2, i32 6, i32 1, i32 3, i32 4], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %4) #3
  %5 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([6 x i32]* @main.a to i8*), i64 24, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i32 0, i32 0
  call void @quickSort(i32* %7, i32 0, i32 5)
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %17, %0
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4, !tbaa !3
  br label %8

; <label>:20:                                     ; preds = %8
  %21 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  %22 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %22) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @quickSort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %3
  %13 = load i32*, i32** %4, align 8, !tbaa !7
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !3
  call void @partitionArray(i32* %13, i32 %14, i32 %15, i32* %7)
  %16 = load i32*, i32** %4, align 8, !tbaa !7
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = load i32, i32* %7, align 4, !tbaa !3
  %19 = sub nsw i32 %18, 1
  call void @quickSort(i32* %16, i32 %17, i32 %19)
  %20 = load i32*, i32** %4, align 8, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4, !tbaa !3
  call void @quickSort(i32* %20, i32 %22, i32 %23)
  br label %24

; <label>:24:                                     ; preds = %12, %3
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @partitionArray(i32*, i32, i32, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !7
  store i32 %1, i32* %6, align 4, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !3
  store i32* %3, i32** %8, align 8, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %13, i32* %9, align 4, !tbaa !3
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %15, i32* %10, align 4, !tbaa !3
  %16 = load i32, i32* %9, align 4, !tbaa !3
  %17 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %16, i32* %17, align 4, !tbaa !3
  %18 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  br label %19

; <label>:19:                                     ; preds = %156, %4
  br label %20

; <label>:20:                                     ; preds = %19
  br label %21

; <label>:21:                                     ; preds = %41, %20
  %22 = load i32*, i32** %5, align 8, !tbaa !7
  %23 = load i32*, i32** %8, align 8, !tbaa !7
  %24 = load i32, i32* %23, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !3
  %28 = load i32*, i32** %5, align 8, !tbaa !7
  %29 = load i32, i32* %10, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !3
  %33 = icmp sle i32 %27, %32
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %21
  %35 = load i32*, i32** %8, align 8, !tbaa !7
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %37 = load i32, i32* %10, align 4, !tbaa !3
  %38 = icmp ne i32 %36, %37
  br label %39

; <label>:39:                                     ; preds = %34, %21
  %40 = phi i1 [ false, %21 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %39
  %42 = load i32, i32* %10, align 4, !tbaa !3
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4, !tbaa !3
  br label %21

; <label>:44:                                     ; preds = %39
  %45 = load i32*, i32** %8, align 8, !tbaa !7
  %46 = load i32, i32* %45, align 4, !tbaa !3
  %47 = load i32, i32* %10, align 4, !tbaa !3
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %44
  br label %157

; <label>:50:                                     ; preds = %44
  %51 = load i32*, i32** %5, align 8, !tbaa !7
  %52 = load i32*, i32** %8, align 8, !tbaa !7
  %53 = load i32, i32* %52, align 4, !tbaa !3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !3
  %57 = load i32*, i32** %5, align 8, !tbaa !7
  %58 = load i32, i32* %10, align 4, !tbaa !3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !3
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %87

; <label>:63:                                     ; preds = %50
  %64 = load i32*, i32** %5, align 8, !tbaa !7
  %65 = load i32, i32* %10, align 4, !tbaa !3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !3
  store i32 %68, i32* %11, align 4, !tbaa !3
  %69 = load i32*, i32** %5, align 8, !tbaa !7
  %70 = load i32*, i32** %8, align 8, !tbaa !7
  %71 = load i32, i32* %70, align 4, !tbaa !3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !3
  %75 = load i32*, i32** %5, align 8, !tbaa !7
  %76 = load i32, i32* %10, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4, !tbaa !3
  %79 = load i32, i32* %11, align 4, !tbaa !3
  %80 = load i32*, i32** %5, align 8, !tbaa !7
  %81 = load i32*, i32** %8, align 8, !tbaa !7
  %82 = load i32, i32* %81, align 4, !tbaa !3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4, !tbaa !3
  %85 = load i32, i32* %10, align 4, !tbaa !3
  %86 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %85, i32* %86, align 4, !tbaa !3
  br label %87

; <label>:87:                                     ; preds = %63, %50
  br label %88

; <label>:88:                                     ; preds = %87
  br label %89

; <label>:89:                                     ; preds = %109, %88
  %90 = load i32*, i32** %5, align 8, !tbaa !7
  %91 = load i32*, i32** %8, align 8, !tbaa !7
  %92 = load i32, i32* %91, align 4, !tbaa !3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !3
  %96 = load i32*, i32** %5, align 8, !tbaa !7
  %97 = load i32, i32* %9, align 4, !tbaa !3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !3
  %101 = icmp sge i32 %95, %100
  br i1 %101, label %102, label %107

; <label>:102:                                    ; preds = %89
  %103 = load i32*, i32** %8, align 8, !tbaa !7
  %104 = load i32, i32* %103, align 4, !tbaa !3
  %105 = load i32, i32* %9, align 4, !tbaa !3
  %106 = icmp ne i32 %104, %105
  br label %107

; <label>:107:                                    ; preds = %102, %89
  %108 = phi i1 [ false, %89 ], [ %106, %102 ]
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %107
  %110 = load i32, i32* %9, align 4, !tbaa !3
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4, !tbaa !3
  br label %89

; <label>:112:                                    ; preds = %107
  %113 = load i32*, i32** %8, align 8, !tbaa !7
  %114 = load i32, i32* %113, align 4, !tbaa !3
  %115 = load i32, i32* %9, align 4, !tbaa !3
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %112
  br label %157

; <label>:118:                                    ; preds = %112
  %119 = load i32*, i32** %5, align 8, !tbaa !7
  %120 = load i32*, i32** %8, align 8, !tbaa !7
  %121 = load i32, i32* %120, align 4, !tbaa !3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !3
  %125 = load i32*, i32** %5, align 8, !tbaa !7
  %126 = load i32, i32* %9, align 4, !tbaa !3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4, !tbaa !3
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %155

; <label>:131:                                    ; preds = %118
  %132 = load i32*, i32** %5, align 8, !tbaa !7
  %133 = load i32, i32* %9, align 4, !tbaa !3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4, !tbaa !3
  store i32 %136, i32* %11, align 4, !tbaa !3
  %137 = load i32*, i32** %5, align 8, !tbaa !7
  %138 = load i32*, i32** %8, align 8, !tbaa !7
  %139 = load i32, i32* %138, align 4, !tbaa !3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !3
  %143 = load i32*, i32** %5, align 8, !tbaa !7
  %144 = load i32, i32* %9, align 4, !tbaa !3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4, !tbaa !3
  %147 = load i32, i32* %11, align 4, !tbaa !3
  %148 = load i32*, i32** %5, align 8, !tbaa !7
  %149 = load i32*, i32** %8, align 8, !tbaa !7
  %150 = load i32, i32* %149, align 4, !tbaa !3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4, !tbaa !3
  %153 = load i32, i32* %9, align 4, !tbaa !3
  %154 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %153, i32* %154, align 4, !tbaa !3
  br label %155

; <label>:155:                                    ; preds = %131, %118
  br label %156

; <label>:156:                                    ; preds = %155
  br label %19

; <label>:157:                                    ; preds = %117, %49
  %158 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #3
  %159 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #3
  %160 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #3
  ret void
}

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
