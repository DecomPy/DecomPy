; ModuleID = 'Repositories/linux4sam-at91bootstrap/Unfiltered/at91bootstrap-master_lib_div.c'
source_filename = "Repositories/linux4sam-at91bootstrap/Unfiltered/at91bootstrap-master_lib_div.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @division(i32, i32, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !3
  store i32* %2, i32** %8, align 8, !tbaa !7
  store i32* %3, i32** %9, align 8, !tbaa !7
  %15 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #2
  %16 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #2
  %17 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #2
  store i32 0, i32* %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %13) #2
  store i8 0, i8* %13, align 1, !tbaa !9
  %18 = load i32, i32* %7, align 4, !tbaa !3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = load i32, i32* %7, align 4, !tbaa !3
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %21
  %26 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 0, i32* %26, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = load i32*, i32** %9, align 8, !tbaa !7
  store i32 %27, i32* %28, align 4, !tbaa !3
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

; <label>:29:                                     ; preds = %21
  br label %30

; <label>:30:                                     ; preds = %64, %63, %29
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = load i32, i32* %7, align 4, !tbaa !3
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %74

; <label>:34:                                     ; preds = %30
  store i32 0, i32* %10, align 4, !tbaa !3
  %35 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %35, i32* %11, align 4, !tbaa !3
  br label %36

; <label>:36:                                     ; preds = %55, %34
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = load i32, i32* %11, align 4, !tbaa !3
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %60

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = load i32, i32* %11, align 4, !tbaa !3
  %43 = sub i32 %41, %42
  %44 = load i32, i32* %11, align 4, !tbaa !3
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %10, align 4, !tbaa !3
  %48 = shl i32 1, %47
  %49 = load i32, i32* %12, align 4, !tbaa !3
  %50 = add i32 %49, %48
  store i32 %50, i32* %12, align 4, !tbaa !3
  %51 = load i32, i32* %11, align 4, !tbaa !3
  %52 = load i32, i32* %6, align 4, !tbaa !3
  %53 = sub i32 %52, %51
  store i32 %53, i32* %6, align 4, !tbaa !3
  store i8 1, i8* %13, align 1, !tbaa !9
  br label %60

; <label>:54:                                     ; preds = %40
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %11, align 4, !tbaa !3
  %57 = shl i32 %56, 1
  store i32 %57, i32* %11, align 4, !tbaa !3
  %58 = load i32, i32* %10, align 4, !tbaa !3
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4, !tbaa !3
  br label %36

; <label>:60:                                     ; preds = %46, %36
  %61 = load i8, i8* %13, align 1, !tbaa !9
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  br label %30

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %10, align 4, !tbaa !3
  %66 = sub i32 %65, 1
  %67 = shl i32 1, %66
  %68 = load i32, i32* %12, align 4, !tbaa !3
  %69 = add i32 %68, %67
  store i32 %69, i32* %12, align 4, !tbaa !3
  %70 = load i32, i32* %11, align 4, !tbaa !3
  %71 = lshr i32 %70, 1
  %72 = load i32, i32* %6, align 4, !tbaa !3
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4, !tbaa !3
  br label %30

; <label>:74:                                     ; preds = %30
  %75 = load i32*, i32** %8, align 8, !tbaa !7
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %12, align 4, !tbaa !3
  %79 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %78, i32* %79, align 4, !tbaa !3
  br label %80

; <label>:80:                                     ; preds = %77, %74
  %81 = load i32*, i32** %9, align 8, !tbaa !7
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %6, align 4, !tbaa !3
  %85 = load i32*, i32** %9, align 8, !tbaa !7
  store i32 %84, i32* %85, align 4, !tbaa !3
  br label %86

; <label>:86:                                     ; preds = %83, %80
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

; <label>:87:                                     ; preds = %86, %25, %20
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #2
  %88 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #2
  %89 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #2
  %90 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #2
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @div(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %6, align 4, !tbaa !3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  store i32 0, i32* %7, align 4, !tbaa !3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = call i32 @division(i32 %13, i32 %14, i32* %6, i32* %7)
  store i32 %15, i32* %8, align 4, !tbaa !3
  %16 = load i32, i32* %8, align 4, !tbaa !3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %21

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %21

; <label>:21:                                     ; preds = %19, %18
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #2
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  %24 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #2
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define i32 @mod(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %6, align 4, !tbaa !3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  store i32 0, i32* %7, align 4, !tbaa !3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = call i32 @division(i32 %13, i32 %14, i32* %6, i32* %7)
  store i32 %15, i32* %8, align 4, !tbaa !3
  %16 = load i32, i32* %8, align 4, !tbaa !3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %21

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %21

; <label>:21:                                     ; preds = %19, %18
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #2
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  %24 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #2
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

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
!9 = !{!5, !5, i64 0}
