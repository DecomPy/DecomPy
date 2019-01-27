; ModuleID = 'Repositories/rustyrussell-ccan/Unfiltered/ccan-master_junkcode_mansourmoufid@gmail.com-endianness_endianness.c'
source_filename = "Repositories/rustyrussell-ccan/Unfiltered/ccan-master_junkcode_mansourmoufid@gmail.com-endianness_endianness.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.one = internal constant i64 1, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* bitcast (i64* @main.one to i8*), align 8
  %3 = zext i8 %2 to i32
  %4 = icmp eq i32 1, %3
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

; <label>:6:                                      ; preds = %0
  store i32 1, i32* %1, align 4
  br label %7

; <label>:7:                                      ; preds = %6, %5
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
