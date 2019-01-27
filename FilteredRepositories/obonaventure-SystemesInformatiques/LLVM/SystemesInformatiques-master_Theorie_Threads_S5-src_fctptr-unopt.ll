; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_fctptr.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_fctptr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@g = global i32 1, align 4
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"debug: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"g=%d\0A\00", align 1
@debug_print = global [3 x void (i8*)*] [void (i8*)* @empty, void (i8*)* @oneline, void (i8*)* @detailed], align 16
@debug_level = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"fct debug_print : %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @empty(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @oneline(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %4 = load i8*, i8** %2, align 8, !tbaa !3
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %4)
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @detailed(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %4 = load i8*, i8** %2, align 8, !tbaa !3
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %4)
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %7 = load i32, i32* @g, align 4, !tbaa !7
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !7
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

; <label>:9:                                      ; preds = %2
  %10 = load i8**, i8*** %5, align 8, !tbaa !3
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !3
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* @debug_level, align 4, !tbaa !7
  %14 = load i32, i32* @debug_level, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* @debug_level, align 4, !tbaa !7
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16, %9
  store i32 1, i32* %3, align 4
  br label %30

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* @debug_level, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x void (i8*)*], [3 x void (i8*)*]* @debug_print, i64 0, i64 %22
  %24 = load void (i8*)*, void (i8*)** %23, align 8, !tbaa !3
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (i8*)* %24)
  %26 = load i32, i32* @debug_level, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x void (i8*)*], [3 x void (i8*)*]* @debug_print, i64 0, i64 %27
  %29 = load void (i8*)*, void (i8*)** %28, align 8, !tbaa !3
  call void %29(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %20, %19, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!8 = !{!"int", !5, i64 0}
