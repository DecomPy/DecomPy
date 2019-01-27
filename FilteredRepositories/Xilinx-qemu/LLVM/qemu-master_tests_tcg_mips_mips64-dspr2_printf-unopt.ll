; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips64-dspr2_printf.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips64-dspr2_printf.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.printf_spec = type { i8 }

@number.digits = internal global [16 x i8] c"0123456789abcdef", align 16
@vprintf.printf_buf = internal global [512 x i8] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define i8* @memcpy(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  %12 = load i8*, i8** %5, align 8, !tbaa !3
  store i8* %12, i8** %8, align 8, !tbaa !3
  %13 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #2
  %14 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %14, i8** %9, align 8, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %29, %3
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %8, align 8, !tbaa !3
  %21 = load i32, i32* %7, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = load i8*, i8** %9, align 8, !tbaa !3
  %26 = load i32, i32* %7, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %24, i8* %28, align 1, !tbaa !9
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4, !tbaa !7
  br label %15

; <label>:32:                                     ; preds = %15
  %33 = load i8*, i8** %4, align 8, !tbaa !3
  %34 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #2
  %35 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #2
  %36 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #2
  ret i8* %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i8* @number(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !10
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  store i8* %9, i8** %6, align 8, !tbaa !3
  %10 = load i8*, i8** %6, align 8, !tbaa !3
  %11 = getelementptr inbounds i8, i8* %10, i64 16
  store i8* %11, i8** %6, align 8, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %25, %2
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %12
  %17 = load i64, i64* %4, align 8, !tbaa !10
  %18 = and i64 %17, 15
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* @number.digits, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !9
  %21 = load i8*, i8** %6, align 8, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %6, align 8, !tbaa !3
  store i8 %20, i8* %22, align 1, !tbaa !9
  %23 = load i64, i64* %4, align 8, !tbaa !10
  %24 = lshr i64 %23, 4
  store i64 %24, i64* %4, align 8, !tbaa !10
  br label %25

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4, !tbaa !7
  br label %12

; <label>:28:                                     ; preds = %12
  %29 = load i8*, i8** %3, align 8, !tbaa !3
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #2
  %32 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #2
  ret i8* %30
}

; Function Attrs: nounwind ssp uwtable
define i8* @__number(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i64 %1, i64* %5, align 8, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  %12 = load i64, i64* %5, align 8, !tbaa !10
  store i64 %12, i64* %7, align 8, !tbaa !10
  %13 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #2
  %14 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %14, i8** %8, align 8, !tbaa !3
  %15 = load i64, i64* %5, align 8, !tbaa !10
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %8, align 8, !tbaa !3
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8, !tbaa !3
  store i8 48, i8* %18, align 1, !tbaa !9
  %20 = load i8*, i8** %8, align 8, !tbaa !3
  store i8* %20, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %53

; <label>:21:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %26, %21
  %23 = load i64, i64* %7, align 8, !tbaa !10
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %22
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i64, i64* %7, align 8, !tbaa !10
  %28 = udiv i64 %27, 10
  store i64 %28, i64* %7, align 8, !tbaa !10
  %29 = load i32, i32* %6, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4, !tbaa !7
  br label %22

; <label>:31:                                     ; preds = %22
  %32 = load i8*, i8** %8, align 8, !tbaa !3
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %8, align 8, !tbaa !3
  br label %36

; <label>:36:                                     ; preds = %39, %31
  %37 = load i64, i64* %5, align 8, !tbaa !10
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %5, align 8, !tbaa !10
  %41 = urem i64 %40, 10
  %42 = add i64 %41, 48
  %43 = trunc i64 %42 to i8
  %44 = load i8*, i8** %8, align 8, !tbaa !3
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %8, align 8, !tbaa !3
  store i8 %43, i8* %45, align 1, !tbaa !9
  %46 = load i64, i64* %5, align 8, !tbaa !10
  %47 = udiv i64 %46, 10
  store i64 %47, i64* %5, align 8, !tbaa !10
  br label %36

; <label>:48:                                     ; preds = %36
  %49 = load i8*, i8** %8, align 8, !tbaa !3
  %50 = load i32, i32* %6, align 4, !tbaa !7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %53

; <label>:53:                                     ; preds = %48, %17
  %54 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #2
  %55 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #2
  %56 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #2
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: nounwind ssp uwtable
define i64 @modf(i64, i64*, i64*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8, !tbaa !10
  store i64* %1, i64** %6, align 8, !tbaa !3
  store i64* %2, i64** %7, align 8, !tbaa !3
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  %15 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #2
  store double 0.000000e+00, double* %9, align 8, !tbaa !12
  %16 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #2
  %17 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #2
  %18 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #2
  %19 = load i64, i64* %5, align 8, !tbaa !10
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %241

; <label>:22:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !tbaa !7
  %23 = load i64, i64* %5, align 8, !tbaa !10
  %24 = shl i64 %23, 1
  %25 = lshr i64 %24, 1
  store i64 %25, i64* %5, align 8, !tbaa !10
  br label %26

; <label>:26:                                     ; preds = %38, %22
  %27 = load i32, i32* %8, align 4, !tbaa !7
  %28 = icmp slt i32 %27, 52
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %5, align 8, !tbaa !10
  %31 = load i32, i32* %8, align 4, !tbaa !7
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %30, %32
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %29
  br label %41

; <label>:37:                                     ; preds = %29
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %8, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4, !tbaa !7
  br label %26

; <label>:41:                                     ; preds = %36, %26
  %42 = load i64*, i64** %6, align 8, !tbaa !3
  store i64 0, i64* %42, align 8, !tbaa !10
  %43 = load i64, i64* %5, align 8, !tbaa !10
  %44 = lshr i64 %43, 56
  %45 = icmp ne i64 %44, 63
  br i1 %45, label %50, label %46

; <label>:46:                                     ; preds = %41
  %47 = load i64, i64* %5, align 8, !tbaa !10
  %48 = lshr i64 %47, 52
  %49 = icmp eq i64 %48, 1023
  br i1 %49, label %50, label %83

; <label>:50:                                     ; preds = %46, %41
  %51 = load i64, i64* %5, align 8, !tbaa !10
  %52 = lshr i64 %51, 52
  %53 = sub i64 %52, 1023
  store i64 %53, i64* %10, align 8, !tbaa !10
  %54 = load i64, i64* %10, align 8, !tbaa !10
  %55 = sub i64 52, %54
  %56 = load i32, i32* %8, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = sub i64 %55, %57
  store i64 %58, i64* %11, align 8, !tbaa !10
  %59 = load i64, i64* %5, align 8, !tbaa !10
  %60 = load i64, i64* %10, align 8, !tbaa !10
  %61 = add i64 12, %60
  %62 = shl i64 %59, %61
  %63 = load i64, i64* %10, align 8, !tbaa !10
  %64 = add i64 12, %63
  %65 = lshr i64 %62, %64
  %66 = load i32, i32* %8, align 4, !tbaa !7
  %67 = zext i32 %66 to i64
  %68 = lshr i64 %65, %67
  store i64 %68, i64* %12, align 8, !tbaa !10
  %69 = load i64, i64* %5, align 8, !tbaa !10
  %70 = shl i64 %69, 12
  %71 = lshr i64 %70, 12
  %72 = load i32, i32* %8, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %11, align 8, !tbaa !10
  %75 = add i64 %73, %74
  %76 = lshr i64 %71, %75
  %77 = load i64, i64* %10, align 8, !tbaa !10
  %78 = trunc i64 %77 to i32
  %79 = shl i32 1, %78
  %80 = sext i32 %79 to i64
  %81 = or i64 %76, %80
  %82 = load i64*, i64** %6, align 8, !tbaa !3
  store i64 %81, i64* %82, align 8, !tbaa !10
  br label %147

; <label>:83:                                     ; preds = %46
  %84 = load i64, i64* %5, align 8, !tbaa !10
  %85 = lshr i64 %84, 52
  %86 = sub i64 %85, 1023
  %87 = xor i64 %86, -1
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8, !tbaa !10
  %89 = load i64, i64* %5, align 8, !tbaa !10
  %90 = shl i64 %89, 12
  %91 = lshr i64 %90, 12
  store i64 %91, i64* %12, align 8, !tbaa !10
  %92 = load i64, i64* %10, align 8, !tbaa !10
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = sitofp i32 %94 to double
  %96 = fdiv double 1.000000e+00, %95
  %97 = load double, double* %9, align 8, !tbaa !12
  %98 = fadd double %97, %96
  store double %98, double* %9, align 8, !tbaa !12
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %99

; <label>:99:                                     ; preds = %122, %83
  %100 = load i32, i32* %8, align 4, !tbaa !7
  %101 = icmp sle i32 %100, 16
  br i1 %101, label %102, label %125

; <label>:102:                                    ; preds = %99
  %103 = load i64, i64* %12, align 8, !tbaa !10
  %104 = load i32, i32* %8, align 4, !tbaa !7
  %105 = sub nsw i32 52, %104
  %106 = zext i32 %105 to i64
  %107 = lshr i64 %103, %106
  %108 = and i64 %107, 1
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

; <label>:110:                                    ; preds = %102
  %111 = load i64, i64* %10, align 8, !tbaa !10
  %112 = load i32, i32* %8, align 4, !tbaa !7
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = shl i32 1, %115
  %117 = sitofp i32 %116 to double
  %118 = fdiv double 1.000000e+00, %117
  %119 = load double, double* %9, align 8, !tbaa !12
  %120 = fadd double %119, %118
  store double %120, double* %9, align 8, !tbaa !12
  br label %121

; <label>:121:                                    ; preds = %110, %102
  br label %122

; <label>:122:                                    ; preds = %121
  %123 = load i32, i32* %8, align 4, !tbaa !7
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4, !tbaa !7
  br label %99

; <label>:125:                                    ; preds = %99
  store i32 1, i32* %8, align 4, !tbaa !7
  store i64 0, i64* %10, align 8, !tbaa !10
  br label %126

; <label>:126:                                    ; preds = %139, %125
  %127 = load i32, i32* %8, align 4, !tbaa !7
  %128 = icmp sle i32 %127, 4
  br i1 %128, label %129, label %142

; <label>:129:                                    ; preds = %126
  %130 = load double, double* %9, align 8, !tbaa !12
  %131 = fmul double %130, 1.000000e+01
  store double %131, double* %9, align 8, !tbaa !12
  %132 = load double, double* %9, align 8, !tbaa !12
  %133 = fptoui double %132 to i64
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

; <label>:135:                                    ; preds = %129
  %136 = load i64, i64* %10, align 8, !tbaa !10
  %137 = add i64 %136, 1
  store i64 %137, i64* %10, align 8, !tbaa !10
  br label %138

; <label>:138:                                    ; preds = %135, %129
  br label %139

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* %8, align 4, !tbaa !7
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4, !tbaa !7
  br label %126

; <label>:142:                                    ; preds = %126
  %143 = load i64, i64* %10, align 8, !tbaa !10
  %144 = load i64*, i64** %7, align 8, !tbaa !3
  store i64 %143, i64* %144, align 8, !tbaa !10
  %145 = load double, double* %9, align 8, !tbaa !12
  %146 = fptoui double %145 to i64
  store i64 %146, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %241

; <label>:147:                                    ; preds = %50
  %148 = load i64, i64* %5, align 8, !tbaa !10
  %149 = and i64 %148, 15
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %197

; <label>:151:                                    ; preds = %147
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %152

; <label>:152:                                    ; preds = %172, %151
  %153 = load i32, i32* %8, align 4, !tbaa !7
  %154 = icmp sle i32 %153, 16
  br i1 %154, label %155, label %175

; <label>:155:                                    ; preds = %152
  %156 = load i64, i64* %12, align 8, !tbaa !10
  %157 = load i64, i64* %11, align 8, !tbaa !10
  %158 = load i32, i32* %8, align 4, !tbaa !7
  %159 = sext i32 %158 to i64
  %160 = sub i64 %157, %159
  %161 = lshr i64 %156, %160
  %162 = and i64 %161, 1
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

; <label>:164:                                    ; preds = %155
  %165 = load i32, i32* %8, align 4, !tbaa !7
  %166 = shl i32 1, %165
  %167 = sitofp i32 %166 to double
  %168 = fdiv double 1.000000e+00, %167
  %169 = load double, double* %9, align 8, !tbaa !12
  %170 = fadd double %169, %168
  store double %170, double* %9, align 8, !tbaa !12
  br label %171

; <label>:171:                                    ; preds = %164, %155
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %8, align 4, !tbaa !7
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4, !tbaa !7
  br label %152

; <label>:175:                                    ; preds = %152
  store i32 1, i32* %8, align 4, !tbaa !7
  store i64 0, i64* %10, align 8, !tbaa !10
  br label %176

; <label>:176:                                    ; preds = %189, %175
  %177 = load i32, i32* %8, align 4, !tbaa !7
  %178 = icmp sle i32 %177, 4
  br i1 %178, label %179, label %192

; <label>:179:                                    ; preds = %176
  %180 = load double, double* %9, align 8, !tbaa !12
  %181 = fmul double %180, 1.000000e+01
  store double %181, double* %9, align 8, !tbaa !12
  %182 = load double, double* %9, align 8, !tbaa !12
  %183 = fptoui double %182 to i64
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %188, label %185

; <label>:185:                                    ; preds = %179
  %186 = load i64, i64* %10, align 8, !tbaa !10
  %187 = add i64 %186, 1
  store i64 %187, i64* %10, align 8, !tbaa !10
  br label %188

; <label>:188:                                    ; preds = %185, %179
  br label %189

; <label>:189:                                    ; preds = %188
  %190 = load i32, i32* %8, align 4, !tbaa !7
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4, !tbaa !7
  br label %176

; <label>:192:                                    ; preds = %176
  %193 = load i64, i64* %10, align 8, !tbaa !10
  %194 = load i64*, i64** %7, align 8, !tbaa !3
  store i64 %193, i64* %194, align 8, !tbaa !10
  %195 = load double, double* %9, align 8, !tbaa !12
  %196 = fptoui double %195 to i64
  store i64 %196, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %241

; <label>:197:                                    ; preds = %147
  %198 = load i64, i64* %11, align 8, !tbaa !10
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %239

; <label>:200:                                    ; preds = %197
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %201

; <label>:201:                                    ; preds = %223, %200
  %202 = load i32, i32* %8, align 4, !tbaa !7
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %11, align 8, !tbaa !10
  %205 = icmp ule i64 %203, %204
  br i1 %205, label %206, label %226

; <label>:206:                                    ; preds = %201
  %207 = load i64, i64* %12, align 8, !tbaa !10
  %208 = load i64, i64* %11, align 8, !tbaa !10
  %209 = load i32, i32* %8, align 4, !tbaa !7
  %210 = sext i32 %209 to i64
  %211 = sub i64 %208, %210
  %212 = lshr i64 %207, %211
  %213 = and i64 %212, 1
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

; <label>:215:                                    ; preds = %206
  %216 = load i32, i32* %8, align 4, !tbaa !7
  %217 = shl i32 1, %216
  %218 = sitofp i32 %217 to double
  %219 = fdiv double 1.000000e+00, %218
  %220 = load double, double* %9, align 8, !tbaa !12
  %221 = fadd double %220, %219
  store double %221, double* %9, align 8, !tbaa !12
  br label %222

; <label>:222:                                    ; preds = %215, %206
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load i32, i32* %8, align 4, !tbaa !7
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4, !tbaa !7
  br label %201

; <label>:226:                                    ; preds = %201
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %227

; <label>:227:                                    ; preds = %233, %226
  %228 = load i32, i32* %8, align 4, !tbaa !7
  %229 = icmp sle i32 %228, 4
  br i1 %229, label %230, label %236

; <label>:230:                                    ; preds = %227
  %231 = load double, double* %9, align 8, !tbaa !12
  %232 = fmul double %231, 1.000000e+01
  store double %232, double* %9, align 8, !tbaa !12
  br label %233

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %8, align 4, !tbaa !7
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4, !tbaa !7
  br label %227

; <label>:236:                                    ; preds = %227
  %237 = load double, double* %9, align 8, !tbaa !12
  %238 = fptoui double %237 to i64
  store i64 %238, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %241

; <label>:239:                                    ; preds = %197
  br label %240

; <label>:240:                                    ; preds = %239
  store i64 0, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %241

; <label>:241:                                    ; preds = %240, %236, %192, %142, %21
  %242 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %242) #2
  %243 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %243) #2
  %244 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %244) #2
  %245 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %245) #2
  %246 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %246) #2
  %247 = load i64, i64* %4, align 8
  ret i64 %247
}

