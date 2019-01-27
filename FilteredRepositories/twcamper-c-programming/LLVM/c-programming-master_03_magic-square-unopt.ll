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

; Function Attrs: nounwind ssp uwtable
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
  %19 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3
  %24 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  %26 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3
  %29 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  %30 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #3
  %31 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #3
  %32 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #3
  %33 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #3
  %34 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #3
  %35 = bitcast i8** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35) #3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %18, align 8, !tbaa !3
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  %37 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  %38 = load i8*, i8** %18, align 8, !tbaa !3
  %39 = load i32, i32* %2, align 4, !tbaa !7
  %40 = load i32, i32* %3, align 4, !tbaa !7
  %41 = load i32, i32* %4, align 4, !tbaa !7
  %42 = load i32, i32* %5, align 4, !tbaa !7
  %43 = call i32 (i8*, ...) @printf(i8* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i8*, i8** %18, align 8, !tbaa !3
  %45 = load i32, i32* %6, align 4, !tbaa !7
  %46 = load i32, i32* %7, align 4, !tbaa !7
  %47 = load i32, i32* %8, align 4, !tbaa !7
  %48 = load i32, i32* %9, align 4, !tbaa !7
  %49 = call i32 (i8*, ...) @printf(i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i8*, i8** %18, align 8, !tbaa !3
  %51 = load i32, i32* %10, align 4, !tbaa !7
  %52 = load i32, i32* %11, align 4, !tbaa !7
  %53 = load i32, i32* %12, align 4, !tbaa !7
  %54 = load i32, i32* %13, align 4, !tbaa !7
  %55 = call i32 (i8*, ...) @printf(i8* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i8*, i8** %18, align 8, !tbaa !3
  %57 = load i32, i32* %14, align 4, !tbaa !7
  %58 = load i32, i32* %15, align 4, !tbaa !7
  %59 = load i32, i32* %16, align 4, !tbaa !7
  %60 = load i32, i32* %17, align 4, !tbaa !7
  %61 = call i32 (i8*, ...) @printf(i8* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %2, align 4, !tbaa !7
  %63 = load i32, i32* %3, align 4, !tbaa !7
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %4, align 4, !tbaa !7
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %5, align 4, !tbaa !7
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %6, align 4, !tbaa !7
  %70 = load i32, i32* %7, align 4, !tbaa !7
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %8, align 4, !tbaa !7
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %9, align 4, !tbaa !7
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4, !tbaa !7
  %77 = load i32, i32* %11, align 4, !tbaa !7
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %12, align 4, !tbaa !7
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4, !tbaa !7
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4, !tbaa !7
  %84 = load i32, i32* %15, align 4, !tbaa !7
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %16, align 4, !tbaa !7
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %17, align 4, !tbaa !7
  %89 = add nsw i32 %87, %88
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %68, i32 %75, i32 %82, i32 %89)
  %91 = load i32, i32* %2, align 4, !tbaa !7
  %92 = load i32, i32* %6, align 4, !tbaa !7
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %10, align 4, !tbaa !7
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %14, align 4, !tbaa !7
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %3, align 4, !tbaa !7
  %99 = load i32, i32* %7, align 4, !tbaa !7
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %11, align 4, !tbaa !7
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %15, align 4, !tbaa !7
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %4, align 4, !tbaa !7
  %106 = load i32, i32* %8, align 4, !tbaa !7
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %12, align 4, !tbaa !7
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %16, align 4, !tbaa !7
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %5, align 4, !tbaa !7
  %113 = load i32, i32* %9, align 4, !tbaa !7
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4, !tbaa !7
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %17, align 4, !tbaa !7
  %118 = add nsw i32 %116, %117
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %97, i32 %104, i32 %111, i32 %118)
  %120 = load i32, i32* %2, align 4, !tbaa !7
  %121 = load i32, i32* %7, align 4, !tbaa !7
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %12, align 4, !tbaa !7
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %17, align 4, !tbaa !7
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %14, align 4, !tbaa !7
  %128 = load i32, i32* %11, align 4, !tbaa !7
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %8, align 4, !tbaa !7
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %5, align 4, !tbaa !7
  %133 = add nsw i32 %131, %132
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %126, i32 %133)
  %135 = bitcast i8** %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %135) #3
  %136 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #3
  %137 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #3
  %138 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #3
  %139 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #3
  %140 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #3
  %141 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #3
  %142 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #3
  %143 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #3
  %144 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %144) #3
  %145 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %145) #3
  %146 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %146) #3
  %147 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %147) #3
  %148 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #3
  %149 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #3
  %150 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150) #3
  %151 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
