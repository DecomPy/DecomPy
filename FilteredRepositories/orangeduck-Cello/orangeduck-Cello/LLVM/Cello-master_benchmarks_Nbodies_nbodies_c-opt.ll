; ModuleID = 'Repositories/orangeduck-Cello/Unfiltered/Cello-master_benchmarks_Nbodies_nbodies_c.c'
source_filename = "Repositories/orangeduck-Cello/Unfiltered/Cello-master_benchmarks_Nbodies_nbodies_c.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Body = type { double, double, double, double, double, double, double }

@main.jupiter = private unnamed_addr constant %struct.Body { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFF0945BE397B376, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB36A4 }, align 8
@main.saturn = private unnamed_addr constant %struct.Body { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C990 }, align 8
@main.uranus = private unnamed_addr constant %struct.Body { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF422CA }, align 8
@main.neptune = private unnamed_addr constant %struct.Body { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F353179C16 }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Body, align 8
  %7 = alloca %struct.Body, align 8
  %8 = alloca %struct.Body, align 8
  %9 = alloca %struct.Body, align 8
  %10 = alloca %struct.Body, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.Body*, align 8
  %13 = alloca [5 x %struct.Body], align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.Body*, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast %struct.Body* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.Body* @main.jupiter to i8*), i64 56, i1 false)
  %21 = bitcast %struct.Body* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.Body* @main.saturn to i8*), i64 56, i1 false)
  %22 = bitcast %struct.Body* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.Body* @main.uranus to i8*), i64 56, i1 false)
  %23 = bitcast %struct.Body* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.Body* @main.neptune to i8*), i64 56, i1 false)
  %24 = bitcast %struct.Body* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  %25 = bitcast i8* %24 to %struct.Body*
  %26 = getelementptr inbounds %struct.Body, %struct.Body* %25, i32 0, i32 6
  store double 0x4043BD3CC9BE48BA, double* %26, align 8
  store i64 5, i64* %11, align 8
  %27 = getelementptr inbounds [5 x %struct.Body], [5 x %struct.Body]* %13, i64 0, i64 0
  %28 = bitcast %struct.Body* %27 to i8*
  %29 = bitcast %struct.Body* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 56, i1 false)
  %30 = getelementptr inbounds %struct.Body, %struct.Body* %27, i64 1
  %31 = bitcast %struct.Body* %30 to i8*
  %32 = bitcast %struct.Body* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 56, i1 false)
  %33 = getelementptr inbounds %struct.Body, %struct.Body* %30, i64 1
  %34 = bitcast %struct.Body* %33 to i8*
  %35 = bitcast %struct.Body* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 56, i1 false)
  %36 = getelementptr inbounds %struct.Body, %struct.Body* %33, i64 1
  %37 = bitcast %struct.Body* %36 to i8*
  %38 = bitcast %struct.Body* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 56, i1 false)
  %39 = getelementptr inbounds %struct.Body, %struct.Body* %36, i64 1
  %40 = bitcast %struct.Body* %39 to i8*
  %41 = bitcast %struct.Body* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 56, i1 false)
  %42 = getelementptr inbounds [5 x %struct.Body], [5 x %struct.Body]* %13, i32 0, i32 0
  store %struct.Body* %42, %struct.Body** %12, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store i64 0, i64* %17, align 8
  br label %43

; <label>:43:                                     ; preds = %78, %2
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %81

