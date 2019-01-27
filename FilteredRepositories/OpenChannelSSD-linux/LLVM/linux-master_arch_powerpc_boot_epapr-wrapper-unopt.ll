; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_powerpc_boot_epapr-wrapper.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_powerpc_boot_epapr-wrapper.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @platform_init(i64, i64, i64, i64, i64) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8, !tbaa !3
  store i64 %1, i64* %7, align 8, !tbaa !3
  store i64 %2, i64* %8, align 8, !tbaa !3
  store i64 %3, i64* %9, align 8, !tbaa !3
  store i64 %4, i64* %10, align 8, !tbaa !3
  %11 = load i64, i64* %6, align 8, !tbaa !3
  %12 = load i64, i64* %7, align 8, !tbaa !3
  %13 = load i64, i64* %8, align 8, !tbaa !3
  %14 = load i64, i64* %9, align 8, !tbaa !3
  %15 = load i64, i64* %10, align 8, !tbaa !3
  call void @epapr_platform_init(i64 %11, i64 %12, i64 %13, i64 %14, i64 %15)
  ret void
}

declare void @epapr_platform_init(i64, i64, i64, i64, i64) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
