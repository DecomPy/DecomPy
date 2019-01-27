; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_ft_scrambler.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_ft_scrambler.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @ft_scrambler(i32***, i32*, i32*******, i32****) #0 {
  %5 = alloca i32***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*******, align 8
  %8 = alloca i32****, align 8
  %9 = alloca i32, align 4
  store i32*** %0, i32**** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32******* %2, i32******** %7, align 8, !tbaa !3
  store i32**** %3, i32***** %8, align 8, !tbaa !3
  %10 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = load i32*******, i32******** %7, align 8, !tbaa !3
  %12 = load i32******, i32******* %11, align 8, !tbaa !3
  %13 = load i32*****, i32****** %12, align 8, !tbaa !3
  %14 = load i32****, i32***** %13, align 8, !tbaa !3
  %15 = load i32***, i32**** %14, align 8, !tbaa !3
  %16 = load i32**, i32*** %15, align 8, !tbaa !3
  %17 = load i32*, i32** %16, align 8, !tbaa !3
  %18 = load i32, i32* %17, align 4, !tbaa !7
  store i32 %18, i32* %9, align 4, !tbaa !7
  %19 = load i32***, i32**** %5, align 8, !tbaa !3
  %20 = load i32**, i32*** %19, align 8, !tbaa !3
  %21 = load i32*, i32** %20, align 8, !tbaa !3
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = load i32*******, i32******** %7, align 8, !tbaa !3
  %24 = load i32******, i32******* %23, align 8, !tbaa !3
  %25 = load i32*****, i32****** %24, align 8, !tbaa !3
  %26 = load i32****, i32***** %25, align 8, !tbaa !3
  %27 = load i32***, i32**** %26, align 8, !tbaa !3
  %28 = load i32**, i32*** %27, align 8, !tbaa !3
  %29 = load i32*, i32** %28, align 8, !tbaa !3
  store i32 %22, i32* %29, align 4, !tbaa !7
  %30 = load i32*, i32** %6, align 8, !tbaa !3
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = load i32***, i32**** %5, align 8, !tbaa !3
  %33 = load i32**, i32*** %32, align 8, !tbaa !3
  %34 = load i32*, i32** %33, align 8, !tbaa !3
  store i32 %31, i32* %34, align 4, !tbaa !7
  %35 = load i32****, i32***** %8, align 8, !tbaa !3
  %36 = load i32***, i32**** %35, align 8, !tbaa !3
  %37 = load i32**, i32*** %36, align 8, !tbaa !3
  %38 = load i32*, i32** %37, align 8, !tbaa !3
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = load i32*, i32** %6, align 8, !tbaa !3
  store i32 %39, i32* %40, align 4, !tbaa !7
  %41 = load i32, i32* %9, align 4, !tbaa !7
  %42 = load i32****, i32***** %8, align 8, !tbaa !3
  %43 = load i32***, i32**** %42, align 8, !tbaa !3
  %44 = load i32**, i32*** %43, align 8, !tbaa !3
  %45 = load i32*, i32** %44, align 8, !tbaa !3
  store i32 %41, i32* %45, align 4, !tbaa !7
  %46 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #2
  ret void
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
