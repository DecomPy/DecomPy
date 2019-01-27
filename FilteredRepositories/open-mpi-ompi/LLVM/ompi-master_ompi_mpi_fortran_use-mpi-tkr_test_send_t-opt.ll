; ModuleID = 'Repositories/open-mpi-ompi/Unfiltered/ompi-master_ompi_mpi_fortran_use-mpi-tkr_test_send_t.c'
source_filename = "Repositories/open-mpi-ompi/Unfiltered/ompi-master_ompi_mpi_fortran_use-mpi-tkr_test_send_t.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"a[%d] = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mpi_send_1di(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %17

; <label>:17:                                     ; preds = %41, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %44

; <label>:22:                                     ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 10, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %32, i32 %37)
  %39 = load i32*, i32** %14, align 8
  store i32 1, i32* %39, align 4
  br label %40

; <label>:40:                                     ; preds = %31, %22
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %17

; <label>:44:                                     ; preds = %17
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %44
  %49 = load i32*, i32** %14, align 8
  store i32 1, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %44
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 7
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = load i32*, i32** %14, align 8
  store i32 1, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 59
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %56
  %61 = load i32*, i32** %14, align 8
  store i32 1, i32* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %60, %56
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 999
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = load i32*, i32** %14, align 8
  store i32 1, i32* %67, align 4
  br label %68

; <label>:68:                                     ; preds = %66, %62
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %68
  %73 = load i32*, i32** %14, align 8
  store i32 1, i32* %73, align 4
  br label %74

; <label>:74:                                     ; preds = %72, %68
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mpi_send_1di1(i8*, i32*, i32*, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %17

; <label>:17:                                     ; preds = %43, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %46

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %42

; <label>:32:                                     ; preds = %22
  %33 = load i32, i32* %15, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %33, i32 %39)
  %41 = load i32*, i32** %14, align 8
  store i32 1, i32* %41, align 4
  br label %42

; <label>:42:                                     ; preds = %32, %22
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %17

; <label>:46:                                     ; preds = %17
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %46
  %51 = load i32*, i32** %14, align 8
  store i32 1, i32* %51, align 4
  br label %52

; <label>:52:                                     ; preds = %50, %46
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 8
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %52
  %57 = load i32*, i32** %14, align 8
  store i32 1, i32* %57, align 4
  br label %58

; <label>:58:                                     ; preds = %56, %52
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 59
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %58
  %63 = load i32*, i32** %14, align 8
  store i32 1, i32* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %62, %58
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 999
  br i1 %67, label %68, label %70

; <label>:68:                                     ; preds = %64
  %69 = load i32*, i32** %14, align 8
  store i32 1, i32* %69, align 4
  br label %70

; <label>:70:                                     ; preds = %68, %64
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %70
  %75 = load i32*, i32** %14, align 8
  store i32 1, i32* %75, align 4
  br label %76

; <label>:76:                                     ; preds = %74, %70
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
