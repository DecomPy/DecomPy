; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_cris_check_gcctorture_pr28634-1.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_cris_check_gcctorture_pr28634-1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@x = global i32 -1, align 4
@y = global i32 1, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %5, %0
  %3 = load i32, i32* @y, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* @x, align 4
  %7 = load i32, i32* @y, align 4
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* @y, align 4
  br label %2

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @y, align 4
  %11 = load i32, i32* @x, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9
  call void @abort() #2
  unreachable

; <label>:15:                                     ; preds = %9
  call void @exit(i32 0) #2
  unreachable
                                                  ; No predecessors!
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noreturn
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
