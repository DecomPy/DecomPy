; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_a64l.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_a64l.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a64l.chars = internal constant [77 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\00\00\00\00\00\00\00\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&\00\00\00\00\00\00'()*+,-./0123456789:;<=>?@", align 16

; Function Attrs: nounwind ssp uwtable
define i64 @a64l(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  store i64 0, i64* %4, align 8, !tbaa !9
  br label %9

; <label>:9:                                      ; preds = %49, %1
  %10 = load i64, i64* %4, align 8, !tbaa !9
  %11 = icmp ult i64 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  store i32 2, i32* %5, align 4
  br label %52

; <label>:13:                                     ; preds = %9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #3
  %14 = load i8*, i8** %2, align 8, !tbaa !3
  %15 = load i64, i64* %4, align 8, !tbaa !9
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !11
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 46
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1, !tbaa !11
  %21 = load i8, i8* %6, align 1, !tbaa !11
  %22 = zext i8 %21 to i32
  %23 = call i32 (i8*, ...) bitcast (i32 (...)* @__arraycount to i32 (i8*, ...)*)(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @a64l.chars, i32 0, i32 0))
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %32, label %25

; <label>:25:                                     ; preds = %13
  %26 = load i8, i8* %6, align 1, !tbaa !11
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [77 x i8], [77 x i8]* @a64l.chars, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !11
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %25, %13
  store i32 2, i32* %5, align 4
  br label %46

; <label>:33:                                     ; preds = %25
  %34 = load i8, i8* %6, align 1, !tbaa !11
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [77 x i8], [77 x i8]* @a64l.chars, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !11
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 1
  %40 = load i64, i64* %4, align 8, !tbaa !9
  %41 = mul i64 %40, 6
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %39, %42
  %44 = load i32, i32* %3, align 4, !tbaa !7
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4, !tbaa !7
  store i32 0, i32* %5, align 4
  br label %46

; <label>:46:                                     ; preds = %33, %32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #3
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %52 [
    i32 0, label %48
  ]

; <label>:48:                                     ; preds = %46
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i64, i64* %4, align 8, !tbaa !9
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8, !tbaa !9
  br label %9

; <label>:52:                                     ; preds = %46, %12
  %53 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #3
  br label %54

; <label>:54:                                     ; preds = %52
  %55 = load i32, i32* %3, align 4, !tbaa !7
  %56 = sext i32 %55 to i64
  store i32 1, i32* %5, align 4
  %57 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  ret i64 %56
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @__arraycount(...) #2

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
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!5, !5, i64 0}