; Function Attrs: nounwind ssp uwtable
define i32 @vsnprintf(i8*, i32, i8*, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.printf_spec, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i8* %2, i8** %7, align 8, !tbaa !3
  store i64 %3, i64* %8, align 8, !tbaa !10
  %17 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #2
  %18 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #2
  %19 = bitcast %struct.printf_spec* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %19) #2
  %20 = bitcast %struct.printf_spec* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 1, i1 false)
  %21 = load i8*, i8** %5, align 8, !tbaa !3
  store i8* %21, i8** %10, align 8, !tbaa !3
  store i8* %21, i8** %9, align 8, !tbaa !3
  br label %22

; <label>:22:                                     ; preds = %135, %4
  %23 = load i8*, i8** %7, align 8, !tbaa !3
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %138

; <label>:26:                                     ; preds = %22
  %27 = bitcast i8** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #2
  %28 = load i8*, i8** %7, align 8, !tbaa !3
  store i8* %28, i8** %12, align 8, !tbaa !3
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #2
  %30 = load i8*, i8** %7, align 8, !tbaa !3
  %31 = call i32 @format_decode(i8* %30, %struct.printf_spec* %11)
  store i32 %31, i32* %13, align 4, !tbaa !7
  %32 = load i32, i32* %13, align 4, !tbaa !7
  %33 = load i8*, i8** %7, align 8, !tbaa !3
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %7, align 8, !tbaa !3
  %36 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %11, i32 0, i32 0
  %37 = load i8, i8* %36, align 1, !tbaa !14
  %38 = sext i8 %37 to i32
  switch i32 %38, label %135 [
    i32 0, label %39
    i32 1, label %48
    i32 2, label %75
    i32 3, label %88
  ]

