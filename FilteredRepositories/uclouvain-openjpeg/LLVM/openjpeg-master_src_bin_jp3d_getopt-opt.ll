; ModuleID = 'Repositories/uclouvain-openjpeg/Unfiltered/openjpeg-master_src_bin_jp3d_getopt.c'
source_filename = "Repositories/uclouvain-openjpeg/Unfiltered/openjpeg-master_src_bin_jp3d_getopt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@opterr = global i32 1, align 4
@optind = global i32 1, align 4
@getopt.place = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optreset = common global i32 0, align 4
@optopt = common global i32 0, align 4
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"[ERROR] %s: illegal option -- %c\0A\00", align 1
@optarg = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"[ERROR] %s: option requires an argument -- %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getopt(i32, i8**, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @optreset, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** @getopt.place, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %45, label %15

; <label>:15:                                     ; preds = %11, %3
  store i32 0, i32* @optreset, align 4
  %16 = load i32, i32* @optind, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %15
  %20 = load i8**, i8*** %6, align 8
  %21 = load i32, i32* @optind, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** @getopt.place, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %19, %15
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8
  store i32 -1, i32* %4, align 4
  br label %137

; <label>:29:                                     ; preds = %19
  %30 = load i8*, i8** @getopt.place, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** @getopt.place, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** @getopt.place, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* @optind, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @optind, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8
  store i32 -1, i32* %4, align 4
  br label %137

; <label>:44:                                     ; preds = %35, %29
  br label %45

; <label>:45:                                     ; preds = %44, %11
  %46 = load i8*, i8** @getopt.place, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** @getopt.place, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* @optopt, align 4
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @optopt, align 4
  %54 = call i8* @strchr(i8* %52, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %83, label %56

; <label>:56:                                     ; preds = %51, %45
  %57 = load i32, i32* @optopt, align 4
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %137

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** @getopt.place, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* @optind, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @optind, align 4
  br label %67

; <label>:67:                                     ; preds = %64, %60
  %68 = load i32, i32* @opterr, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %70
  %76 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @optopt, align 4
  %81 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* %79, i32 %80)
  br label %82

; <label>:82:                                     ; preds = %75, %70, %67
  store i32 63, i32* %4, align 4
  br label %137

; <label>:83:                                     ; preds = %51
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 58
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %83
  store i8* null, i8** @optarg, align 8
  %90 = load i8*, i8** @getopt.place, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* @optind, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @optind, align 4
  br label %96

; <label>:96:                                     ; preds = %93, %89
  br label %135

; <label>:97:                                     ; preds = %83
  %98 = load i8*, i8** @getopt.place, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %97
  %102 = load i8*, i8** @getopt.place, align 8
  store i8* %102, i8** @optarg, align 8
  br label %132

; <label>:103:                                    ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @optind, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @optind, align 4
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %125

; <label>:108:                                    ; preds = %103
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 58
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %108
  store i32 58, i32* %4, align 4
  br label %137

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* @opterr, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

; <label>:117:                                    ; preds = %114
  %118 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @optopt, align 4
  %123 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* %121, i32 %122)
  br label %124

; <label>:124:                                    ; preds = %117, %114
  store i32 63, i32* %4, align 4
  br label %137

; <label>:125:                                    ; preds = %103
  %126 = load i8**, i8*** %6, align 8
  %127 = load i32, i32* @optind, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** @optarg, align 8
  br label %131

; <label>:131:                                    ; preds = %125
  br label %132

; <label>:132:                                    ; preds = %131, %101
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8
  %133 = load i32, i32* @optind, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @optind, align 4
  br label %135

; <label>:135:                                    ; preds = %132, %96
  %136 = load i32, i32* @optopt, align 4
  store i32 %136, i32* %4, align 4
  br label %137

; <label>:137:                                    ; preds = %135, %124, %113, %82, %59, %41, %28
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare i8* @strchr(i8*, i32) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
