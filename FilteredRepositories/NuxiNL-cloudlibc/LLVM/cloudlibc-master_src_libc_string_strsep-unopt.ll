; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strsep.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strsep.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @strsep(i8**, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  %9 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i8**, i8*** %4, align 8, !tbaa !3
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  store i8* %11, i8** %6, align 8, !tbaa !3
  %12 = load i8*, i8** %6, align 8, !tbaa !3
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %7, align 4
  br label %36

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  %17 = load i8*, i8** %6, align 8, !tbaa !3
  %18 = load i8*, i8** %6, align 8, !tbaa !3
  %19 = load i8*, i8** %5, align 8, !tbaa !3
  %20 = call i64 @strcspn(i8* %18, i8* %19)
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** %8, align 8, !tbaa !3
  %22 = load i8*, i8** %8, align 8, !tbaa !3
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %15
  %27 = load i8**, i8*** %4, align 8, !tbaa !3
  store i8* null, i8** %27, align 8, !tbaa !3
  br label %33

; <label>:28:                                     ; preds = %15
  %29 = load i8*, i8** %8, align 8, !tbaa !3
  store i8 0, i8* %29, align 1, !tbaa !7
  %30 = load i8*, i8** %8, align 8, !tbaa !3
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8**, i8*** %4, align 8, !tbaa !3
  store i8* %31, i8** %32, align 8, !tbaa !3
  br label %33

; <label>:33:                                     ; preds = %28, %26
  %34 = load i8*, i8** %6, align 8, !tbaa !3
  store i8* %34, i8** %3, align 8
  store i32 1, i32* %7, align 4
  %35 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #3
  br label %36

; <label>:36:                                     ; preds = %33, %14
  %37 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #3
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i64 @strcspn(i8*, i8*) #2

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
!7 = !{!5, !5, i64 0}
