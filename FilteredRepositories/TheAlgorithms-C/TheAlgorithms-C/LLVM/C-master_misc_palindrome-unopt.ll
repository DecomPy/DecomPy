; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_palindrome.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_palindrome.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter an integer: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%d is a palindrome.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%d is not a palindrome.\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %12 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %12, i32* %5, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %16, %0
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = srem i32 %17, 10
  store i32 %18, i32* %4, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = mul nsw i32 %19, 10
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %3, align 4, !tbaa !3
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = sdiv i32 %23, 10
  store i32 %24, i32* %2, align 4, !tbaa !3
  br label %13

; <label>:25:                                     ; preds = %13
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %30)
  br label %35

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %33)
  br label %35

; <label>:35:                                     ; preds = %32, %29
  %36 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
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
