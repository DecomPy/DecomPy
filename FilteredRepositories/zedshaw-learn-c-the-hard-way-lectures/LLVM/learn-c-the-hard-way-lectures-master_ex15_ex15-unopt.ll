; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex15_ex15.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex15_ex15.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.ages = private unnamed_addr constant [5 x i32] [i32 23, i32 43, i32 12, i32 89, i32 2], align 16
@.str = private unnamed_addr constant [5 x i8] c"Alan\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Frank\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Mary\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Lisa\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s has %d years alive.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s is %d years old.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s is %d years old again.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s lived %d years so far.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %12 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %12) #3
  %13 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([5 x i32]* @main.ages to i8*), i64 20, i1 false)
  %14 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %14) #3
  %15 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false)
  %16 = bitcast i8* %15 to [5 x i8*]*
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %20, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %21, align 16
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  store i32 5, i32* %8, align 4, !tbaa !3
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3
  store i32 0, i32* %9, align 4, !tbaa !3
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %38, %2
  %25 = load i32, i32* %9, align 4, !tbaa !3
  %26 = load i32, i32* %8, align 4, !tbaa !3
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %9, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8, !tbaa !7
  %33 = load i32, i32* %9, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %32, i32 %36)
  br label %38

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %9, align 4, !tbaa !3
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4, !tbaa !3
  br label %24

; <label>:41:                                     ; preds = %24
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %43 = bitcast i32** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43) #3
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  %45 = bitcast i8** %44 to i32*
  store i32* %45, i32** %10, align 8, !tbaa !7
  %46 = bitcast i8*** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %46) #3
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  store i8** %47, i8*** %11, align 8, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %48

; <label>:48:                                     ; preds = %64, %41
  %49 = load i32, i32* %9, align 4, !tbaa !3
  %50 = load i32, i32* %8, align 4, !tbaa !3
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

; <label>:52:                                     ; preds = %48
  %53 = load i8**, i8*** %11, align 8, !tbaa !7
  %54 = load i32, i32* %9, align 4, !tbaa !3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8, !tbaa !7
  %58 = load i32*, i32** %10, align 8, !tbaa !7
  %59 = load i32, i32* %9, align 4, !tbaa !3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !3
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %57, i32 %62)
  br label %64

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %9, align 4, !tbaa !3
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4, !tbaa !3
  br label %48

; <label>:67:                                     ; preds = %48
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %69

; <label>:69:                                     ; preds = %85, %67
  %70 = load i32, i32* %9, align 4, !tbaa !3
  %71 = load i32, i32* %8, align 4, !tbaa !3
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

; <label>:73:                                     ; preds = %69
  %74 = load i8**, i8*** %11, align 8, !tbaa !7
  %75 = load i32, i32* %9, align 4, !tbaa !3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8, !tbaa !7
  %79 = load i32*, i32** %10, align 8, !tbaa !7
  %80 = load i32, i32* %9, align 4, !tbaa !3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !3
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %78, i32 %83)
  br label %85

; <label>:85:                                     ; preds = %73
  %86 = load i32, i32* %9, align 4, !tbaa !3
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4, !tbaa !3
  br label %69

; <label>:88:                                     ; preds = %69
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %90 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  store i8** %90, i8*** %11, align 8, !tbaa !7
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  store i32* %91, i32** %10, align 8, !tbaa !7
  br label %92

; <label>:92:                                     ; preds = %108, %88
  %93 = load i32*, i32** %10, align 8, !tbaa !7
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = load i32, i32* %8, align 4, !tbaa !3
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %102, label %113

; <label>:102:                                    ; preds = %92
  %103 = load i8**, i8*** %11, align 8, !tbaa !7
  %104 = load i8*, i8** %103, align 8, !tbaa !7
  %105 = load i32*, i32** %10, align 8, !tbaa !7
  %106 = load i32, i32* %105, align 4, !tbaa !3
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* %104, i32 %106)
  br label %108

; <label>:108:                                    ; preds = %102
  %109 = load i8**, i8*** %11, align 8, !tbaa !7
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %11, align 8, !tbaa !7
  %111 = load i32*, i32** %10, align 8, !tbaa !7
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %10, align 8, !tbaa !7
  br label %92

; <label>:113:                                    ; preds = %92
  %114 = bitcast i8*** %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %114) #3
  %115 = bitcast i32** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %115) #3
  %116 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #3
  %117 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3
  %118 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %118) #3
  %119 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %119) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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
