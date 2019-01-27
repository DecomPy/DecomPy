; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex01_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex01_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.dest = private unnamed_addr constant [3 x i8] c"gg\00", align 1
@main.src = private unnamed_addr constant [7 x i8] c"aaaaaa\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = alloca [7 x i8], align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 1, i32* %2, align 4, !tbaa !3
  %7 = bitcast [3 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %7) #3
  %8 = bitcast [3 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @main.dest, i32 0, i32 0), i64 3, i1 false)
  %9 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %9) #3
  %10 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @main.src, i32 0, i32 0), i64 7, i1 false)
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i32 0, i32 0
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i32 0, i32 0
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = call i8* @ft_strncpy(i8* %12, i8* %13, i32 %14)
  br label %16

; <label>:16:                                     ; preds = %33, %0
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %38

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %19
  br label %33

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %5, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %32 = sext i8 %31 to i32
  br label %33

; <label>:33:                                     ; preds = %27, %26
  %34 = phi i32 [ 88, %26 ], [ %32, %27 ]
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %34)
  %36 = load i32, i32* %5, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4, !tbaa !3
  br label %16

; <label>:38:                                     ; preds = %16
  %39 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %40) #3
  %41 = bitcast [3 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %41) #3
  %42 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i8* @ft_strncpy(i8*, i8*, i32) #2

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
!7 = !{!5, !5, i64 0}
