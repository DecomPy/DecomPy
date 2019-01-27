; ModuleID = 'Repositories/ranjiewwen-Data-Structure-And-Algorithm-2017/Unfiltered/Data-Structure-And-Algorithm-2017-master_数据结构算法实现（严蔚敏版配套实现程序）_ch01_1-16_CODE_1-16.c'
source_filename = "Repositories/ranjiewwen-Data-Structure-And-Algorithm-2017/Unfiltered/Data-Structure-And-Algorithm-2017-master_\E6\95\B0\E6\8D\AE\E7\BB\93\E6\9E\84\E7\AE\97\E6\B3\95\E5\AE\9E\E7\8E\B0\EF\BC\88\E4\B8\A5\E8\94\9A\E6\95\8F\E7\89\88\E9\85\8D\E5\A5\97\E5\AE\9E\E7\8E\B0\E7\A8\8B\E5\BA\8F\EF\BC\89_ch01_1-16_CODE_1-16.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [31 x i8] c"\0APlease input original string:\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\0APlease input delete position:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\0APlease input delete length:\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0AThe final string:%s\00", align 1

; Function Attrs: nounwind ssp uwtable
define i8* @strdel(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4, !tbaa !7
  %11 = load i32, i32* %5, align 4, !tbaa !7
  %12 = load i32, i32* %6, align 4, !tbaa !7
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %7, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %34, %3
  %15 = load i8*, i8** %4, align 8, !tbaa !3
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %4, align 8, !tbaa !3
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = load i8*, i8** %4, align 8, !tbaa !3
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = load i32, i32* %6, align 4, !tbaa !7
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8 %27, i8* %33, align 1, !tbaa !9
  br label %34

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %7, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4, !tbaa !7
  br label %14

; <label>:37:                                     ; preds = %14
  %38 = load i8*, i8** %4, align 8, !tbaa !3
  %39 = load i32, i32* %7, align 4, !tbaa !7
  %40 = load i32, i32* %6, align 4, !tbaa !7
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8 0, i8* %43, align 1, !tbaa !9
  %44 = load i8*, i8** %4, align 8, !tbaa !3
  %45 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3
  ret i8* %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca [50 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [50 x i8]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 50, i8* %4) #3
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i32 0, i32 0
  %9 = call i8* @gets(i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %3)
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i32 0, i32 0
  %15 = load i32, i32* %2, align 4, !tbaa !7
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = call i8* @strdel(i8* %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i32 0, i32 0
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %18)
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  %22 = bitcast [50 x i8]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 50, i8* %22) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i8* @gets(i8*) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
