; ModuleID = 'Repositories/troglobit-inadyn/Unfiltered/inadyn-master_lib_strtonum.c'
source_filename = "Repositories/troglobit-inadyn/Unfiltered/inadyn-master_lib_strtonum.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.errval = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"too small\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @strtonum(i8*, i64, i64, i8**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4 x %struct.errval], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = bitcast [4 x %struct.errval]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = bitcast i8* %13 to [4 x %struct.errval]*
  %15 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.errval, %struct.errval* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.errval, %struct.errval* %15, i32 0, i32 1
  store i32 22, i32* %17, align 8
  %18 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %14, i32 0, i32 2
  %19 = getelementptr inbounds %struct.errval, %struct.errval* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.errval, %struct.errval* %18, i32 0, i32 1
  store i32 34, i32* %20, align 8
  %21 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %14, i32 0, i32 3
  %22 = getelementptr inbounds %struct.errval, %struct.errval* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.errval, %struct.errval* %21, i32 0, i32 1
  store i32 34, i32* %23, align 8
  %24 = call i32* @__error()
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.errval, %struct.errval* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = call i32* @__error()
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %4
  store i32 1, i32* %10, align 4
  br label %72

; <label>:33:                                     ; preds = %4
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strtoll(i8* %34, i8** %11, i32 10)
  store i64 %35, i64* %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39, %33
  store i32 1, i32* %10, align 4
  br label %71

; <label>:45:                                     ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, -9223372036854775808
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %45
  %49 = call i32* @__error()
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 34
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %48, %45
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %52, %48
  store i32 2, i32* %10, align 4
  br label %70

; <label>:57:                                     ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %58, 9223372036854775807
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %57
  %61 = call i32* @__error()
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %60, %57
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %64, %60
  store i32 3, i32* %10, align 4
  br label %69

; <label>:69:                                     ; preds = %68, %64
  br label %70

; <label>:70:                                     ; preds = %69, %56
  br label %71

; <label>:71:                                     ; preds = %70, %44
  br label %72

; <label>:72:                                     ; preds = %71, %32
  %73 = load i8**, i8*** %8, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.errval, %struct.errval* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 16
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  br label %82

; <label>:82:                                     ; preds = %75, %72
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.errval, %struct.errval* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32* @__error()
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %82
  store i64 0, i64* %9, align 8
  br label %92

; <label>:92:                                     ; preds = %91, %82
  %93 = load i64, i64* %9, align 8
  ret i64 %93
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32* @__error() #2

declare i64 @strtoll(i8*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
