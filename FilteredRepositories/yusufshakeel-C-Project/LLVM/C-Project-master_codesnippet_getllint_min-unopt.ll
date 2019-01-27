; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getllint_min.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_getllint_min.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4
  %4 = call i64 @getllint()
  store i64 %4, i64* %2, align 8, !tbaa !3
  %5 = load i64, i64* %2, align 8, !tbaa !3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %5)
  %7 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i64 @getllint() #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4
  store i64 0, i64* %1, align 8, !tbaa !3
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #4
  %90 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %90) #4
  ret i64 %88
}

declare i32 @__srget(%struct.__sFILE*) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
