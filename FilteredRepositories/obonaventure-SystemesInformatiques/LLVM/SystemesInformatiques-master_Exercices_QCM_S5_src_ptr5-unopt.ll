; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr5.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.m = private unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 6, i32 7, i32 8], [4 x i32] [i32 9, i32 10, i32 11, i32 12]], align 16
@.str = private unnamed_addr constant [13 x i8] c"%p %d %d %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [3 x [4 x i32]], align 16
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i8** %1, i8*** %4, align 8, !tbaa !7
  %7 = bitcast [3 x [4 x i32]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %7) #3
  %8 = bitcast [3 x [4 x i32]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x [4 x i32]]* @main.m to i8*), i64 48, i1 false)
  %9 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i32 0, i32 0
  %10 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 1
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %12 = load i32, i32* %11, align 8, !tbaa !3
  %13 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 5
  %15 = load i32, i32* %14, align 4, !tbaa !3
  %16 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 2
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %18 = load i32, i32* %17, align 8, !tbaa !3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), [4 x i32]* %9, i32 %12, i32 %15, i32 %18)
  %20 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  %21 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32* %22, i32** %6, align 8, !tbaa !7
  %23 = load i32*, i32** %6, align 8, !tbaa !7
  %24 = load i32*, i32** %6, align 8, !tbaa !7
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4, !tbaa !3
  %28 = load i32*, i32** %6, align 8, !tbaa !7
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4, !tbaa !3
  %32 = load i32*, i32** %6, align 8, !tbaa !7
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4, !tbaa !3
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* %23, i32 %27, i32 %31, i32 %35)
  %37 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #3
  %38 = bitcast [3 x [4 x i32]]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %38) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
