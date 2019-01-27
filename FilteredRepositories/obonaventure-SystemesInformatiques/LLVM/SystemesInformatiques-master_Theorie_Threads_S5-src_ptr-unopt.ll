; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_ptr.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_ptr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [59 x i8] c"a=%d [%p], b=%d [%p], p=%p, *p=%d, pp=%p, *pp=%p, **pp=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i8** %1, i8*** %4, align 8, !tbaa !7
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 1252, i32* %5, align 4, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 1, i32* %6, align 4, !tbaa !3
  %11 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  store i32* %5, i32** %7, align 8, !tbaa !7
  %12 = bitcast i32*** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store i32** %7, i32*** %8, align 8, !tbaa !7
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = load i32*, i32** %7, align 8, !tbaa !7
  %16 = load i32*, i32** %7, align 8, !tbaa !7
  %17 = load i32, i32* %16, align 4, !tbaa !3
  %18 = load i32**, i32*** %8, align 8, !tbaa !7
  %19 = load i32**, i32*** %8, align 8, !tbaa !7
  %20 = load i32*, i32** %19, align 8, !tbaa !7
  %21 = load i32**, i32*** %8, align 8, !tbaa !7
  %22 = load i32*, i32** %21, align 8, !tbaa !7
  %23 = load i32, i32* %22, align 4, !tbaa !3
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %13, i32* %5, i32 %14, i32* %6, i32* %15, i32 %17, i32** %18, i32* %20, i32 %23)
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = load i32*, i32** %7, align 8, !tbaa !7
  %30 = load i32*, i32** %7, align 8, !tbaa !7
  %31 = load i32, i32* %30, align 4, !tbaa !3
  %32 = load i32**, i32*** %8, align 8, !tbaa !7
  %33 = load i32**, i32*** %8, align 8, !tbaa !7
  %34 = load i32*, i32** %33, align 8, !tbaa !7
  %35 = load i32**, i32*** %8, align 8, !tbaa !7
  %36 = load i32*, i32** %35, align 8, !tbaa !7
  %37 = load i32, i32* %36, align 4, !tbaa !3
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %27, i32* %5, i32 %28, i32* %6, i32* %29, i32 %31, i32** %32, i32* %34, i32 %37)
  %39 = load i32*, i32** %7, align 8, !tbaa !7
  %40 = load i32, i32* %39, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  %42 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 %41, i32* %42, align 4, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !3
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = load i32*, i32** %7, align 8, !tbaa !7
  %46 = load i32*, i32** %7, align 8, !tbaa !7
  %47 = load i32, i32* %46, align 4, !tbaa !3
  %48 = load i32**, i32*** %8, align 8, !tbaa !7
  %49 = load i32**, i32*** %8, align 8, !tbaa !7
  %50 = load i32*, i32** %49, align 8, !tbaa !7
  %51 = load i32**, i32*** %8, align 8, !tbaa !7
  %52 = load i32*, i32** %51, align 8, !tbaa !7
  %53 = load i32, i32* %52, align 4, !tbaa !3
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %43, i32* %5, i32 %44, i32* %6, i32* %45, i32 %47, i32** %48, i32* %50, i32 %53)
  %55 = load i32**, i32*** %8, align 8, !tbaa !7
  store i32* %6, i32** %55, align 8, !tbaa !7
  %56 = load i32, i32* %5, align 4, !tbaa !3
  %57 = load i32, i32* %6, align 4, !tbaa !3
  %58 = load i32*, i32** %7, align 8, !tbaa !7
  %59 = load i32*, i32** %7, align 8, !tbaa !7
  %60 = load i32, i32* %59, align 4, !tbaa !3
  %61 = load i32**, i32*** %8, align 8, !tbaa !7
  %62 = load i32**, i32*** %8, align 8, !tbaa !7
  %63 = load i32*, i32** %62, align 8, !tbaa !7
  %64 = load i32**, i32*** %8, align 8, !tbaa !7
  %65 = load i32*, i32** %64, align 8, !tbaa !7
  %66 = load i32, i32* %65, align 4, !tbaa !3
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %56, i32* %5, i32 %57, i32* %6, i32* %58, i32 %60, i32** %61, i32* %63, i32 %66)
  %68 = bitcast i32*** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #3
  %69 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #3
  %70 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #3
  %71 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
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
