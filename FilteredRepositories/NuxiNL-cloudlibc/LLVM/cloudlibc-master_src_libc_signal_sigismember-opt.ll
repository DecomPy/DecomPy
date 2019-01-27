; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_signal_sigismember.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_signal_sigismember.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sigismember(i32*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  br label %16

; <label>:16:                                     ; preds = %11, %12
  %17 = phi i32 [ 0, %11 ], [ %15, %12 ]
  %18 = and i32 %7, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
