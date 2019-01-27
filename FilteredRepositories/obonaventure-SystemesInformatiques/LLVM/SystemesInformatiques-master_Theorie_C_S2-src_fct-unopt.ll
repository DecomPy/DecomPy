; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_fct.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_fct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"Usage : ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"i:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"times_two(&i)=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"apr\C3\A8s times_two, i:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"timestwo(&i)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"apr\C3\A8s timestwo, i:%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @twotimes(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = mul nsw i32 2, %3
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @two_times(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = mul nsw i32 2, %3
  store i32 %4, i32* %2, align 4, !tbaa !3
  %5 = load i32, i32* %2, align 4, !tbaa !3
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @times_two(i32*) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8, !tbaa !7
  %3 = load i32*, i32** %2, align 8, !tbaa !7
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = load i32*, i32** %2, align 8, !tbaa !7
  %6 = load i32, i32* %5, align 4, !tbaa !3
  %7 = add nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @timestwo(i32*) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8, !tbaa !7
  %3 = load i32*, i32** %2, align 8, !tbaa !7
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = load i32*, i32** %2, align 8, !tbaa !7
  %6 = load i32, i32* %5, align 4, !tbaa !3
  %7 = add nsw i32 %4, %6
  %8 = load i32*, i32** %2, align 8, !tbaa !7
  store i32 %7, i32* %8, align 4, !tbaa !3
  %9 = load i32*, i32** %2, align 8, !tbaa !7
  %10 = load i32, i32* %9, align 4, !tbaa !3
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define void @f() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 1252, i32* %1, align 4, !tbaa !3
  %3 = load i32, i32* %1, align 4, !tbaa !3
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %3)
  %5 = call i32 @times_two(i32* %1)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  %7 = load i32, i32* %1, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %7)
  %9 = call i32 @timestwo(i32* %1)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %9)
  %11 = load i32, i32* %1, align 4, !tbaa !3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %13 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @plusun(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %4, align 8, !tbaa !7
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !3
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret void
}

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
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 1252, i32* %6, align 4, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  call void @f()
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  ret i32 0
}

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
