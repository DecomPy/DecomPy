; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_arc4random_uniform.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_arc4random_uniform.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @arc4random_uniform(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %1
  %10 = bitcast i32* %4 to i8*
  call void @arc4random_buf(i8* %10, i64 4)
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %27

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sub i32 0, %13
  %15 = load i32, i32* %3, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %26, %12
  %18 = bitcast i32* %6 to i8*
  call void @arc4random_buf(i8* %18, i64 4)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = urem i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %27

; <label>:26:                                     ; preds = %17
  br label %17

; <label>:27:                                     ; preds = %22, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare void @arc4random_buf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
