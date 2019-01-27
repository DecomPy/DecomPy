; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_conversion.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_conversion.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.tab = private unnamed_addr constant [5 x i32] [i32 1, i32 -7, i32 1025, i32 234567890, i32 1949288395], align 16
@.str = private unnamed_addr constant [106 x i8] c"%d -> %d (short) %ld (long) %d (unsigned int) %d (unsigned char) %ld (unsigned long) %d (unsigned short)\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
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
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %11) #3
  %12 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([5 x i32]* @main.tab to i8*), i64 20, i1 false)
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %56, %0
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %59

; <label>:17:                                     ; preds = %14
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !3
  store i32 %22, i32* %4, align 4, !tbaa !3
  %23 = bitcast i16* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %23) #3
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %5, align 2, !tbaa !7
  %26 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #3
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8, !tbaa !9
  %29 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %30, i32* %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #3
  %31 = load i32, i32* %4, align 4, !tbaa !3
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1, !tbaa !11
  %33 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %33) #3
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8, !tbaa !9
  %36 = bitcast i16* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %36) #3
  %37 = load i32, i32* %4, align 4, !tbaa !3
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %10, align 2, !tbaa !7
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = load i16, i16* %5, align 2, !tbaa !7
  %41 = sext i16 %40 to i32
  %42 = load i64, i64* %6, align 8, !tbaa !9
  %43 = load i32, i32* %7, align 4, !tbaa !3
  %44 = load i8, i8* %8, align 1, !tbaa !11
  %45 = zext i8 %44 to i32
  %46 = load i64, i64* %9, align 8, !tbaa !9
  %47 = load i16, i16* %10, align 2, !tbaa !7
  %48 = zext i16 %47 to i32
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0), i32 %39, i32 %41, i64 %42, i32 %43, i32 %45, i64 %46, i32 %48)
  %50 = bitcast i16* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %50) #3
  %51 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %8) #3
  %52 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  %53 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #3
  %54 = bitcast i16* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %54) #3
  %55 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  br label %56

; <label>:56:                                     ; preds = %17
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4, !tbaa !3
  br label %14

; <label>:59:                                     ; preds = %14
  %60 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %61) #3
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!5, !5, i64 0}
