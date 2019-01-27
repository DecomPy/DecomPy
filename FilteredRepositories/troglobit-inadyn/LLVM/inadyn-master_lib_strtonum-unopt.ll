; ModuleID = 'Repositories/troglobit-inadyn/Unfiltered/inadyn-master_lib_strtonum.c'
source_filename = "Repositories/troglobit-inadyn/Unfiltered/inadyn-master_lib_strtonum.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.errval = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"too small\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @strtonum(i8*, i64, i64, i8**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4 x %struct.errval], align 16
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i64 %1, i64* %6, align 8, !tbaa !7
  store i64 %2, i64* %7, align 8, !tbaa !7
  store i8** %3, i8*** %8, align 8, !tbaa !3
  %13 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  store i64 0, i64* %9, align 8, !tbaa !7
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %10, align 4, !tbaa !9
  %15 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = bitcast [4 x %struct.errval]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %16) #3
  %17 = bitcast [4 x %struct.errval]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 64, i1 false)
  %18 = bitcast i8* %17 to [4 x %struct.errval]*
  %19 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.errval, %struct.errval* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.errval, %struct.errval* %19, i32 0, i32 1
  store i32 22, i32* %21, align 8
  %22 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %18, i32 0, i32 2
  %23 = getelementptr inbounds %struct.errval, %struct.errval* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.errval, %struct.errval* %22, i32 0, i32 1
  store i32 34, i32* %24, align 8
  %25 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %18, i32 0, i32 3
  %26 = getelementptr inbounds %struct.errval, %struct.errval* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.errval, %struct.errval* %25, i32 0, i32 1
  store i32 34, i32* %27, align 8
  %28 = call i32* @__error()
  %29 = load i32, i32* %28, align 4, !tbaa !9
  %30 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 0
  %31 = getelementptr inbounds %struct.errval, %struct.errval* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8, !tbaa !11
  %32 = call i32* @__error()
  store i32 0, i32* %32, align 4, !tbaa !9
  %33 = load i64, i64* %6, align 8, !tbaa !7
  %34 = load i64, i64* %7, align 8, !tbaa !7
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %4
  store i32 1, i32* %10, align 4, !tbaa !9
  br label %76

; <label>:37:                                     ; preds = %4
  %38 = load i8*, i8** %5, align 8, !tbaa !3
  %39 = call i64 @strtoll(i8* %38, i8** %11, i32 10)
  store i64 %39, i64* %9, align 8, !tbaa !7
  %40 = load i8*, i8** %5, align 8, !tbaa !3
  %41 = load i8*, i8** %11, align 8, !tbaa !3
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %11, align 8, !tbaa !3
  %45 = load i8, i8* %44, align 1, !tbaa !13
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %43, %37
  store i32 1, i32* %10, align 4, !tbaa !9
  br label %75

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* %9, align 8, !tbaa !7
  %51 = icmp eq i64 %50, -9223372036854775808
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %49
  %53 = call i32* @__error()
  %54 = load i32, i32* %53, align 4, !tbaa !9
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %60, label %56

; <label>:56:                                     ; preds = %52, %49
  %57 = load i64, i64* %9, align 8, !tbaa !7
  %58 = load i64, i64* %6, align 8, !tbaa !7
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %56, %52
  store i32 2, i32* %10, align 4, !tbaa !9
  br label %74

; <label>:61:                                     ; preds = %56
  %62 = load i64, i64* %9, align 8, !tbaa !7
  %63 = icmp eq i64 %62, 9223372036854775807
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %61
  %65 = call i32* @__error()
  %66 = load i32, i32* %65, align 4, !tbaa !9
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %72, label %68

; <label>:68:                                     ; preds = %64, %61
  %69 = load i64, i64* %9, align 8, !tbaa !7
  %70 = load i64, i64* %7, align 8, !tbaa !7
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %68, %64
  store i32 3, i32* %10, align 4, !tbaa !9
  br label %73

; <label>:73:                                     ; preds = %72, %68
  br label %74

; <label>:74:                                     ; preds = %73, %60
  br label %75

; <label>:75:                                     ; preds = %74, %48
  br label %76

; <label>:76:                                     ; preds = %75, %36
  %77 = load i8**, i8*** %8, align 8, !tbaa !3
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %86

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %10, align 4, !tbaa !9
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.errval, %struct.errval* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 16, !tbaa !14
  %85 = load i8**, i8*** %8, align 8, !tbaa !3
  store i8* %84, i8** %85, align 8, !tbaa !3
  br label %86

; <label>:86:                                     ; preds = %79, %76
  %87 = load i32, i32* %10, align 4, !tbaa !9
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.errval, %struct.errval* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8, !tbaa !11
  %92 = call i32* @__error()
  store i32 %91, i32* %92, align 4, !tbaa !9
  %93 = load i32, i32* %10, align 4, !tbaa !9
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %86
  store i64 0, i64* %9, align 8, !tbaa !7
  br label %96

; <label>:96:                                     ; preds = %95, %86
  %97 = load i64, i64* %9, align 8, !tbaa !7
  %98 = bitcast [4 x %struct.errval]* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %98) #3
  %99 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #3
  %100 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #3
  %101 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #3
  ret i64 %97
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32* @__error() #2

declare i64 @strtoll(i8*, i8**, i32) #2

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
!8 = !{!"long long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"errval", !4, i64 0, !10, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!12, !4, i64 0}
