; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_14_14.3.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_14_14.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"square(%g) = %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0123\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0ATesting Arrays\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d int\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%d float\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%d double\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%d char\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%.3f, %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%.3f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define double @square(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8, !tbaa !3
  %3 = load double, double* %2, align 8, !tbaa !3
  %4 = load double, double* %2, align 8, !tbaa !3
  %5 = fmul double %3, %4
  ret double %5
}

; Function Attrs: nounwind ssp uwtable
define void @test_disp() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %2 = call double @square(double 3.000000e+00)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), double 3.000000e+00, double %2)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @test_toupper() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca i32, align 4
  %3 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %4 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %4) #4
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0
  %6 = call i8* @__strcpy_chk(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 5) #4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  store i32 0, i32* %2, align 4, !tbaa !7
  %8 = load i32, i32* %2, align 4, !tbaa !7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !9
  %13 = sext i8 %12 to i32
  %14 = icmp sle i32 97, %13
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %0
  %16 = load i32, i32* %2, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br i1 %22, label %23, label %32

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %2, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 97
  %31 = add nsw i32 %30, 65
  br label %39

; <label>:32:                                     ; preds = %15, %0
  %33 = load i32, i32* %2, align 4, !tbaa !7
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  br label %39

; <label>:39:                                     ; preds = %32, %23
  %40 = phi i32 [ %31, %23 ], [ %38, %32 ]
  %41 = call i32 @putchar(i32 %40)
  %42 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0
  %44 = call i8* @__strcpy_chk(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 5) #4
  store i32 0, i32* %2, align 4, !tbaa !7
  %45 = load i32, i32* %2, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 97, %50
  br i1 %51, label %52, label %69

; <label>:52:                                     ; preds = %39
  %53 = load i32, i32* %2, align 4, !tbaa !7
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4, !tbaa !7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 122
  br i1 %59, label %60, label %69

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %2, align 4, !tbaa !7
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 97
  %68 = add nsw i32 %67, 65
  br label %76

; <label>:69:                                     ; preds = %52, %39
  %70 = load i32, i32* %2, align 4, !tbaa !7
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4, !tbaa !7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  br label %76

; <label>:76:                                     ; preds = %69, %60
  %77 = phi i32 [ %68, %60 ], [ %75, %69 ]
  %78 = call i32 @putchar(i32 %77)
  %79 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %80 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4
  %81 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %81) #4
  ret void
}

declare i32 @puts(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

declare i32 @putchar(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @test_nelms_macro() #0 {
  %1 = alloca [1234 x i32], align 16
  %2 = alloca [2234 x float], align 16
  %3 = alloca [3234 x double], align 16
  %4 = alloca [4234 x i8], align 16
  %5 = bitcast [1234 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4936, i8* %5) #4
  %6 = bitcast [1234 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 4936, i1 false)
  %7 = bitcast [2234 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8936, i8* %7) #4
  %8 = bitcast [2234 x float]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 8936, i1 false)
  %9 = bitcast [3234 x double]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 25872, i8* %9) #4
  %10 = bitcast [3234 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 25872, i1 false)
  %11 = bitcast [4234 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4234, i8* %11) #4
  %12 = bitcast [4234 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 4234, i1 false)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1234)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 2234)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 3234)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 4234)
  %18 = bitcast [4234 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4234, i8* %18) #4
  %19 = bitcast [3234 x double]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 25872, i8* %19) #4
  %20 = bitcast [2234 x float]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8936, i8* %20) #4
  %21 = bitcast [1234 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4936, i8* %21) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  store i32 2, i32* %2, align 4, !tbaa !7
  %4 = load i32, i32* %2, align 4, !tbaa !7
  %5 = add nsw i32 %4, 3
  %6 = load i32, i32* %2, align 4, !tbaa !7
  %7 = add nsw i32 %6, 3
  %8 = mul nsw i32 %5, %7
  %9 = load i32, i32* %2, align 4, !tbaa !7
  %10 = add nsw i32 %9, 3
  %11 = mul nsw i32 %8, %10
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), double 1.728000e+00, i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 1)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), double 0x4010CCCCD8000000)
  call void @test_nelms_macro()
  call void @test_toupper()
  call void @test_disp()
  %15 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
