; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_sh_boot_compressed_cache.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_sh_boot_compressed_cache.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cache_control(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* inttoptr (i64 2147483648 to i32*), i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %13, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 32768
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %5
  %9 = load i32*, i32** %3, align 8
  %10 = load volatile i32, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 8
  store i32* %12, i32** %3, align 8
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 32
  store i32 %15, i32* %4, align 4
  br label %5

; <label>:16:                                     ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
