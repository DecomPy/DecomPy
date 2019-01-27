; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Jump_Search.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Jump_Search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.arr = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 3, i32 5, i32 8, i32 13, i32 21, i32 34, i32 55, i32 89, i32 144, i32 233, i32 377, i32 610], align 16
@n = common global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0ANumber %d is at index %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([16 x i32]* @main.arr to i8*), i64 64, i1 false)
  store i32 16, i32* @n, align 4
  store i32 55, i32* %2, align 4
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i32 0, i32 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @jump_search(i32* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @jump_search(i32*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @n, align 4
  %9 = sitofp i32 %8 to double
  %10 = call double @llvm.sqrt.f64(double %9)
  %11 = call double @llvm.floor.f64(double %10)
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %44, %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @n, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %6, align 4
  br label %22

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* @n, align 4
  br label %22

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %14, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @n, align 4
  %33 = sitofp i32 %32 to double
  %34 = call double @llvm.sqrt.f64(double %33)
  %35 = call double @llvm.floor.f64(double %34)
  %36 = load i32, i32* %6, align 4
  %37 = sitofp i32 %36 to double
  %38 = fadd double %37, %35
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @n, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %78

; <label>:44:                                     ; preds = %30
  br label %13

; <label>:45:                                     ; preds = %22
  br label %46

; <label>:46:                                     ; preds = %66, %45
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sitofp i32 %57 to double
  %59 = load i32, i32* %6, align 4
  %60 = sitofp i32 %59 to double
  %61 = load i32, i32* @n, align 4
  %62 = sitofp i32 %61 to double
  %63 = call double @llvm.minnum.f64(double %60, double %62)
  %64 = fcmp oeq double %58, %63
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %78

; <label>:66:                                     ; preds = %54
  br label %46

; <label>:67:                                     ; preds = %46
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %78

; <label>:77:                                     ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %78

; <label>:78:                                     ; preds = %77, %75, %65, %43
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.minnum.f64(double, double) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
