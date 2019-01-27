; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr2.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global [5 x i32] [i32 2, i32 4, i32 3, i32 4, i32 8], align 16
@ptr = common global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@b = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 0), i32** @ptr, align 8, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 0), align 16, !tbaa !7
  %5 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 1), align 4, !tbaa !7
  %6 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 2), align 8, !tbaa !7
  %7 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 3), align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %5, i32 %6, i32 %10)
  br label %12

; <label>:12:                                     ; preds = %3
  %13 = load i32*, i32** @ptr, align 8, !tbaa !3
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = load i32*, i32** @ptr, align 8, !tbaa !3
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %18 = load i32*, i32** @ptr, align 8, !tbaa !3
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32*, i32** @ptr, align 8, !tbaa !3
  %22 = load i32*, i32** @ptr, align 8, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %14, i32 %17, i32 %20, i32 %27)
  br label %29

; <label>:29:                                     ; preds = %12
  %30 = load i32*, i32** @ptr, align 8, !tbaa !3
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = load i32*, i32** @ptr, align 8, !tbaa !3
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = add nsw i32 %33, 1
  %35 = load i32*, i32** @ptr, align 8, !tbaa !3
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = add nsw i32 %36, 2
  %38 = load i32*, i32** @ptr, align 8, !tbaa !3
  %39 = load i32*, i32** @ptr, align 8, !tbaa !3
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %31, i32 %34, i32 %37, i32 %44)
  br label %46

; <label>:46:                                     ; preds = %29
  %47 = load i32*, i32** @ptr, align 8, !tbaa !3
  %48 = load i32, i32* %47, align 4, !tbaa !7
  %49 = load i32*, i32** @ptr, align 8, !tbaa !3
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** @ptr, align 8, !tbaa !3
  %51 = load i32, i32* %49, align 4, !tbaa !7
  %52 = load i32*, i32** @ptr, align 8, !tbaa !3
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** @ptr, align 8, !tbaa !3
  %54 = load i32, i32* %52, align 4, !tbaa !7
  %55 = load i32*, i32** @ptr, align 8, !tbaa !3
  %56 = load i32*, i32** @ptr, align 8, !tbaa !3
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** @ptr, align 8, !tbaa !3
  %58 = load i32, i32* %56, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %48, i32 %51, i32 %54, i32 %61)
  br label %63

; <label>:63:                                     ; preds = %46
  %64 = load i32*, i32** @ptr, align 8, !tbaa !3
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = load i32*, i32** @ptr, align 8, !tbaa !3
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4, !tbaa !7
  %69 = load i32*, i32** @ptr, align 8, !tbaa !3
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4, !tbaa !7
  %72 = load i32*, i32** @ptr, align 8, !tbaa !3
  %73 = load i32, i32* %72, align 4, !tbaa !7
  %74 = load i32*, i32** @ptr, align 8, !tbaa !3
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4, !tbaa !7
  %77 = add nsw i32 %73, %76
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %65, i32 %68, i32 %71, i32 %77)
  br label %79

; <label>:79:                                     ; preds = %63
  %80 = load i32*, i32** @ptr, align 8, !tbaa !3
  %81 = load i32, i32* %80, align 4, !tbaa !7
  %82 = load i32*, i32** @ptr, align 8, !tbaa !3
  %83 = load i32, i32* %82, align 4, !tbaa !7
  %84 = add nsw i32 %83, 1
  %85 = load i32*, i32** @ptr, align 8, !tbaa !3
  %86 = load i32, i32* %85, align 4, !tbaa !7
  %87 = add nsw i32 %86, 1
  %88 = load i32*, i32** @ptr, align 8, !tbaa !3
  %89 = load i32*, i32** @ptr, align 8, !tbaa !3
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4, !tbaa !7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !7
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %81, i32 %84, i32 %87, i32 %94)
  %96 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
