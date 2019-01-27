; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getint_putint.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getint_putint.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5
  %3 = call i32 @getint()
  store i32 %3, i32* %1, align 4, !tbaa !3
  %4 = load i32, i32* %1, align 4, !tbaa !3
  call void @putint(i32 %4)
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @putint(i32) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5
  %8 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %8, i32* %3, align 4, !tbaa !3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5
  %10 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %10, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5
  store i32 0, i32* %5, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %1
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %16 = call i32 @__sputc(i32 48, %struct.__sFILE* %15)
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %18 = call i32 @__sputc(i32 10, %struct.__sFILE* %17)
  store i32 1, i32* %6, align 4
  br label %67

; <label>:19:                                     ; preds = %1
  br label %20

; <label>:20:                                     ; preds = %24, %19
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = srem i32 %21, 10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %4, align 4, !tbaa !3
  br label %20

; <label>:29:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %33, %29
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = shl i32 %34, 3
  %36 = load i32, i32* %4, align 4, !tbaa !3
  %37 = shl i32 %36, 1
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = srem i32 %39, 10
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %4, align 4, !tbaa !3
  %42 = load i32, i32* %3, align 4, !tbaa !3
  %43 = sdiv i32 %42, 10
  store i32 %43, i32* %3, align 4, !tbaa !3
  br label %30

; <label>:44:                                     ; preds = %30
  br label %45

; <label>:45:                                     ; preds = %48, %44
  %46 = load i32, i32* %4, align 4, !tbaa !3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %4, align 4, !tbaa !3
  %50 = srem i32 %49, 10
  %51 = add nsw i32 %50, 48
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %53 = call i32 @__sputc(i32 %51, %struct.__sFILE* %52)
  %54 = load i32, i32* %4, align 4, !tbaa !3
  %55 = sdiv i32 %54, 10
  store i32 %55, i32* %4, align 4, !tbaa !3
  br label %45

; <label>:56:                                     ; preds = %45
  br label %57

; <label>:57:                                     ; preds = %61, %56
  %58 = load i32, i32* %5, align 4, !tbaa !3
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4, !tbaa !3
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57
  %62 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %63 = call i32 @__sputc(i32 48, %struct.__sFILE* %62)
  br label %57

; <label>:64:                                     ; preds = %57
  %65 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %66 = call i32 @__sputc(i32 10, %struct.__sFILE* %65)
  store i32 0, i32* %6, align 4
  br label %67

; <label>:67:                                     ; preds = %64, %14
  %68 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #5
  %69 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #5
  %70 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #5
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

; <label>:72:                                     ; preds = %67, %67
  ret void

; <label>:73:                                     ; preds = %67
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @getint() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5
  store i32 0, i32* %1, align 4, !tbaa !3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
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
  store i32 %21, i32* %2, align 4, !tbaa !3
  br label %22

; <label>:22:                                     ; preds = %47, %20
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = icmp sle i32 %26, 57
  br label %28

; <label>:28:                                     ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %49

; <label>:31:                                     ; preds = %28
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8, !tbaa !9
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8, !tbaa !9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %31
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %39 = call i32 @__srget(%struct.__sFILE* %38)
  br label %47

; <label>:40:                                     ; preds = %31
  %41 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !14
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %42, align 8, !tbaa !14
  %45 = load i8, i8* %43, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  br label %47

; <label>:47:                                     ; preds = %40, %37
  %48 = phi i32 [ %39, %37 ], [ %46, %40 ]
  store i32 %48, i32* %2, align 4, !tbaa !3
  br label %22

; <label>:49:                                     ; preds = %28
  br label %50

; <label>:50:                                     ; preds = %82, %49
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %2, align 4, !tbaa !3
  %55 = icmp sle i32 %54, 57
  br label %56

; <label>:56:                                     ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %58, label %84

; <label>:58:                                     ; preds = %56
  %59 = load i32, i32* %1, align 4, !tbaa !3
  %60 = shl i32 %59, 3
  %61 = load i32, i32* %1, align 4, !tbaa !3
  %62 = shl i32 %61, 1
  %63 = add nsw i32 %60, %62
  %64 = load i32, i32* %2, align 4, !tbaa !3
  %65 = sub nsw i32 %64, 48
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %1, align 4, !tbaa !3
  %67 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8, !tbaa !9
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8, !tbaa !9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %58
  %73 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %74 = call i32 @__srget(%struct.__sFILE* %73)
  br label %82

; <label>:75:                                     ; preds = %58
  %76 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %77 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8, !tbaa !14
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8, !tbaa !14
  %80 = load i8, i8* %78, align 1, !tbaa !15
  %81 = zext i8 %80 to i32
  br label %82

; <label>:82:                                     ; preds = %75, %72
  %83 = phi i32 [ %74, %72 ], [ %81, %75 ]
  store i32 %83, i32* %2, align 4, !tbaa !3
  br label %50

; <label>:84:                                     ; preds = %56
  %85 = load i32, i32* %1, align 4, !tbaa !3
  %86 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #5
  %87 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #5
  ret i32 %85
}

declare i32 @__srget(%struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind ssp uwtable
define available_externally i32 @__sputc(i32, %struct.__sFILE*) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sFILE*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !3
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8, !tbaa !7
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !16
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 4, !tbaa !16
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %24, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !16
  %15 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !tbaa !7
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8, !tbaa !17
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = trunc i32 %20 to i8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %19, %2
  %25 = load i32, i32* %4, align 4, !tbaa !3
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
  %33 = load i32, i32* %4, align 4, !tbaa !3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !4, i64 8}
!10 = !{!"__sFILE", !8, i64 0, !4, i64 8, !4, i64 12, !11, i64 16, !11, i64 18, !12, i64 24, !4, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !8, i64 104, !4, i64 112, !5, i64 116, !5, i64 119, !12, i64 120, !4, i64 136, !13, i64 144}
!11 = !{!"short", !5, i64 0}
!12 = !{!"__sbuf", !8, i64 0, !4, i64 8}
!13 = !{!"long long", !5, i64 0}
!14 = !{!10, !8, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!10, !4, i64 12}
!17 = !{!10, !4, i64 40}
