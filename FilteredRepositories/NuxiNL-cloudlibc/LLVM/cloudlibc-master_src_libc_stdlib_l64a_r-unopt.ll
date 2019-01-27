; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_l64a_r.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_l64a_r.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [65 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @l64a_r(i64, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !9
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = load i64, i64* %5, align 8, !tbaa !3
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4, !tbaa !9
  br label %13

; <label>:13:                                     ; preds = %22, %3
  %14 = load i32, i32* %7, align 4, !tbaa !9
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %7, align 4, !tbaa !9
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %32

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %8, align 4, !tbaa !9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %6, align 8, !tbaa !7
  store i8 0, i8* %21, align 1, !tbaa !11
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %8, align 4, !tbaa !9
  %24 = and i32 %23, 63
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* @.str, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !11
  %28 = load i8*, i8** %6, align 8, !tbaa !7
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8, !tbaa !7
  store i8 %27, i8* %28, align 1, !tbaa !11
  %30 = load i32, i32* %8, align 4, !tbaa !9
  %31 = lshr i32 %30, 6
  store i32 %31, i32* %8, align 4, !tbaa !9
  br label %13

; <label>:32:                                     ; preds = %13
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %20
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = load i32, i32* %4, align 4
  ret i32 %35
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
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
