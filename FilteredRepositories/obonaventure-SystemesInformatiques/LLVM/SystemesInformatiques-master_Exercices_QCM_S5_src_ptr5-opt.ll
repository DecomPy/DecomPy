; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr5.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.m = private unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 6, i32 7, i32 8], [4 x i32] [i32 9, i32 10, i32 11, i32 12]], align 16
@.str = private unnamed_addr constant [13 x i8] c"%p %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [3 x [4 x i32]], align 16
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = bitcast [3 x [4 x i32]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x [4 x i32]]* @main.m to i8*), i64 48, i1 false)
  %8 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i32 0, i32 0
  %9 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 1
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 2
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), [4 x i32]* %8, i32 %11, i32 %14, i32 %17)
  %19 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* %21, i32 %25, i32 %29, i32 %33)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
