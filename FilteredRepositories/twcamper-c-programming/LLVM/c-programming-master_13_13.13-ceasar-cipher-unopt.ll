; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.13-ceasar-cipher.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.13-ceasar-cipher.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [32 x i8] c"Enter message to be encrypted: \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Enter shift amount (1-25): \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Encrypted message: %s\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define void @encrypt(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %44, %2
  %6 = load i8*, i8** %3, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %47

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %3, align 8, !tbaa !3
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = call i32 @islower(i32 %12) #5
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %3, align 8, !tbaa !3
  %17 = load i8, i8* %16, align 1, !tbaa !9
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 97
  %20 = load i32, i32* %4, align 4, !tbaa !7
  %21 = add nsw i32 %19, %20
  %22 = srem i32 %21, 26
  %23 = add nsw i32 %22, 97
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 8, !tbaa !3
  store i8 %24, i8* %25, align 1, !tbaa !9
  br label %26

; <label>:26:                                     ; preds = %15, %9
  %27 = load i8*, i8** %3, align 8, !tbaa !3
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = call i32 @isupper(i32 %29) #5
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %3, align 8, !tbaa !3
  %34 = load i8, i8* %33, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 65
  %37 = load i32, i32* %4, align 4, !tbaa !7
  %38 = add nsw i32 %36, %37
  %39 = srem i32 %38, 26
  %40 = add nsw i32 %39, 65
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8, !tbaa !3
  store i8 %41, i8* %42, align 1, !tbaa !9
  br label %43

; <label>:43:                                     ; preds = %32, %26
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %3, align 8, !tbaa !3
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8, !tbaa !3
  br label %5

; <label>:47:                                     ; preds = %5
  ret void
}

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @islower(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 4096)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isupper(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 32768)
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %6) #6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #6
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %10

; <label>:10:                                     ; preds = %25, %0
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = icmp slt i32 %11, 80
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %10
  %14 = call i32 @getchar()
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br label %18

; <label>:18:                                     ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %18
  %21 = load i8, i8* %3, align 1, !tbaa !9
  %22 = load i32, i32* %4, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %23
  store i8 %21, i8* %24, align 1, !tbaa !9
  br label %25

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4, !tbaa !7
  br label %10

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %4, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %30
  store i8 0, i8* %31, align 1, !tbaa !9
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %33 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %5)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %35 = load i32, i32* %5, align 4, !tbaa !7
  call void @encrypt(i8* %34, i32 %35)
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %36)
  store i32 0, i32* %1, align 4
  %38 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #6
  %40 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %40) #6
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i32 @printf(i8*, ...) #3

declare i32 @getchar() #3

declare i32 @scanf(i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

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

declare i32 @__maskrune(i32, i64) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

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
