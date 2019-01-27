; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-with-newline.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-with-newline.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enter a string:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+---------\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Your %d character string, Sir:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [81 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [81 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 81, i8* %4) #5
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %7 = getelementptr inbounds [81 x i8], [81 x i8]* %2, i32 0, i32 0
  %8 = call i32 @read_line(i8* %7, i32 80)
  store i32 %8, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = getelementptr inbounds [81 x i8], [81 x i8]* %2, i32 0, i32 0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %9, i8* %10)
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  %12 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5
  %13 = bitcast [81 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 81, i8* %13) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @print_header(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !7
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %13, %1
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5
  br label %16

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %2, align 8, !tbaa !7
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  br label %13

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4, !tbaa !3
  br label %5

; <label>:16:                                     ; preds = %8
  %17 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @read_line(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  br label %9

; <label>:9:                                      ; preds = %13, %2
  %10 = call i32 @getchar()
  store i32 %10, i32* %5, align 4, !tbaa !3
  %11 = call i32 @isspace(i32 %10) #6
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %9

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8, !tbaa !7
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1, !tbaa !9
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %35, %14
  %20 = call i32 @getchar()
  store i32 %20, i32* %5, align 4, !tbaa !3
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %6, align 4, !tbaa !3
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 8, !tbaa !7
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1, !tbaa !9
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4, !tbaa !3
  br label %35

; <label>:35:                                     ; preds = %26, %22
  br label %19

; <label>:36:                                     ; preds = %19
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = load i32, i32* %4, align 4, !tbaa !3
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %5, align 4, !tbaa !3
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %3, align 8, !tbaa !7
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1, !tbaa !9
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4, !tbaa !3
  br label %49

; <label>:49:                                     ; preds = %40, %36
  %50 = load i8*, i8** %3, align 8, !tbaa !7
  %51 = load i32, i32* %6, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1, !tbaa !9
  %54 = load i32, i32* %6, align 4, !tbaa !3
  %55 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #5
  %56 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #5
  ret i32 %54
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isspace(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = call i32 @__istype(i32 %3, i64 16384)
  ret i32 %4
}

declare i32 @getchar() #2

declare i32 @puts(i8*) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !10
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = call i32 @isascii(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !3
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %4, align 8, !tbaa !10
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %28

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %3, align 4, !tbaa !3
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
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
