; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-61.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-61.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @var_prod_ele(i32, i32*, i32*, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !7
  store i32* %2, i32** %8, align 8, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !3
  store i32 %4, i32* %10, align 4, !tbaa !3
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = zext i32 %22 to i64
  %24 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #2
  %25 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #2
  store i32 0, i32* %12, align 4, !tbaa !3
  %26 = bitcast i8** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #2
  %27 = load i32*, i32** %7, align 8, !tbaa !7
  %28 = load i32, i32* %9, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, %19
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %13, align 8, !tbaa !7
  %34 = bitcast i8** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #2
  %35 = load i32*, i32** %8, align 8, !tbaa !7
  %36 = mul nsw i64 0, %23
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %10, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %14, align 8, !tbaa !7
  %42 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #2
  %43 = load i32, i32* %6, align 4, !tbaa !3
  %44 = mul nsw i32 4, %43
  store i32 %44, i32* %15, align 4, !tbaa !3
  store i32 0, i32* %11, align 4, !tbaa !3
  br label %45

; <label>:45:                                     ; preds = %65, %5
  %46 = load i32, i32* %11, align 4, !tbaa !3
  %47 = load i32, i32* %15, align 4, !tbaa !3
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %68

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %13, align 8, !tbaa !7
  %51 = load i32, i32* %11, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !3
  %56 = load i8*, i8** %14, align 8, !tbaa !7
  %57 = load i32, i32* %15, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !3
  %62 = mul nsw i32 %55, %61
  %63 = load i32, i32* %12, align 4, !tbaa !3
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %12, align 4, !tbaa !3
  br label %65

; <label>:65:                                     ; preds = %49
  %66 = load i32, i32* %11, align 4, !tbaa !3
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %11, align 4, !tbaa !3
  br label %45

; <label>:68:                                     ; preds = %45
  %69 = load i32, i32* %12, align 4, !tbaa !3
  %70 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #2
  %71 = bitcast i8** %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #2
  %72 = bitcast i8** %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #2
  %73 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #2
  %74 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #2
  ret i32 %69
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
