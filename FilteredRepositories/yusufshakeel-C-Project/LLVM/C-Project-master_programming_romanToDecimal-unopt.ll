; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_romanToDecimal.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_romanToDecimal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@roman = global [8 x i8] c"IVXLCDM\00", align 1
@decimal = global [7 x i32] [i32 1, i32 5, i32 10, i32 50, i32 100, i32 500, i32 1000], align 16
@.str = private unnamed_addr constant [21 x i8] c"Enter Roman Number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Number = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %9) #3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), [10 x i8]* %5)
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %13 = call i64 @strlen(i8* %12)
  %14 = sub i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %20 = call i32 @indexOf(i8 signext %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !3
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %2, align 4, !tbaa !3
  %26 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %26, i32* %4, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %66, %0
  %30 = load i32, i32* %3, align 4, !tbaa !3
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %71

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %3, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !7
  %37 = call i32 @indexOf(i8 signext %36)
  %38 = load i32, i32* %4, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %42 = call i32 @indexOf(i8 signext %41)
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %32
  %45 = load i32, i32* %3, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1, !tbaa !7
  %49 = call i32 @indexOf(i8 signext %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !3
  %53 = load i32, i32* %2, align 4, !tbaa !3
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %2, align 4, !tbaa !3
  br label %66

; <label>:55:                                     ; preds = %32
  %56 = load i32, i32* %3, align 4, !tbaa !3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %60 = call i32 @indexOf(i8 signext %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !3
  %64 = load i32, i32* %2, align 4, !tbaa !3
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %2, align 4, !tbaa !3
  br label %66

; <label>:66:                                     ; preds = %55, %44
  %67 = load i32, i32* %3, align 4, !tbaa !3
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %3, align 4, !tbaa !3
  %69 = load i32, i32* %4, align 4, !tbaa !3
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %4, align 4, !tbaa !3
  br label %29

; <label>:71:                                     ; preds = %29
  %72 = load i32, i32* %2, align 4, !tbaa !3
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %72)
  %74 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %74) #3
  %75 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3
  %76 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  %77 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

declare i64 @strlen(i8*) #2

; Function Attrs: nounwind ssp uwtable
define i32 @indexOf(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1, !tbaa !7
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %22, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 7
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* @roman, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* %3, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %26

; <label>:21:                                     ; preds = %10
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:25:                                     ; preds = %7
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %19
  %27 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = load i32, i32* %2, align 4
  ret i32 %28
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
