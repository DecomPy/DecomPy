; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_x86_lib_misc.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_x86_lib_misc.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @num_digits(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 10, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 1, i32* %4, align 4, !tbaa !3
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4, !tbaa !3
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %9, %1
  br label %15

; <label>:15:                                     ; preds = %19, %14
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = mul nsw i32 %20, 10
  store i32 %21, i32* %3, align 4, !tbaa !3
  %22 = load i32, i32* %4, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4, !tbaa !3
  br label %15

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %4, align 4, !tbaa !3
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  %27 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #2
  ret i32 %25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
