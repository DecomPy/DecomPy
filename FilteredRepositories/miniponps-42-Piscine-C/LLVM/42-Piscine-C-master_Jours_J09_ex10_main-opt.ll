; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex10_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32***, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*******, align 8
  %5 = alloca i32****, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32***, i32**** %2, align 8
  %7 = load i32**, i32*** %6, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** %3, align 8
  store i32 2, i32* %9, align 4
  %10 = load i32*******, i32******** %4, align 8
  %11 = load i32******, i32******* %10, align 8
  %12 = load i32*****, i32****** %11, align 8
  %13 = load i32****, i32***** %12, align 8
  %14 = load i32***, i32**** %13, align 8
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32*, i32** %15, align 8
  store i32 3, i32* %16, align 4
  %17 = load i32****, i32***** %5, align 8
  %18 = load i32***, i32**** %17, align 8
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32*, i32** %19, align 8
  store i32 4, i32* %20, align 4
  %21 = load i32***, i32**** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*******, i32******** %4, align 8
  %24 = load i32****, i32***** %5, align 8
  call void @ft_scrambler(i32*** %21, i32* %22, i32******* %23, i32**** %24)
  ret i32 0
}

declare void @ft_scrambler(i32***, i32*, i32*******, i32****) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
