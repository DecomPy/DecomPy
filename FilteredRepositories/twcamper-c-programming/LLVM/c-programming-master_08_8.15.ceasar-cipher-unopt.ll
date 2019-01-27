; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.15.ceasar-cipher.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.15.ceasar-cipher.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [32 x i8] c"Enter message to be encrypted: \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Enter shift amount (1-25): \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Encrypted message: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %7) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %22, %0
  %13 = call i32 @getchar()
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %3, align 1, !tbaa !7
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %20
  store i8 %18, i8* %21, align 1, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4, !tbaa !3
  br label %12

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %26, i32* %5, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %28 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %6)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %76, %25
  %31 = load i32, i32* %4, align 4, !tbaa !3
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %79

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %4, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1, !tbaa !7
  store i8 %38, i8* %3, align 1, !tbaa !7
  %39 = load i8, i8* %3, align 1, !tbaa !7
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 97
  br i1 %41, label %42, label %55

; <label>:42:                                     ; preds = %34
  %43 = load i8, i8* %3, align 1, !tbaa !7
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %55

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* %3, align 1, !tbaa !7
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 97
  %50 = load i32, i32* %6, align 4, !tbaa !3
  %51 = add nsw i32 %49, %50
  %52 = srem i32 %51, 26
  %53 = add nsw i32 %52, 97
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %3, align 1, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %46, %42, %34
  %56 = load i8, i8* %3, align 1, !tbaa !7
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 65
  br i1 %58, label %59, label %72

; <label>:59:                                     ; preds = %55
  %60 = load i8, i8* %3, align 1, !tbaa !7
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 90
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* %3, align 1, !tbaa !7
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 65
  %67 = load i32, i32* %6, align 4, !tbaa !3
  %68 = add nsw i32 %66, %67
  %69 = srem i32 %68, 26
  %70 = add nsw i32 %69, 65
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %3, align 1, !tbaa !7
  br label %72

; <label>:72:                                     ; preds = %63, %59, %55
  %73 = load i8, i8* %3, align 1, !tbaa !7
  %74 = sext i8 %73 to i32
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %74)
  br label %76

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %4, align 4, !tbaa !3
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4, !tbaa !3
  br label %30

; <label>:79:                                     ; preds = %30
  %80 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %81 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %83 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #3
  %84 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %84) #3
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

declare i32 @scanf(i8*, ...) #2

declare i32 @puts(i8*) #2

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
