; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.11.xlat-phone.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.11.xlat-phone.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"Enter phone number: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"In numeric form: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [15 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 15, i8* %5) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #4
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %54, %0
  %9 = call i32 @getchar()
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1, !tbaa !3
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %57

; <label>:13:                                     ; preds = %8
  %14 = load i8, i8* %3, align 1, !tbaa !3
  %15 = sext i8 %14 to i32
  %16 = call i32 @toupper(i32 %15) #5
  switch i32 %16, label %49 [
    i32 65, label %17
    i32 66, label %17
    i32 67, label %17
    i32 68, label %21
    i32 69, label %21
    i32 70, label %21
    i32 71, label %25
    i32 72, label %25
    i32 73, label %25
    i32 74, label %29
    i32 75, label %29
    i32 76, label %29
    i32 77, label %33
    i32 78, label %33
    i32 79, label %33
    i32 80, label %37
    i32 81, label %37
    i32 82, label %37
    i32 83, label %37
    i32 84, label %41
    i32 85, label %41
    i32 86, label %41
    i32 87, label %45
    i32 88, label %45
    i32 89, label %45
    i32 90, label %45
  ]

; <label>:17:                                     ; preds = %13, %13, %13
  %18 = load i32, i32* %4, align 4, !tbaa !6
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %19
  store i8 50, i8* %20, align 1, !tbaa !3
  br label %54

; <label>:21:                                     ; preds = %13, %13, %13
  %22 = load i32, i32* %4, align 4, !tbaa !6
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %23
  store i8 51, i8* %24, align 1, !tbaa !3
  br label %54

; <label>:25:                                     ; preds = %13, %13, %13
  %26 = load i32, i32* %4, align 4, !tbaa !6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %27
  store i8 52, i8* %28, align 1, !tbaa !3
  br label %54

; <label>:29:                                     ; preds = %13, %13, %13
  %30 = load i32, i32* %4, align 4, !tbaa !6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %31
  store i8 53, i8* %32, align 1, !tbaa !3
  br label %54

; <label>:33:                                     ; preds = %13, %13, %13
  %34 = load i32, i32* %4, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %35
  store i8 54, i8* %36, align 1, !tbaa !3
  br label %54

; <label>:37:                                     ; preds = %13, %13, %13, %13
  %38 = load i32, i32* %4, align 4, !tbaa !6
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %39
  store i8 55, i8* %40, align 1, !tbaa !3
  br label %54

; <label>:41:                                     ; preds = %13, %13, %13
  %42 = load i32, i32* %4, align 4, !tbaa !6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %43
  store i8 56, i8* %44, align 1, !tbaa !3
  br label %54

; <label>:45:                                     ; preds = %13, %13, %13, %13
  %46 = load i32, i32* %4, align 4, !tbaa !6
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %47
  store i8 57, i8* %48, align 1, !tbaa !3
  br label %54

; <label>:49:                                     ; preds = %13
  %50 = load i8, i8* %3, align 1, !tbaa !3
  %51 = load i32, i32* %4, align 4, !tbaa !6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %52
  store i8 %50, i8* %53, align 1, !tbaa !3
  br label %54

; <label>:54:                                     ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17
  %55 = load i32, i32* %4, align 4, !tbaa !6
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4, !tbaa !6
  br label %8

; <label>:57:                                     ; preds = %8
  %58 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i32 0, i32 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %58)
  store i32 0, i32* %1, align 4
  %60 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #4
  %61 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 15, i8* %61) #4
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !6
  %3 = load i32, i32* %2, align 4, !tbaa !6
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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
