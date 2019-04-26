; ModuleID = 'example1.c'
source_filename = "example1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %num1 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %num3 = alloca i32, align 4
  store i32 -12, i32* %num1, align 4
  store i32 1, i32* %num2, align 4
  %num4 = load i32, i32* %num2, align 4
  %num5 = load i32, i32* %num1, align 4
  %num6 = add nsw i32 %num4, %num5
  store i32 %num6, i32* %num3, align 4
  ret i32 %num6
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0-svn354892-1~exp1~20190226195658.47 (branches/release_80)"}
