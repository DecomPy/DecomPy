; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wmemset.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wmemset.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wmemset(i32*, i32, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i64 %2, i64* %6, align 8, !tbaa !9
  %8 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %9, i32** %7, align 8, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %14, %3
  %11 = load i64, i64* %6, align 8, !tbaa !9
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8, !tbaa !9
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = load i32*, i32** %7, align 8, !tbaa !3
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %7, align 8, !tbaa !3
  store i32 %15, i32* %16, align 4, !tbaa !7
  br label %10

; <label>:18:                                     ; preds = %10
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #2
  ret i32* %19
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
