; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex05_ft_is_sort.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex05_ft_is_sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_is_sort(i32*, i32, i32 (i32, i32)*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 (i32, i32)* %2, i32 (i32, i32)** %7, align 8, !tbaa !3
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %8, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %71

; <label>:16:                                     ; preds = %3
  br label %17

; <label>:17:                                     ; preds = %44, %16
  %18 = load i32, i32* %8, align 4, !tbaa !7
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %9, align 4, !tbaa !7
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

; <label>:26:                                     ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %47

; <label>:28:                                     ; preds = %26
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8, !tbaa !3
  %30 = load i32*, i32** %5, align 8, !tbaa !3
  %31 = load i32, i32* %8, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = load i32*, i32** %5, align 8, !tbaa !3
  %36 = load i32, i32* %8, align 4, !tbaa !7
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = call i32 %29(i32 %34, i32 %40)
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %28
  store i32 1, i32* %9, align 4, !tbaa !7
  br label %44

; <label>:44:                                     ; preds = %43, %28
  %45 = load i32, i32* %8, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4, !tbaa !7
  br label %17

; <label>:47:                                     ; preds = %26
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %48

; <label>:48:                                     ; preds = %69, %47
  %49 = load i32, i32* %8, align 4, !tbaa !7
  %50 = load i32, i32* %6, align 4, !tbaa !7
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %48
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8, !tbaa !3
  %55 = load i32*, i32** %5, align 8, !tbaa !3
  %56 = load i32, i32* %8, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !7
  %60 = load i32*, i32** %5, align 8, !tbaa !3
  %61 = load i32, i32* %8, align 4, !tbaa !7
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = call i32 %54(i32 %59, i32 %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %53
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %71

; <label>:69:                                     ; preds = %53
  br label %48

; <label>:70:                                     ; preds = %48
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %71

; <label>:71:                                     ; preds = %70, %68, %15
  %72 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #2
  %73 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #2
  %74 = load i32, i32* %4, align 4
  ret i32 %74
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
