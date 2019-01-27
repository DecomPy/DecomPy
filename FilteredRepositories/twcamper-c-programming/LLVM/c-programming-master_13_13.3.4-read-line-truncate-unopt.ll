; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-truncate.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-truncate.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enter a string:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+---------\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"String 1 (%d):\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"String 2 (%d):\0A%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [21 x i8], align 16
  %3 = alloca [21 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 21, i8* %4) #5
  %5 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 21, i8* %5) #5
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %8 = call i32 @read_line(i8* %7, i32 20)
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %8, i8* %9)
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %12 = call i32 @read_line(i8* %11, i32 20)
  %13 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %12, i8* %13)
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  %15 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 21, i8* %15) #5
  %16 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 21, i8* %16) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @print_header(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %13, %1
  %6 = load i32, i32* %3, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5
  br label %16

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %2, align 8, !tbaa !3
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  br label %13

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4, !tbaa !7
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:16:                                     ; preds = %8
  %17 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @read_line(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %13, %2
  %10 = call i32 @getchar()
  store i32 %10, i32* %5, align 4, !tbaa !7
  %11 = call i32 @isspace(i32 %10) #6
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %9

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4, !tbaa !7
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %16, i8* %21, align 1, !tbaa !9
  br label %22

; <label>:22:                                     ; preds = %31, %14
  %23 = call i32 @getchar()
  store i32 %23, i32* %5, align 4, !tbaa !7
  %24 = icmp ne i32 %23, 10
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = load i32, i32* %4, align 4, !tbaa !7
  %28 = icmp slt i32 %26, %27
  br label %29

; <label>:29:                                     ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %29
  %32 = load i32, i32* %5, align 4, !tbaa !7
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %3, align 8, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4, !tbaa !7
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 %33, i8* %38, align 1, !tbaa !9
  br label %22

; <label>:39:                                     ; preds = %29
  %40 = load i8*, i8** %3, align 8, !tbaa !3
  %41 = load i32, i32* %6, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1, !tbaa !9
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5
  %46 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5
  ret i32 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isspace(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 16384)
  ret i32 %4
}

declare i32 @getchar() #2

declare i32 @puts(i8*) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !10
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = call i32 @isascii(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %4, align 8, !tbaa !10
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %28

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = load i64, i64* %4, align 8, !tbaa !10
  %23 = call i32 @__maskrune(i32 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  br label %28

; <label>:28:                                     ; preds = %20, %8
  %29 = phi i32 [ %19, %8 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = and i32 %3, -128
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare i32 @__maskrune(i32, i64) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
