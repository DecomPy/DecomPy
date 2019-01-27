; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex07_ft_strcapitalize.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex07_ft_strcapitalize.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strcapitalize(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #2
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %117, %1
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %120

; <label>:16:                                     ; preds = %8
  store i32 1, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  store i8 59, i8* %4, align 1, !tbaa !9
  br label %27

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %2, align 8, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  store i8 %26, i8* %4, align 1, !tbaa !9
  br label %27

; <label>:27:                                     ; preds = %20, %19
  %28 = load i8, i8* %4, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 65
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %4, align 1, !tbaa !9
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 90
  br i1 %34, label %43, label %35

; <label>:35:                                     ; preds = %31, %27
  %36 = load i8, i8* %4, align 1, !tbaa !9
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %44

; <label>:39:                                     ; preds = %35
  %40 = load i8, i8* %4, align 1, !tbaa !9
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 122
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %39, %31
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %44

; <label>:44:                                     ; preds = %43, %39, %35
  %45 = load i8, i8* %4, align 1, !tbaa !9
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %44
  %49 = load i8, i8* %4, align 1, !tbaa !9
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %48
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %52, %48, %44
  %54 = load i32, i32* %5, align 4, !tbaa !7
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %85

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %2, align 8, !tbaa !3
  %58 = load i32, i32* %3, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = sext i8 %61 to i32
  %63 = icmp sge i32 %62, 97
  br i1 %63, label %64, label %85

; <label>:64:                                     ; preds = %56
  %65 = load i8*, i8** %2, align 8, !tbaa !3
  %66 = load i32, i32* %3, align 4, !tbaa !7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1, !tbaa !9
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 122
  br i1 %71, label %72, label %85

; <label>:72:                                     ; preds = %64
  %73 = load i8*, i8** %2, align 8, !tbaa !3
  %74 = load i32, i32* %3, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 32
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %2, align 8, !tbaa !3
  %82 = load i32, i32* %3, align 4, !tbaa !7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1, !tbaa !9
  br label %85

; <label>:85:                                     ; preds = %72, %64, %56, %53
  %86 = load i32, i32* %5, align 4, !tbaa !7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %117

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** %2, align 8, !tbaa !3
  %90 = load i32, i32* %3, align 4, !tbaa !7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !9
  %94 = sext i8 %93 to i32
  %95 = icmp sge i32 %94, 65
  br i1 %95, label %96, label %117

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %2, align 8, !tbaa !3
  %98 = load i32, i32* %3, align 4, !tbaa !7
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1, !tbaa !9
  %102 = sext i8 %101 to i32
  %103 = icmp sle i32 %102, 90
  br i1 %103, label %104, label %117

; <label>:104:                                    ; preds = %96
  %105 = load i8*, i8** %2, align 8, !tbaa !3
  %106 = load i32, i32* %3, align 4, !tbaa !7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, 32
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %2, align 8, !tbaa !3
  %114 = load i32, i32* %3, align 4, !tbaa !7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1, !tbaa !9
  br label %117

; <label>:117:                                    ; preds = %104, %96, %88, %85
  %118 = load i32, i32* %3, align 4, !tbaa !7
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4, !tbaa !7
  br label %8

; <label>:120:                                    ; preds = %8
  %121 = load i8*, i8** %2, align 8, !tbaa !3
  %122 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #2
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %4) #2
  %123 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #2
  ret i8* %121
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
