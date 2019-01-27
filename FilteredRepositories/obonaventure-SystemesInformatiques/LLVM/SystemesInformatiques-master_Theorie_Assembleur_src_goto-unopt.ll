; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_goto.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_goto.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@m = common global [10 x [10 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"aucune valeur sup\C3\A9rieure \C3\A0 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"premi\C3\A8re valeur sup\C3\A9rieure \C3\A0 %d : %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %12 = call i32 (...) @getpid()
  call void @srandom(i32 %12)
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %39, %2
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  store i32 2, i32* %7, align 4
  %18 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  br label %42

; <label>:19:                                     ; preds = %14
  %20 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %35, %19
  %22 = load i32, i32* %8, align 4, !tbaa !3
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %21
  store i32 5, i32* %7, align 4
  %25 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  br label %38

; <label>:26:                                     ; preds = %21
  %27 = call i64 @random()
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @m, i64 0, i64 %30
  %32 = load i32, i32* %8, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %31, i64 0, i64 %33
  store i32 %28, i32* %34, align 4, !tbaa !3
  br label %35

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* %8, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4, !tbaa !3
  br label %21

; <label>:38:                                     ; preds = %24
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %6, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4, !tbaa !3
  br label %14

; <label>:42:                                     ; preds = %17
  %43 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #3
  store i32 0, i32* %9, align 4, !tbaa !3
  %44 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #3
  store i32 0, i32* %10, align 4, !tbaa !3
  br label %45

; <label>:45:                                     ; preds = %80, %42
  %46 = load i32, i32* %10, align 4, !tbaa !3
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %45
  store i32 8, i32* %7, align 4
  br label %83

; <label>:49:                                     ; preds = %45
  %50 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #3
  store i32 0, i32* %11, align 4, !tbaa !3
  br label %51

; <label>:51:                                     ; preds = %73, %49
  %52 = load i32, i32* %11, align 4, !tbaa !3
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %55, label %54

; <label>:54:                                     ; preds = %51
  store i32 11, i32* %7, align 4
  br label %76

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %10, align 4, !tbaa !3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @m, i64 0, i64 %57
  %59 = load i32, i32* %11, align 4, !tbaa !3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %58, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !3
  %63 = icmp sgt i32 %62, 2100000000
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %10, align 4, !tbaa !3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @m, i64 0, i64 %66
  %68 = load i32, i32* %11, align 4, !tbaa !3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %67, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !3
  store i32 %71, i32* %9, align 4, !tbaa !3
  store i32 14, i32* %7, align 4
  br label %76

; <label>:72:                                     ; preds = %55
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %11, align 4, !tbaa !3
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4, !tbaa !3
  br label %51

; <label>:76:                                     ; preds = %64, %54
  %77 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %83 [
    i32 11, label %79
  ]

; <label>:79:                                     ; preds = %76
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %10, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4, !tbaa !3
  br label %45

; <label>:83:                                     ; preds = %76, %48
  %84 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %93 [
    i32 8, label %86
    i32 14, label %89
  ]

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %9, align 4, !tbaa !3
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 2100000000, i32 %87)
  br label %92

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %9, align 4, !tbaa !3
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 2100000000, i32 %90)
  br label %92

; <label>:92:                                     ; preds = %89, %86
  store i32 0, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %93

; <label>:93:                                     ; preds = %92, %83
  %94 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #3
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare void @srandom(i32) #1

declare i32 @getpid(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i64 @random() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
