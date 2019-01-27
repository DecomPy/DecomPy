; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_toDecimal.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_toDecimal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enter the base: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Enter the number: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"invalid number\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5
  %10 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %10) #5
  %11 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #5
  store i64 0, i64* %6, align 8, !tbaa !3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %16 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %15)
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %92, %0
  %18 = load i32, i32* %3, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !9
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %95

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %3, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = call i32 @isdigit(i32 %29) #6
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %3, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1, !tbaa !9
  br label %81

; <label>:40:                                     ; preds = %24
  %41 = load i32, i32* %3, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = sext i8 %44 to i32
  %46 = call i32 @isupper(i32 %45) #6
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %3, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 55
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1, !tbaa !9
  br label %80

; <label>:56:                                     ; preds = %40
  %57 = load i32, i32* %3, align 4, !tbaa !7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1, !tbaa !9
  %61 = sext i8 %60 to i32
  %62 = call i32 @islower(i32 %61) #6
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %3, align 4, !tbaa !7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !9
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 87
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1, !tbaa !9
  br label %79

; <label>:72:                                     ; preds = %56
  %73 = load i32, i32* %2, align 4, !tbaa !7
  %74 = add nsw i32 %73, 1
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %3, align 4, !tbaa !7
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %77
  store i8 %75, i8* %78, align 1, !tbaa !9
  br label %79

; <label>:79:                                     ; preds = %72, %64
  br label %80

; <label>:80:                                     ; preds = %79, %48
  br label %81

; <label>:81:                                     ; preds = %80, %32
  %82 = load i32, i32* %3, align 4, !tbaa !7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %86 = sext i8 %85 to i32
  %87 = load i32, i32* %2, align 4, !tbaa !7
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %81
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %91

; <label>:91:                                     ; preds = %89, %81
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %3, align 4, !tbaa !7
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4, !tbaa !7
  br label %17

; <label>:95:                                     ; preds = %17
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %96

; <label>:96:                                     ; preds = %112, %95
  %97 = load i32, i32* %4, align 4, !tbaa !7
  %98 = load i32, i32* %3, align 4, !tbaa !7
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %115

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %2, align 4, !tbaa !7
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8, !tbaa !3
  %104 = mul i64 %103, %102
  store i64 %104, i64* %6, align 8, !tbaa !3
  %105 = load i32, i32* %4, align 4, !tbaa !7
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1, !tbaa !9
  %109 = sext i8 %108 to i64
  %110 = load i64, i64* %6, align 8, !tbaa !3
  %111 = add i64 %110, %109
  store i64 %111, i64* %6, align 8, !tbaa !3
  br label %112

; <label>:112:                                    ; preds = %100
  %113 = load i32, i32* %4, align 4, !tbaa !7
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4, !tbaa !7
  br label %96

; <label>:115:                                    ; preds = %96
  %116 = load i64, i64* %6, align 8, !tbaa !3
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 %116)
  %118 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %118) #5
  %119 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %119) #5
  %120 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #5
  %121 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %121) #5
  %122 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #5
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isdigit(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__isctype(i32 %3, i64 1024)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 32768)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @islower(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 4096)
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !3
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
  %17 = load i64, i64* %4, align 8, !tbaa !3
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

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !3
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
  %14 = load i64, i64* %4, align 8, !tbaa !3
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %28

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = load i64, i64* %4, align 8, !tbaa !3
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
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
