; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Summer2013_PA02_inputs_intgen.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Summer2013_PA02_inputs_intgen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"need a number\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"need a positive number\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %38

; <label>:12:                                     ; preds = %2
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load i8**, i8*** %5, align 8, !tbaa !7
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8, !tbaa !7
  %17 = call i64 @strtol(i8* %16, i8** null, i32 10)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %12
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %36

; <label>:23:                                     ; preds = %12
  %24 = call i64 @time(i64* null)
  %25 = trunc i64 %24 to i32
  call void @srand(i32 %25)
  br label %26

; <label>:26:                                     ; preds = %29, %23
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %26
  %30 = call i32 @rand()
  %31 = srem i32 %30, 100000
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %31)
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4, !tbaa !3
  br label %26

; <label>:35:                                     ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %21
  %37 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  br label %38

; <label>:38:                                     ; preds = %36, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i64 @strtol(i8*, i8**, i32) #1

declare void @srand(i32) #1

declare i64 @time(i64*) #1

declare i32 @rand() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
