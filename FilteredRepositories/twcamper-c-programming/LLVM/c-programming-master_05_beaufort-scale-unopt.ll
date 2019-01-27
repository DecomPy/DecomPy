; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_beaufort-scale.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_beaufort-scale.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [27 x i8] c"Enter wind speed (knots): \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Calm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Light air\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Breeze\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Gale\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Storm\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Hurricane\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Wind Force: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %8 = load float, float* %3, align 4, !tbaa !3
  %9 = fcmp olt float %8, 1.000000e+00
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %32

; <label>:11:                                     ; preds = %0
  %12 = load float, float* %3, align 4, !tbaa !3
  %13 = fcmp olt float %12, 4.000000e+00
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %31

; <label>:15:                                     ; preds = %11
  %16 = load float, float* %3, align 4, !tbaa !3
  %17 = fcmp olt float %16, 2.800000e+01
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %30

; <label>:19:                                     ; preds = %15
  %20 = load float, float* %3, align 4, !tbaa !3
  %21 = fcmp olt float %20, 4.800000e+01
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %29

; <label>:23:                                     ; preds = %19
  %24 = load float, float* %3, align 4, !tbaa !3
  %25 = fcmp olt float %24, 0x404F8147A0000000
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %28

; <label>:27:                                     ; preds = %23
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 8, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %28, %22
  br label %30

; <label>:30:                                     ; preds = %29, %18
  br label %31

; <label>:31:                                     ; preds = %30, %14
  br label %32

; <label>:32:                                     ; preds = %31, %10
  %33 = load i8*, i8** %2, align 8, !tbaa !7
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* %33)
  %35 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
