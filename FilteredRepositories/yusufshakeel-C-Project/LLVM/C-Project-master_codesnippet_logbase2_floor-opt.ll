; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_floor.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_floor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ilog2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 1
  %11 = or i32 %8, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 2
  %15 = or i32 %12, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 4
  %19 = or i32 %16, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 8
  %23 = or i32 %20, %22
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 %25, 16
  %27 = or i32 %24, %26
  store i32 %27, i32* %2, align 4
  store i32 21845, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  store i32 %31, i32* %3, align 4
  store i32 13107, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %32, %34
  store i32 %35, i32* %4, align 4
  store i32 3855, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  store i32 %39, i32* %5, align 4
  store i32 16711935, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %2, align 4
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %44, %45
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %2, align 4
  %52 = ashr i32 %51, 2
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %52, %53
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %2, align 4
  %60 = ashr i32 %59, 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %60, %61
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %2, align 4
  %68 = ashr i32 %67, 8
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %68, %69
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %2, align 4
  %76 = ashr i32 %75, 16
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %76, %77
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
