; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter03_switch_eg_impl.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter03_switch_eg_impl.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@switch_eg_impl.jt = internal global [7 x i8*] [i8* blockaddress(@switch_eg_impl, %20), i8* blockaddress(@switch_eg_impl, %18), i8* blockaddress(@switch_eg_impl, %23), i8* blockaddress(@switch_eg_impl, %19), i8* blockaddress(@switch_eg_impl, %29), i8* blockaddress(@switch_eg_impl, %18), i8* blockaddress(@switch_eg_impl, %29)], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @switch_eg_impl(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 100
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 6
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  br label %18

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* @switch_eg_impl.jt, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  br label %37

; <label>:18:                                     ; preds = %12, %37, %37
  store i32 0, i32* %7, align 4
  br label %35

; <label>:19:                                     ; preds = %37
  store i32 0, i32* %7, align 4
  br label %26

; <label>:20:                                     ; preds = %37
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 13
  store i32 %22, i32* %7, align 4
  br label %33

; <label>:23:                                     ; preds = %37
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 10
  store i32 %25, i32* %7, align 4
  br label %26

; <label>:26:                                     ; preds = %23, %19
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 11
  store i32 %28, i32* %7, align 4
  br label %33

; <label>:29:                                     ; preds = %37, %37
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %33

; <label>:33:                                     ; preds = %29, %26, %20
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %33, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36

; <label>:37:                                     ; preds = %13
  %38 = phi i8* [ %17, %13 ]
  indirectbr i8* %38, [label %20, label %18, label %23, label %19, label %29, label %18, label %29]
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
