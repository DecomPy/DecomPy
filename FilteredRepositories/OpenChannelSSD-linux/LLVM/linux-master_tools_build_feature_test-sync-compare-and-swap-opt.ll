; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_build_feature_test-sync-compare-and-swap.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_build_feature_test-sync-compare-and-swap.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@x = common global i64 0, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i8**, i8*** %5, align 8
  store i8** %10, i8*** %5, align 8
  br label %11

; <label>:11:                                     ; preds = %14, %2
  %12 = cmpxchg i64* @x, i64 0, i64 0 seq_cst seq_cst
  %13 = extractvalue { i64, i1 } %12, 0
  store i64 %13, i64* %6, align 8
  br label %14

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = cmpxchg i64* @x, i64 %15, i64 %16 seq_cst seq_cst
  %18 = extractvalue { i64, i1 } %17, 1
  %19 = xor i1 %18, true
  br i1 %19, label %11, label %20

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
