; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_sh_boot_compressed_cache.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_arch_sh_boot_compressed_cache.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @cache_control(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %5 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #2
  store i32* inttoptr (i64 2147483648 to i32*), i32** %3, align 8, !tbaa !7
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %15, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 32768
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** %3, align 8, !tbaa !7
  %12 = load volatile i32, i32* %11, align 4, !tbaa !3
  %13 = load i32*, i32** %3, align 8, !tbaa !7
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  store i32* %14, i32** %3, align 8, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = add nsw i32 %16, 32
  store i32 %17, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:18:                                     ; preds = %7
  %19 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #2
  %20 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #2
  ret i32 0
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
