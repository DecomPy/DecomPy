; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-69.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-69.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.ELE = type { %struct.ELE*, %struct.ELE*, i64 }

; Function Attrs: nounwind ssp uwtable
define i64 @trace(%struct.ELE*) #0 {
  %2 = alloca %struct.ELE*, align 8
  %3 = alloca i64, align 8
  store %struct.ELE* %0, %struct.ELE** %2, align 8, !tbaa !3
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #2
  store i64 0, i64* %3, align 8, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %8, %1
  %6 = load %struct.ELE*, %struct.ELE** %2, align 8, !tbaa !3
  %7 = icmp ne %struct.ELE* %6, null
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %5
  %9 = load %struct.ELE*, %struct.ELE** %2, align 8, !tbaa !3
  %10 = getelementptr inbounds %struct.ELE, %struct.ELE* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8, !tbaa !9
  store i64 %11, i64* %3, align 8, !tbaa !7
  %12 = load %struct.ELE*, %struct.ELE** %2, align 8, !tbaa !3
  %13 = getelementptr inbounds %struct.ELE, %struct.ELE* %12, i32 0, i32 0
  %14 = load %struct.ELE*, %struct.ELE** %13, align 8, !tbaa !11
  store %struct.ELE* %14, %struct.ELE** %2, align 8, !tbaa !3
  br label %5

; <label>:15:                                     ; preds = %5
  %16 = load i64, i64* %3, align 8, !tbaa !7
  %17 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #2
  ret i64 %16
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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !8, i64 16}
!10 = !{!"ELE", !4, i64 0, !4, i64 8, !8, i64 16}
!11 = !{!10, !4, i64 0}
