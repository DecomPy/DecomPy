; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex11_ex11.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex11_ex11.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.name = private unnamed_addr constant [4 x i8] c"aaaa", align 1
@.str = private unnamed_addr constant [22 x i8] c"numbers: %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"name each: %c %c %c %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Zed\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"another: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"another each: %c %c %c %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %9) #3
  %10 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.name, i32 0, i32 0), i64 4, i1 false)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* %13, align 16, !tbaa !3
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %16 = load i32, i32* %15, align 4, !tbaa !3
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %18 = load i32, i32* %17, align 8, !tbaa !3
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %20 = load i32, i32* %19, align 4, !tbaa !3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = sext i8 %23 to i32
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %29 = load i8, i8* %28, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %32 = load i8, i8* %31, align 1, !tbaa !9
  %33 = sext i8 %32 to i32
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %37, align 16, !tbaa !3
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %38, align 4, !tbaa !3
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 3, i32* %39, align 8, !tbaa !3
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 4, i32* %40, align 4, !tbaa !3
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 90, i8* %41, align 1, !tbaa !9
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 101, i8* %42, align 1, !tbaa !9
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 100, i8* %43, align 1, !tbaa !9
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 65, i8* %44, align 1, !tbaa !9
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %46 = load i32, i32* %45, align 16, !tbaa !3
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %48 = load i32, i32* %47, align 4, !tbaa !3
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %50 = load i32, i32* %49, align 8, !tbaa !3
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %52 = load i32, i32* %51, align 4, !tbaa !3
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %46, i32 %48, i32 %50, i32 %52)
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %55 = load i8, i8* %54, align 1, !tbaa !9
  %56 = sext i8 %55 to i32
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %58 = load i8, i8* %57, align 1, !tbaa !9
  %59 = sext i8 %58 to i32
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = sext i8 %61 to i32
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = sext i8 %64 to i32
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %67)
  %69 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69) #3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8, !tbaa !7
  %70 = load i8*, i8** %8, align 8, !tbaa !7
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %70)
  %72 = load i8*, i8** %8, align 8, !tbaa !7
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  %76 = load i8*, i8** %8, align 8, !tbaa !7
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1, !tbaa !9
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %8, align 8, !tbaa !7
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1, !tbaa !9
  %83 = sext i8 %82 to i32
  %84 = load i8*, i8** %8, align 8, !tbaa !7
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1, !tbaa !9
  %87 = sext i8 %86 to i32
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 %75, i32 %79, i32 %83, i32 %87)
  %89 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #3
  %90 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %91) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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
