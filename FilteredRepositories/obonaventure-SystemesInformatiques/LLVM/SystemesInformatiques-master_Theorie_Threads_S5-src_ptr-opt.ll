; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_ptr.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_ptr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [59 x i8] c"a=%d [%p], b=%d [%p], p=%p, *p=%d, pp=%p, *pp=%p, **pp=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1252, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32* %5, i32** %7, align 8
  store i32** %7, i32*** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %9, i32* %5, i32 %10, i32* %6, i32* %11, i32 %13, i32** %14, i32* %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** %8, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %23, i32* %5, i32 %24, i32* %6, i32* %25, i32 %27, i32** %28, i32* %30, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32**, i32*** %8, align 8
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %39, i32* %5, i32 %40, i32* %6, i32* %41, i32 %43, i32** %44, i32* %46, i32 %49)
  %51 = load i32**, i32*** %8, align 8
  store i32* %6, i32** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %52, i32* %5, i32 %53, i32* %6, i32* %54, i32 %56, i32** %57, i32* %59, i32 %62)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
