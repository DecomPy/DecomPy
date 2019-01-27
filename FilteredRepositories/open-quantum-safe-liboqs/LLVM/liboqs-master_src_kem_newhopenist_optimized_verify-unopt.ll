; ModuleID = 'Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_newhopenist_optimized_verify.c'
source_filename = "Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_newhopenist_optimized_verify.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @verify(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  store i64 %2, i64* %6, align 8, !tbaa !7
  %9 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #2
  %10 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  store i64 0, i64* %7, align 8, !tbaa !9
  store i64 0, i64* %8, align 8, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %30, %3
  %12 = load i64, i64* %8, align 8, !tbaa !7
  %13 = load i64, i64* %6, align 8, !tbaa !7
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8, !tbaa !3
  %17 = load i64, i64* %8, align 8, !tbaa !7
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !11
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %5, align 8, !tbaa !3
  %22 = load i64, i64* %8, align 8, !tbaa !7
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = zext i8 %24 to i32
  %26 = xor i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8, !tbaa !9
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8, !tbaa !9
  br label %30

; <label>:30:                                     ; preds = %15
  %31 = load i64, i64* %8, align 8, !tbaa !7
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8, !tbaa !7
  br label %11

; <label>:33:                                     ; preds = %11
  %34 = load i64, i64* %7, align 8, !tbaa !9
  %35 = sub i64 0, %34
  %36 = lshr i64 %35, 63
  store i64 %36, i64* %7, align 8, !tbaa !9
  %37 = load i64, i64* %7, align 8, !tbaa !9
  %38 = trunc i64 %37 to i32
  %39 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #2
  %40 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #2
  ret i32 %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @cmov(i8*, i8*, i64, i8 zeroext) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !3
  store i64 %2, i64* %7, align 8, !tbaa !7
  store i8 %3, i8* %8, align 1, !tbaa !11
  %10 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  %11 = load i8, i8* %8, align 1, !tbaa !11
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %8, align 1, !tbaa !11
  store i64 0, i64* %9, align 8, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %41, %4
  %16 = load i64, i64* %9, align 8, !tbaa !7
  %17 = load i64, i64* %7, align 8, !tbaa !7
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %44

; <label>:19:                                     ; preds = %15
  %20 = load i8, i8* %8, align 1, !tbaa !11
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %6, align 8, !tbaa !3
  %23 = load i64, i64* %9, align 8, !tbaa !7
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !11
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** %5, align 8, !tbaa !3
  %28 = load i64, i64* %9, align 8, !tbaa !7
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !11
  %31 = zext i8 %30 to i32
  %32 = xor i32 %26, %31
  %33 = and i32 %21, %32
  %34 = load i8*, i8** %5, align 8, !tbaa !3
  %35 = load i64, i64* %9, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !11
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, %33
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1, !tbaa !11
  br label %41

; <label>:41:                                     ; preds = %19
  %42 = load i64, i64* %9, align 8, !tbaa !7
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8, !tbaa !7
  br label %15

; <label>:44:                                     ; preds = %15
  %45 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #2
  ret void
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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = !{!5, !5, i64 0}