; <label>:47:                                     ; preds = %43
  %48 = load %struct.Body*, %struct.Body** %12, align 8
  %49 = load i64, i64* %17, align 8
  %50 = getelementptr inbounds %struct.Body, %struct.Body* %48, i64 %49
  store %struct.Body* %50, %struct.Body** %18, align 8
  %51 = load %struct.Body*, %struct.Body** %18, align 8
  %52 = getelementptr inbounds %struct.Body, %struct.Body* %51, i32 0, i32 3
  %53 = load double, double* %52, align 8
  %54 = load %struct.Body*, %struct.Body** %18, align 8
  %55 = getelementptr inbounds %struct.Body, %struct.Body* %54, i32 0, i32 6
  %56 = load double, double* %55, align 8
  %57 = fmul double %53, %56
  %58 = load double, double* %14, align 8
  %59 = fadd double %58, %57
  store double %59, double* %14, align 8
  %60 = load %struct.Body*, %struct.Body** %18, align 8
  %61 = getelementptr inbounds %struct.Body, %struct.Body* %60, i32 0, i32 4
  %62 = load double, double* %61, align 8
  %63 = load %struct.Body*, %struct.Body** %18, align 8
  %64 = getelementptr inbounds %struct.Body, %struct.Body* %63, i32 0, i32 6
  %65 = load double, double* %64, align 8
  %66 = fmul double %62, %65
  %67 = load double, double* %15, align 8
  %68 = fadd double %67, %66
  store double %68, double* %15, align 8
  %69 = load %struct.Body*, %struct.Body** %18, align 8
  %70 = getelementptr inbounds %struct.Body, %struct.Body* %69, i32 0, i32 5
  %71 = load double, double* %70, align 8
  %72 = load %struct.Body*, %struct.Body** %18, align 8
  %73 = getelementptr inbounds %struct.Body, %struct.Body* %72, i32 0, i32 6
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = load double, double* %16, align 8
  %77 = fadd double %76, %75
  store double %77, double* %16, align 8
  br label %78

; <label>:78:                                     ; preds = %47
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %17, align 8
  br label %43

; <label>:81:                                     ; preds = %43
  %82 = load %struct.Body*, %struct.Body** %12, align 8
  %83 = getelementptr inbounds %struct.Body, %struct.Body* %82, i64 0
  %84 = load double, double* %14, align 8
  %85 = load double, double* %15, align 8
  %86 = load double, double* %16, align 8
  call void @Body_Offset_Momentum(%struct.Body* %83, double %84, double %85, double %86)
  store i64 0, i64* %19, align 8
  br label %87

; <label>:87:                                     ; preds = %93, %81
  %88 = load i64, i64* %19, align 8
  %89 = icmp ult i64 %88, 100000
  br i1 %89, label %90, label %96

; <label>:90:                                     ; preds = %87
  %91 = load %struct.Body*, %struct.Body** %12, align 8
  %92 = load i64, i64* %11, align 8
  call void @Bodies_Advance(%struct.Body* %91, i64 %92, double 1.000000e-05)
  br label %93

; <label>:93:                                     ; preds = %90
  %94 = load i64, i64* %19, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %19, align 8
  br label %87

; <label>:96:                                     ; preds = %87
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Body_Offset_Momentum(%struct.Body*, double, double, double) #0 {
  %5 = alloca %struct.Body*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.Body* %0, %struct.Body** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %6, align 8
  %10 = fsub double -0.000000e+00, %9
  %11 = fdiv double %10, 0x4043BD3CC9BE48BA
  %12 = load %struct.Body*, %struct.Body** %5, align 8
  %13 = getelementptr inbounds %struct.Body, %struct.Body* %12, i32 0, i32 3
  store double %11, double* %13, align 8
  %14 = load double, double* %7, align 8
  %15 = fsub double -0.000000e+00, %14
  %16 = fdiv double %15, 0x4043BD3CC9BE48BA
  %17 = load %struct.Body*, %struct.Body** %5, align 8
  %18 = getelementptr inbounds %struct.Body, %struct.Body* %17, i32 0, i32 4
  store double %16, double* %18, align 8
  %19 = load double, double* %8, align 8
  %20 = fsub double -0.000000e+00, %19
  %21 = fdiv double %20, 0x4043BD3CC9BE48BA
  %22 = load %struct.Body*, %struct.Body** %5, align 8
  %23 = getelementptr inbounds %struct.Body, %struct.Body* %22, i32 0, i32 5
  store double %21, double* %23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Bodies_Advance(%struct.Body*, i64, double) #0 {
  %4 = alloca %struct.Body*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Body*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Body*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.Body*, align 8
  store %struct.Body* %0, %struct.Body** %4, align 8
  store i64 %1, i64* %5, align 8
  store double %2, double* %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