; <label>:39:                                     ; preds = %26
  %40 = load i8*, i8** %9, align 8, !tbaa !3
  %41 = load i8*, i8** %12, align 8, !tbaa !3
  %42 = load i32, i32* %13, align 4, !tbaa !7
  %43 = call i8* @memcpy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %13, align 4, !tbaa !7
  %45 = load i8*, i8** %9, align 8, !tbaa !3
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8, !tbaa !3
  br label %135

; <label>:48:                                     ; preds = %26
  %49 = load i8*, i8** %9, align 8, !tbaa !3
  %50 = load i8*, i8** %12, align 8, !tbaa !3
  %51 = load i32, i32* %13, align 4, !tbaa !7
  %52 = call i8* @memcpy(i8* %49, i8* %50, i32 %51)
  %53 = load i8*, i8** %9, align 8, !tbaa !3
  %54 = load i32, i32* %13, align 4, !tbaa !7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* %8, align 8, !tbaa !10
  %58 = call i8* @number(i8* %56, i64 %57)
  store i8* %58, i8** %9, align 8, !tbaa !3
  br label %59

; <label>:59:                                     ; preds = %71, %48
  %60 = load i8*, i8** %10, align 8, !tbaa !3
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %10, align 8, !tbaa !3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %70

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %10, align 8, !tbaa !3
  store i8 48, i8* %69, align 1, !tbaa !9
  br label %74

