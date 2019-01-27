; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_sample_ch07_swap.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_sample_ch07_swap.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@buf = external global [0 x i32], align 4
@bufp0 = global i32* getelementptr inbounds ([0 x i32], [0 x i32]* @buf, i32 0, i32 0), align 8
@bufp1 = common global i32* null, align 8

; Function Attrs: nounwind ssp uwtable
define void @swap() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @buf, i64 0, i64 1), i32** @bufp1, align 8, !tbaa !3
  %3 = load i32*, i32** @bufp0, align 8, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !7
  store i32 %4, i32* %1, align 4, !tbaa !7
  %5 = load i32*, i32** @bufp1, align 8, !tbaa !3
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %7 = load i32*, i32** @bufp0, align 8, !tbaa !3
  store i32 %6, i32* %7, align 4, !tbaa !7
  %8 = load i32, i32* %1, align 4, !tbaa !7
  %9 = load i32*, i32** @bufp1, align 8, !tbaa !3
  store i32 %8, i32* %9, align 4, !tbaa !7
  %10 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #2
  ret void
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
