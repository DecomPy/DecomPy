; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getllint_putllint.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getllint_putllint.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5
  %3 = call i64 @getllint()
  store i64 %3, i64* %1, align 8, !tbaa !3
  %4 = load i64, i64* %1, align 8, !tbaa !3
  call void @putllint(i64 %4)
  %5 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @putllint(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %7 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #5
  %8 = load i64, i64* %2, align 8, !tbaa !3
  store i64 %8, i64* %3, align 8, !tbaa !3
  %9 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #5
  %10 = load i64, i64* %2, align 8, !tbaa !3
  store i64 %10, i64* %4, align 8, !tbaa !3
  %11 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #5
  store i64 0, i64* %5, align 8, !tbaa !3
  %12 = load i64, i64* %3, align 8, !tbaa !3
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %1
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %16 = call i32 @__sputc(i32 48, %struct.__sFILE* %15)
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %18 = call i32 @__sputc(i32 10, %struct.__sFILE* %17)
  store i32 1, i32* %6, align 4
  br label %68

; <label>:19:                                     ; preds = %1
  br label %20

; <label>:20:                                     ; preds = %24, %19
  %21 = load i64, i64* %4, align 8, !tbaa !3
  %22 = srem i64 %21, 10
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %5, align 8, !tbaa !3
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8, !tbaa !3
  %27 = load i64, i64* %4, align 8, !tbaa !3
  %28 = sdiv i64 %27, 10
  store i64 %28, i64* %4, align 8, !tbaa !3
  br label %20

; <label>:29:                                     ; preds = %20
  store i64 0, i64* %4, align 8, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %33, %29
  %31 = load i64, i64* %3, align 8, !tbaa !3
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

; <label>:33:                                     ; preds = %30
  %34 = load i64, i64* %4, align 8, !tbaa !3
  %35 = shl i64 %34, 3
  %36 = load i64, i64* %4, align 8, !tbaa !3
  %37 = shl i64 %36, 1
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* %3, align 8, !tbaa !3
  %40 = srem i64 %39, 10
  %41 = add nsw i64 %38, %40
  store i64 %41, i64* %4, align 8, !tbaa !3
  %42 = load i64, i64* %3, align 8, !tbaa !3
  %43 = sdiv i64 %42, 10
  store i64 %43, i64* %3, align 8, !tbaa !3
  br label %30

; <label>:44:                                     ; preds = %30
  br label %45

; <label>:45:                                     ; preds = %48, %44
  %46 = load i64, i64* %4, align 8, !tbaa !3
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

; <label>:48:                                     ; preds = %45
  %49 = load i64, i64* %4, align 8, !tbaa !3
  %50 = srem i64 %49, 10
  %51 = add nsw i64 %50, 48
  %52 = trunc i64 %51 to i32
  %53 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %54 = call i32 @__sputc(i32 %52, %struct.__sFILE* %53)
  %55 = load i64, i64* %4, align 8, !tbaa !3
  %56 = sdiv i64 %55, 10
  store i64 %56, i64* %4, align 8, !tbaa !3
  br label %45

; <label>:57:                                     ; preds = %45
  br label %58

; <label>:58:                                     ; preds = %62, %57
  %59 = load i64, i64* %5, align 8, !tbaa !3
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %5, align 8, !tbaa !3
  %61 = icmp ne i64 %59, 0
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %58
  %63 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %64 = call i32 @__sputc(i32 48, %struct.__sFILE* %63)
  br label %58

; <label>:65:                                     ; preds = %58
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %67 = call i32 @__sputc(i32 10, %struct.__sFILE* %66)
  store i32 0, i32* %6, align 4
  br label %68

; <label>:68:                                     ; preds = %65, %14
  %69 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #5
  %70 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #5
  %71 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #5
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

; <label>:73:                                     ; preds = %68, %68
  ret void

; <label>:74:                                     ; preds = %68
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i64 @getllint() #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #5
  store i64 0, i64* %1, align 8, !tbaa !3
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !9
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 8, !tbaa !9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %0
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %12 = call i32 @__srget(%struct.__sFILE* %11)
  br label %20

; <label>:13:                                     ; preds = %0
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !14
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8, !tbaa !14
  %18 = load i8, i8* %16, align 1, !tbaa !15
  %19 = zext i8 %18 to i32
  br label %20

; <label>:20:                                     ; preds = %13, %10
  %21 = phi i32 [ %12, %10 ], [ %19, %13 ]
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %2, align 8, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %48, %20
  %24 = load i64, i64* %2, align 8, !tbaa !3
  %25 = icmp sge i64 %24, 48
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* %2, align 8, !tbaa !3
  %28 = icmp sle i64 %27, 57
  br label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %51

; <label>:32:                                     ; preds = %29
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8, !tbaa !9
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8, !tbaa !9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %32
  %39 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %40 = call i32 @__srget(%struct.__sFILE* %39)
  br label %48

; <label>:41:                                     ; preds = %32
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8, !tbaa !14
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8, !tbaa !14
  %46 = load i8, i8* %44, align 1, !tbaa !15
  %47 = zext i8 %46 to i32
  br label %48

; <label>:48:                                     ; preds = %41, %38
  %49 = phi i32 [ %40, %38 ], [ %47, %41 ]
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %2, align 8, !tbaa !3
  br label %23

; <label>:51:                                     ; preds = %29
  br label %52

; <label>:52:                                     ; preds = %84, %51
  %53 = load i64, i64* %2, align 8, !tbaa !3
  %54 = icmp sge i64 %53, 48
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %52
  %56 = load i64, i64* %2, align 8, !tbaa !3
  %57 = icmp sle i64 %56, 57
  br label %58

; <label>:58:                                     ; preds = %55, %52
  %59 = phi i1 [ false, %52 ], [ %57, %55 ]
  br i1 %59, label %60, label %87

; <label>:60:                                     ; preds = %58
  %61 = load i64, i64* %1, align 8, !tbaa !3
  %62 = shl i64 %61, 3
  %63 = load i64, i64* %1, align 8, !tbaa !3
  %64 = shl i64 %63, 1
  %65 = add nsw i64 %62, %64
  %66 = load i64, i64* %2, align 8, !tbaa !3
  %67 = sub nsw i64 %66, 48
  %68 = add nsw i64 %65, %67
  store i64 %68, i64* %1, align 8, !tbaa !3
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8, !tbaa !9
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8, !tbaa !9
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %60
  %75 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %76 = call i32 @__srget(%struct.__sFILE* %75)
  br label %84

; <label>:77:                                     ; preds = %60
  %78 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8, !tbaa !14
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8, !tbaa !14
  %82 = load i8, i8* %80, align 1, !tbaa !15
  %83 = zext i8 %82 to i32
  br label %84

; <label>:84:                                     ; preds = %77, %74
  %85 = phi i32 [ %76, %74 ], [ %83, %77 ]
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %2, align 8, !tbaa !3
  br label %52

; <label>:87:                                     ; preds = %58
  %88 = load i64, i64* %1, align 8, !tbaa !3
  %89 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #5
  %90 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %90) #5
  ret i64 %88
}

