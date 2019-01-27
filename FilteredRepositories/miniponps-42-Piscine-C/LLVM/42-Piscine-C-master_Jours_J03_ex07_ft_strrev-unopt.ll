; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J03_ex07_ft_strrev.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J03_ex07_ft_strrev.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_strlen(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %10, %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4, !tbaa !7
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4, !tbaa !7
  %13 = load i8*, i8** %2, align 8, !tbaa !3
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %2, align 8, !tbaa !3
  br label %5

; <label>:15:                                     ; preds = %5
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #2
  ret i32 %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strrev(i8*) #0 {
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
  store i32 1, i32* %4, align 4, !tbaa !7
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = call i32 @ft_strlen(i8* %8)
  store i32 %9, i32* %3, align 4, !tbaa !7
  br label %10

; <label>:10:                                     ; preds = %14, %1
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %2, align 8, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !7
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !9
  store i8 %20, i8* %5, align 1, !tbaa !9
  %21 = load i8*, i8** %2, align 8, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = load i8*, i8** %2, align 8, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !7
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %26, i8* %31, align 1, !tbaa !9
  %32 = load i8, i8* %5, align 1, !tbaa !9
  %33 = load i8*, i8** %2, align 8, !tbaa !3
  %34 = load i32, i32* %3, align 4, !tbaa !7
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 %32, i8* %37, align 1, !tbaa !9
  %38 = load i32, i32* %4, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4, !tbaa !7
  %40 = load i32, i32* %3, align 4, !tbaa !7
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4, !tbaa !7
  br label %10

; <label>:42:                                     ; preds = %10
  %43 = load i8*, i8** %2, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #2
  %44 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #2
  %45 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #2
  ret i8* %43
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
