; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.7-spell-number.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.7-spell-number.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@get_ones.ones = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@get_tens.tens = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@get_teens.teens = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.27 = private unnamed_addr constant [27 x i8] c"Enter a two-digit number: \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%1c%1c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%s-%s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @toi(i8 signext) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !3
  %3 = load i8, i8* %2, align 1, !tbaa !3
  %4 = sext i8 %3 to i32
  %5 = sub nsw i32 %4, 48
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i8* @get_ones(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [9 x i8*], align 16
  store i8 %0, i8* %2, align 1, !tbaa !3
  %4 = bitcast [9 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* %4) #3
  %5 = bitcast [9 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([9 x i8*]* @get_ones.ones to i8*), i64 72, i1 false)
  %6 = load i8, i8* %2, align 1, !tbaa !3
  %7 = call i32 @toi(i8 signext %6)
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [9 x i8*], [9 x i8*]* %3, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8, !tbaa !6
  %12 = bitcast [9 x i8*]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 72, i8* %12) #3
  ret i8* %11
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i8* @get_tens(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [8 x i8*], align 16
  store i8 %0, i8* %2, align 1, !tbaa !3
  %4 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #3
  %5 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i8*]* @get_tens.tens to i8*), i64 64, i1 false)
  %6 = load i8, i8* %2, align 1, !tbaa !3
  %7 = call i32 @toi(i8 signext %6)
  %8 = sub nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8, !tbaa !6
  %12 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %12) #3
  ret i8* %11
}

; Function Attrs: nounwind ssp uwtable
define i8* @get_teens(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [10 x i8*], align 16
  store i8 %0, i8* %2, align 1, !tbaa !3
  %4 = bitcast [10 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %4) #3
  %5 = bitcast [10 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([10 x i8*]* @get_teens.teens to i8*), i64 80, i1 false)
  %6 = load i8, i8* %2, align 1, !tbaa !3
  %7 = call i32 @toi(i8 signext %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8, !tbaa !6
  %11 = bitcast [10 x i8*]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %11) #3
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #3
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %3, i8* %2)
  %6 = load i8, i8* %3, align 1, !tbaa !3
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %0
  %10 = load i8, i8* %2, align 1, !tbaa !3
  %11 = call i8* @get_teens(i8 signext %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %11)
  br label %28

; <label>:13:                                     ; preds = %0
  %14 = load i8, i8* %2, align 1, !tbaa !3
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %3, align 1, !tbaa !3
  %19 = call i8* @get_tens(i8 signext %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %19)
  br label %27

; <label>:21:                                     ; preds = %13
  %22 = load i8, i8* %3, align 1, !tbaa !3
  %23 = call i8* @get_tens(i8 signext %22)
  %24 = load i8, i8* %2, align 1, !tbaa !3
  %25 = call i8* @get_ones(i8 signext %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* %23, i8* %25)
  br label %27

; <label>:27:                                     ; preds = %21, %17
  br label %28

; <label>:28:                                     ; preds = %27, %9
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #3
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
