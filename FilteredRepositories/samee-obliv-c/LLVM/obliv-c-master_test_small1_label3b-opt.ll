; ModuleID = 'Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_label3b.c'
source_filename = "Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_label3b.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.array = internal global [3 x i8*] [i8* blockaddress(@main, %3), i8* blockaddress(@main, %7), i8* blockaddress(@main, %11)], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %0, %16
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %2, align 4
  %6 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @main.array, i64 0, i64 1), align 8
  br label %16

; <label>:7:                                      ; preds = %16
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %2, align 4
  %10 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @main.array, i64 0, i64 2), align 16
  br label %16

; <label>:11:                                     ; preds = %16
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 3
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sub nsw i32 %14, 6
  ret i32 %15

; <label>:16:                                     ; preds = %7, %3
  %17 = phi i8* [ %6, %3 ], [ %10, %7 ]
  indirectbr i8* %17, [label %3, label %7, label %11]
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
