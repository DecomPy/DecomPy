; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getsubopt.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getsubopt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getsubopt(i8**, i8**, i8**) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strcspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %14, i64* %8, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @memchr(i8* %16, i32 61, i64 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  br label %30

; <label>:28:                                     ; preds = %3
  %29 = load i64, i64* %8, align 8
  br label %30

; <label>:30:                                     ; preds = %28, %21
  %31 = phi i64 [ %27, %21 ], [ %29, %28 ]
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %95

; <label>:35:                                     ; preds = %30
  store i32 0, i32* %11, align 4
  br label %36

; <label>:36:                                     ; preds = %67, %35
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %95

; <label>:44:                                     ; preds = %36
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @memcmp(i8* %49, i8* %51, i64 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

; <label>:55:                                     ; preds = %44
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %55
  br label %70

; <label>:67:                                     ; preds = %55, %44
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %36

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %71
  store i8* %74, i8** %72, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

; <label>:80:                                     ; preds = %70
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  store i8 0, i8* %82, align 1
  br label %84

; <label>:84:                                     ; preds = %80, %70
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  br label %91

; <label>:90:                                     ; preds = %84
  br label %91

; <label>:91:                                     ; preds = %90, %87
  %92 = phi i8* [ %89, %87 ], [ null, %90 ]
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

; <label>:95:                                     ; preds = %91, %43, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare i64 @strcspn(i8*, i8*) #1

declare i8* @memchr(i8*, i32, i64) #1

declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
