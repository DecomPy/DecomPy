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

; Function Attrs: nounwind ssp uwtable
define i32 @getopt(i32, i8**, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i8** %1, i8*** %6, align 8, !tbaa !7
  store i8* %2, i8** %7, align 8, !tbaa !7
  %10 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load i32, i32* @optreset, align 4, !tbaa !3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %15 = load i8, i8* %14, align 1, !tbaa !9
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %47, label %17

; <label>:17:                                     ; preds = %13, %3
  store i32 0, i32* @optreset, align 4, !tbaa !3
  %18 = load i32, i32* @optind, align 4, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %17
  %22 = load i8**, i8*** %6, align 8, !tbaa !7
  %23 = load i32, i32* @optind, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8, !tbaa !7
  store i8* %26, i8** @getopt.place, align 8, !tbaa !7
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 45
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %21, %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8, !tbaa !7
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @getopt.place, align 8, !tbaa !7
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* @optind, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @optind, align 4, !tbaa !3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8, !tbaa !7
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:46:                                     ; preds = %37, %31
  br label %47

; <label>:47:                                     ; preds = %46, %13
  %48 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** @getopt.place, align 8, !tbaa !7
  %50 = load i8, i8* %48, align 1, !tbaa !9
  %51 = sext i8 %50 to i32
  store i32 %51, i32* @optopt, align 4, !tbaa !3
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %58, label %53

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %7, align 8, !tbaa !7
  %55 = load i32, i32* @optopt, align 4, !tbaa !3
  %56 = call i8* @strchr(i8* %54, i32 %55)
  store i8* %56, i8** %8, align 8, !tbaa !7
  %57 = icmp ne i8* %56, null
  br i1 %57, label %85, label %58

; <label>:58:                                     ; preds = %53, %47
  %59 = load i32, i32* @optopt, align 4, !tbaa !3
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* @optind, align 4, !tbaa !3
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @optind, align 4, !tbaa !3
  br label %69

; <label>:69:                                     ; preds = %66, %62
  %70 = load i32, i32* @opterr, align 4, !tbaa !3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %7, align 8, !tbaa !7
  %74 = load i8, i8* %73, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br i1 %76, label %77, label %84

; <label>:77:                                     ; preds = %72
  %78 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %79 = load i8**, i8*** %6, align 8, !tbaa !7
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8, !tbaa !7
  %82 = load i32, i32* @optopt, align 4, !tbaa !3
  %83 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* %81, i32 %82)
  br label %84

; <label>:84:                                     ; preds = %77, %72, %69
  store i32 63, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:85:                                     ; preds = %53
  %86 = load i8*, i8** %8, align 8, !tbaa !7
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8, !tbaa !7
  %88 = load i8, i8* %87, align 1, !tbaa !9
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 58
  br i1 %90, label %91, label %99

; <label>:91:                                     ; preds = %85
  store i8* null, i8** @optarg, align 8, !tbaa !7
  %92 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %93 = load i8, i8* %92, align 1, !tbaa !9
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %98, label %95

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* @optind, align 4, !tbaa !3
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @optind, align 4, !tbaa !3
  br label %98

; <label>:98:                                     ; preds = %95, %91
  br label %137

; <label>:99:                                     ; preds = %85
  %100 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  %101 = load i8, i8* %100, align 1, !tbaa !9
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %99
  %104 = load i8*, i8** @getopt.place, align 8, !tbaa !7
  store i8* %104, i8** @optarg, align 8, !tbaa !7
  br label %134

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* %5, align 4, !tbaa !3
  %107 = load i32, i32* @optind, align 4, !tbaa !3
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @optind, align 4, !tbaa !3
  %109 = icmp sle i32 %106, %108
  br i1 %109, label %110, label %127

; <label>:110:                                    ; preds = %105
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8, !tbaa !7
  %111 = load i8*, i8** %7, align 8, !tbaa !7
  %112 = load i8, i8* %111, align 1, !tbaa !9
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %110
  store i32 58, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:116:                                    ; preds = %110
  %117 = load i32, i32* @opterr, align 4, !tbaa !3
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

; <label>:119:                                    ; preds = %116
  %120 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %121 = load i8**, i8*** %6, align 8, !tbaa !7
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8, !tbaa !7
  %124 = load i32, i32* @optopt, align 4, !tbaa !3
  %125 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %120, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* %123, i32 %124)
  br label %126

; <label>:126:                                    ; preds = %119, %116
  store i32 63, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:127:                                    ; preds = %105
  %128 = load i8**, i8*** %6, align 8, !tbaa !7
  %129 = load i32, i32* @optind, align 4, !tbaa !3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8, !tbaa !7
  store i8* %132, i8** @optarg, align 8, !tbaa !7
  br label %133

; <label>:133:                                    ; preds = %127
  br label %134

; <label>:134:                                    ; preds = %133, %103
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @getopt.place, align 8, !tbaa !7
  %135 = load i32, i32* @optind, align 4, !tbaa !3
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @optind, align 4, !tbaa !3
  br label %137

; <label>:137:                                    ; preds = %134, %98
  %138 = load i32, i32* @optopt, align 4, !tbaa !3
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %139

; <label>:139:                                    ; preds = %137, %126, %115, %84, %61, %43, %30
  %140 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %140) #3
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8* @strchr(i8*, i32) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

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
