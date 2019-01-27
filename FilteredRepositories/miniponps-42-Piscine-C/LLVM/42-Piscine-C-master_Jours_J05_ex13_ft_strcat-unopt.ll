; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex13_ft_strcat.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex13_ft_strcat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strcat(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %17, %2
  %10 = load i8*, i8** %3, align 8, !tbaa !3
  %11 = load i32, i32* %5, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4, !tbaa !7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:22:                                     ; preds = %9
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %31, %22
  %24 = load i8*, i8** %4, align 8, !tbaa !3
  %25 = load i32, i32* %5, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** %4, align 8, !tbaa !3
  %33 = load i32, i32* %5, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = load i8*, i8** %3, align 8, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = load i32, i32* %5, align 4, !tbaa !7
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8 %36, i8* %42, align 1, !tbaa !9
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4, !tbaa !7
  br label %23

; <label>:45:                                     ; preds = %23
  %46 = load i8*, i8** %3, align 8, !tbaa !3
  %47 = load i32, i32* %6, align 4, !tbaa !7
  %48 = load i32, i32* %5, align 4, !tbaa !7
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8 0, i8* %51, align 1, !tbaa !9
  %52 = load i8*, i8** %3, align 8, !tbaa !3
  %53 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #2
  %54 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #2
  ret i8* %52
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