; <label>:19:                                     ; preds = %146, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %149

; <label>:23:                                     ; preds = %19
  %24 = load %struct.Body*, %struct.Body** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.Body, %struct.Body* %24, i64 %25
  store %struct.Body* %26, %struct.Body** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %29

; <label>:29:                                     ; preds = %142, %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %145

; <label>:33:                                     ; preds = %29
  %34 = load %struct.Body*, %struct.Body** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.Body, %struct.Body* %34, i64 %35
  store %struct.Body* %36, %struct.Body** %10, align 8
  %37 = load %struct.Body*, %struct.Body** %8, align 8
  %38 = getelementptr inbounds %struct.Body, %struct.Body* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load %struct.Body*, %struct.Body** %10, align 8
  %41 = getelementptr inbounds %struct.Body, %struct.Body* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fsub double %39, %42
  store double %43, double* %11, align 8
  %44 = load %struct.Body*, %struct.Body** %8, align 8
  %45 = getelementptr inbounds %struct.Body, %struct.Body* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.Body*, %struct.Body** %10, align 8
  %48 = getelementptr inbounds %struct.Body, %struct.Body* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  store double %50, double* %12, align 8
  %51 = load %struct.Body*, %struct.Body** %8, align 8
  %52 = getelementptr inbounds %struct.Body, %struct.Body* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load %struct.Body*, %struct.Body** %10, align 8
  %55 = getelementptr inbounds %struct.Body, %struct.Body* %54, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = fsub double %53, %56
  store double %57, double* %13, align 8
  %58 = load double, double* %11, align 8
  %59 = load double, double* %11, align 8
  %60 = fmul double %58, %59
  %61 = load double, double* %12, align 8
  %62 = load double, double* %12, align 8
  %63 = fmul double %61, %62
  %64 = fadd double %60, %63
  %65 = load double, double* %13, align 8
  %66 = load double, double* %13, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %14, align 8
  %69 = load double, double* %14, align 8
  %70 = call double @llvm.sqrt.f64(double %69)
  store double %70, double* %15, align 8
  %71 = load double, double* %6, align 8
  %72 = load double, double* %14, align 8
  %73 = load double, double* %15, align 8
  %74 = fmul double %72, %73
  %75 = fdiv double %71, %74
  store double %75, double* %16, align 8
  %76 = load double, double* %11, align 8
  %77 = load %struct.Body*, %struct.Body** %10, align 8
  %78 = getelementptr inbounds %struct.Body, %struct.Body* %77, i32 0, i32 6
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = load double, double* %16, align 8
  %82 = fmul double %80, %81
  %83 = load %struct.Body*, %struct.Body** %8, align 8
  %84 = getelementptr inbounds %struct.Body, %struct.Body* %83, i32 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = fsub double %85, %82
  store double %86, double* %84, align 8
  %87 = load double, double* %12, align 8
  %88 = load %struct.Body*, %struct.Body** %10, align 8
  %89 = getelementptr inbounds %struct.Body, %struct.Body* %88, i32 0, i32 6
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  %92 = load double, double* %16, align 8
  %93 = fmul double %91, %92
  %94 = load %struct.Body*, %struct.Body** %8, align 8
  %95 = getelementptr inbounds %struct.Body, %struct.Body* %94, i32 0, i32 4
  %96 = load double, double* %95, align 8
  %97 = fsub double %96, %93
  store double %97, double* %95, align 8
  %98 = load double, double* %13, align 8
  %99 = load %struct.Body*, %struct.Body** %10, align 8
  %100 = getelementptr inbounds %struct.Body, %struct.Body* %99, i32 0, i32 6
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  %103 = load double, double* %16, align 8
  %104 = fmul double %102, %103
  %105 = load %struct.Body*, %struct.Body** %8, align 8
  %106 = getelementptr inbounds %struct.Body, %struct.Body* %105, i32 0, i32 5
  %107 = load double, double* %106, align 8
  %108 = fsub double %107, %104
  store double %108, double* %106, align 8
  %109 = load double, double* %11, align 8
  %110 = load %struct.Body*, %struct.Body** %8, align 8
  %111 = getelementptr inbounds %struct.Body, %struct.Body* %110, i32 0, i32 6
  %112 = load double, double* %111, align 8
  %113 = fmul double %109, %112
  %114 = load double, double* %16, align 8
  %115 = fmul double %113, %114
  %116 = load %struct.Body*, %struct.Body** %10, align 8
  %117 = getelementptr inbounds %struct.Body, %struct.Body* %116, i32 0, i32 3
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %115
  store double %119, double* %117, align 8
  %120 = load double, double* %12, align 8
  %121 = load %struct.Body*, %struct.Body** %8, align 8
  %122 = getelementptr inbounds %struct.Body, %struct.Body* %121, i32 0, i32 6
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = load double, double* %16, align 8
  %126 = fmul double %124, %125
  %127 = load %struct.Body*, %struct.Body** %10, align 8
  %128 = getelementptr inbounds %struct.Body, %struct.Body* %127, i32 0, i32 4
  %129 = load double, double* %128, align 8
  %130 = fadd double %129, %126
  store double %130, double* %128, align 8
  %131 = load double, double* %13, align 8
  %132 = load %struct.Body*, %struct.Body** %8, align 8
  %133 = getelementptr inbounds %struct.Body, %struct.Body* %132, i32 0, i32 6
  %134 = load double, double* %133, align 8
  %135 = fmul double %131, %134
  %136 = load double, double* %16, align 8
  %137 = fmul double %135, %136
  %138 = load %struct.Body*, %struct.Body** %10, align 8
  %139 = getelementptr inbounds %struct.Body, %struct.Body* %138, i32 0, i32 5
  %140 = load double, double* %139, align 8
  %141 = fadd double %140, %137
  store double %141, double* %139, align 8
  br label %142

