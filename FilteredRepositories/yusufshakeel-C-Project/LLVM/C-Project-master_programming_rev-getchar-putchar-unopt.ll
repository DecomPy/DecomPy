; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_rev-getchar-putchar.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_rev-getchar-putchar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Enter string: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Reverse string:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s is palindrome!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s is not palindrome!\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %8) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #4
  %9 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %23, %0
  %15 = call i32 @getchar()
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1, !tbaa !7
  %17 = load i8, i8* %3, align 1, !tbaa !7
  %18 = load i32, i32* %7, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %19
  store i8 %17, i8* %20, align 1, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %14
  %24 = load i8, i8* %3, align 1, !tbaa !7
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %14, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %7, align 4, !tbaa !3
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4, !tbaa !3
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %31
  store i8 0, i8* %32, align 1, !tbaa !7
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i32 0, i32 0
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 0
  %35 = call i8* @__strcpy_chk(i8* %33, i8* %34, i64 100) #4
  store i32 0, i32* %5, align 4, !tbaa !3
  %36 = load i32, i32* %7, align 4, !tbaa !3
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %6, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %42, %27
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = load i32, i32* %6, align 4, !tbaa !3
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %5, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !7
  store i8 %46, i8* %3, align 1, !tbaa !7
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %51 = load i32, i32* %5, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %52
  store i8 %50, i8* %53, align 1, !tbaa !7
  %54 = load i8, i8* %3, align 1, !tbaa !7
  %55 = load i32, i32* %6, align 4, !tbaa !3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %56
  store i8 %54, i8* %57, align 1, !tbaa !7
  %58 = load i32, i32* %5, align 4, !tbaa !3
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4, !tbaa !3
  %60 = load i32, i32* %6, align 4, !tbaa !3
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4, !tbaa !3
  br label %38

; <label>:62:                                     ; preds = %38
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %64

; <label>:64:                                     ; preds = %75, %62
  %65 = load i32, i32* %5, align 4, !tbaa !3
  %66 = load i32, i32* %7, align 4, !tbaa !3
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %5, align 4, !tbaa !3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1, !tbaa !7
  %73 = sext i8 %72 to i32
  %74 = call i32 @putchar(i32 %73)
  br label %75

; <label>:75:                                     ; preds = %68
  %76 = load i32, i32* %5, align 4, !tbaa !3
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4, !tbaa !3
  br label %64

; <label>:78:                                     ; preds = %64
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i32 0, i32 0
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 0
  %82 = call i32 @strcmp(i8* %80, i8* %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 0
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %85)
  br label %90

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 0
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %88)
  br label %90

; <label>:90:                                     ; preds = %87, %84
  store i32 0, i32* %1, align 4
  %91 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4
  %92 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4
  %93 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #4
  %94 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %94) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #4
  %95 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %95) #4
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

declare i32 @putchar(i32) #2

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!5, !5, i64 0}
