; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_exercism_acronym_acronym.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_exercism_acronym_acronym.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@abbreviate.acr = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @abbreviate(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @__strcpy_chk(i8* %11, i8* %12, i64 80) #2
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  store i8* %14, i8** %4, align 8
  %15 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 80) #2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %40, %1
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 80
  br label %22

; <label>:22:                                     ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %41

; <label>:24:                                     ; preds = %22
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %29, %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 80
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

; <label>:40:                                     ; preds = %35, %32
  br label %16

; <label>:41:                                     ; preds = %22
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %8, align 8
  %47 = alloca [80 x i8], i64 %45, align 16
  store i64 %45, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %48

; <label>:48:                                     ; preds = %63, %41
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %54
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %58
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %59, i32 0, i32 0
  %61 = call i64 @llvm.objectsize.i64.p0i8(i8* %60, i1 false, i1 true)
  %62 = call i8* @__strcpy_chk(i8* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 %61) #2
  br label %63

; <label>:63:                                     ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %48

; <label>:66:                                     ; preds = %48
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  store i8* %68, i8** %10, align 8
  br label %69

; <label>:69:                                     ; preds = %107, %66
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 80
  br label %75

; <label>:75:                                     ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %77, label %108

; <label>:77:                                     ; preds = %75
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %99

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %4, align 8
  store i8 0, i8* %83, align 1
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %85
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %86, i32 0, i32 0
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %90
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %91, i32 0, i32 0
  %93 = call i64 @llvm.objectsize.i64.p0i8(i8* %92, i1 false, i1 true)
  %94 = call i8* @__strncat_chk(i8* %87, i8* %88, i64 80, i64 %93) #2
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %10, align 8
  br label %99

; <label>:99:                                     ; preds = %82, %77
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %100, 80
  br i1 %101, label %102, label %107

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %107

; <label>:107:                                    ; preds = %102, %99
  br label %69

; <label>:108:                                    ; preds = %75
  %109 = load i8*, i8** %4, align 8
  store i8 0, i8* %109, align 1
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %111
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %112, i32 0, i32 0
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %116
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %117, i32 0, i32 0
  %119 = call i64 @llvm.objectsize.i64.p0i8(i8* %118, i1 false, i1 true)
  %120 = call i8* @__strncat_chk(i8* %113, i8* %114, i64 80, i64 %119) #2
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %123

; <label>:123:                                    ; preds = %149, %108
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %152

; <label>:127:                                    ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %129
  %131 = getelementptr inbounds [80 x i8], [80 x i8]* %130, i64 0, i64 0
  %132 = load i8, i8* %131, align 16
  %133 = sext i8 %132 to i32
  %134 = call i32 @toupper(i32 %133) #5
  %135 = trunc i32 %134 to i8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %137
  %139 = getelementptr inbounds [80 x i8], [80 x i8]* %138, i64 0, i64 0
  store i8 %135, i8* %139, align 16
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %141
  %143 = getelementptr inbounds [80 x i8], [80 x i8]* %142, i64 0, i64 1
  store i8 0, i8* %143, align 1
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [80 x i8], [80 x i8]* %47, i64 %145
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %146, i32 0, i32 0
  %148 = call i8* @__strcat_chk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0), i8* %147, i64 80) #2
  br label %149

; <label>:149:                                    ; preds = %127
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %123

; <label>:152:                                    ; preds = %123
  %153 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %153)
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #3

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
