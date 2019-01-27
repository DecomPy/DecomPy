; ModuleID = 'Repositories/vim-vim/Unfiltered/vim-master_src_po_sjiscorr.c'
source_filename = "Repositories/vim-vim/Unfiltered/vim-master_src_po_sjiscorr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"charset=utf-8\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"charset=UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"charset=cp932\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"# Original translations\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"# generated from ja.po, DO NOT EDIT\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast [1024 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #3
  %9 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  br label %10

; <label>:10:                                     ; preds = %100, %2
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %13 = call i8* @fgets(i8* %11, i32 1024, %struct.__sFILE* %12)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %101

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  store i8* %16, i8** %7, align 8, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %97, %15
  %18 = load i8*, i8** %7, align 8, !tbaa !7
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %100

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %7, align 8, !tbaa !7
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 13)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %7, align 8, !tbaa !7
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i64 13)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %26, %22
  %31 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %32 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct.__sFILE* %31)
  %33 = load i8*, i8** %7, align 8, !tbaa !7
  %34 = getelementptr inbounds i8, i8* %33, i64 12
  store i8* %34, i8** %7, align 8, !tbaa !7
  br label %96

; <label>:35:                                     ; preds = %26
  %36 = load i8*, i8** %7, align 8, !tbaa !7
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i64 23)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %35
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %41 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), %struct.__sFILE* %40)
  br label %42

; <label>:42:                                     ; preds = %48, %39
  %43 = load i8*, i8** %7, align 8, !tbaa !7
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1, !tbaa !9
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %7, align 8, !tbaa !7
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8, !tbaa !7
  br label %42

; <label>:51:                                     ; preds = %42
  br label %95

; <label>:52:                                     ; preds = %35
  %53 = load i8*, i8** %7, align 8, !tbaa !7
  %54 = load i8, i8* %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %67

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %7, align 8, !tbaa !7
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1, !tbaa !9
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 95
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %57
  %64 = call i32 @putchar(i32 92)
  %65 = load i8*, i8** %7, align 8, !tbaa !7
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8, !tbaa !7
  br label %94

; <label>:67:                                     ; preds = %57, %52
  %68 = load i8*, i8** %7, align 8, !tbaa !7
  %69 = load i8, i8* %68, align 1, !tbaa !9
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %7, align 8, !tbaa !7
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8, !tbaa !7
  %76 = load i8, i8* %74, align 1, !tbaa !9
  %77 = sext i8 %76 to i32
  %78 = call i32 @putchar(i32 %77)
  %79 = load i8*, i8** %7, align 8, !tbaa !7
  %80 = load i8, i8* %79, align 1, !tbaa !9
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 92
  br i1 %82, label %83, label %88

; <label>:83:                                     ; preds = %73
  %84 = load i8*, i8** %7, align 8, !tbaa !7
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %86 = sext i8 %85 to i32
  %87 = call i32 @putchar(i32 %86)
  br label %88

; <label>:88:                                     ; preds = %83, %73
  br label %89

; <label>:89:                                     ; preds = %88, %67
  %90 = load i8*, i8** %7, align 8, !tbaa !7
  %91 = load i8, i8* %90, align 1, !tbaa !9
  %92 = sext i8 %91 to i32
  %93 = call i32 @putchar(i32 %92)
  br label %94

; <label>:94:                                     ; preds = %89, %63
  br label %95

; <label>:95:                                     ; preds = %94, %51
  br label %96

; <label>:96:                                     ; preds = %95, %30
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i8*, i8** %7, align 8, !tbaa !7
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8, !tbaa !7
  br label %17

; <label>:100:                                    ; preds = %17
  br label %10

; <label>:101:                                    ; preds = %10
  %102 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %102) #3
  %103 = bitcast [1024 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %103) #3
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #2

declare i32 @putchar(i32) #2

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
!9 = !{!5, !5, i64 0}
