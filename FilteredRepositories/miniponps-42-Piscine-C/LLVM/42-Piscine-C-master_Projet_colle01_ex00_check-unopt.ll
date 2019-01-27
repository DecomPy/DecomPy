; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle01_ex00_check.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle01_ex00_check.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @check_line(i8**, i8 signext, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8, !tbaa !3
  store i8 %1, i8* %6, align 1, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !8
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %8, align 4, !tbaa !8
  br label %11

; <label>:11:                                     ; preds = %29, %3
  %12 = load i32, i32* %8, align 4, !tbaa !8
  %13 = icmp slt i32 %12, 9
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %11
  %15 = load i8**, i8*** %5, align 8, !tbaa !3
  %16 = load i32, i32* %7, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8, !tbaa !3
  %20 = load i32, i32* %8, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %6, align 1, !tbaa !7
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:29:                                     ; preds = %14
  %30 = load i32, i32* %8, align 4, !tbaa !8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4, !tbaa !8
  br label %11

; <label>:32:                                     ; preds = %11
  store i32 1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %28
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @check_column(i8**, i8 signext, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8, !tbaa !3
  store i8 %1, i8* %6, align 1, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !8
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 1, i32* %8, align 4, !tbaa !8
  br label %11

; <label>:11:                                     ; preds = %29, %3
  %12 = load i32, i32* %8, align 4, !tbaa !8
  %13 = icmp sle i32 %12, 9
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %11
  %15 = load i8**, i8*** %5, align 8, !tbaa !3
  %16 = load i32, i32* %8, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8, !tbaa !3
  %20 = load i32, i32* %7, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %6, align 1, !tbaa !7
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:29:                                     ; preds = %14
  %30 = load i32, i32* %8, align 4, !tbaa !8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4, !tbaa !8
  br label %11

; <label>:32:                                     ; preds = %11
  store i32 1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %28
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define i32 @check_block(i8**, i32, i32, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !8
  store i32 %2, i32* %8, align 4, !tbaa !8
  store i8 %3, i8* %9, align 1, !tbaa !7
  %13 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  store i32 -1, i32* %10, align 4, !tbaa !8
  %15 = load i32, i32* %7, align 4, !tbaa !8
  %16 = icmp sle i32 %15, 3
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %4
  store i32 1, i32* %7, align 4, !tbaa !8
  br label %28

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %7, align 4, !tbaa !8
  %20 = icmp sle i32 %19, 6
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  store i32 4, i32* %7, align 4, !tbaa !8
  br label %27

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %7, align 4, !tbaa !8
  %24 = icmp sle i32 %23, 9
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  store i32 7, i32* %7, align 4, !tbaa !8
  br label %26

; <label>:26:                                     ; preds = %25, %22
  br label %27

; <label>:27:                                     ; preds = %26, %21
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = load i32, i32* %8, align 4, !tbaa !8
  %30 = load i32, i32* %8, align 4, !tbaa !8
  %31 = srem i32 %30, 3
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %8, align 4, !tbaa !8
  br label %33

; <label>:33:                                     ; preds = %60, %28
  %34 = load i32, i32* %10, align 4, !tbaa !8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4, !tbaa !8
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %65

; <label>:37:                                     ; preds = %33
  store i32 -1, i32* %11, align 4, !tbaa !8
  br label %38

; <label>:38:                                     ; preds = %57, %37
  %39 = load i32, i32* %11, align 4, !tbaa !8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4, !tbaa !8
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %60

; <label>:42:                                     ; preds = %38
  %43 = load i8**, i8*** %6, align 8, !tbaa !3
  %44 = load i32, i32* %7, align 4, !tbaa !8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8, !tbaa !3
  %48 = load i32, i32* %8, align 4, !tbaa !8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !7
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %9, align 1, !tbaa !7
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %66

; <label>:57:                                     ; preds = %42
  %58 = load i32, i32* %8, align 4, !tbaa !8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4, !tbaa !8
  br label %38

; <label>:60:                                     ; preds = %38
  %61 = load i32, i32* %8, align 4, !tbaa !8
  %62 = sub nsw i32 %61, 3
  store i32 %62, i32* %8, align 4, !tbaa !8
  %63 = load i32, i32* %7, align 4, !tbaa !8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4, !tbaa !8
  br label %33

; <label>:65:                                     ; preds = %33
  store i32 1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %56
  %67 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #2
  %68 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #2
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: nounwind ssp uwtable
define i32 @check_grille(i8**, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !8
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %6, align 4, !tbaa !8
  %11 = load i32, i32* %5, align 4, !tbaa !8
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %76

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %74, %13
  %15 = load i32, i32* %6, align 4, !tbaa !8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4, !tbaa !8
  %17 = icmp sle i32 %16, 9
  br i1 %17, label %18, label %75

; <label>:18:                                     ; preds = %14
  store i32 0, i32* %7, align 4, !tbaa !8
  br label %19

; <label>:19:                                     ; preds = %67, %18
  %20 = load i8**, i8*** %4, align 8, !tbaa !3
  %21 = load i32, i32* %6, align 4, !tbaa !8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8, !tbaa !3
  %25 = load i32, i32* %7, align 4, !tbaa !8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !7
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %70

; <label>:30:                                     ; preds = %19
  %31 = load i8**, i8*** %4, align 8, !tbaa !3
  %32 = load i32, i32* %6, align 4, !tbaa !8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8, !tbaa !3
  %36 = load i32, i32* %7, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !7
  %40 = sext i8 %39 to i32
  %41 = icmp slt i32 %40, 48
  br i1 %41, label %54, label %42

; <label>:42:                                     ; preds = %30
  %43 = load i8**, i8*** %4, align 8, !tbaa !3
  %44 = load i32, i32* %6, align 4, !tbaa !8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8, !tbaa !3
  %48 = load i32, i32* %7, align 4, !tbaa !8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !7
  %52 = sext i8 %51 to i32
  %53 = icmp sgt i32 %52, 57
  br i1 %53, label %54, label %67

; <label>:54:                                     ; preds = %42, %30
  %55 = load i8**, i8*** %4, align 8, !tbaa !3
  %56 = load i32, i32* %6, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8, !tbaa !3
  %60 = load i32, i32* %7, align 4, !tbaa !8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1, !tbaa !7
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 46
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %54
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

; <label>:67:                                     ; preds = %54, %42
  %68 = load i32, i32* %7, align 4, !tbaa !8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4, !tbaa !8
  br label %19

; <label>:70:                                     ; preds = %19
  %71 = load i32, i32* %7, align 4, !tbaa !8
  %72 = icmp ne i32 %71, 9
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

; <label>:74:                                     ; preds = %70
  br label %14

; <label>:75:                                     ; preds = %14
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

; <label>:76:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

; <label>:77:                                     ; preds = %76, %75, %73, %66
  %78 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #2
  %79 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #2
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