; <label>:70:                                     ; preds = %63
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i8*, i8** %10, align 8, !tbaa !3
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8, !tbaa !3
  br label %59

; <label>:74:                                     ; preds = %68, %59
  br label %135

; <label>:75:                                     ; preds = %26
  %76 = load i8*, i8** %9, align 8, !tbaa !3
  %77 = load i8*, i8** %12, align 8, !tbaa !3
  %78 = load i32, i32* %13, align 4, !tbaa !7
  %79 = sub nsw i32 %78, 2
  %80 = call i8* @memcpy(i8* %76, i8* %77, i32 %79)
  %81 = load i8*, i8** %9, align 8, !tbaa !3
  %82 = load i32, i32* %13, align 4, !tbaa !7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -2
  %86 = load i64, i64* %8, align 8, !tbaa !10
  %87 = call i8* @__number(i8* %85, i64 %86)
  store i8* %87, i8** %9, align 8, !tbaa !3
  br label %135

; <label>:88:                                     ; preds = %26
  %89 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %89) #2
  %90 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %90) #2
  %91 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %91) #2
  %92 = load i64, i64* %8, align 8, !tbaa !10
  %93 = call i64 @modf(i64 %92, i64* %14, i64* %16)
  store i64 %93, i64* %15, align 8, !tbaa !10
  %94 = load i8*, i8** %9, align 8, !tbaa !3
  %95 = load i8*, i8** %12, align 8, !tbaa !3
  %96 = load i32, i32* %13, align 4, !tbaa !7
  %97 = sub nsw i32 %96, 2
  %98 = call i8* @memcpy(i8* %94, i8* %95, i32 %97)
  %99 = load i32, i32* %13, align 4, !tbaa !7
  %100 = sub nsw i32 %99, 2
  %101 = load i8*, i8** %9, align 8, !tbaa !3
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %9, align 8, !tbaa !3
  %104 = load i64, i64* %8, align 8, !tbaa !10
  %105 = lshr i64 %104, 63
  %106 = and i64 %105, 1
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

