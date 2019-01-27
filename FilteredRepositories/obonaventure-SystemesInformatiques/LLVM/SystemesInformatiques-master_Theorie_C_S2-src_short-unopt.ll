; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_short.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_short.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [38 x i8] c"\0APuissances de 5 en notation sign\C3\A9e\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"5^%d=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\0APuissances de 10 en notation non sign\C3\A9e\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"10^%d=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %9) #3
  store i16 1, i16* %6, align 2, !tbaa !9
  %10 = bitcast i16* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %10) #3
  store i16 1, i16* %7, align 2, !tbaa !9
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %25, %2
  %14 = load i32, i32* %8, align 4, !tbaa !3
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %13
  %17 = load i16, i16* %6, align 2, !tbaa !9
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 5
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %6, align 2, !tbaa !9
  %21 = load i32, i32* %8, align 4, !tbaa !3
  %22 = load i16, i16* %6, align 2, !tbaa !9
  %23 = sext i16 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %21, i32 %23)
  br label %25

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %8, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4, !tbaa !3
  br label %13

; <label>:28:                                     ; preds = %13
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %42, %28
  %31 = load i32, i32* %8, align 4, !tbaa !3
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %45

; <label>:33:                                     ; preds = %30
  %34 = load i16, i16* %7, align 2, !tbaa !9
  %35 = zext i16 %34 to i32
  %36 = mul nsw i32 %35, 10
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %7, align 2, !tbaa !9
  %38 = load i32, i32* %8, align 4, !tbaa !3
  %39 = load i16, i16* %7, align 2, !tbaa !9
  %40 = zext i16 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %38, i32 %40)
  br label %42

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %8, align 4, !tbaa !3
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4, !tbaa !3
  br label %30

; <label>:45:                                     ; preds = %30
  %46 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = bitcast i16* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %47) #3
  %48 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %48) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

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
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !5, i64 0}
