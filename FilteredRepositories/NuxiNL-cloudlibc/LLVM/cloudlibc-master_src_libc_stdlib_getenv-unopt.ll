; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getenv.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getenv.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@environ = external global i8**, align 8

; Function Attrs: nounwind ssp uwtable
define i8* @getenv(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = load i8*, i8** %3, align 8, !tbaa !3
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %4, align 8, !tbaa !7
  %10 = bitcast i8*** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load i8**, i8*** @environ, align 8, !tbaa !3
  store i8** %11, i8*** %5, align 8, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %39, %1
  %13 = load i8**, i8*** %5, align 8, !tbaa !3
  %14 = load i8*, i8** %13, align 8, !tbaa !3
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %12
  store i32 2, i32* %6, align 4
  br label %42

; <label>:17:                                     ; preds = %12
  %18 = load i8**, i8*** %5, align 8, !tbaa !3
  %19 = load i8*, i8** %18, align 8, !tbaa !3
  %20 = load i8*, i8** %3, align 8, !tbaa !3
  %21 = load i64, i64* %4, align 8, !tbaa !7
  %22 = call i32 @memcmp(i8* %19, i8* %20, i64 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %17
  %25 = load i8**, i8*** %5, align 8, !tbaa !3
  %26 = load i8*, i8** %25, align 8, !tbaa !3
  %27 = load i64, i64* %4, align 8, !tbaa !7
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 61
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %24
  %33 = load i8**, i8*** %5, align 8, !tbaa !3
  %34 = load i8*, i8** %33, align 8, !tbaa !3
  %35 = load i64, i64* %4, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %2, align 8
  store i32 1, i32* %6, align 4
  br label %42

; <label>:38:                                     ; preds = %24, %17
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i8**, i8*** %5, align 8, !tbaa !3
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %5, align 8, !tbaa !3
  br label %12

; <label>:42:                                     ; preds = %32, %16
  %43 = bitcast i8*** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #3
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %46 [
    i32 2, label %45
  ]

; <label>:45:                                     ; preds = %42
  store i8* null, i8** %2, align 8
  store i32 1, i32* %6, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %42
  %47 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i64 @strlen(i8*) #2

declare i32 @memcmp(i8*, i8*, i64) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
