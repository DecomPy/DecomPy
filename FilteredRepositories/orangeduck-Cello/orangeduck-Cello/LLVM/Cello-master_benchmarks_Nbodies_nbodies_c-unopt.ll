; ModuleID = 'Repositories/orangeduck-Cello/Unfiltered/Cello-master_benchmarks_Nbodies_nbodies_c.c'
source_filename = "Repositories/orangeduck-Cello/Unfiltered/Cello-master_benchmarks_Nbodies_nbodies_c.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Body = type { double, double, double, double, double, double, double }

@main.jupiter = private unnamed_addr constant %struct.Body { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFF0945BE397B376, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB36A4 }, align 8
@main.saturn = private unnamed_addr constant %struct.Body { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C990 }, align 8
@main.uranus = private unnamed_addr constant %struct.Body { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF422CA }, align 8
@main.neptune = private unnamed_addr constant %struct.Body { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F353179C16 }, align 8

; Function Attrs: nounwind ssp uwtable
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
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %20 = bitcast %struct.Body* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %20) #3
  %21 = bitcast %struct.Body* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.Body* @main.jupiter to i8*), i64 56, i1 false)
  %22 = bitcast %struct.Body* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %22) #3
  %23 = bitcast %struct.Body* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.Body* @main.saturn to i8*), i64 56, i1 false)
  %24 = bitcast %struct.Body* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %24) #3
  %25 = bitcast %struct.Body* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.Body* @main.uranus to i8*), i64 56, i1 false)
  %26 = bitcast %struct.Body* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %26) #3
  %27 = bitcast %struct.Body* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.Body* @main.neptune to i8*), i64 56, i1 false)
  %28 = bitcast %struct.Body* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %28) #3
  %29 = bitcast %struct.Body* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 56, i1 false)
  %30 = bitcast i8* %29 to %struct.Body*
  %31 = getelementptr inbounds %struct.Body, %struct.Body* %30, i32 0, i32 6
  store double 0x4043BD3CC9BE48BA, double* %31, align 8
  %32 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #3
  store i64 5, i64* %11, align 8, !tbaa !9
  %33 = bitcast %struct.Body** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %33) #3
  %34 = getelementptr inbounds [5 x %struct.Body], [5 x %struct.Body]* %13, i64 0, i64 0
  %35 = bitcast %struct.Body* %34 to i8*
  %36 = bitcast %struct.Body* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 56, i1 false), !tbaa.struct !11
  %37 = getelementptr inbounds %struct.Body, %struct.Body* %34, i64 1
  %38 = bitcast %struct.Body* %37 to i8*
  %39 = bitcast %struct.Body* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 56, i1 false), !tbaa.struct !11
  %40 = getelementptr inbounds %struct.Body, %struct.Body* %37, i64 1
  %41 = bitcast %struct.Body* %40 to i8*
  %42 = bitcast %struct.Body* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 56, i1 false), !tbaa.struct !11
  %43 = getelementptr inbounds %struct.Body, %struct.Body* %40, i64 1
  %44 = bitcast %struct.Body* %43 to i8*
  %45 = bitcast %struct.Body* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 56, i1 false), !tbaa.struct !11
  %46 = getelementptr inbounds %struct.Body, %struct.Body* %43, i64 1
  %47 = bitcast %struct.Body* %46 to i8*
  %48 = bitcast %struct.Body* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 56, i1 false), !tbaa.struct !11
  %49 = getelementptr inbounds [5 x %struct.Body], [5 x %struct.Body]* %13, i32 0, i32 0
  store %struct.Body* %49, %struct.Body** %12, align 8, !tbaa !7
  %50 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %50) #3
  store double 0.000000e+00, double* %14, align 8, !tbaa !12
  %51 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %51) #3
  store double 0.000000e+00, double* %15, align 8, !tbaa !12
  %52 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %52) #3
  store double 0.000000e+00, double* %16, align 8, !tbaa !12
  %53 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %53) #3
  store i64 0, i64* %17, align 8, !tbaa !9
  br label %54

; <label>:54:                                     ; preds = %93, %2
  %55 = load i64, i64* %17, align 8, !tbaa !9
  %56 = load i64, i64* %11, align 8, !tbaa !9
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %54
  %59 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #3
  br label %96

