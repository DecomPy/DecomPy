; ModuleID = 'Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_testconfgen.c'
source_filename = "Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_testconfgen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"name:\00", align 1
@arr = internal global [128 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@name = internal global [128 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%s %[^\0A]s\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"problem scanning entry %d, scanned %d\0A\00", align 1
@stmt = internal global [128 x i8*] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"name: %s, stmt: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"read %d entries\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @output(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %23, %1
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i8*], [128 x i8*]* @name, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8, !tbaa !7
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %20)
  br label %22

; <label>:22:                                     ; preds = %16, %10
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %3, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %28 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @pows(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %4, align 4, !tbaa !3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !3
  call void @output(i32 %8)
  br label %22

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %13
  store i32 0, i32* %14, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  call void @pows(i32 %15, i32 %16)
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %18
  store i32 1, i32* %19, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  call void @pows(i32 %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast [512 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %11) #4
  %12 = bitcast [2048 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* %12) #4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %35, %2
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %16 = call i32 @feof(%struct.__sFILE* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %51

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %20, i8* %21)
  store i32 %22, i32* %9, align 4, !tbaa !3
  %23 = load i32, i32* %9, align 4, !tbaa !3
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19
  br label %51

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %9, align 4, !tbaa !3
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %26
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = load i32, i32* %9, align 4, !tbaa !3
  %33 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %31, i32 %32)
  call void @exit(i32 1) #5
  unreachable

; <label>:34:                                     ; preds = %26
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %37 = call i8* @strdup(i8* %36)
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x i8*], [128 x i8*]* @name, i64 0, i64 %39
  store i8* %37, i8** %40, align 8, !tbaa !7
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %42 = call i8* @strdup(i8* %41)
  %43 = load i32, i32* %6, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [128 x i8*], [128 x i8*]* @stmt, i64 0, i64 %44
  store i8* %42, i8** %45, align 8, !tbaa !7
  %46 = load i32, i32* %6, align 4, !tbaa !3
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4, !tbaa !3
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %48, i8* %49)
  br label %14

; <label>:51:                                     ; preds = %25, %14
  %52 = load i32, i32* %6, align 4, !tbaa !3
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %52)
  %54 = load i32, i32* %6, align 4, !tbaa !3
  %55 = load i32, i32* %6, align 4, !tbaa !3
  call void @pows(i32 %54, i32 %55)
  %56 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4
  %57 = bitcast [2048 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* %57) #4
  %58 = bitcast [512 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %58) #4
  %59 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare i32 @feof(%struct.__sFILE*) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i8* @strdup(i8*) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
