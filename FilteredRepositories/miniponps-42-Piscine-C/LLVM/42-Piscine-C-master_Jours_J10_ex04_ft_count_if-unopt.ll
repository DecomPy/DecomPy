; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex04_ft_count_if.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex04_ft_count_if.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_count_if(i8**, i32 (i8*)*) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8, !tbaa !3
  store i32 (i8*)* %1, i32 (i8*)** %4, align 8, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %28, %2
  %10 = load i8**, i8*** %3, align 8, !tbaa !3
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !3
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

; <label>:16:                                     ; preds = %9
  %17 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !tbaa !3
  %18 = load i8**, i8*** %3, align 8, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8, !tbaa !3
  %23 = call i32 %17(i8* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %25, %16
  %29 = load i32, i32* %6, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:31:                                     ; preds = %9
  %32 = load i32, i32* %5, align 4, !tbaa !7
  %33 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #2
  %34 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  ret i32 %32
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