; <label>:60:                                     ; preds = %54
  %61 = bitcast %struct.Body** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61) #3
  %62 = load %struct.Body*, %struct.Body** %12, align 8, !tbaa !7
  %63 = load i64, i64* %17, align 8, !tbaa !9
  %64 = getelementptr inbounds %struct.Body, %struct.Body* %62, i64 %63
  store %struct.Body* %64, %struct.Body** %18, align 8, !tbaa !7
  %65 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %66 = getelementptr inbounds %struct.Body, %struct.Body* %65, i32 0, i32 3
  %67 = load double, double* %66, align 8, !tbaa !14
  %68 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %69 = getelementptr inbounds %struct.Body, %struct.Body* %68, i32 0, i32 6
  %70 = load double, double* %69, align 8, !tbaa !16
  %71 = fmul double %67, %70
  %72 = load double, double* %14, align 8, !tbaa !12
  %73 = fadd double %72, %71
  store double %73, double* %14, align 8, !tbaa !12
  %74 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %75 = getelementptr inbounds %struct.Body, %struct.Body* %74, i32 0, i32 4
  %76 = load double, double* %75, align 8, !tbaa !17
  %77 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %78 = getelementptr inbounds %struct.Body, %struct.Body* %77, i32 0, i32 6
  %79 = load double, double* %78, align 8, !tbaa !16
  %80 = fmul double %76, %79
  %81 = load double, double* %15, align 8, !tbaa !12
  %82 = fadd double %81, %80
  store double %82, double* %15, align 8, !tbaa !12
  %83 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %84 = getelementptr inbounds %struct.Body, %struct.Body* %83, i32 0, i32 5
  %85 = load double, double* %84, align 8, !tbaa !18
  %86 = load %struct.Body*, %struct.Body** %18, align 8, !tbaa !7
  %87 = getelementptr inbounds %struct.Body, %struct.Body* %86, i32 0, i32 6
  %88 = load double, double* %87, align 8, !tbaa !16
  %89 = fmul double %85, %88
  %90 = load double, double* %16, align 8, !tbaa !12
  %91 = fadd double %90, %89
  store double %91, double* %16, align 8, !tbaa !12
  %92 = bitcast %struct.Body** %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #3
  br label %93

; <label>:93:                                     ; preds = %60
  %94 = load i64, i64* %17, align 8, !tbaa !9
  %95 = add i64 %94, 1
  store i64 %95, i64* %17, align 8, !tbaa !9
  br label %54

; <label>:96:                                     ; preds = %58
  %97 = load %struct.Body*, %struct.Body** %12, align 8, !tbaa !7
  %98 = getelementptr inbounds %struct.Body, %struct.Body* %97, i64 0
  %99 = load double, double* %14, align 8, !tbaa !12
  %100 = load double, double* %15, align 8, !tbaa !12
  %101 = load double, double* %16, align 8, !tbaa !12
  call void @Body_Offset_Momentum(%struct.Body* %98, double %99, double %100, double %101)
  %102 = bitcast i64* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %102) #3
  store i64 0, i64* %19, align 8, !tbaa !9
  br label %103

; <label>:103:                                    ; preds = %111, %96
  %104 = load i64, i64* %19, align 8, !tbaa !9
  %105 = icmp ult i64 %104, 100000
  br i1 %105, label %108, label %106

; <label>:106:                                    ; preds = %103
  %107 = bitcast i64* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %107) #3
  br label %114

; <label>:108:                                    ; preds = %103
  %109 = load %struct.Body*, %struct.Body** %12, align 8, !tbaa !7
  %110 = load i64, i64* %11, align 8, !tbaa !9
  call void @Bodies_Advance(%struct.Body* %109, i64 %110, double 1.000000e-05)
  br label %111

; <label>:111:                                    ; preds = %108
  %112 = load i64, i64* %19, align 8, !tbaa !9
  %113 = add i64 %112, 1
  store i64 %113, i64* %19, align 8, !tbaa !9
  br label %103

