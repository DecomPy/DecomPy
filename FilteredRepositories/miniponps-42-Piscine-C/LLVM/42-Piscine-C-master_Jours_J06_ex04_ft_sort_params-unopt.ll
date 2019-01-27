; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J06_ex04_ft_sort_params.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J06_ex04_ft_sort_params.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @ft_sort_ascii(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  store i32 1, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %88, %2
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = load i32, i32* %4, align 4, !tbaa !7
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %91

; <label>:16:                                     ; preds = %11
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %40, %16
  %18 = load i8**, i8*** %3, align 8, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = load i8**, i8*** %3, align 8, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8, !tbaa !3
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %27, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %17
  %41 = load i32, i32* %6, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:43:                                     ; preds = %17
  %44 = load i8**, i8*** %3, align 8, !tbaa !3
  %45 = load i32, i32* %5, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8, !tbaa !3
  %49 = load i32, i32* %6, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = sext i8 %52 to i32
  %54 = load i8**, i8*** %3, align 8, !tbaa !3
  %55 = load i32, i32* %5, align 4, !tbaa !7
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8, !tbaa !3
  %60 = load i32, i32* %6, align 4, !tbaa !7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1, !tbaa !9
  %64 = sext i8 %63 to i32
  %65 = icmp sgt i32 %53, %64
  br i1 %65, label %66, label %88

; <label>:66:                                     ; preds = %43
  %67 = load i8**, i8*** %3, align 8, !tbaa !3
  %68 = load i32, i32* %5, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8, !tbaa !3
  store i8* %71, i8** %7, align 8, !tbaa !3
  %72 = load i8**, i8*** %3, align 8, !tbaa !3
  %73 = load i32, i32* %5, align 4, !tbaa !7
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8, !tbaa !3
  %78 = load i8**, i8*** %3, align 8, !tbaa !3
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %77, i8** %81, align 8, !tbaa !3
  %82 = load i8*, i8** %7, align 8, !tbaa !3
  %83 = load i8**, i8*** %3, align 8, !tbaa !3
  %84 = load i32, i32* %5, align 4, !tbaa !7
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  store i8* %82, i8** %87, align 8, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %88

; <label>:88:                                     ; preds = %66, %43
  %89 = load i32, i32* %5, align 4, !tbaa !7
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:91:                                     ; preds = %11
  %92 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #3
  %93 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3
  %94 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ft_print(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %45

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %5, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %41, %11
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %29, %16
  %18 = load i8**, i8*** %3, align 8, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %17
  %30 = load i8**, i8*** %3, align 8, !tbaa !3
  %31 = load i32, i32* %5, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1, !tbaa !9
  call void @ft_putchar(i8 signext %38)
  %39 = load i32, i32* %6, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:41:                                     ; preds = %17
  call void @ft_putchar(i8 signext 10)
  %42 = load i32, i32* %5, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4, !tbaa !7
  br label %12

; <label>:44:                                     ; preds = %12
  br label %45

; <label>:45:                                     ; preds = %44, %2
  %46 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  ret void
}

declare void @ft_putchar(i8 signext) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %6 = load i8**, i8*** %5, align 8, !tbaa !3
  %7 = load i32, i32* %4, align 4, !tbaa !7
  call void @ft_sort_ascii(i8** %6, i32 %7)
  %8 = load i8**, i8*** %5, align 8, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !7
  call void @ft_print(i8** %8, i32 %9)
  ret i32 0
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
