; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strrchr.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strrchr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @strrchr(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  store i8* null, i8** %5, align 8, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %26, %2
  %8 = load i8*, i8** %3, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !9
  %10 = sext i8 %9 to i32
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = trunc i32 %11 to i8
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %3, align 8, !tbaa !3
  store i8* %16, i8** %5, align 8, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = load i8*, i8** %3, align 8, !tbaa !3
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8, !tbaa !3
  %20 = load i8, i8* %18, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %5, align 8, !tbaa !3
  %25 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #2
  ret i8* %24

; <label>:26:                                     ; preds = %17
  br label %7
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
!9 = !{!5, !5, i64 0}
