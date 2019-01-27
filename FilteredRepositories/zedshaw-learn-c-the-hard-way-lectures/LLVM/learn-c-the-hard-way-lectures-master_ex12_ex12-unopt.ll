; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex12_ex12.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex12_ex12.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.areas = private unnamed_addr constant [5 x i32] [i32 10, i32 12, i32 13, i32 14, i32 20], align 16
@main.name = private unnamed_addr constant [4 x i8] c"Zed\00", align 1
@main.full_name = private unnamed_addr constant [11 x i8] c"Zed A. Shaw", align 1
@.str = private unnamed_addr constant [25 x i8] c"The size of an int: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The size of areas (int[]): %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"The number of ints in areas: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"The first area is %d, the 2nd %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"The size of a char: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"The size of name (char[]): %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"The number of chars: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"The size of full_name (char[]): %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"name=\22%s\22 and full_name=\22%s\22\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca [11 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %9) #3
  %10 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @main.areas to i8*), i64 20, i1 false)
  %11 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.name, i32 0, i32 0), i64 4, i1 false)
  %13 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 11, i8* %13) #3
  %14 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @main.full_name, i32 0, i32 0), i64 11, i1 false)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i64 4)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i64 20)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i64 5)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 16, !tbaa !3
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %19, i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i64 1)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i64 4)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i64 4)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i64 11)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i64 11)
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 12
  store i8 88, i8* %28, align 1, !tbaa !9
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %30 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i32 0, i32 0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %29, i8* %30)
  %32 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 11, i8* %32) #3
  %33 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %34) #3
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
!9 = !{!5, !5, i64 0}
