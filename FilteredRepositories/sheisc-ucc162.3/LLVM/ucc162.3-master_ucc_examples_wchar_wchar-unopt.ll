; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_wchar_wchar.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_wchar_wchar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.__mbstate_t = type { i64, [120 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"abc\E4\BD\A0\E5\A5\BDabc\00", align 1
@cstr = global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [17 x i32] [i32 109, i32 117, i32 108, i32 116, i32 105, i32 112, i32 108, i32 101, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 58, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 48, i32 120, i32 37, i32 120, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [14 x i32] [i32 10, i32 119, i32 105, i32 100, i32 101, i32 32, i32 99, i32 104, i32 97, i32 114, i32 115, i32 58, i32 10, i32 0], align 4
@__mb_cur_max = external global i32, align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 97, i32 98, i32 99, i32 20320, i32 22909, i32 97, i32 98, i32 99, i32 0], align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i32] [i32 37, i32 83, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 20320, i32 22909, i32 32, i32 20320, i32 22909, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"not print at all,why ?\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @ConvertMB2WC(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %7, i8** %3, align 8, !tbaa !3
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @.str.1, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %15, %1
  %12 = load i8*, i8** %3, align 8, !tbaa !3
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %3, align 8, !tbaa !3
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %18 = zext i8 %17 to i32
  %19 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %18)
  %20 = load i8*, i8** %3, align 8, !tbaa !3
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8, !tbaa !3
  br label %11

; <label>:22:                                     ; preds = %11
  %23 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %23, i8** %3, align 8, !tbaa !3
  %24 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.3, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %29, %22
  %26 = load i8*, i8** %3, align 8, !tbaa !3
  %27 = load i8, i8* %26, align 1, !tbaa !7
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %3, align 8, !tbaa !3
  %31 = load i32, i32* @__mb_cur_max, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = call i64 @mbrtowc(i32* %5, i8* %30, i64 %32, %union.__mbstate_t* null)
  store i64 %33, i64* %4, align 8, !tbaa !10
  %34 = load i32, i32* %5, align 4, !tbaa !8
  %35 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %34)
  %36 = load i64, i64* %4, align 8, !tbaa !10
  %37 = load i8*, i8** %3, align 8, !tbaa !3
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %3, align 8, !tbaa !3
  br label %25

; <label>:39:                                     ; preds = %25
  %40 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i32 0, i32 0))
  %41 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #3
  %43 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @wprintf(i32*, ...) #2

declare i64 @mbrtowc(i32*, i8*, i64, %union.__mbstate_t*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.5, i32 0, i32 0), i32** %2, align 8, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %3, align 4, !tbaa !8
  %6 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %7 = load i32*, i32** %2, align 8, !tbaa !3
  %8 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.7, i32 0, i32 0), i32* %7)
  store i32 0, i32* %3, align 4, !tbaa !8
  br label %9

; <label>:9:                                      ; preds = %22, %0
  %10 = load i32, i32* %3, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = load i32*, i32** %2, align 8, !tbaa !3
  %13 = call i64 @wcslen(i32* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %9
  %16 = load i32*, i32** %2, align 8, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %20)
  br label %22

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %3, align 4, !tbaa !8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4, !tbaa !8
  br label %9

; <label>:25:                                     ; preds = %9
  %26 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i32 0, i32 0))
  %27 = load i8*, i8** @cstr, align 8, !tbaa !3
  call void @ConvertMB2WC(i8* %27)
  %28 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.8, i32 0, i32 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  %30 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #3
  ret i32 0
}

declare i8* @setlocale(i32, i8*) #2

declare i64 @wcslen(i32*) #2

declare i32 @printf(i8*, ...) #2

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
