; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.6.jerk-filter.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.6.jerk-filter.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [16 x i8] c"Enter message: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"In J3rk-speak: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"!!!!!!!!!!!!\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [255 x i8], align 16
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %6) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %23, %0
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 255
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %8
  %12 = call i32 @getchar()
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 10
  br label %16

; <label>:16:                                     ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %16
  %19 = load i8, i8* %4, align 1, !tbaa !7
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 %21
  store i8 %19, i8* %22, align 1, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:26:                                     ; preds = %16
  %27 = load i32, i32* %2, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 %28
  store i8 0, i8* %29, align 1, !tbaa !7
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %59, %26
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %2, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !7
  %43 = sext i8 %42 to i32
  %44 = call i32 @toupper(i32 %43) #5
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %4, align 1, !tbaa !7
  %46 = load i8, i8* %4, align 1, !tbaa !7
  %47 = sext i8 %46 to i32
  switch i32 %47, label %55 [
    i32 65, label %48
    i32 66, label %49
    i32 69, label %50
    i32 73, label %51
    i32 76, label %52
    i32 79, label %53
    i32 83, label %54
  ]

; <label>:48:                                     ; preds = %38
  store i8 52, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:49:                                     ; preds = %38
  store i8 56, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:50:                                     ; preds = %38
  store i8 51, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:51:                                     ; preds = %38
  store i8 49, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:52:                                     ; preds = %38
  store i8 49, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:53:                                     ; preds = %38
  store i8 48, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:54:                                     ; preds = %38
  store i8 53, i8* %4, align 1, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %38, %54, %53, %52, %51, %50, %49, %48
  %56 = load i8, i8* %4, align 1, !tbaa !7
  %57 = sext i8 %56 to i32
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %57)
  br label %59

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %2, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4, !tbaa !3
  br label %31

; <label>:62:                                     ; preds = %31
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %4) #4
  %64 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %64) #4
  %65 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @__toupper(i32) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

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
