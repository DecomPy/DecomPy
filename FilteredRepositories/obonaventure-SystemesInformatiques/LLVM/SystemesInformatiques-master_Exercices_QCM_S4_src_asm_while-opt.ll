; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_while.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_while.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global i32 1, align 4
@b = global i32 2, align 4
@c = global i32 3, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f1() #0 {
  br label %1

; <label>:1:                                      ; preds = %5, %0
  %2 = load i32, i32* @a, align 4
  %3 = load i32, i32* @c, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @a, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = load i32, i32* @c, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* @b, align 4
  br label %1

; <label>:11:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f2() #0 {
  br label %1

; <label>:1:                                      ; preds = %5, %0
  %2 = load i32, i32* @c, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @a, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = load i32, i32* @c, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* @b, align 4
  br label %1

; <label>:11:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f3() #0 {
  br label %1

; <label>:1:                                      ; preds = %5, %0
  %2 = load i32, i32* @c, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @a, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = load i32, i32* @c, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* @b, align 4
  br label %1

; <label>:11:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f4() #0 {
  br label %1

; <label>:1:                                      ; preds = %7, %0
  %2 = load i32, i32* @a, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @a, align 4
  %4 = load i32, i32* @b, align 4
  %5 = load i32, i32* @c, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* @b, align 4
  br label %7

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @c, align 4
  %9 = load i32, i32* @a, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %1, label %11

; <label>:11:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f5() #0 {
  br label %1

; <label>:1:                                      ; preds = %5, %0
  %2 = load i32, i32* @c, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @a, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = load i32, i32* @c, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* @b, align 4
  br label %1

; <label>:11:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
