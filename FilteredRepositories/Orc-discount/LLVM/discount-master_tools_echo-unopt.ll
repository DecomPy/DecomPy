; ModuleID = 'Repositories/Orc-discount/Unfiltered/discount-master_tools_echo.c'
source_filename = "Repositories/Orc-discount/Unfiltered/discount-master_tools_echo.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  store i32 1, i32* %6, align 4, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %5, align 8, !tbaa !7
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8, !tbaa !7
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = load i8**, i8*** %5, align 8, !tbaa !7
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8, !tbaa !7
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %18, %12, %2
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %41, %23
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %7, align 4, !tbaa !3
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %28
  %32 = call i32 @putchar(i32 32)
  br label %33

; <label>:33:                                     ; preds = %31, %28
  %34 = load i8**, i8*** %5, align 8, !tbaa !7
  %35 = load i32, i32* %7, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8, !tbaa !7
  %39 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %40 = call i32 @"\01_fputs"(i8* %38, %struct.__sFILE* %39)
  br label %41

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %7, align 4, !tbaa !3
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4, !tbaa !3
  br label %24

; <label>:44:                                     ; preds = %24
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %44
  %48 = call i32 @putchar(i32 10)
  br label %49

; <label>:49:                                     ; preds = %47, %44
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @strcmp(i8*, i8*) #2

declare i32 @putchar(i32) #2

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
