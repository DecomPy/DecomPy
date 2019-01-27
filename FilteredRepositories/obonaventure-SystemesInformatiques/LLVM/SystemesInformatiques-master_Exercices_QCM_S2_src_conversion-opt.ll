; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_conversion.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_conversion.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.tab = private unnamed_addr constant [5 x i32] [i32 1, i32 -7, i32 1025, i32 234567890, i32 1949288395], align 16
@.str = private unnamed_addr constant [106 x i8] c"%d -> %d (short) %ld (long) %d (unsigned int) %d (unsigned char) %ld (unsigned long) %d (unsigned short)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  %11 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([5 x i32]* @main.tab to i8*), i64 20, i1 false)
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %42, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %45

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %5, align 2
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %10, align 2
  %31 = load i32, i32* %4, align 4
  %32 = load i16, i16* %5, align 2
  %33 = sext i16 %32 to i32
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = load i64, i64* %9, align 8
  %39 = load i16, i16* %10, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0), i32 %31, i32 %33, i64 %34, i32 %35, i32 %37, i64 %38, i32 %40)
  br label %42

; <label>:42:                                     ; preds = %15
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %12

; <label>:45:                                     ; preds = %12
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