; <label>:114:                                    ; preds = %106
  %115 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %115) #3
  %116 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %116) #3
  %117 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %117) #3
  %118 = bitcast %struct.Body** %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %118) #3
  %119 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %119) #3
  %120 = bitcast %struct.Body* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %120) #3
  %121 = bitcast %struct.Body* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %121) #3
  %122 = bitcast %struct.Body* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %122) #3
  %123 = bitcast %struct.Body* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %123) #3
  %124 = bitcast %struct.Body* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %124) #3
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Body_Offset_Momentum(%struct.Body*, double, double, double) #0 {
  %5 = alloca %struct.Body*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.Body* %0, %struct.Body** %5, align 8, !tbaa !7
  store double %1, double* %6, align 8, !tbaa !12
  store double %2, double* %7, align 8, !tbaa !12
  store double %3, double* %8, align 8, !tbaa !12
  %9 = load double, double* %6, align 8, !tbaa !12
  %10 = fsub double -0.000000e+00, %9
  %11 = fdiv double %10, 0x4043BD3CC9BE48BA
  %12 = load %struct.Body*, %struct.Body** %5, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.Body, %struct.Body* %12, i32 0, i32 3
  store double %11, double* %13, align 8, !tbaa !14
  %14 = load double, double* %7, align 8, !tbaa !12
  %15 = fsub double -0.000000e+00, %14
  %16 = fdiv double %15, 0x4043BD3CC9BE48BA
  %17 = load %struct.Body*, %struct.Body** %5, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.Body, %struct.Body* %17, i32 0, i32 4
  store double %16, double* %18, align 8, !tbaa !17
  %19 = load double, double* %8, align 8, !tbaa !12
  %20 = fsub double -0.000000e+00, %19
  %21 = fdiv double %20, 0x4043BD3CC9BE48BA
  %22 = load %struct.Body*, %struct.Body** %5, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.Body, %struct.Body* %22, i32 0, i32 5
  store double %21, double* %23, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Bodies_Advance(%struct.Body*, i64, double) #0 {
  %4 = alloca %struct.Body*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Body*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.Body*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.Body*, align 8
  store %struct.Body* %0, %struct.Body** %4, align 8, !tbaa !7
  store i64 %1, i64* %5, align 8, !tbaa !9
  store double %2, double* %6, align 8, !tbaa !12
  %20 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  store i64 0, i64* %7, align 8, !tbaa !9
  br label %21

; <label>:21:                                     ; preds = %169, %3
  %22 = load i64, i64* %7, align 8, !tbaa !9
  %23 = load i64, i64* %5, align 8, !tbaa !9
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  store i32 2, i32* %8, align 4
  %26 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #3
  br label %172

; <label>:27:                                     ; preds = %21
  %28 = bitcast %struct.Body** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  %29 = load %struct.Body*, %struct.Body** %4, align 8, !tbaa !7
  %30 = load i64, i64* %7, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.Body, %struct.Body* %29, i64 %30
  store %struct.Body* %31, %struct.Body** %9, align 8, !tbaa !7
  %32 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #3
  %33 = load i64, i64* %7, align 8, !tbaa !9
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8, !tbaa !9
  br label %35

; <label>:35:                                     ; preds = %164, %27
  %36 = load i64, i64* %10, align 8, !tbaa !9
  %37 = load i64, i64* %5, align 8, !tbaa !9
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %35
  store i32 5, i32* %8, align 4
  %40 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #3
  br label %167

