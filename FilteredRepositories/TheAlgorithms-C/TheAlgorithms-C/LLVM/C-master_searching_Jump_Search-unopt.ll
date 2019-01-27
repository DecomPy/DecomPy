; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Jump_Search.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Jump_Search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.arr = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 3, i32 5, i32 8, i32 13, i32 21, i32 34, i32 55, i32 89, i32 144, i32 233, i32 377, i32 610], align 16
@n = common global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0ANumber %d is at index %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #4
  %5 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([16 x i32]* @main.arr to i8*), i64 64, i1 false)
  store i32 16, i32* @n, align 4, !tbaa !3
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  store i32 55, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i32 0, i32 0
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = call i32 @jump_search(i32* %8, i32 %9)
  store i32 %10, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %12)
  %14 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4
  %16 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %16) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @jump_search(i32*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = load i32, i32* @n, align 4, !tbaa !3
  %11 = sitofp i32 %10 to double
  %12 = call double @llvm.sqrt.f64(double %11)
  %13 = call double @llvm.floor.f64(double %12)
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %6, align 4, !tbaa !3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %16

; <label>:16:                                     ; preds = %47, %2
  %17 = load i32*, i32** %4, align 8, !tbaa !7
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = load i32, i32* @n, align 4, !tbaa !3
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %6, align 4, !tbaa !3
  br label %25

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @n, align 4, !tbaa !3
  br label %25

; <label>:25:                                     ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %17, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !3
  %31 = load i32, i32* %5, align 4, !tbaa !3
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %34, i32* %7, align 4, !tbaa !3
  %35 = load i32, i32* @n, align 4, !tbaa !3
  %36 = sitofp i32 %35 to double
  %37 = call double @llvm.sqrt.f64(double %36)
  %38 = call double @llvm.floor.f64(double %37)
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, %38
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %6, align 4, !tbaa !3
  %43 = load i32, i32* %7, align 4, !tbaa !3
  %44 = load i32, i32* @n, align 4, !tbaa !3
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %33
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %81

; <label>:47:                                     ; preds = %33
  br label %16

; <label>:48:                                     ; preds = %25
  br label %49

; <label>:49:                                     ; preds = %69, %48
  %50 = load i32*, i32** %4, align 8, !tbaa !7
  %51 = load i32, i32* %7, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !3
  %55 = load i32, i32* %5, align 4, !tbaa !3
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %49
  %58 = load i32, i32* %7, align 4, !tbaa !3
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4, !tbaa !3
  %60 = load i32, i32* %7, align 4, !tbaa !3
  %61 = sitofp i32 %60 to double
  %62 = load i32, i32* %6, align 4, !tbaa !3
  %63 = sitofp i32 %62 to double
  %64 = load i32, i32* @n, align 4, !tbaa !3
  %65 = sitofp i32 %64 to double
  %66 = call double @llvm.minnum.f64(double %63, double %65)
  %67 = fcmp oeq double %61, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %57
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %81

; <label>:69:                                     ; preds = %57
  br label %49

; <label>:70:                                     ; preds = %49
  %71 = load i32*, i32** %4, align 8, !tbaa !7
  %72 = load i32, i32* %7, align 4, !tbaa !3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !3
  %76 = load i32, i32* %5, align 4, !tbaa !3
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %70
  %79 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %81

; <label>:80:                                     ; preds = %70
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %81

; <label>:81:                                     ; preds = %80, %78, %68, %46
  %82 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4
  %83 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.minnum.f64(double, double) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

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
