; ModuleID = 'Repositories/libretro-RetroArch/Unfiltered/RetroArch-master_libretro-common_utils_djb2.c'
source_filename = "Repositories/libretro-RetroArch/Unfiltered/RetroArch-master_libretro-common_utils_djb2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"0x%08xU: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %25, %2
  %9 = load i32, i32* %6, align 4, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

; <label>:12:                                     ; preds = %8
  %13 = load i8**, i8*** %5, align 8, !tbaa !7
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8, !tbaa !7
  %18 = call i32 @djb2(i8* %17)
  %19 = load i8**, i8*** %5, align 8, !tbaa !7
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8, !tbaa !7
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %18, i8* %23)
  br label %25

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4, !tbaa !3
  br label %8

; <label>:28:                                     ; preds = %8
  %29 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @djb2(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !7
  %5 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load i8*, i8** %2, align 8, !tbaa !7
  store i8* %6, i8** %3, align 8, !tbaa !7
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 5381, i32* %4, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %12, %1
  %9 = load i8*, i8** %3, align 8, !tbaa !7
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = shl i32 %13, 5
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = add i32 %14, %15
  %17 = load i8*, i8** %3, align 8, !tbaa !7
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8, !tbaa !7
  %19 = load i8, i8* %17, align 1, !tbaa !9
  %20 = zext i8 %19 to i32
  %21 = add i32 %16, %20
  store i32 %21, i32* %4, align 4, !tbaa !3
  br label %8

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  %25 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #3
  ret i32 %23
}

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
