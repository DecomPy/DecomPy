; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-70.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-70.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.ELE = type { %struct.ELE*, %struct.ELE*, i64 }

; Function Attrs: nounwind ssp uwtable
define i64 @traverse(%struct.ELE*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ELE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ELE* %0, %struct.ELE** %3, align 8, !tbaa !3
  %7 = load %struct.ELE*, %struct.ELE** %3, align 8, !tbaa !3
  %8 = icmp ne %struct.ELE* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %41

; <label>:10:                                     ; preds = %1
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  %12 = load %struct.ELE*, %struct.ELE** %3, align 8, !tbaa !3
  %13 = getelementptr inbounds %struct.ELE, %struct.ELE* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8, !tbaa !7
  store i64 %14, i64* %4, align 8, !tbaa !10
  %15 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #2
  %16 = load %struct.ELE*, %struct.ELE** %3, align 8, !tbaa !3
  %17 = getelementptr inbounds %struct.ELE, %struct.ELE* %16, i32 0, i32 0
  %18 = load %struct.ELE*, %struct.ELE** %17, align 8, !tbaa !11
  %19 = call i64 @traverse(%struct.ELE* %18)
  store i64 %19, i64* %5, align 8, !tbaa !10
  %20 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #2
  %21 = load %struct.ELE*, %struct.ELE** %3, align 8, !tbaa !3
  %22 = getelementptr inbounds %struct.ELE, %struct.ELE* %21, i32 0, i32 1
  %23 = load %struct.ELE*, %struct.ELE** %22, align 8, !tbaa !12
  %24 = call i64 @traverse(%struct.ELE* %23)
  store i64 %24, i64* %6, align 8, !tbaa !10
  %25 = load i64, i64* %6, align 8, !tbaa !10
  %26 = load i64, i64* %5, align 8, !tbaa !10
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %10
  %29 = load i64, i64* %5, align 8, !tbaa !10
  store i64 %29, i64* %6, align 8, !tbaa !10
  br label %30

; <label>:30:                                     ; preds = %28, %10
  %31 = load i64, i64* %4, align 8, !tbaa !10
  %32 = load i64, i64* %6, align 8, !tbaa !10
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %30
  %35 = load i64, i64* %6, align 8, !tbaa !10
  store i64 %35, i64* %4, align 8, !tbaa !10
  br label %36

; <label>:36:                                     ; preds = %34, %30
  %37 = load i64, i64* %4, align 8, !tbaa !10
  store i64 %37, i64* %2, align 8
  %38 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #2
  %39 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #2
  %40 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #2
  br label %41

; <label>:41:                                     ; preds = %36, %9
  %42 = load i64, i64* %2, align 8
  ret i64 %42
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
!7 = !{!8, !9, i64 16}
!8 = !{!"ELE", !4, i64 0, !4, i64 8, !9, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !4, i64 0}
!12 = !{!8, !4, i64 8}
