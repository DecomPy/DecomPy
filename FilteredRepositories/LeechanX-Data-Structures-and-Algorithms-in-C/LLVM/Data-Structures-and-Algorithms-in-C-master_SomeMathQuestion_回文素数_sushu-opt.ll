; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_回文素数_sushu.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E5\9B\9E\E6\96\87\E7\B4\A0\E6\95\B0_sushu.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = internal global <{ i32, i32, [99999 x i32] }> <{ i32 1, i32 1, [99999 x i32] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @create_flag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %28, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 50000
  br i1 %5, label %6, label %31

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %22, %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 100000
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %20
  store i32 1, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %2, align 4
  br label %15

; <label>:26:                                     ; preds = %15
  br label %27

; <label>:27:                                     ; preds = %26, %6
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %3

; <label>:31:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @isPrim(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
