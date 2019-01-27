; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_reverse_array.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_reverse_array.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"x[%d]=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @inplace_swap(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %5 = load i32*, i32** %3, align 8, !tbaa !3
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %7 = load i32*, i32** %4, align 8, !tbaa !3
  %8 = load i32, i32* %7, align 4, !tbaa !7
  %9 = xor i32 %6, %8
  %10 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %9, i32* %10, align 4, !tbaa !7
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = load i32*, i32** %4, align 8, !tbaa !3
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = xor i32 %12, %14
  %16 = load i32*, i32** %3, align 8, !tbaa !3
  store i32 %15, i32* %16, align 4, !tbaa !7
  %17 = load i32*, i32** %3, align 8, !tbaa !3
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = xor i32 %18, %20
  %22 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %21, i32* %22, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @reverse_array(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %24, %2
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %3, align 8, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32*, i32** %3, align 8, !tbaa !3
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  call void @inplace_swap(i32* %19, i32* %23)
  br label %24

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %5, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !7
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4, !tbaa !7
  br label %11

; <label>:29:                                     ; preds = %11
  %30 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %6

; <label>:6:                                      ; preds = %15, %0
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %13
  store i32 %11, i32* %14, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4, !tbaa !7
  br label %6

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  call void @reverse_array(i32* %19, i32 5)
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %20

; <label>:20:                                     ; preds = %30, %18
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %33

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %3, align 4, !tbaa !7
  %25 = load i32, i32* %3, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %24, i32 %28)
  br label %30

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %3, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4, !tbaa !7
  br label %20

; <label>:33:                                     ; preds = %20
  %34 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %35) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
