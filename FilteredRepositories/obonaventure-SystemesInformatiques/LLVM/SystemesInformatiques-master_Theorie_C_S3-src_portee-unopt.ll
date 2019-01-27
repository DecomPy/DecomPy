; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_portee.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_portee.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@g2 = global i32 1, align 4
@g1 = common global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[f-%da] \09\09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[f-%db] \09\09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Valeurs de : \09 g1 \09 g2\09 loc\09 loc2\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"===================================================\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"[main1] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[main2] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"[main-for-%d] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[main3] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 2, i32* %4, align 4, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = sub nsw i32 0, %9
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %5, align 4, !tbaa !3
  %13 = load i32, i32* @g1, align 4, !tbaa !3
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @g1, align 4, !tbaa !3
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* @g1, align 4, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %3, align 4, !tbaa !3
  %24 = load i32, i32* @g1, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @g1, align 4, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4, !tbaa !3
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* @g1, align 4, !tbaa !3
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 1, i32* %7, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0))
  %15 = load i32, i32* @g1, align 4, !tbaa !3
  %16 = load i32, i32* @g2, align 4, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !3
  %18 = load i32, i32* %7, align 4, !tbaa !3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 1252, i32* %6, align 4, !tbaa !3
  store i32 1234, i32* %7, align 4, !tbaa !3
  %20 = load i32, i32* @g1, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @g1, align 4, !tbaa !3
  %22 = load i32, i32* @g1, align 4, !tbaa !3
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* @g1, align 4, !tbaa !3
  %24 = load i32, i32* @g1, align 4, !tbaa !3
  %25 = load i32, i32* @g2, align 4, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %7, align 4, !tbaa !3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %54, %2
  %31 = load i32, i32* %8, align 4, !tbaa !3
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %30
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  br label %57

; <label>:35:                                     ; preds = %30
  %36 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %8, align 4, !tbaa !3
  store i32 %37, i32* %9, align 4, !tbaa !3
  %38 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3
  %39 = load i32, i32* %8, align 4, !tbaa !3
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4, !tbaa !3
  %41 = load i32, i32* %9, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4, !tbaa !3
  %43 = load i32, i32* @g1, align 4, !tbaa !3
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* @g1, align 4, !tbaa !3
  %45 = load i32, i32* %8, align 4, !tbaa !3
  call void @f(i32 %45)
  %46 = load i32, i32* %8, align 4, !tbaa !3
  %47 = load i32, i32* @g1, align 4, !tbaa !3
  %48 = load i32, i32* %10, align 4, !tbaa !3
  %49 = load i32, i32* %9, align 4, !tbaa !3
  %50 = load i32, i32* %7, align 4, !tbaa !3
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  %53 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3
  br label %54

; <label>:54:                                     ; preds = %35
  %55 = load i32, i32* %8, align 4, !tbaa !3
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4, !tbaa !3
  br label %30

; <label>:57:                                     ; preds = %33
  call void @f(i32 7)
  %58 = load i32, i32* @g1, align 4, !tbaa !3
  %59 = mul nsw i32 %58, 3
  store i32 %59, i32* @g1, align 4, !tbaa !3
  %60 = load i32, i32* @g2, align 4, !tbaa !3
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* @g2, align 4, !tbaa !3
  %62 = load i32, i32* @g1, align 4, !tbaa !3
  %63 = load i32, i32* @g2, align 4, !tbaa !3
  %64 = load i32, i32* %6, align 4, !tbaa !3
  %65 = load i32, i32* %7, align 4, !tbaa !3
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3
  %68 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