; <label>:142:                                    ; preds = %33
  %143 = load i64, i64* %9, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %9, align 8
  br label %29

; <label>:145:                                    ; preds = %29
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  br label %19

; <label>:149:                                    ; preds = %19
  store i64 0, i64* %17, align 8
  br label %150

; <label>:150:                                    ; preds = %185, %149
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %188

; <label>:154:                                    ; preds = %150
  %155 = load %struct.Body*, %struct.Body** %4, align 8
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds %struct.Body, %struct.Body* %155, i64 %156
  store %struct.Body* %157, %struct.Body** %18, align 8
  %158 = load double, double* %6, align 8
  %159 = load %struct.Body*, %struct.Body** %18, align 8
  %160 = getelementptr inbounds %struct.Body, %struct.Body* %159, i32 0, i32 3
  %161 = load double, double* %160, align 8
  %162 = fmul double %158, %161
  %163 = load %struct.Body*, %struct.Body** %18, align 8
  %164 = getelementptr inbounds %struct.Body, %struct.Body* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fadd double %165, %162
  store double %166, double* %164, align 8
  %167 = load double, double* %6, align 8
  %168 = load %struct.Body*, %struct.Body** %18, align 8
  %169 = getelementptr inbounds %struct.Body, %struct.Body* %168, i32 0, i32 4
  %170 = load double, double* %169, align 8
  %171 = fmul double %167, %170
  %172 = load %struct.Body*, %struct.Body** %18, align 8
  %173 = getelementptr inbounds %struct.Body, %struct.Body* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = fadd double %174, %171
  store double %175, double* %173, align 8
  %176 = load double, double* %6, align 8
  %177 = load %struct.Body*, %struct.Body** %18, align 8
  %178 = getelementptr inbounds %struct.Body, %struct.Body* %177, i32 0, i32 5
  %179 = load double, double* %178, align 8
  %180 = fmul double %176, %179
  %181 = load %struct.Body*, %struct.Body** %18, align 8
  %182 = getelementptr inbounds %struct.Body, %struct.Body* %181, i32 0, i32 2
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %180
  store double %184, double* %182, align 8
  br label %185

; <label>:185:                                    ; preds = %154
  %186 = load i64, i64* %17, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %17, align 8
  br label %150

; <label>:188:                                    ; preds = %150
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
