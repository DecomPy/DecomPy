; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.11.find-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.11.find-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @find_largest(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  store i32* %8, i32** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %25, %2
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = icmp ult i32* %10, %14
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %16
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  br label %9

; <label>:28:                                     ; preds = %9
  %29 = load i32*, i32** %6, align 8
  ret i32* %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 89, i32* %4, align 4
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 345, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 101, i32* %7, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  %9 = call i32* @find_largest(i32* %8, i32 4)
  store i32* %9, i32** %2, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
