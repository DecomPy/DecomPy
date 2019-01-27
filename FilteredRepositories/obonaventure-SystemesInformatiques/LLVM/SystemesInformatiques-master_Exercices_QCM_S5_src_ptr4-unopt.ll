; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr4.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"%d %p %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %2
  br label %11

; <label>:11:                                     ; preds = %15, %10
  %12 = load i32, i32* %6, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = load i8**, i8*** %5, align 8, !tbaa !7
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8**, i8*** %5, align 8, !tbaa !7
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8, !tbaa !7
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %16, i8** %20, i8* %25)
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4, !tbaa !3
  br label %11

; <label>:29:                                     ; preds = %11
  store i32 0, i32* %6, align 4, !tbaa !3
  %30 = load i8**, i8*** %5, align 8, !tbaa !7
  store i8** %30, i8*** %7, align 8, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %35, %29
  %32 = load i32, i32* %6, align 4, !tbaa !3
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %6, align 4, !tbaa !3
  %37 = load i8**, i8*** %7, align 8, !tbaa !7
  %38 = load i8**, i8*** %7, align 8, !tbaa !7
  %39 = load i8*, i8** %38, align 8, !tbaa !7
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %36, i8** %37, i8* %39)
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4, !tbaa !3
  %43 = load i8**, i8*** %7, align 8, !tbaa !7
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %7, align 8, !tbaa !7
  br label %31

; <label>:45:                                     ; preds = %31
  store i32 0, i32* %6, align 4, !tbaa !3
  %46 = load i8**, i8*** %5, align 8, !tbaa !7
  store i8** %46, i8*** %8, align 8, !tbaa !7
  br label %47

; <label>:47:                                     ; preds = %51, %45
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = load i32, i32* %4, align 4, !tbaa !3
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %6, align 4, !tbaa !3
  %53 = load i8**, i8*** %8, align 8, !tbaa !7
  %54 = load i8*, i8** %53, align 8, !tbaa !7
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %52, i8*** %8, i8* %54)
  %56 = load i32, i32* %6, align 4, !tbaa !3
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4, !tbaa !3
  %58 = load i8**, i8*** %8, align 8, !tbaa !7
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %8, align 8, !tbaa !7
  br label %47

; <label>:60:                                     ; preds = %47
  %61 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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
