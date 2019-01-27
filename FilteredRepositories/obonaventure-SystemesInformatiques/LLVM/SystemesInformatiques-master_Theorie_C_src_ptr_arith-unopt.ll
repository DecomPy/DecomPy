; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_ptr_arith.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_ptr_arith.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [24 x i8] c"%X est \C3\A0 l'adresse %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ptr_char contient %p\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %10 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %10) #3
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 16909060, i32* %11, align 4, !tbaa !3
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 84281096, i32* %12, align 4, !tbaa !3
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 151653132, i32* %13, align 4, !tbaa !3
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %27, %2
  %16 = load i32, i32* %7, align 4, !tbaa !3
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %7, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !3
  %23 = load i32, i32* %7, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %22, i32* %25)
  br label %27

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %7, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4, !tbaa !3
  br label %15

; <label>:30:                                     ; preds = %15
  %31 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #3
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i32 0, i32 0
  store i32* %32, i32** %8, align 8, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %33

; <label>:33:                                     ; preds = %43, %30
  %34 = load i32, i32* %7, align 4, !tbaa !3
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %33
  %37 = load i32*, i32** %8, align 8, !tbaa !7
  %38 = load i32, i32* %37, align 4, !tbaa !3
  %39 = load i32*, i32** %8, align 8, !tbaa !7
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %38, i32* %39)
  %41 = load i32*, i32** %8, align 8, !tbaa !7
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8, !tbaa !7
  br label %43

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %7, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4, !tbaa !3
  br label %33

; <label>:46:                                     ; preds = %33
  %47 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %47) #3
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i32 0, i32 0
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %9, align 8, !tbaa !7
  %50 = load i8*, i8** %9, align 8, !tbaa !7
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %50)
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %52

; <label>:52:                                     ; preds = %63, %46
  %53 = load i32, i32* %7, align 4, !tbaa !3
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %66

; <label>:55:                                     ; preds = %52
  %56 = load i8*, i8** %9, align 8, !tbaa !7
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %9, align 8, !tbaa !7
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %58, i8* %59)
  %61 = load i8*, i8** %9, align 8, !tbaa !7
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8, !tbaa !7
  br label %63

; <label>:63:                                     ; preds = %55
  %64 = load i32, i32* %7, align 4, !tbaa !3
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4, !tbaa !3
  br label %52

; <label>:66:                                     ; preds = %52
  %67 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #3
  %68 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #3
  %69 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  %70 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %70) #3
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

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
!9 = !{!5, !5, i64 0}
