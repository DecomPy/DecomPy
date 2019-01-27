; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_scripts_bin2c.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_scripts_bin2c.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"const char %s[] %s=\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\5Cx%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09;\0A\0A#include <linux/types.h>\0A\0Aconst size_t %s_size = %d;\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %5, align 8, !tbaa !7
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8, !tbaa !7
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %12
  %19 = load i8**, i8*** %5, align 8, !tbaa !7
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8, !tbaa !7
  br label %23

; <label>:22:                                     ; preds = %12
  br label %23

; <label>:23:                                     ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %22 ]
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %15, i8* %24)
  br label %26

; <label>:26:                                     ; preds = %23, %2
  br label %27

; <label>:27:                                     ; preds = %44, %26
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %41, %27
  %30 = call i32 @getchar()
  store i32 %30, i32* %6, align 4, !tbaa !3
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %42

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %7, align 4, !tbaa !3
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %35)
  %37 = load i32, i32* %7, align 4, !tbaa !3
  %38 = srem i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %32
  br label %42

; <label>:41:                                     ; preds = %32
  br label %29

; <label>:42:                                     ; preds = %40, %29
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %44

; <label>:44:                                     ; preds = %42
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %27, label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %4, align 4, !tbaa !3
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %47
  %51 = load i8**, i8*** %5, align 8, !tbaa !7
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8, !tbaa !7
  %54 = load i32, i32* %7, align 4, !tbaa !3
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8* %53, i32 %54)
  br label %56

; <label>:56:                                     ; preds = %50, %47
  %57 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  %58 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

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
