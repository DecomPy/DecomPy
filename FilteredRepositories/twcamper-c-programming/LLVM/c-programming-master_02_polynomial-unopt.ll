; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_polynomial.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_polynomial.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [35 x i8] c"3x^5 + 2x^4 - 5x^3 - x^2 + x7 - 6\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Enter a value for x: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"result: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Horner's rule: ((((3x + 2)x - 5)x - 1)x + 7)x - 6\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = mul nsw i32 3, %23
  store i32 %24, i32* %3, align 4, !tbaa !3
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = load i32, i32* %3, align 4, !tbaa !3
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %3, align 4, !tbaa !3
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %3, align 4, !tbaa !3
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %5, align 4, !tbaa !3
  %34 = load i32, i32* %2, align 4, !tbaa !3
  %35 = mul nsw i32 2, %34
  store i32 %35, i32* %3, align 4, !tbaa !3
  %36 = load i32, i32* %3, align 4, !tbaa !3
  %37 = load i32, i32* %3, align 4, !tbaa !3
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %3, align 4, !tbaa !3
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %6, align 4, !tbaa !3
  %43 = load i32, i32* %2, align 4, !tbaa !3
  %44 = mul nsw i32 5, %43
  store i32 %44, i32* %3, align 4, !tbaa !3
  %45 = load i32, i32* %3, align 4, !tbaa !3
  %46 = load i32, i32* %3, align 4, !tbaa !3
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %7, align 4, !tbaa !3
  %50 = load i32, i32* %2, align 4, !tbaa !3
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %8, align 4, !tbaa !3
  %53 = load i32, i32* %2, align 4, !tbaa !3
  %54 = mul nsw i32 7, %53
  store i32 %54, i32* %9, align 4, !tbaa !3
  store i32 6, i32* %10, align 4, !tbaa !3
  %55 = load i32, i32* %5, align 4, !tbaa !3
  %56 = load i32, i32* %6, align 4, !tbaa !3
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %7, align 4, !tbaa !3
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %8, align 4, !tbaa !3
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %9, align 4, !tbaa !3
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4, !tbaa !3
  %65 = sub nsw i32 %63, %64
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  %68 = load i32, i32* %2, align 4, !tbaa !3
  %69 = mul nsw i32 3, %68
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* %2, align 4, !tbaa !3
  %72 = mul nsw i32 %70, %71
  %73 = sub nsw i32 %72, 5
  %74 = load i32, i32* %2, align 4, !tbaa !3
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %2, align 4, !tbaa !3
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %78, 7
  %80 = load i32, i32* %2, align 4, !tbaa !3
  %81 = mul nsw i32 %79, %80
  %82 = sub nsw i32 %81, 6
  store i32 %82, i32* %4, align 4, !tbaa !3
  %83 = load i32, i32* %4, align 4, !tbaa !3
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %83)
  %85 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  %86 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3
  %87 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
  %90 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3
  %92 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3
  %93 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
