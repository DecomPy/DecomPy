; ModuleID = 'Repositories/x893-picoC/Unfiltered/picoC-master_tests_25_quicksort.c'
source_filename = "Repositories/x893-picoC/Unfiltered/picoC-master_tests_25_quicksort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@array = common global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !3
  store i32 %10, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %16
  store i32 %14, i32* %17, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %20
  store i32 %18, i32* %21, align 4, !tbaa !3
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @partition(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %10, i32* %5, align 4, !tbaa !3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !3
  store i32 %15, i32* %6, align 4, !tbaa !3
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %17, i32* %7, align 4, !tbaa !3
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !3
  call void @swap(i32 %19, i32 %20)
  %21 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %21, i32* %8, align 4, !tbaa !3
  br label %22

; <label>:22:                                     ; preds = %39, %2
  %23 = load i32, i32* %8, align 4, !tbaa !3
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %8, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !3
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %8, align 4, !tbaa !3
  %35 = load i32, i32* %7, align 4, !tbaa !3
  call void @swap(i32 %34, i32 %35)
  %36 = load i32, i32* %7, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %33, %26
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %8, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4, !tbaa !3
  br label %22

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %4, align 4, !tbaa !3
  %44 = load i32, i32* %7, align 4, !tbaa !3
  call void @swap(i32 %43, i32 %44)
  %45 = load i32, i32* %7, align 4, !tbaa !3
  %46 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define void @quicksort(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = load i32, i32* %4, align 4, !tbaa !3
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  br label %22

; <label>:10:                                     ; preds = %2
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = call i32 @partition(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = sub nsw i32 %16, 1
  call void @quicksort(i32 %15, i32 %17)
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* %4, align 4, !tbaa !3
  call void @quicksort(i32 %19, i32 %20)
  %21 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  br label %22

; <label>:22:                                     ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 62, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 0), align 16, !tbaa !3
  store i32 83, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 1), align 4, !tbaa !3
  store i32 4, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 2), align 8, !tbaa !3
  store i32 89, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 3), align 4, !tbaa !3
  store i32 36, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 4), align 16, !tbaa !3
  store i32 21, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 5), align 4, !tbaa !3
  store i32 74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 6), align 8, !tbaa !3
  store i32 37, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 7), align 4, !tbaa !3
  store i32 65, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 8), align 16, !tbaa !3
  store i32 33, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 9), align 4, !tbaa !3
  store i32 96, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 10), align 8, !tbaa !3
  store i32 38, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 11), align 4, !tbaa !3
  store i32 53, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 12), align 16, !tbaa !3
  store i32 16, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 13), align 4, !tbaa !3
  store i32 74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 14), align 8, !tbaa !3
  store i32 55, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 15), align 4, !tbaa !3
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %12, %0
  %4 = load i32, i32* %1, align 4, !tbaa !3
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  br label %12

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %1, align 4, !tbaa !3
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4, !tbaa !3
  br label %3

; <label>:15:                                     ; preds = %3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @quicksort(i32 0, i32 15)
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %26, %15
  %18 = load i32, i32* %1, align 4, !tbaa !3
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %1, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !3
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %26

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %1, align 4, !tbaa !3
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4, !tbaa !3
  br label %17

; <label>:29:                                     ; preds = %17
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %31 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

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
