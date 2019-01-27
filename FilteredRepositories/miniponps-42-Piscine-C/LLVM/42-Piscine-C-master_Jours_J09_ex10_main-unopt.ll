; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32***, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*******, align 8
  %5 = alloca i32****, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast i32**** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = bitcast i32******** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast i32***** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i32***, i32**** %2, align 8, !tbaa !3
  %11 = load i32**, i32*** %10, align 8, !tbaa !3
  %12 = load i32*, i32** %11, align 8, !tbaa !3
  store i32 1, i32* %12, align 4, !tbaa !7
  %13 = load i32*, i32** %3, align 8, !tbaa !3
  store i32 2, i32* %13, align 4, !tbaa !7
  %14 = load i32*******, i32******** %4, align 8, !tbaa !3
  %15 = load i32******, i32******* %14, align 8, !tbaa !3
  %16 = load i32*****, i32****** %15, align 8, !tbaa !3
  %17 = load i32****, i32***** %16, align 8, !tbaa !3
  %18 = load i32***, i32**** %17, align 8, !tbaa !3
  %19 = load i32**, i32*** %18, align 8, !tbaa !3
  %20 = load i32*, i32** %19, align 8, !tbaa !3
  store i32 3, i32* %20, align 4, !tbaa !7
  %21 = load i32****, i32***** %5, align 8, !tbaa !3
  %22 = load i32***, i32**** %21, align 8, !tbaa !3
  %23 = load i32**, i32*** %22, align 8, !tbaa !3
  %24 = load i32*, i32** %23, align 8, !tbaa !3
  store i32 4, i32* %24, align 4, !tbaa !7
  %25 = load i32***, i32**** %2, align 8, !tbaa !3
  %26 = load i32*, i32** %3, align 8, !tbaa !3
  %27 = load i32*******, i32******** %4, align 8, !tbaa !3
  %28 = load i32****, i32***** %5, align 8, !tbaa !3
  call void @ft_scrambler(i32*** %25, i32* %26, i32******* %27, i32**** %28)
  %29 = bitcast i32***** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #3
  %30 = bitcast i32******** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #3
  %31 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #3
  %32 = bitcast i32**** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare void @ft_scrambler(i32***, i32*, i32*******, i32****) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
