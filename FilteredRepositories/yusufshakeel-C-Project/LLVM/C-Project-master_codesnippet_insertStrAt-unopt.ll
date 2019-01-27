; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_insertStrAt.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_insertStrAt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.str = private unnamed_addr constant [15 x i8] c"ab\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [15 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 15, i8* %3) #6
  %4 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @main.str, i32 0, i32 0), i64 15, i1 false)
  %5 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i32 0, i32 0
  %6 = call i32 @insertStrAt(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i32 15, i8* %5)
  %7 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i32 0, i32 0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %7)
  %9 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 15, i8* %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @insertStrAt(i8*, i32, i32, i32, i8*) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8, !tbaa !3
  store i32 %1, i32* %8, align 4, !tbaa !7
  store i32 %2, i32* %9, align 4, !tbaa !7
  store i32 %3, i32* %10, align 4, !tbaa !7
  store i8* %4, i8** %11, align 8, !tbaa !3
  %13 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6
  %14 = load i8*, i8** %11, align 8, !tbaa !3
  %15 = load i32, i32* %8, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i32, i32* %9, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8*, i8** %11, align 8, !tbaa !3
  %22 = load i32, i32* %8, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %10, align 4, !tbaa !7
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = load i8*, i8** %11, align 8, !tbaa !3
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %9, align 4, !tbaa !7
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %37, i1 false, i1 true)
  %39 = call i8* @__memmove_chk(i8* %20, i8* %24, i64 %30, i64 %38) #6
  store i32 0, i32* %12, align 4, !tbaa !7
  br label %40

; <label>:40:                                     ; preds = %56, %5
  %41 = load i32, i32* %12, align 4, !tbaa !7
  %42 = load i32, i32* %9, align 4, !tbaa !7
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %7, align 8, !tbaa !3
  %46 = load i32, i32* %12, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %50 = load i8*, i8** %11, align 8, !tbaa !3
  %51 = load i32, i32* %12, align 4, !tbaa !7
  %52 = load i32, i32* %8, align 4, !tbaa !7
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8 %49, i8* %55, align 1, !tbaa !9
  br label %56

; <label>:56:                                     ; preds = %44
  %57 = load i32, i32* %12, align 4, !tbaa !7
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4, !tbaa !7
  br label %40

; <label>:59:                                     ; preds = %40
  %60 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #6
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #5

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