declare i32 @__srget(%struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind ssp uwtable
define available_externally i32 @__sputc(i32, %struct.__sFILE*) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sFILE*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !16
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8, !tbaa !7
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !17
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 4, !tbaa !17
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %24, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !17
  %15 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8, !tbaa !18
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !tbaa !16
  %21 = trunc i32 %20 to i8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %19, %2
  %25 = load i32, i32* %4, align 4, !tbaa !16
  %26 = trunc i32 %25 to i8
  %27 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !14
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8, !tbaa !14
  store i8 %26, i8* %29, align 1, !tbaa !15
  %31 = zext i8 %26 to i32
  store i32 %31, i32* %3, align 4
  br label %36

; <label>:32:                                     ; preds = %19, %11
  %33 = load i32, i32* %4, align 4, !tbaa !16
  %34 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %35 = call i32 @__swbuf(i32 %33, %struct.__sFILE* %34)
  store i32 %35, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %32, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare i32 @__swbuf(i32, %struct.__sFILE*) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"__sFILE", !8, i64 0, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !13, i64 24, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !13, i64 88, !8, i64 104, !11, i64 112, !5, i64 116, !5, i64 119, !13, i64 120, !11, i64 136, !4, i64 144}
!11 = !{!"int", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"__sbuf", !8, i64 0, !11, i64 8}
!14 = !{!10, !8, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!10, !11, i64 12}
!18 = !{!10, !11, i64 40}
