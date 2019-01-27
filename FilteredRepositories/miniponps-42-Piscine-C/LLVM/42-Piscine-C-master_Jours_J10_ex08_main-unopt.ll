; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex08_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex08_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A===============================\0A\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 1, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  %8 = load i8**, i8*** %5, align 8, !tbaa !7
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8, !tbaa !7
  %11 = call i8** @ft_split_whitespaces(i8* %10)
  store i8** %11, i8*** %5, align 8, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %19, %2
  %13 = load i8**, i8*** %5, align 8, !tbaa !7
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8, !tbaa !7
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %12
  %20 = load i8**, i8*** %5, align 8, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8, !tbaa !7
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %24)
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4, !tbaa !3
  br label %12

; <label>:28:                                     ; preds = %12
  store i32 0, i32* %6, align 4, !tbaa !3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  %30 = load i8**, i8*** %5, align 8, !tbaa !7
  call void @ft_advanced_sort_wordtab(i8** %30, i32 (i8*, i8*)* @ft_strcmp)
  br label %31

; <label>:31:                                     ; preds = %38, %28
  %32 = load i8**, i8*** %5, align 8, !tbaa !7
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8, !tbaa !7
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

; <label>:38:                                     ; preds = %31
  %39 = load i8**, i8*** %5, align 8, !tbaa !7
  %40 = load i32, i32* %6, align 4, !tbaa !3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8, !tbaa !7
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %43)
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4, !tbaa !3
  br label %31

; <label>:47:                                     ; preds = %31
  %48 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8** @ft_split_whitespaces(i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @ft_advanced_sort_wordtab(i8**, i32 (i8*, i8*)*) #2

declare i32 @ft_strcmp(i8*, i8*) #2

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
