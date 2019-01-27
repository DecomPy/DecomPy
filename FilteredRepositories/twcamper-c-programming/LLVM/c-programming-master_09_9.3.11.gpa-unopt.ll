; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.3.11.gpa.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.3.11.gpa.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Enter up to %d letter grades: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GPA: %.2f\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid input: %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #5
  %5 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %5) #5
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5
  store i32 0, i32* %4, align 4, !tbaa !3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 100)
  br label %8

; <label>:8:                                      ; preds = %29, %0
  %9 = call i32 @getchar()
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = icmp slt i32 %14, 100
  br label %16

; <label>:16:                                     ; preds = %13, %8
  %17 = phi i1 [ false, %8 ], [ %15, %13 ]
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %16
  %19 = load i8, i8* %2, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %2, align 1, !tbaa !7
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 %25
  store i8 %23, i8* %26, align 1, !tbaa !7
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %22, %18
  br label %8

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = call float @compute_GPA(i8* %31, i32 %32)
  %34 = fpext float %33 to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), double %34)
  store i32 0, i32* %1, align 4
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5
  %37 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %37) #5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #5
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: nounwind ssp uwtable
define float @compute_GPA(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !8
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5
  store float 0.000000e+00, float* %5, align 4, !tbaa !10
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %46, %2
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !tbaa !8
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %19 = sext i8 %18 to i32
  %20 = call i32 @toupper(i32 %19) #6
  switch i32 %20, label %36 [
    i32 65, label %21
    i32 66, label %24
    i32 67, label %27
    i32 68, label %30
    i32 70, label %33
  ]

; <label>:21:                                     ; preds = %13
  %22 = load float, float* %5, align 4, !tbaa !10
  %23 = fadd float %22, 4.000000e+00
  store float %23, float* %5, align 4, !tbaa !10
  br label %45

; <label>:24:                                     ; preds = %13
  %25 = load float, float* %5, align 4, !tbaa !10
  %26 = fadd float %25, 3.000000e+00
  store float %26, float* %5, align 4, !tbaa !10
  br label %45

; <label>:27:                                     ; preds = %13
  %28 = load float, float* %5, align 4, !tbaa !10
  %29 = fadd float %28, 2.000000e+00
  store float %29, float* %5, align 4, !tbaa !10
  br label %45

; <label>:30:                                     ; preds = %13
  %31 = load float, float* %5, align 4, !tbaa !10
  %32 = fadd float %31, 1.000000e+00
  store float %32, float* %5, align 4, !tbaa !10
  br label %45

; <label>:33:                                     ; preds = %13
  %34 = load float, float* %5, align 4, !tbaa !10
  %35 = fadd float %34, 0.000000e+00
  store float %35, float* %5, align 4, !tbaa !10
  br label %45

; <label>:36:                                     ; preds = %13
  %37 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %38 = load i8*, i8** %3, align 8, !tbaa !8
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !7
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %43)
  call void @exit(i32 1) #7
  unreachable

; <label>:45:                                     ; preds = %33, %30, %27, %24, %21
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:49:                                     ; preds = %9
  %50 = load float, float* %5, align 4, !tbaa !10
  %51 = load i32, i32* %4, align 4, !tbaa !3
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5
  %55 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #5
  ret float %53
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #4

declare i32 @__toupper(i32) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !5, i64 0}
