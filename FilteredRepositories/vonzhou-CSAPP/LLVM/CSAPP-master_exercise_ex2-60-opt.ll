; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-60.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-60.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @replace_byte(i32, i8 zeroext, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 3, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %11, %12
  %14 = shl i32 %13, 3
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 255, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %24, %25
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