; <label>:41:                                     ; preds = %35
  %42 = bitcast %struct.Body** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #3
  %43 = load %struct.Body*, %struct.Body** %4, align 8, !tbaa !7
  %44 = load i64, i64* %10, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.Body, %struct.Body* %43, i64 %44
  store %struct.Body* %45, %struct.Body** %11, align 8, !tbaa !7
  %46 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %46) #3
  %47 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.Body, %struct.Body* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8, !tbaa !19
  %50 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %51 = getelementptr inbounds %struct.Body, %struct.Body* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8, !tbaa !19
  %53 = fsub double %49, %52
  store double %53, double* %12, align 8, !tbaa !12
  %54 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %54) #3
  %55 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %56 = getelementptr inbounds %struct.Body, %struct.Body* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8, !tbaa !20
  %58 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %59 = getelementptr inbounds %struct.Body, %struct.Body* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8, !tbaa !20
  %61 = fsub double %57, %60
  store double %61, double* %13, align 8, !tbaa !12
  %62 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %62) #3
  %63 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %64 = getelementptr inbounds %struct.Body, %struct.Body* %63, i32 0, i32 2
  %65 = load double, double* %64, align 8, !tbaa !21
  %66 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %67 = getelementptr inbounds %struct.Body, %struct.Body* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8, !tbaa !21
  %69 = fsub double %65, %68
  store double %69, double* %14, align 8, !tbaa !12
  %70 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %70) #3
  %71 = load double, double* %12, align 8, !tbaa !12
  %72 = load double, double* %12, align 8, !tbaa !12
  %73 = fmul double %71, %72
  %74 = load double, double* %13, align 8, !tbaa !12
  %75 = load double, double* %13, align 8, !tbaa !12
  %76 = fmul double %74, %75
  %77 = fadd double %73, %76
  %78 = load double, double* %14, align 8, !tbaa !12
  %79 = load double, double* %14, align 8, !tbaa !12
  %80 = fmul double %78, %79
  %81 = fadd double %77, %80
  store double %81, double* %15, align 8, !tbaa !12
  %82 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #3
  %83 = load double, double* %15, align 8, !tbaa !12
  %84 = call double @llvm.sqrt.f64(double %83)
  store double %84, double* %16, align 8, !tbaa !12
  %85 = bitcast double* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #3
  %86 = load double, double* %6, align 8, !tbaa !12
  %87 = load double, double* %15, align 8, !tbaa !12
  %88 = load double, double* %16, align 8, !tbaa !12
  %89 = fmul double %87, %88
  %90 = fdiv double %86, %89
  store double %90, double* %17, align 8, !tbaa !12
  %91 = load double, double* %12, align 8, !tbaa !12
  %92 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %93 = getelementptr inbounds %struct.Body, %struct.Body* %92, i32 0, i32 6
  %94 = load double, double* %93, align 8, !tbaa !16
  %95 = fmul double %91, %94
  %96 = load double, double* %17, align 8, !tbaa !12
  %97 = fmul double %95, %96
  %98 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %99 = getelementptr inbounds %struct.Body, %struct.Body* %98, i32 0, i32 3
  %100 = load double, double* %99, align 8, !tbaa !14
  %101 = fsub double %100, %97
  store double %101, double* %99, align 8, !tbaa !14
  %102 = load double, double* %13, align 8, !tbaa !12
  %103 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %104 = getelementptr inbounds %struct.Body, %struct.Body* %103, i32 0, i32 6
  %105 = load double, double* %104, align 8, !tbaa !16
  %106 = fmul double %102, %105
  %107 = load double, double* %17, align 8, !tbaa !12
  %108 = fmul double %106, %107
  %109 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %110 = getelementptr inbounds %struct.Body, %struct.Body* %109, i32 0, i32 4
  %111 = load double, double* %110, align 8, !tbaa !17
  %112 = fsub double %111, %108
  store double %112, double* %110, align 8, !tbaa !17
  %113 = load double, double* %14, align 8, !tbaa !12
  %114 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %115 = getelementptr inbounds %struct.Body, %struct.Body* %114, i32 0, i32 6
  %116 = load double, double* %115, align 8, !tbaa !16
  %117 = fmul double %113, %116
  %118 = load double, double* %17, align 8, !tbaa !12
  %119 = fmul double %117, %118
  %120 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %121 = getelementptr inbounds %struct.Body, %struct.Body* %120, i32 0, i32 5
  %122 = load double, double* %121, align 8, !tbaa !18
  %123 = fsub double %122, %119
  store double %123, double* %121, align 8, !tbaa !18
  %124 = load double, double* %12, align 8, !tbaa !12
  %125 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %126 = getelementptr inbounds %struct.Body, %struct.Body* %125, i32 0, i32 6
  %127 = load double, double* %126, align 8, !tbaa !16
  %128 = fmul double %124, %127
  %129 = load double, double* %17, align 8, !tbaa !12
  %130 = fmul double %128, %129
  %131 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %132 = getelementptr inbounds %struct.Body, %struct.Body* %131, i32 0, i32 3
  %133 = load double, double* %132, align 8, !tbaa !14
  %134 = fadd double %133, %130
  store double %134, double* %132, align 8, !tbaa !14
  %135 = load double, double* %13, align 8, !tbaa !12
  %136 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %137 = getelementptr inbounds %struct.Body, %struct.Body* %136, i32 0, i32 6
  %138 = load double, double* %137, align 8, !tbaa !16
  %139 = fmul double %135, %138
  %140 = load double, double* %17, align 8, !tbaa !12
  %141 = fmul double %139, %140
  %142 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %143 = getelementptr inbounds %struct.Body, %struct.Body* %142, i32 0, i32 4
  %144 = load double, double* %143, align 8, !tbaa !17
  %145 = fadd double %144, %141
  store double %145, double* %143, align 8, !tbaa !17
  %146 = load double, double* %14, align 8, !tbaa !12
  %147 = load %struct.Body*, %struct.Body** %9, align 8, !tbaa !7
  %148 = getelementptr inbounds %struct.Body, %struct.Body* %147, i32 0, i32 6
  %149 = load double, double* %148, align 8, !tbaa !16
  %150 = fmul double %146, %149
  %151 = load double, double* %17, align 8, !tbaa !12
  %152 = fmul double %150, %151
  %153 = load %struct.Body*, %struct.Body** %11, align 8, !tbaa !7
  %154 = getelementptr inbounds %struct.Body, %struct.Body* %153, i32 0, i32 5
  %155 = load double, double* %154, align 8, !tbaa !18
  %156 = fadd double %155, %152
  store double %156, double* %154, align 8, !tbaa !18
  %157 = bitcast double* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %157) #3
  %158 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %158) #3
  %159 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %159) #3
  %160 = bitcast double* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %160) #3
  %161 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %161) #3
  %162 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %162) #3
  %163 = bitcast %struct.Body** %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %163) #3
  br label %164