; <label>:108:                                    ; preds = %88
  %109 = load i8*, i8** %9, align 8, !tbaa !3
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8, !tbaa !3
  store i8 45, i8* %109, align 1, !tbaa !9
  br label %111

; <label>:111:                                    ; preds = %108, %88
  %112 = load i8*, i8** %9, align 8, !tbaa !3
  %113 = load i64, i64* %14, align 8, !tbaa !10
  %114 = call i8* @__number(i8* %112, i64 %113)
  store i8* %114, i8** %9, align 8, !tbaa !3
  %115 = load i64, i64* %15, align 8, !tbaa !10
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

; <label>:117:                                    ; preds = %111
  %118 = load i8*, i8** %9, align 8, !tbaa !3
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8, !tbaa !3
  store i8 46, i8* %118, align 1, !tbaa !9
  br label %120

; <label>:120:                                    ; preds = %124, %117
  %121 = load i64, i64* %16, align 8, !tbaa !10
  %122 = add i64 %121, -1
  store i64 %122, i64* %16, align 8, !tbaa !10
  %123 = icmp ne i64 %121, 0
  br i1 %123, label %124, label %127

; <label>:124:                                    ; preds = %120
  %125 = load i8*, i8** %9, align 8, !tbaa !3
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8, !tbaa !3
  store i8 48, i8* %125, align 1, !tbaa !9
  br label %120

