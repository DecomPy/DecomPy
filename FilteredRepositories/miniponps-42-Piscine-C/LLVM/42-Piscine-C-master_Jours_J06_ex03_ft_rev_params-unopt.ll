; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J06_ex03_ft_rev_params.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J06_ex03_ft_rev_params.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %47

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %43, %12
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %46

; <label>:18:                                     ; preds = %15
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %31, %18
  %20 = load i8**, i8*** %5, align 8, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8, !tbaa !7
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %19
  %32 = load i8**, i8*** %5, align 8, !tbaa !7
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8, !tbaa !7
  %37 = load i32, i32* %7, align 4, !tbaa !3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !9
  call void @ft_putchar(i8 signext %40)
  %41 = load i32, i32* %7, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4, !tbaa !3
  br label %19

; <label>:43:                                     ; preds = %19
  call void @ft_putchar(i8 signext 10)
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4, !tbaa !3
  br label %15

; <label>:46:                                     ; preds = %15
  br label %47

; <label>:47:                                     ; preds = %46, %2
  %48 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare void @ft_putchar(i8 signext) #2

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