; <label>:164:                                    ; preds = %41
  %165 = load i64, i64* %10, align 8, !tbaa !9
  %166 = add i64 %165, 1
  store i64 %166, i64* %10, align 8, !tbaa !9
  br label %35

; <label>:167:                                    ; preds = %39
  %168 = bitcast %struct.Body** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %168) #3
  br label %169

; <label>:169:                                    ; preds = %167
  %170 = load i64, i64* %7, align 8, !tbaa !9
  %171 = add i64 %170, 1
  store i64 %171, i64* %7, align 8, !tbaa !9
  br label %21

; <label>:172:                                    ; preds = %25
  %173 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %173) #3
  store i64 0, i64* %18, align 8, !tbaa !9
  br label %174

; <label>:174:                                    ; preds = %213, %172
  %175 = load i64, i64* %18, align 8, !tbaa !9
  %176 = load i64, i64* %5, align 8, !tbaa !9
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %180, label %178

; <label>:178:                                    ; preds = %174
  store i32 8, i32* %8, align 4
  %179 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179) #3
  br label %216

; <label>:180:                                    ; preds = %174
  %181 = bitcast %struct.Body** %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #3
  %182 = load %struct.Body*, %struct.Body** %4, align 8, !tbaa !7
  %183 = load i64, i64* %18, align 8, !tbaa !9
  %184 = getelementptr inbounds %struct.Body, %struct.Body* %182, i64 %183
  store %struct.Body* %184, %struct.Body** %19, align 8, !tbaa !7
  %185 = load double, double* %6, align 8, !tbaa !12
  %186 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %187 = getelementptr inbounds %struct.Body, %struct.Body* %186, i32 0, i32 3
  %188 = load double, double* %187, align 8, !tbaa !14
  %189 = fmul double %185, %188
  %190 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %191 = getelementptr inbounds %struct.Body, %struct.Body* %190, i32 0, i32 0
  %192 = load double, double* %191, align 8, !tbaa !19
  %193 = fadd double %192, %189
  store double %193, double* %191, align 8, !tbaa !19
  %194 = load double, double* %6, align 8, !tbaa !12
  %195 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %196 = getelementptr inbounds %struct.Body, %struct.Body* %195, i32 0, i32 4
  %197 = load double, double* %196, align 8, !tbaa !17
  %198 = fmul double %194, %197
  %199 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %200 = getelementptr inbounds %struct.Body, %struct.Body* %199, i32 0, i32 1
  %201 = load double, double* %200, align 8, !tbaa !20
  %202 = fadd double %201, %198
  store double %202, double* %200, align 8, !tbaa !20
  %203 = load double, double* %6, align 8, !tbaa !12
  %204 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %205 = getelementptr inbounds %struct.Body, %struct.Body* %204, i32 0, i32 5
  %206 = load double, double* %205, align 8, !tbaa !18
  %207 = fmul double %203, %206
  %208 = load %struct.Body*, %struct.Body** %19, align 8, !tbaa !7
  %209 = getelementptr inbounds %struct.Body, %struct.Body* %208, i32 0, i32 2
  %210 = load double, double* %209, align 8, !tbaa !21
  %211 = fadd double %210, %207
  store double %211, double* %209, align 8, !tbaa !21
  %212 = bitcast %struct.Body** %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %212) #3
  br label %213

; <label>:213:                                    ; preds = %180
  %214 = load i64, i64* %18, align 8, !tbaa !9
  %215 = add i64 %214, 1
  store i64 %215, i64* %18, align 8, !tbaa !9
  br label %174

; <label>:216:                                    ; preds = %178
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !12, i64 32, i64 8, !12, i64 40, i64 8, !12, i64 48, i64 8, !12}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!15, !13, i64 24}
!15 = !{!"Body", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!16 = !{!15, !13, i64 48}
!17 = !{!15, !13, i64 32}
!18 = !{!15, !13, i64 40}
!19 = !{!15, !13, i64 0}
!20 = !{!15, !13, i64 8}
!21 = !{!15, !13, i64 16}