; <label>:127:                                    ; preds = %120
  %128 = load i8*, i8** %9, align 8, !tbaa !3
  %129 = load i64, i64* %15, align 8, !tbaa !10
  %130 = call i8* @__number(i8* %128, i64 %129)
  store i8* %130, i8** %9, align 8, !tbaa !3
  br label %131

; <label>:131:                                    ; preds = %127, %111
  %132 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %132) #2
  %133 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %133) #2
  %134 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %134) #2
  br label %135

; <label>:135:                                    ; preds = %26, %131, %75, %74, %39
  %136 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #2
  %137 = bitcast i8** %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %137) #2
  br label %22

; <label>:138:                                    ; preds = %22
  %139 = load i8*, i8** %9, align 8, !tbaa !3
  store i8 0, i8* %139, align 1, !tbaa !9
  %140 = load i8*, i8** %9, align 8, !tbaa !3
  %141 = load i8*, i8** %5, align 8, !tbaa !3
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = bitcast %struct.printf_spec* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %146) #2
  %147 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %147) #2
  %148 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %148) #2
  ret i32 %145
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @format_decode(i8*, %struct.printf_spec*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.printf_spec*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store %struct.printf_spec* %1, %struct.printf_spec** %4, align 8, !tbaa !3
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = load i8*, i8** %3, align 8, !tbaa !3
  store i8* %7, i8** %5, align 8, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %19, %2
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %3, align 8, !tbaa !3
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  br label %22

; <label>:18:                                     ; preds = %12
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %3, align 8, !tbaa !3
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8, !tbaa !3
  br label %8

; <label>:22:                                     ; preds = %17, %8
  %23 = load i8*, i8** %3, align 8, !tbaa !3
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8, !tbaa !3
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  switch i32 %26, label %36 [
    i32 120, label %27
    i32 100, label %30
    i32 102, label %33
  ]

; <label>:27:                                     ; preds = %22
  %28 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8, !tbaa !3
  %29 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %28, i32 0, i32 0
  store i8 1, i8* %29, align 1, !tbaa !14
  br label %39

; <label>:30:                                     ; preds = %22
  %31 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8, !tbaa !3
  %32 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %31, i32 0, i32 0
  store i8 2, i8* %32, align 1, !tbaa !14
  br label %39

; <label>:33:                                     ; preds = %22
  %34 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8, !tbaa !3
  %35 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %34, i32 0, i32 0
  store i8 3, i8* %35, align 1, !tbaa !14
  br label %39

; <label>:36:                                     ; preds = %22
  %37 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8, !tbaa !3
  %38 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %37, i32 0, i32 0
  store i8 0, i8* %38, align 1, !tbaa !14
  br label %39

; <label>:39:                                     ; preds = %36, %33, %30, %27
  %40 = load i8*, i8** %3, align 8, !tbaa !3
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8, !tbaa !3
  %42 = load i8*, i8** %5, align 8, !tbaa !3
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #2
  ret i32 %46
}

