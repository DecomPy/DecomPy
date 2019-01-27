; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20140930_5.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20140930_5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@main.s = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap_chars(i8*, i8*) #0 {
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
define void @f(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !8
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = call i64 @strlen(i8* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4, !tbaa !8
  %12 = load i32, i32* %4, align 4, !tbaa !8
  %13 = load i32, i32* %6, align 4, !tbaa !8
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %3, align 8, !tbaa !3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %17)
  br label %49

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !tbaa !8
  store i32 %20, i32* %5, align 4, !tbaa !8
  br label %21

; <label>:21:                                     ; preds = %45, %19
  %22 = load i32, i32* %5, align 4, !tbaa !8
  %23 = load i32, i32* %6, align 4, !tbaa !8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %3, align 8, !tbaa !3
  %27 = load i32, i32* %4, align 4, !tbaa !8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** %3, align 8, !tbaa !3
  %31 = load i32, i32* %5, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  call void @swap_chars(i8* %29, i8* %33)
  %34 = load i8*, i8** %3, align 8, !tbaa !3
  %35 = load i32, i32* %4, align 4, !tbaa !8
  %36 = add nsw i32 %35, 1
  call void @f(i8* %34, i32 %36)
  %37 = load i8*, i8** %3, align 8, !tbaa !3
  %38 = load i32, i32* %4, align 4, !tbaa !8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %3, align 8, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  call void @swap_chars(i8* %40, i8* %44)
  br label %45

; <label>:45:                                     ; preds = %25
  %46 = load i32, i32* %5, align 4, !tbaa !8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4, !tbaa !8
  br label %21

; <label>:48:                                     ; preds = %21
  br label %49

; <label>:49:                                     ; preds = %48, %16
  %50 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  ret void
}

declare i64 @strlen(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !8
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %7) #3
  %8 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @main.s, i32 0, i32 0), i64 5, i1 false)
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 0
  call void @f(i8* %9, i32 0)
  %10 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %10) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
