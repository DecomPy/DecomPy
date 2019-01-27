; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-static-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-static-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@digit_tables = constant [10 x [3 x [3 x i8]]] [[3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"| |", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c"   ", [3 x i8] c"  |", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c" _|", [3 x i8] c"|_ "], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c" _|", [3 x i8] c" _|"], [3 x [3 x i8]] [[3 x i8] c"   ", [3 x i8] c"|_|", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_ ", [3 x i8] c" _|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_ ", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"  |", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_|", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_|", [3 x i8] c" _|"]], align 16
@.str = private unnamed_addr constant [33 x i8] c"Enter a number up to 10 digits: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" %.*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [255 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [255 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %7) #5
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %13 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i32 0, i32 0
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %15 = call i8* @fgets(i8* %13, i32 255, %struct.__sFILE* %14)
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %63, %0
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %66

; <label>:19:                                     ; preds = %16
  store i32 0, i32* %4, align 4, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %20

; <label>:20:                                     ; preds = %58, %19
  %21 = load i32, i32* %4, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = icmp slt i32 %28, 10
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i1 [ false, %20 ], [ %29, %27 ]
  br i1 %31, label %32, label %61

; <label>:32:                                     ; preds = %30
  %33 = load i32, i32* %4, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = sext i8 %36 to i32
  %38 = call i32 @isdigit(i32 %37) #6
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %4, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  store i32 %46, i32* %5, align 4, !tbaa !7
  %47 = load i32, i32* %5, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x [3 x [3 x i8]]], [10 x [3 x [3 x i8]]]* @digit_tables, i64 0, i64 %48
  %50 = load i32, i32* %3, align 4, !tbaa !7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 %51
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %52, i32 0, i32 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* %53)
  %55 = load i32, i32* %6, align 4, !tbaa !7
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4, !tbaa !7
  br label %57

; <label>:57:                                     ; preds = %40, %32
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %4, align 4, !tbaa !7
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4, !tbaa !7
  br label %20

; <label>:61:                                     ; preds = %30
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %63

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %3, align 4, !tbaa !7
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4, !tbaa !7
  br label %16

; <label>:66:                                     ; preds = %16
  %67 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5
  %68 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #5
  %69 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #5
  %70 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #5
  %71 = bitcast [255 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %71) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isdigit(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__isctype(i32 %3, i64 1024)
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !10
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = icmp sge i32 %8, 256
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %2
  br label %23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8, !tbaa !10
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

; <label>:23:                                     ; preds = %11, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %11 ]
  ret i32 %24
}

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
