; ModuleID = 'Repositories/radare-radare2/Unfiltered/radare2-master_binr_blob_main.c'
source_filename = "Repositories/radare-radare2/Unfiltered/radare2-master_binr_blob_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Main = type { i8*, i32 (i32, i8**)* }

@foo = internal global [10 x %struct.Main] [%struct.Main { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**)* @radare2_main }, %struct.Main { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**)* @rax2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**)* @radiff2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (i32, i8**)* @rafind2_main }, %struct.Main { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (i32, i8**)* @rarun2_main }, %struct.Main { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (i32, i8**)* @rasm2_main }, %struct.Main { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (i32, i8**)* @ragg2_main }, %struct.Main { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (i32, i8**)* @rabin2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (i32, i8**)* @radare2_main }, %struct.Main zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rax2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"radiff2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rafind2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rarun2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rasm2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ragg2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rabin2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"radare2\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %36, %2
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.Main, %struct.Main* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16, !tbaa !9
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %39

; <label>:16:                                     ; preds = %9
  %17 = load i8**, i8*** %5, align 8, !tbaa !7
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8, !tbaa !7
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.Main, %struct.Main* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 16, !tbaa !9
  %25 = call i8* @strstr(i8* %19, i8* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.Main, %struct.Main* %30, i32 0, i32 1
  %32 = load i32 (i32, i8**)*, i32 (i32, i8**)** %31, align 8, !tbaa !11
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = load i8**, i8*** %5, align 8, !tbaa !7
  %35 = call i32 %32(i32 %33, i8** %34)
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %58

; <label>:36:                                     ; preds = %16
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:39:                                     ; preds = %9
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %40

; <label>:40:                                     ; preds = %54, %39
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.Main, %struct.Main* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 16, !tbaa !9
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.Main, %struct.Main* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 16, !tbaa !9
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %52)
  br label %54

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %6, align 4, !tbaa !3
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4, !tbaa !3
  br label %40

; <label>:57:                                     ; preds = %40
  store i32 1, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %58

; <label>:58:                                     ; preds = %57, %27
  %59 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8* @strstr(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @radare2_main(i32, i8**) #2

declare i32 @rax2_main(i32, i8**) #2

declare i32 @radiff2_main(i32, i8**) #2

declare i32 @rafind2_main(i32, i8**) #2

declare i32 @rarun2_main(i32, i8**) #2

declare i32 @rasm2_main(i32, i8**) #2

declare i32 @ragg2_main(i32, i8**) #2

declare i32 @rabin2_main(i32, i8**) #2

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
!9 = !{!10, !8, i64 0}
!10 = !{!"", !8, i64 0, !8, i64 8}
!11 = !{!10, !8, i64 8}
