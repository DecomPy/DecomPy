; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_cris_check_gcctorture_pr28634.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_cris_check_gcctorture_pr28634.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@x = global double 0xC340000000000000, align 8
@y = global double 1.000000e+00, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %5, %0
  %3 = load double, double* @y, align 8, !tbaa !3
  %4 = fcmp ogt double %3, 0.000000e+00
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %2
  %6 = load double, double* @x, align 8, !tbaa !3
  %7 = load double, double* @y, align 8, !tbaa !3
  %8 = fadd double %7, %6
  store double %8, double* @y, align 8, !tbaa !3
  br label %2

; <label>:9:                                      ; preds = %2
  %10 = load double, double* @y, align 8, !tbaa !3
  %11 = load double, double* @x, align 8, !tbaa !3
  %12 = fadd double %11, 1.000000e+00
  %13 = fcmp une double %10, %12
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

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
