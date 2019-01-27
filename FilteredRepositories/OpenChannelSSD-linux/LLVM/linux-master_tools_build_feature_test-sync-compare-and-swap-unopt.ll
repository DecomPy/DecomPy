; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_build_feature_test-sync-compare-and-swap.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_build_feature_test-sync-compare-and-swap.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@x = common global i64 0, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #2
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8, !tbaa !9
  %12 = load i8**, i8*** %5, align 8, !tbaa !7
  store i8** %12, i8*** %5, align 8, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %16, %2
  %14 = cmpxchg i64* @x, i64 0, i64 0 seq_cst seq_cst
  %15 = extractvalue { i64, i1 } %14, 0
  store i64 %15, i64* %6, align 8, !tbaa !9
  br label %16

; <label>:16:                                     ; preds = %13
  %17 = load i64, i64* %6, align 8, !tbaa !9
  %18 = load i64, i64* %7, align 8, !tbaa !9
  %19 = cmpxchg i64* @x, i64 %17, i64 %18 seq_cst seq_cst
  %20 = extractvalue { i64, i1 } %19, 1
  %21 = xor i1 %20, true
  br i1 %21, label %13, label %22

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %6, align 8, !tbaa !9
  %24 = load i64, i64* %7, align 8, !tbaa !9
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #2
  %28 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #2
  ret i32 %26
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !5, i64 0}
