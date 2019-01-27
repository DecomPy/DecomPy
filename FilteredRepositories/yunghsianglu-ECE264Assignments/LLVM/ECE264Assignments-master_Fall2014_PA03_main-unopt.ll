; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_PA03_main.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_PA03_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [25 x i8] c"Calling swapString(...)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&a = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&b = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&tmp = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Welcome to PA03.\0A\0APlease make sure that the swapString(...) function works\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"Print out some memory addresses for argc, argv...\0Ato illustrate how memory is laid out.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"&argc = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"&argv = %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"argv = %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"*argv = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"*argv = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"**argv = %c\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\0ATesting swapString(...)\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Before swap, str1 == %p (i.e., '%s'), str2 == %p (i.e., '%s')\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"After swap, str1 == %p (i.e., '%s'), str2 == %p (i.e., '%s')\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swapString(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i8*, i8** %3, align 8, !tbaa !3
  store i8* %7, i8** %5, align 8, !tbaa !3
  %8 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %8, i8** %3, align 8, !tbaa !3
  %9 = load i8*, i8** %5, align 8, !tbaa !3
  store i8* %9, i8** %4, align 8, !tbaa !3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %3)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %4)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %5)
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
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
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %4)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8*** %5)
  %12 = load i8**, i8*** %5, align 8, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8** %12)
  %14 = load i8**, i8*** %5, align 8, !tbaa !3
  %15 = load i8*, i8** %14, align 8, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %15)
  %17 = load i8**, i8*** %5, align 8, !tbaa !3
  %18 = load i8*, i8** %17, align 8, !tbaa !3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* %18)
  %20 = load i8**, i8*** %5, align 8, !tbaa !3
  %21 = load i8*, i8** %20, align 8, !tbaa !3
  %22 = load i8, i8* %21, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  %26 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %27 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8** %7, align 8, !tbaa !3
  %28 = load i8*, i8** %6, align 8, !tbaa !3
  %29 = load i8*, i8** %6, align 8, !tbaa !3
  %30 = load i8*, i8** %7, align 8, !tbaa !3
  %31 = load i8*, i8** %7, align 8, !tbaa !3
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i32 0, i32 0), i8* %28, i8* %29, i8* %30, i8* %31)
  %33 = load i8*, i8** %6, align 8, !tbaa !3
  %34 = load i8*, i8** %7, align 8, !tbaa !3
  call void @swapString(i8* %33, i8* %34)
  %35 = load i8*, i8** %6, align 8, !tbaa !3
  %36 = load i8*, i8** %6, align 8, !tbaa !3
  %37 = load i8*, i8** %7, align 8, !tbaa !3
  %38 = load i8*, i8** %7, align 8, !tbaa !3
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i32 0, i32 0), i8* %35, i8* %36, i8* %37, i8* %38)
  %40 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #3
  %41 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #3
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
