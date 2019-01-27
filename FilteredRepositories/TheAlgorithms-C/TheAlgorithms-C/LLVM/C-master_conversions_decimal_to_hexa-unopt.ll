; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_decimal_to_hexa.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_decimal_to_hexa.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [23 x i8] c"Enter decimal number: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64* %2)
  %6 = load i64, i64* %2, align 8, !tbaa !3
  call void @decimal2Hexadecimal(i64 %6)
  %7 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @decimal2Hexadecimal(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  store i64 %0, i64* %2, align 8, !tbaa !3
  %9 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i64, i64* %2, align 8, !tbaa !3
  store i64 %10, i64* %3, align 8, !tbaa !3
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  %12 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %15 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %15) #3
  %16 = load i64, i64* %3, align 8, !tbaa !3
  store i64 %16, i64* %4, align 8, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %41, %1
  %18 = load i64, i64* %4, align 8, !tbaa !3
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %4, align 8, !tbaa !3
  %22 = srem i64 %21, 16
  store i64 %22, i64* %5, align 8, !tbaa !3
  %23 = load i64, i64* %5, align 8, !tbaa !3
  %24 = icmp slt i64 %23, 10
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %20
  %26 = load i64, i64* %5, align 8, !tbaa !3
  %27 = add nsw i64 48, %26
  %28 = trunc i64 %27 to i8
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4, !tbaa !7
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %31
  store i8 %28, i8* %32, align 1, !tbaa !9
  br label %41

; <label>:33:                                     ; preds = %20
  %34 = load i64, i64* %5, align 8, !tbaa !3
  %35 = add nsw i64 55, %34
  %36 = trunc i64 %35 to i8
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %39
  store i8 %36, i8* %40, align 1, !tbaa !9
  br label %41

; <label>:41:                                     ; preds = %33, %25
  %42 = load i64, i64* %4, align 8, !tbaa !3
  %43 = sdiv i64 %42, 16
  store i64 %43, i64* %4, align 8, !tbaa !3
  br label %17

; <label>:44:                                     ; preds = %17
  %45 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %45, i32* %6, align 4, !tbaa !7
  br label %46

; <label>:46:                                     ; preds = %56, %44
  %47 = load i32, i32* %6, align 4, !tbaa !7
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %59

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %6, align 4, !tbaa !7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %54 = sext i8 %53 to i32
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %54)
  br label %56

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4, !tbaa !7
  br label %46

; <label>:59:                                     ; preds = %46
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %61 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %61) #3
  %62 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #3
  %65 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #3
  %66 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #3
  ret void
}

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
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
