; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-79.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-79.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fiveeighths(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, -2147483648
  %15 = icmp eq i32 %14, -2147483648
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 7
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  %28 = shl i32 %27, 3
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = and i32 %30, -8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 %34, 3
  %36 = sub nsw i32 %35, 1
  %37 = xor i32 %36, -1
  %38 = and i32 %37, -8
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 1
  %41 = shl i32 %40, 2
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, 7
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = add nsw i32 1, %51
  %53 = and i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 7, %57
  %59 = and i32 %58, 7
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = ashr i32 %68, 1
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = ashr i32 %72, 3
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %74, %75
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
