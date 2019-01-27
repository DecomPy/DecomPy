; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex04_ft_rot42.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex04_ft_rot42.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_rot42(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #2
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %79, %1
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %82

; <label>:16:                                     ; preds = %8
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %76, %16
  %18 = load i32, i32* %4, align 4, !tbaa !7
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %79

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %2, align 8, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !9
  store i8 %25, i8* %5, align 1, !tbaa !9
  %26 = load i8, i8* %5, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 97
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %20
  %30 = load i8, i8* %5, align 1, !tbaa !9
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 122
  br i1 %32, label %41, label %33

; <label>:33:                                     ; preds = %29, %20
  %34 = load i8, i8* %5, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 65
  br i1 %36, label %37, label %76

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %5, align 1, !tbaa !9
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %41, label %76

; <label>:41:                                     ; preds = %37, %29
  %42 = load i8*, i8** %2, align 8, !tbaa !3
  %43 = load i32, i32* %3, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 122
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %41
  %50 = load i8*, i8** %2, align 8, !tbaa !3
  %51 = load i32, i32* %3, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 97, i8* %53, align 1, !tbaa !9
  br label %75

; <label>:54:                                     ; preds = %41
  %55 = load i8*, i8** %2, align 8, !tbaa !3
  %56 = load i32, i32* %3, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !9
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 90
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %54
  %63 = load i8*, i8** %2, align 8, !tbaa !3
  %64 = load i32, i32* %3, align 4, !tbaa !7
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 65, i8* %66, align 1, !tbaa !9
  br label %74

; <label>:67:                                     ; preds = %54
  %68 = load i8*, i8** %2, align 8, !tbaa !3
  %69 = load i32, i32* %3, align 4, !tbaa !7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1, !tbaa !9
  %73 = add i8 %72, 1
  store i8 %73, i8* %71, align 1, !tbaa !9
  br label %74

; <label>:74:                                     ; preds = %67, %62
  br label %75

; <label>:75:                                     ; preds = %74, %49
  br label %76

; <label>:76:                                     ; preds = %75, %37, %33
  %77 = load i32, i32* %4, align 4, !tbaa !7
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4, !tbaa !7
  br label %17

; <label>:79:                                     ; preds = %17
  %80 = load i32, i32* %3, align 4, !tbaa !7
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4, !tbaa !7
  br label %8

; <label>:82:                                     ; preds = %8
  %83 = load i8*, i8** %2, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #2
  %84 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #2
  %85 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #2
  ret i8* %83
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
