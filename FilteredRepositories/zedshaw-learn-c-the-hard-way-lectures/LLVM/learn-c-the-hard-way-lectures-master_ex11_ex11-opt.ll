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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  %10 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.name, i32 0, i32 0), i64 4, i1 false)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %14, i32 %16, i32 %18)
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %33)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %35, align 16
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 3, i32* %37, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 4, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 90, i8* %39, align 1
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 101, i8* %40, align 1
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 100, i8* %41, align 1
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 65, i8* %42, align 1
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %44, i32 %46, i32 %48, i32 %50)
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %65)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 %72, i32 %76, i32 %80, i32 %84)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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
