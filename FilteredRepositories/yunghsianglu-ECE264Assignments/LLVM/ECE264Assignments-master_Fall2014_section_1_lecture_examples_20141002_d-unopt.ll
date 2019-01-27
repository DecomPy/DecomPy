; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141002_d.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141002_d.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [33 x i8] c"f(%d) == %d : called f %d times\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @f(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !7
  %6 = load i32*, i32** %5, align 8, !tbaa !7
  %7 = load i32, i32* %6, align 4, !tbaa !3
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  store i32 1, i32* %3, align 4
  br label %26

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = sub nsw i32 %17, 2
  %19 = load i32*, i32** %5, align 8, !tbaa !7
  %20 = call i32 @f(i32 %18, i32* %19)
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %5, align 8, !tbaa !7
  %24 = call i32 @f(i32 %22, i32* %23)
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %16, %15, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %24, %2
  %11 = load i32, i32* %6, align 4, !tbaa !3
  %12 = icmp sle i32 %11, 8
  br i1 %12, label %13, label %27

; <label>:13:                                     ; preds = %10
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  %15 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = call i32 @f(i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = load i32, i32* %8, align 4, !tbaa !3
  %20 = load i32, i32* %7, align 4, !tbaa !3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %18, i32 %19, i32 %20)
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  br label %24

; <label>:24:                                     ; preds = %13
  %25 = load i32, i32* %6, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4, !tbaa !3
  br label %10

; <label>:27:                                     ; preds = %10
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

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
