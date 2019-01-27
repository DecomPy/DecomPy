; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_string.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_string.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" World!\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Length of %s: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Putting %s and %s together gives %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @strlen(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %13, %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %3, align 4, !tbaa !7
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:16:                                     ; preds = %5
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3
  ret i64 %18
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i8* @strcat(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %26, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = load i8*, i8** %4, align 8, !tbaa !3
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %29

; <label>:13:                                     ; preds = %7
  %14 = load i8*, i8** %4, align 8, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !9
  %19 = load i8*, i8** %3, align 8, !tbaa !3
  %20 = load i8*, i8** %3, align 8, !tbaa !3
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %18, i8* %25, align 1, !tbaa !9
  br label %26

; <label>:26:                                     ; preds = %13
  %27 = load i32, i32* %5, align 4, !tbaa !7
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:29:                                     ; preds = %7
  %30 = load i8*, i8** %3, align 8, !tbaa !3
  %31 = load i8*, i8** %3, align 8, !tbaa !3
  %32 = call i64 @strlen(i8* %31)
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %5, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1, !tbaa !9
  %37 = load i8*, i8** %3, align 8, !tbaa !3
  %38 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret i8* %37
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %12 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %13 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8, !tbaa !3
  %14 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  store i8* null, i8** %8, align 8, !tbaa !3
  %15 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %15) #3
  %16 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %16) #3
  %17 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i8*, i8** %6, align 8, !tbaa !3
  %19 = load i8*, i8** %6, align 8, !tbaa !3
  %20 = call i64 @strlen(i8* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %18, i64 %20)
  %22 = load i8*, i8** %7, align 8, !tbaa !3
  %23 = load i8*, i8** %7, align 8, !tbaa !3
  %24 = call i64 @strlen(i8* %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %22, i64 %24)
  %26 = load i8*, i8** %8, align 8, !tbaa !3
  %27 = load i8*, i8** %8, align 8, !tbaa !3
  %28 = call i64 @strlen(i8* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %26, i64 %28)
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %45, %2
  %31 = load i32, i32* %11, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = load i8*, i8** %6, align 8, !tbaa !3
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %6, align 8, !tbaa !3
  %38 = load i32, i32* %11, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !9
  %42 = load i32, i32* %11, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %43
  store i8 %41, i8* %44, align 1, !tbaa !9
  br label %45

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %11, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4, !tbaa !7
  br label %30

; <label>:48:                                     ; preds = %30
  %49 = load i8*, i8** %6, align 8, !tbaa !3
  %50 = load i8*, i8** %7, align 8, !tbaa !3
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i32 0, i32 0
  %52 = load i8*, i8** %7, align 8, !tbaa !3
  %53 = call i8* @strcat(i8* %51, i8* %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %49, i8* %50, i8* %53)
  %55 = load i8**, i8*** %5, align 8, !tbaa !3
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8, !tbaa !3
  %58 = load i8**, i8*** %5, align 8, !tbaa !3
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8, !tbaa !3
  %61 = call i64 @strlen(i8* %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %57, i64 %61)
  %63 = load i8**, i8*** %5, align 8, !tbaa !3
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8, !tbaa !3
  %66 = load i8**, i8*** %5, align 8, !tbaa !3
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8, !tbaa !3
  %69 = call i64 @strlen(i8* %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %65, i64 %69)
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %71

; <label>:71:                                     ; preds = %90, %48
  %72 = load i32, i32* %11, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = load i8**, i8*** %5, align 8, !tbaa !3
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8, !tbaa !3
  %77 = call i64 @strlen(i8* %76)
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %93

; <label>:79:                                     ; preds = %71
  %80 = load i8**, i8*** %5, align 8, !tbaa !3
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8, !tbaa !3
  %83 = load i32, i32* %11, align 4, !tbaa !7
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !9
  %87 = load i32, i32* %11, align 4, !tbaa !7
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %88
  store i8 %86, i8* %89, align 1, !tbaa !9
  br label %90

; <label>:90:                                     ; preds = %79
  %91 = load i32, i32* %11, align 4, !tbaa !7
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4, !tbaa !7
  br label %71

; <label>:93:                                     ; preds = %71
  %94 = load i8**, i8*** %5, align 8, !tbaa !3
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8, !tbaa !3
  %97 = load i8**, i8*** %5, align 8, !tbaa !3
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8, !tbaa !3
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i32 0, i32 0
  %101 = load i8**, i8*** %5, align 8, !tbaa !3
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  %103 = load i8*, i8** %102, align 8, !tbaa !3
  %104 = call i8* @strcat(i8* %100, i8* %103)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %96, i8* %99, i8* %104)
  %106 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #3
  %107 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %107) #3
  %108 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %108) #3
  %109 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #3
  %110 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #3
  %111 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %111) #3
  ret i32 0
}

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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
