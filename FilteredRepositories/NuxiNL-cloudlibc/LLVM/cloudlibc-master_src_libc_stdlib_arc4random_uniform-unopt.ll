; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_arc4random_uniform.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_arc4random_uniform.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @arc4random_uniform(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %1
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %4 to i8*
  call void @arc4random_buf(i8* %12, i64 4)
  %13 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %13, i32* %2, align 4
  %14 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  br label %38

; <label>:15:                                     ; preds = %1
  %16 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = sub i32 0, %17
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = urem i32 %18, %19
  store i32 %20, i32* %5, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %35, %15
  %22 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %6 to i8*
  call void @arc4random_buf(i8* %23, i64 4)
  %24 = load i32, i32* %6, align 4, !tbaa !3
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = urem i32 %28, %29
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %32

; <label>:31:                                     ; preds = %21
  store i32 0, i32* %7, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %27
  %33 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %36 [
    i32 0, label %35
  ]

; <label>:35:                                     ; preds = %32
  br label %21

; <label>:36:                                     ; preds = %32
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  br label %38

; <label>:38:                                     ; preds = %36, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare void @arc4random_buf(i8*, i64) #2

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
