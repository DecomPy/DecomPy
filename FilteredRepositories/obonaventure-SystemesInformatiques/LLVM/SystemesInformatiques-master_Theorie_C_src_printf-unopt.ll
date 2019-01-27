; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_printf.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_printf.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.weekday = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@main.month = private unnamed_addr constant [6 x i8] c"April\00", align 1
@main.str = private unnamed_addr constant [9 x i8] c"SINF1252\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"%s, %s %d, %d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PI = %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i8], align 1
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %13 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %13) #4
  %14 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @main.weekday, i32 0, i32 0), i64 7, i1 false)
  %15 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 6, i8* %15) #4
  %16 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @main.month, i32 0, i32 0), i64 6, i1 false)
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  store i32 1, i32* %8, align 4, !tbaa !3
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4
  store i32 12, i32* %9, align 4, !tbaa !3
  %19 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  store i32 42, i32* %10, align 4, !tbaa !3
  %20 = bitcast [9 x i8]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %20) #4
  %21 = bitcast [9 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @main.str, i32 0, i32 0), i64 9, i1 false)
  %22 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #4
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i32 0, i32 0
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i32 0, i32 0
  %25 = load i32, i32* %8, align 4, !tbaa !3
  %26 = load i32, i32* %9, align 4, !tbaa !3
  %27 = load i32, i32* %10, align 4, !tbaa !3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %23, i8* %24, i32 %25, i32 %26, i32 %27)
  %29 = call double @atan(double 1.000000e+00) #5
  %30 = fmul double 4.000000e+00, %29
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), double %30)
  store i32 0, i32* %12, align 4, !tbaa !3
  br label %32

; <label>:32:                                     ; preds = %46, %2
  %33 = load i32, i32* %12, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %12, align 4, !tbaa !3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !9
  %44 = sext i8 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %44)
  br label %46

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %12, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4, !tbaa !3
  br label %32

; <label>:49:                                     ; preds = %32
  %50 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4
  %51 = bitcast [9 x i8]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %51) #4
  %52 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4
  %53 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4
  %54 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4
  %55 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 6, i8* %55) #4
  %56 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %56) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare double @atan(double) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!9 = !{!5, !5, i64 0}
