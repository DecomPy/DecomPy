; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex02_ft_strstr.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex02_ft_strstr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #2
  store i8* null, i8** %8, align 8, !tbaa !3
  %13 = load i8*, i8** %5, align 8, !tbaa !3
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %19, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %81

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !tbaa !8
  br label %21

; <label>:21:                                     ; preds = %77, %20
  %22 = load i8*, i8** %4, align 8, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %4, align 8, !tbaa !3
  %31 = load i32, i32* %6, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %35 = sext i8 %34 to i32
  %36 = load i8*, i8** %5, align 8, !tbaa !3
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1, !tbaa !7
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %77

; <label>:41:                                     ; preds = %29
  %42 = load i8*, i8** %4, align 8, !tbaa !3
  %43 = load i32, i32* %6, align 4, !tbaa !8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %8, align 8, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !8
  br label %46

; <label>:46:                                     ; preds = %73, %41
  %47 = load i8*, i8** %4, align 8, !tbaa !3
  %48 = load i32, i32* %6, align 4, !tbaa !8
  %49 = load i32, i32* %7, align 4, !tbaa !8
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1, !tbaa !7
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %5, align 8, !tbaa !3
  %56 = load i32, i32* %7, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %76

; <label>:62:                                     ; preds = %46
  %63 = load i8*, i8** %5, align 8, !tbaa !3
  %64 = load i32, i32* %7, align 4, !tbaa !8
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !7
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %62
  %72 = load i8*, i8** %8, align 8, !tbaa !3
  store i8* %72, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %81

; <label>:73:                                     ; preds = %62
  %74 = load i32, i32* %7, align 4, !tbaa !8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4, !tbaa !8
  br label %46

; <label>:76:                                     ; preds = %46
  store i8* null, i8** %8, align 8, !tbaa !3
  br label %77

; <label>:77:                                     ; preds = %76, %29
  %78 = load i32, i32* %6, align 4, !tbaa !8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4, !tbaa !8
  br label %21

; <label>:80:                                     ; preds = %21
  store i8* null, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %81

; <label>:81:                                     ; preds = %80, %71, %18
  %82 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #2
  %83 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #2
  %84 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #2
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
