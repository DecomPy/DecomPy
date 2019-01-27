; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_03_magic-square.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_03_magic-square.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"%2d\09%2d\09%2d\09%2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Enter the numbers from 1 to 16 in any order:\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Row sums: %2d  %2d  %2d  %2d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Column sums: %2d  %2d  %2d  %2d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Diagonal sums: %2d  %2d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %18, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  %20 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  %21 = load i8*, i8** %18, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @printf(i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %18, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, ...) @printf(i8* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i8*, i8** %18, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i8*, ...) @printf(i8* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i8*, i8** %18, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i32 (i8*, ...) @printf(i8* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %51, i32 %58, i32 %65, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %80, i32 %87, i32 %94, i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %109, i32 %116)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
