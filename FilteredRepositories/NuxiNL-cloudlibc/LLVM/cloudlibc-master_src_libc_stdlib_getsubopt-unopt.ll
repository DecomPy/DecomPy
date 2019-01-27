; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getsubopt.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getsubopt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @getsubopt(i8**, i8**, i8**) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8, !tbaa !3
  store i8** %1, i8*** %6, align 8, !tbaa !3
  store i8** %2, i8*** %7, align 8, !tbaa !3
  %13 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = load i8**, i8*** %5, align 8, !tbaa !3
  %15 = load i8*, i8** %14, align 8, !tbaa !3
  %16 = call i64 @strcspn(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %16, i64* %8, align 8, !tbaa !7
  %17 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #3
  %18 = load i8**, i8*** %5, align 8, !tbaa !3
  %19 = load i8*, i8** %18, align 8, !tbaa !3
  %20 = load i64, i64* %8, align 8, !tbaa !7
  %21 = call i8* @memchr(i8* %19, i32 61, i64 %20)
  store i8* %21, i8** %9, align 8, !tbaa !3
  %22 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #3
  %23 = load i8*, i8** %9, align 8, !tbaa !3
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %3
  %26 = load i8*, i8** %9, align 8, !tbaa !3
  %27 = load i8**, i8*** %5, align 8, !tbaa !3
  %28 = load i8*, i8** %27, align 8, !tbaa !3
  %29 = ptrtoint i8* %26 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  br label %34

; <label>:32:                                     ; preds = %3
  %33 = load i64, i64* %8, align 8, !tbaa !7
  br label %34

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i64 [ %31, %25 ], [ %33, %32 ]
  store i64 %35, i64* %10, align 8, !tbaa !7
  %36 = load i64, i64* %10, align 8, !tbaa !7
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %34
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %102

; <label>:39:                                     ; preds = %34
  %40 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #3
  store i32 0, i32* %12, align 4, !tbaa !9
  br label %41

; <label>:41:                                     ; preds = %72, %39
  %42 = load i8**, i8*** %6, align 8, !tbaa !3
  %43 = load i32, i32* %12, align 4, !tbaa !9
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8, !tbaa !3
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %41
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

; <label>:49:                                     ; preds = %41
  %50 = load i8**, i8*** %6, align 8, !tbaa !3
  %51 = load i32, i32* %12, align 4, !tbaa !9
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8, !tbaa !3
  %55 = load i8**, i8*** %5, align 8, !tbaa !3
  %56 = load i8*, i8** %55, align 8, !tbaa !3
  %57 = load i64, i64* %10, align 8, !tbaa !7
  %58 = call i32 @memcmp(i8* %54, i8* %56, i64 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %49
  %61 = load i8**, i8*** %6, align 8, !tbaa !3
  %62 = load i32, i32* %12, align 4, !tbaa !9
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8, !tbaa !3
  %66 = load i64, i64* %10, align 8, !tbaa !7
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !11
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %60
  br label %75

; <label>:72:                                     ; preds = %60, %49
  %73 = load i32, i32* %12, align 4, !tbaa !9
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4, !tbaa !9
  br label %41

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %8, align 8, !tbaa !7
  %77 = load i8**, i8*** %5, align 8, !tbaa !3
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds i8, i8* %78, i64 %76
  store i8* %79, i8** %77, align 8, !tbaa !3
  %80 = load i8**, i8*** %5, align 8, !tbaa !3
  %81 = load i8*, i8** %80, align 8, !tbaa !3
  %82 = load i8, i8* %81, align 1, !tbaa !11
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %75
  %86 = load i8**, i8*** %5, align 8, !tbaa !3
  %87 = load i8*, i8** %86, align 8, !tbaa !3
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8, !tbaa !3
  store i8 0, i8* %87, align 1, !tbaa !11
  br label %89

; <label>:89:                                     ; preds = %85, %75
  %90 = load i8*, i8** %9, align 8, !tbaa !3
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %9, align 8, !tbaa !3
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  br label %96

; <label>:95:                                     ; preds = %89
  br label %96

; <label>:96:                                     ; preds = %95, %92
  %97 = phi i8* [ %94, %92 ], [ null, %95 ]
  %98 = load i8**, i8*** %7, align 8, !tbaa !3
  store i8* %97, i8** %98, align 8, !tbaa !3
  %99 = load i32, i32* %12, align 4, !tbaa !9
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

; <label>:100:                                    ; preds = %96, %48
  %101 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #3
  br label %102

; <label>:102:                                    ; preds = %100, %38
  %103 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #3
  %104 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %104) #3
  %105 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #3
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i64 @strcspn(i8*, i8*) #2

declare i8* @memchr(i8*, i32, i64) #2

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
