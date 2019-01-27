; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memchr.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memchr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @memchr(i8*, i32, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i64 %2, i64* %7, align 8, !tbaa !9
  %10 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  %11 = load i8*, i8** %5, align 8, !tbaa !3
  store i8* %11, i8** %8, align 8, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %26, %3
  %13 = load i64, i64* %7, align 8, !tbaa !9
  %14 = add i64 %13, -1
  store i64 %14, i64* %7, align 8, !tbaa !9
  %15 = icmp ugt i64 %13, 0
  br i1 %15, label %16, label %29

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %8, align 8, !tbaa !3
  %18 = load i8, i8* %17, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %6, align 4, !tbaa !7
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** %8, align 8, !tbaa !3
  store i8* %25, i8** %4, align 8
  store i32 1, i32* %9, align 4
  br label %30

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %8, align 8, !tbaa !3
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8, !tbaa !3
  br label %12

; <label>:29:                                     ; preds = %12
  store i8* null, i8** %4, align 8
  store i32 1, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %24
  %31 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #2
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!5, !5, i64 0}
