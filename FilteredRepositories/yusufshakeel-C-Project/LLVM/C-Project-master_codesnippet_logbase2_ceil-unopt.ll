; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_ceil.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_ceil.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@ceil_log2.t = internal constant [6 x i64] [i64 -4294967296, i64 4294901760, i64 65280, i64 240, i64 12, i64 2], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @ceil_log2(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = load i64, i64* %2, align 8, !tbaa !3
  %9 = load i64, i64* %2, align 8, !tbaa !3
  %10 = sub i64 %9, 1
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  store i32 %14, i32* %3, align 4, !tbaa !7
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 32, i32* %4, align 4, !tbaa !7
  %16 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %44, %1
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %47

; <label>:20:                                     ; preds = %17
  %21 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = load i64, i64* %2, align 8, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* @ceil_log2.t, i64 0, i64 %24
  %26 = load i64, i64* %25, align 8, !tbaa !3
  %27 = and i64 %22, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %20
  br label %32

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %4, align 4, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  store i32 %33, i32* %6, align 4, !tbaa !7
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = load i32, i32* %3, align 4, !tbaa !7
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %3, align 4, !tbaa !7
  %37 = load i32, i32* %6, align 4, !tbaa !7
  %38 = load i64, i64* %2, align 8, !tbaa !3
  %39 = zext i32 %37 to i64
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %2, align 8, !tbaa !3
  %41 = load i32, i32* %4, align 4, !tbaa !7
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %4, align 4, !tbaa !7
  %43 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  br label %44

; <label>:44:                                     ; preds = %32
  %45 = load i32, i32* %5, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4, !tbaa !7
  br label %17

; <label>:47:                                     ; preds = %17
  %48 = load i32, i32* %3, align 4, !tbaa !7
  %49 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  ret i32 %48
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !9
  %6 = load i8**, i8*** %5, align 8, !tbaa !9
  %7 = getelementptr inbounds i8*, i8** %6, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !9
  %9 = call i64 @atol(i8* %8)
  %10 = call i32 @ceil_log2(i64 %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

declare i64 @atol(i8*) #2

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
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
