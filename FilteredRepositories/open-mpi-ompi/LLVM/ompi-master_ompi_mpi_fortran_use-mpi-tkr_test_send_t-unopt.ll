; ModuleID = 'Repositories/open-mpi-ompi/Unfiltered/ompi-master_ompi_mpi_fortran_use-mpi-tkr_test_send_t.c'
source_filename = "Repositories/open-mpi-ompi/Unfiltered/ompi-master_ompi_mpi_fortran_use-mpi-tkr_test_send_t.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"a[%d] = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @mpi_send_1di(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8, !tbaa !3
  store i32* %1, i32** %9, align 8, !tbaa !3
  store i32* %2, i32** %10, align 8, !tbaa !3
  store i32* %3, i32** %11, align 8, !tbaa !3
  store i32* %4, i32** %12, align 8, !tbaa !3
  store i32* %5, i32** %13, align 8, !tbaa !3
  store i32* %6, i32** %14, align 8, !tbaa !3
  %16 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 0, i32* %17, align 4, !tbaa !7
  store i32 0, i32* %15, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %42, %7
  %19 = load i32, i32* %15, align 4, !tbaa !7
  %20 = load i32*, i32** %9, align 8, !tbaa !3
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %45

; <label>:23:                                     ; preds = %18
  %24 = load i32*, i32** %8, align 8, !tbaa !3
  %25 = load i32, i32* %15, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = load i32, i32* %15, align 4, !tbaa !7
  %30 = sub nsw i32 10, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %41

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* %15, align 4, !tbaa !7
  %34 = load i32*, i32** %8, align 8, !tbaa !3
  %35 = load i32, i32* %15, align 4, !tbaa !7
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !7
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %33, i32 %38)
  %40 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %40, align 4, !tbaa !7
  br label %41

; <label>:41:                                     ; preds = %32, %23
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %15, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4, !tbaa !7
  br label %18

; <label>:45:                                     ; preds = %18
  %46 = load i32*, i32** %9, align 8, !tbaa !3
  %47 = load i32, i32* %46, align 4, !tbaa !7
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %50, align 4, !tbaa !7
  br label %51

; <label>:51:                                     ; preds = %49, %45
  %52 = load i32*, i32** %10, align 8, !tbaa !3
  %53 = load i32, i32* %52, align 4, !tbaa !7
  %54 = icmp ne i32 %53, 7
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %51
  %56 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %56, align 4, !tbaa !7
  br label %57

; <label>:57:                                     ; preds = %55, %51
  %58 = load i32*, i32** %11, align 8, !tbaa !3
  %59 = load i32, i32* %58, align 4, !tbaa !7
  %60 = icmp ne i32 %59, 59
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %57
  %62 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %62, align 4, !tbaa !7
  br label %63

; <label>:63:                                     ; preds = %61, %57
  %64 = load i32*, i32** %12, align 8, !tbaa !3
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = icmp ne i32 %65, 999
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %63
  %68 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %68, align 4, !tbaa !7
  br label %69

; <label>:69:                                     ; preds = %67, %63
  %70 = load i32*, i32** %13, align 8, !tbaa !3
  %71 = load i32, i32* %70, align 4, !tbaa !7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %69
  %74 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %74, align 4, !tbaa !7
  br label %75

; <label>:75:                                     ; preds = %73, %69
  %76 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @mpi_send_1di1(i8*, i32*, i32*, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8, !tbaa !3
  store i32* %1, i32** %9, align 8, !tbaa !3
  store i32* %2, i32** %10, align 8, !tbaa !3
  store i32* %3, i32** %11, align 8, !tbaa !3
  store i32* %4, i32** %12, align 8, !tbaa !3
  store i32* %5, i32** %13, align 8, !tbaa !3
  store i32* %6, i32** %14, align 8, !tbaa !3
  %16 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 0, i32* %17, align 4, !tbaa !7
  store i32 0, i32* %15, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %44, %7
  %19 = load i32, i32* %15, align 4, !tbaa !7
  %20 = load i32*, i32** %9, align 8, !tbaa !3
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %47

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %8, align 8, !tbaa !3
  %25 = load i32, i32* %15, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = load i32, i32* %15, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %23
  %34 = load i32, i32* %15, align 4, !tbaa !7
  %35 = load i8*, i8** %8, align 8, !tbaa !3
  %36 = load i32, i32* %15, align 4, !tbaa !7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = sext i8 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %34, i32 %40)
  %42 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %42, align 4, !tbaa !7
  br label %43

; <label>:43:                                     ; preds = %33, %23
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %15, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4, !tbaa !7
  br label %18

; <label>:47:                                     ; preds = %18
  %48 = load i32*, i32** %9, align 8, !tbaa !3
  %49 = load i32, i32* %48, align 4, !tbaa !7
  %50 = icmp ne i32 %49, 10
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %47
  %52 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %52, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %51, %47
  %54 = load i32*, i32** %10, align 8, !tbaa !3
  %55 = load i32, i32* %54, align 4, !tbaa !7
  %56 = icmp ne i32 %55, 8
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %53
  %58 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %58, align 4, !tbaa !7
  br label %59

; <label>:59:                                     ; preds = %57, %53
  %60 = load i32*, i32** %11, align 8, !tbaa !3
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %62 = icmp ne i32 %61, 59
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %59
  %64 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %64, align 4, !tbaa !7
  br label %65

; <label>:65:                                     ; preds = %63, %59
  %66 = load i32*, i32** %12, align 8, !tbaa !3
  %67 = load i32, i32* %66, align 4, !tbaa !7
  %68 = icmp ne i32 %67, 999
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %65
  %70 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %70, align 4, !tbaa !7
  br label %71

; <label>:71:                                     ; preds = %69, %65
  %72 = load i32*, i32** %13, align 8, !tbaa !3
  %73 = load i32, i32* %72, align 4, !tbaa !7
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %71
  %76 = load i32*, i32** %14, align 8, !tbaa !3
  store i32 1, i32* %76, align 4, !tbaa !7
  br label %77

; <label>:77:                                     ; preds = %75, %71
  %78 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3
  ret void
}

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
!9 = !{!5, !5, i64 0}
