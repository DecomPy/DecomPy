; ModuleID = 'Repositories/pret-agbcc/Unfiltered/agbcc-master_libc_string_strlwr.c'
source_filename = "Repositories/pret-agbcc/Unfiltered/agbcc-master_libc_string_strlwr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i8* @strlwr(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5
  %5 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %5, i8** %3, align 8, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %24, %1
  %7 = load i8*, i8** %2, align 8, !tbaa !3
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %2, align 8, !tbaa !3
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  %15 = call i32 @isupper(i32 %14) #6
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %2, align 8, !tbaa !3
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = call i32 @tolower(i32 %20) #6
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %2, align 8, !tbaa !3
  store i8 %22, i8* %23, align 1, !tbaa !7
  br label %24

; <label>:24:                                     ; preds = %17, %11
  %25 = load i8*, i8** %2, align 8, !tbaa !3
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8, !tbaa !3
  br label %6

; <label>:27:                                     ; preds = %6
  %28 = load i8*, i8** %3, align 8, !tbaa !3
  %29 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #5
  ret i8* %28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isupper(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = call i32 @__istype(i32 %3, i64 32768)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @tolower(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = call i32 @__tolower(i32 %3)
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32, i64) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !8
  store i64 %1, i64* %4, align 8, !tbaa !10
  %5 = load i32, i32* %3, align 4, !tbaa !8
  %6 = call i32 @isascii(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !8
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %4, align 8, !tbaa !10
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %28

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %3, align 4, !tbaa !8
  %22 = load i64, i64* %4, align 8, !tbaa !10
  %23 = call i32 @__maskrune(i32 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  br label %28

; <label>:28:                                     ; preds = %20, %8
  %29 = phi i32 [ %19, %8 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = and i32 %3, -128
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare i32 @__maskrune(i32, i64) #4

declare i32 @__tolower(i32) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
