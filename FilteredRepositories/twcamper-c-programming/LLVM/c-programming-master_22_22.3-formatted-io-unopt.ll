; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3-formatted-io.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3-formatted-io.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"%#012.5g\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"00000083.736\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"000000029748\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%04d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%d widget\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%d widgets\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"10 20 30\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1.0 2.0 3.0\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"0.1 0.2 0.3\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c".1 .2 .3\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d%f%d\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"i: %d, f: %f, j: %d, n: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @ex_4() #0 {
  %1 = alloca i8*, align 8
  %2 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %1, align 8, !tbaa !3
  %3 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %4 = load i8*, i8** %1, align 8, !tbaa !3
  %5 = call i32 (i8*, ...) @printf(i8* %4, double 8.373610e+01)
  %6 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  %7 = load i8*, i8** %1, align 8, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* %7, double 0x40DD0D2A48E8A71E)
  %9 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  %10 = load i8*, i8** %1, align 8, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* %10, double 0x419926CBC8000000)
  %12 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @puts(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ex_5() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 12)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 12)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 12345)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 12345)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @wp(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)
  %7 = load i32, i32* %2, align 4, !tbaa !7
  %8 = call i32 (i8*, ...) @printf(i8* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @ex_6() #0 {
  call void @wp(i32 1)
  call void @wp(i32 2)
  call void @wp(i32 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @ex_7() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %1, align 8, !tbaa !3
  %12 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8** %2, align 8, !tbaa !3
  %13 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %3, align 8, !tbaa !3
  %14 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8** %4, align 8, !tbaa !3
  %15 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8** %5, align 8, !tbaa !3
  %16 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  %20 = bitcast float* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store float 0.000000e+00, float* %10, align 4, !tbaa !9
  %21 = load i8*, i8** %1, align 8, !tbaa !3
  %22 = load i8*, i8** %5, align 8, !tbaa !3
  %23 = call i32 (i8*, i8*, ...) @sscanf(i8* %21, i8* %22, i32* %7, float* %10, i32* %8)
  store i32 %23, i32* %9, align 4, !tbaa !7
  %24 = load i8*, i8** %6, align 8, !tbaa !3
  %25 = load i32, i32* %7, align 4, !tbaa !7
  %26 = load float, float* %10, align 4, !tbaa !9
  %27 = fpext float %26 to double
  %28 = load i32, i32* %8, align 4, !tbaa !7
  %29 = load i32, i32* %9, align 4, !tbaa !7
  %30 = call i32 (i8*, ...) @printf(i8* %24, i32 %25, double %27, i32 %28, i32 %29)
  %31 = load i8*, i8** %2, align 8, !tbaa !3
  %32 = load i8*, i8** %5, align 8, !tbaa !3
  %33 = call i32 (i8*, i8*, ...) @sscanf(i8* %31, i8* %32, i32* %7, float* %10, i32* %8)
  store i32 %33, i32* %9, align 4, !tbaa !7
  %34 = load i8*, i8** %6, align 8, !tbaa !3
  %35 = load i32, i32* %7, align 4, !tbaa !7
  %36 = load float, float* %10, align 4, !tbaa !9
  %37 = fpext float %36 to double
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = load i32, i32* %9, align 4, !tbaa !7
  %40 = call i32 (i8*, ...) @printf(i8* %34, i32 %35, double %37, i32 %38, i32 %39)
  %41 = load i8*, i8** %3, align 8, !tbaa !3
  %42 = load i8*, i8** %5, align 8, !tbaa !3
  %43 = call i32 (i8*, i8*, ...) @sscanf(i8* %41, i8* %42, i32* %7, float* %10, i32* %8)
  store i32 %43, i32* %9, align 4, !tbaa !7
  %44 = load i8*, i8** %6, align 8, !tbaa !3
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = load float, float* %10, align 4, !tbaa !9
  %47 = fpext float %46 to double
  %48 = load i32, i32* %8, align 4, !tbaa !7
  %49 = load i32, i32* %9, align 4, !tbaa !7
  %50 = call i32 (i8*, ...) @printf(i8* %44, i32 %45, double %47, i32 %48, i32 %49)
  %51 = load i8*, i8** %4, align 8, !tbaa !3
  %52 = load i8*, i8** %5, align 8, !tbaa !3
  %53 = call i32 (i8*, i8*, ...) @sscanf(i8* %51, i8* %52, i32* %7, float* %10, i32* %8)
  store i32 %53, i32* %9, align 4, !tbaa !7
  %54 = load i8*, i8** %6, align 8, !tbaa !3
  %55 = load i32, i32* %7, align 4, !tbaa !7
  %56 = load float, float* %10, align 4, !tbaa !9
  %57 = fpext float %56 to double
  %58 = load i32, i32* %8, align 4, !tbaa !7
  %59 = load i32, i32* %9, align 4, !tbaa !7
  %60 = call i32 (i8*, ...) @printf(i8* %54, i32 %55, double %57, i32 %58, i32 %59)
  %61 = bitcast float* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3
  %65 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #3
  %66 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #3
  %67 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #3
  %68 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #3
  %69 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #3
  %70 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #3
  ret void
}

declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @ex_4()
  call void @ex_5()
  call void @ex_6()
  call void @ex_7()
  ret i32 0
}

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
