; ModuleID = 'Repositories/parallella-pal/Unfiltered/pal-master_src_math_asm_epiphany_main.c'
source_filename = "Repositories/parallella-pal/Unfiltered/pal-master_src_math_asm_epiphany_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x float], align 16
  %3 = alloca [16 x float], align 16
  %4 = alloca [16 x float], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %20, %0
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = sitofp i32 %10 to float
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x float], [16 x float]* %2, i64 0, i64 %13
  store float %11, float* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sitofp i32 %15 to float
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 %18
  store float %16, float* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds [16 x float], [16 x float]* %2, i32 0, i32 0
  %25 = getelementptr inbounds [16 x float], [16 x float]* %3, i32 0, i32 0
  %26 = getelementptr inbounds [16 x float], [16 x float]* %4, i32 0, i32 0
  %27 = call i32 @p_add_f32(float* %24, float* %25, float* %26, i32 16)
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare i32 @p_add_f32(float*, float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
