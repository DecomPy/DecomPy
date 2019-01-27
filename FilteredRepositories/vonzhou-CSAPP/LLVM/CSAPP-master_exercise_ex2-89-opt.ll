; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-89.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-89.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.anon = type { float }
%union.anon.0 = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @f2u(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = bitcast %union.anon* %3 to float*
  store float %4, float* %5, align 4
  %6 = bitcast %union.anon* %3 to i32*
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @u2f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon.0, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.anon.0* %3 to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %union.anon.0* %3 to float*
  %7 = load float, float* %6, align 4
  ret float %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @fpwr2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, -149
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %25

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, -126
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  store i32 0, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 149
  %15 = shl i32 1, %14
  store i32 %15, i32* %4, align 4
  br label %24

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 129
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 127
  store i32 %21, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

; <label>:22:                                     ; preds = %16
  store i32 255, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %19
  br label %24

; <label>:24:                                     ; preds = %23, %12
  br label %25

; <label>:25:                                     ; preds = %24, %8
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 23
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call float @u2f(i32 %30)
  ret float %31
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
