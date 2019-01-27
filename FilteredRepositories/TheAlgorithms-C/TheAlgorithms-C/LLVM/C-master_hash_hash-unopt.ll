; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_hash_hash.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_hash_hash.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i64 @sdbm(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #2
  store i64 0, i64* %3, align 8, !tbaa !7
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:7:                                      ; preds = %15, %1
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !9
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %2, align 8, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !11
  %21 = sext i8 %20 to i64
  %22 = load i64, i64* %3, align 8, !tbaa !7
  %23 = shl i64 %22, 6
  %24 = add nsw i64 %21, %23
  %25 = load i64, i64* %3, align 8, !tbaa !7
  %26 = shl i64 %25, 16
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* %3, align 8, !tbaa !7
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %3, align 8, !tbaa !7
  %30 = load i32, i32* %4, align 4, !tbaa !9
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:32:                                     ; preds = %7
  %33 = load i64, i64* %3, align 8, !tbaa !7
  %34 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #2
  ret i64 %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i64 @djb2(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #2
  store i64 5381, i64* %3, align 8, !tbaa !7
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:7:                                      ; preds = %15, %1
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !9
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %7
  %16 = load i64, i64* %3, align 8, !tbaa !7
  %17 = shl i64 %16, 5
  %18 = load i64, i64* %3, align 8, !tbaa !7
  %19 = add nsw i64 %17, %18
  %20 = load i8*, i8** %2, align 8, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = sext i8 %24 to i64
  %26 = add nsw i64 %19, %25
  store i64 %26, i64* %3, align 8, !tbaa !7
  %27 = load i32, i32* %4, align 4, !tbaa !9
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:29:                                     ; preds = %7
  %30 = load i64, i64* %3, align 8, !tbaa !7
  %31 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #2
  %32 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #2
  ret i64 %30
}

; Function Attrs: nounwind ssp uwtable
define signext i8 @xor8(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 0, i32* %3, align 4, !tbaa !9
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:7:                                      ; preds = %15, %1
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !9
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %3, align 4, !tbaa !9
  %17 = load i8*, i8** %2, align 8, !tbaa !3
  %18 = load i32, i32* %4, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !11
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %16, %22
  %24 = and i32 %23, 255
  store i32 %24, i32* %3, align 4, !tbaa !9
  %25 = load i32, i32* %4, align 4, !tbaa !9
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4, !tbaa !9
  br label %7

; <label>:27:                                     ; preds = %7
  %28 = load i32, i32* %3, align 4, !tbaa !9
  %29 = xor i32 %28, 255
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #2
  %34 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  ret i8 %32
}

; Function Attrs: nounwind ssp uwtable
define i32 @adler_32(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  store i32 1, i32* %3, align 4, !tbaa !9
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %4, align 4, !tbaa !9
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  store i32 65521, i32* %5, align 4, !tbaa !9
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %6, align 4, !tbaa !9
  br label %11

; <label>:11:                                     ; preds = %19, %1
  %12 = load i8*, i8** %2, align 8, !tbaa !3
  %13 = load i32, i32* %6, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !11
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %3, align 4, !tbaa !9
  %21 = load i8*, i8** %2, align 8, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !11
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %20, %26
  %28 = srem i32 %27, 65521
  store i32 %28, i32* %3, align 4, !tbaa !9
  %29 = load i32, i32* %4, align 4, !tbaa !9
  %30 = load i32, i32* %3, align 4, !tbaa !9
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 65521
  store i32 %32, i32* %4, align 4, !tbaa !9
  %33 = load i32, i32* %6, align 4, !tbaa !9
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4, !tbaa !9
  br label %11

; <label>:35:                                     ; preds = %11
  %36 = load i32, i32* %4, align 4, !tbaa !9
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %3, align 4, !tbaa !9
  %39 = or i32 %37, %38
  %40 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #2
  %41 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #2
  %42 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #2
  %43 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #2
  ret i32 %39
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
!8 = !{!"long long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