; Function Attrs: nounwind ssp uwtable
define i32 @vprintf(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !10
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  %7 = load i8*, i8** %3, align 8, !tbaa !3
  %8 = load i64, i64* %4, align 8, !tbaa !10
  %9 = call i32 @vsnprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @vprintf.printf_buf, i32 0, i32 0), i32 512, i8* %7, i64 %8)
  store i32 %9, i32* %5, align 4, !tbaa !7
  call void @serial_out(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @vprintf.printf_buf, i32 0, i32 0))
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @serial_out(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8, !tbaa !3
  %5 = load i8, i8* %4, align 1, !tbaa !9
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %2, align 8, !tbaa !3
  %10 = load i8, i8* %8, align 1, !tbaa !9
  store i8 %10, i8* inttoptr (i64 -1207958536 to i8*), align 1, !tbaa !9
  br label %3

; <label>:11:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @printf(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %5 = load i8*, i8** %2, align 8, !tbaa !3
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = call i64 asm sideeffect "move\09$0, $$5\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !16
  store i64 %7, i64* %3, align 8, !tbaa !10
  %8 = load i64, i64* %3, align 8, !tbaa !10
  store i64 %8, i64* %4, align 8, !tbaa !10
  %9 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #2
  %10 = load i64, i64* %4, align 8, !tbaa !10
  %11 = call i32 @vprintf(i8* %5, i64 %10)
  ret i32 %11
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"printf_spec", !5, i64 0}
!16 = !{i32 -2147466300, i32 -2147466276}
