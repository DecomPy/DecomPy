; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_prog2.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_prog2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.fraction = type { i32, i32 }
%struct.record = type { [3 x i8], double, i8, [4 x i32] }

@simp3.f2 = private unnamed_addr constant %struct.fraction { i32 1, i32 2 }, align 4
@main.tab = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00], align 16
@main.mat = private unnamed_addr constant [3 x [4 x double]] [[4 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00], [4 x double] [double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00], [4 x double] [double 9.000000e+00, double 1.000000e+01, double 1.100000e+01, double 1.200000e+01]], align 16
@.str = private unnamed_addr constant [14 x i8] c"sizeof(d)=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&d=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"tab[%d]=%f at address %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"mat[%d][%d]=%f at address %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"mat[%d][%d]=%f at relative address %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sizeof(test)=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"&(t1)=%p\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&(t1.c[0])=%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"&(t1.num)=%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"&(t1.d)=%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"&(t1.data)=%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"sizeof(fraction)=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"&(f1)=%p\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"&(f1.num)=%p\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"&(f1.num)+1=%p\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"&(f1.den)=%p\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%d/%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"&(tabfract[0])=%p\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"&(tabfract)=%p\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"tabfract=%p\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"&(tabfract[1])=%p\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"argc=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"argv[%d]=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"%c is at %p\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@main.string2 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"test\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @simp3(i64) #0 {
  %2 = alloca %struct.fraction, align 4
  %3 = alloca %struct.fraction, align 4
  %4 = bitcast %struct.fraction* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = bitcast %struct.fraction* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.fraction* @simp3.f2 to i8*), i64 8, i1 false)
  %6 = bitcast %struct.fraction* %2 to i64*
  %7 = load i64, i64* %6, align 4
  ret i64 %7
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x double], align 16
  %8 = alloca [3 x [4 x double]], align 16
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.record, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.fraction, align 4
  %21 = alloca %struct.fraction, align 4
  %22 = alloca %struct.fraction, align 4
  %23 = alloca [2 x %struct.fraction], align 16
  %24 = alloca %struct.fraction*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca [7 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %30 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = bitcast [4 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %31) #3
  %32 = bitcast [4 x double]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([4 x double]* @main.tab to i8*), i64 32, i1 false)
  %33 = bitcast [3 x [4 x double]]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %33) #3
  %34 = bitcast [3 x [4 x double]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([3 x [4 x double]]* @main.mat to i8*), i64 96, i1 false)
  %35 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35) #3
  %36 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #3
  %37 = bitcast double** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37) #3
  %38 = getelementptr inbounds [4 x double], [4 x double]* %7, i32 0, i32 0
  store double* %38, double** %9, align 8, !tbaa !7
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 8)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double* %6)
  %41 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #3
  store i32 0, i32* %12, align 4, !tbaa !3
  br label %42

; <label>:42:                                     ; preds = %90, %2
  %43 = load i32, i32* %12, align 4, !tbaa !3
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %42
  %46 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  br label %93

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %12, align 4, !tbaa !3
  %49 = load i32, i32* %12, align 4, !tbaa !3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !9
  %53 = load i32, i32* %12, align 4, !tbaa !3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 %54
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %48, double %52, double* %55)
  %57 = load i32, i32* %12, align 4, !tbaa !3
  %58 = load double*, double** %9, align 8, !tbaa !7
  %59 = load i32, i32* %12, align 4, !tbaa !3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !9
  %63 = load double*, double** %9, align 8, !tbaa !7
  %64 = load i32, i32* %12, align 4, !tbaa !3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %57, double %62, double* %66)
  %68 = load i32, i32* %12, align 4, !tbaa !3
  %69 = load double*, double** %9, align 8, !tbaa !7
  %70 = load double, double* %69, align 8, !tbaa !9
  %71 = load i32, i32* %12, align 4, !tbaa !3
  %72 = sitofp i32 %71 to double
  %73 = fadd double %70, %72
  %74 = load double*, double** %9, align 8, !tbaa !7
  %75 = load i32, i32* %12, align 4, !tbaa !3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %68, double %73, double* %77)
  %79 = load i32, i32* %12, align 4, !tbaa !3
  %80 = load double*, double** %9, align 8, !tbaa !7
  %81 = load double, double* %80, align 8, !tbaa !9
  %82 = load i32, i32* %12, align 4, !tbaa !3
  %83 = sitofp i32 %82 to double
  %84 = fadd double %81, %83
  %85 = load double*, double** %9, align 8, !tbaa !7
  %86 = load i32, i32* %12, align 4, !tbaa !3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %79, double %84, double* %88)
  br label %90

; <label>:90:                                     ; preds = %47
  %91 = load i32, i32* %12, align 4, !tbaa !3
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4, !tbaa !3
  br label %42

; <label>:93:                                     ; preds = %45
  %94 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 0
  %95 = getelementptr inbounds [4 x double], [4 x double]* %94, i64 0, i64 0
  store double* %95, double** %11, align 8, !tbaa !7
  %96 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %96) #3
  store i32 0, i32* %13, align 4, !tbaa !3
  br label %97

; <label>:97:                                     ; preds = %172, %93
  %98 = load i32, i32* %13, align 4, !tbaa !3
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %102, label %100

; <label>:100:                                    ; preds = %97
  store i32 5, i32* %14, align 4
  %101 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #3
  br label %175

; <label>:102:                                    ; preds = %97
  %103 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %103) #3
  store i32 0, i32* %15, align 4, !tbaa !3
  br label %104

; <label>:104:                                    ; preds = %168, %102
  %105 = load i32, i32* %15, align 4, !tbaa !3
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %109, label %107

; <label>:107:                                    ; preds = %104
  store i32 8, i32* %14, align 4
  %108 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #3
  br label %171

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %13, align 4, !tbaa !3
  %111 = load i32, i32* %15, align 4, !tbaa !3
  %112 = load i32, i32* %13, align 4, !tbaa !3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %113
  %115 = load i32, i32* %15, align 4, !tbaa !3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x double], [4 x double]* %114, i64 0, i64 %116
  %118 = load double, double* %117, align 8, !tbaa !9
  %119 = load i32, i32* %13, align 4, !tbaa !3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %120
  %122 = load i32, i32* %15, align 4, !tbaa !3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x double], [4 x double]* %121, i64 0, i64 %123
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %110, i32 %111, double %118, double* %124)
  %126 = load i32, i32* %13, align 4, !tbaa !3
  %127 = load i32, i32* %15, align 4, !tbaa !3
  %128 = load i32, i32* %13, align 4, !tbaa !3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %129
  %131 = load i32, i32* %15, align 4, !tbaa !3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x double], [4 x double]* %130, i64 0, i64 %132
  %134 = load double, double* %133, align 8, !tbaa !9
  %135 = load i32, i32* %13, align 4, !tbaa !3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %136
  %138 = load i32, i32* %15, align 4, !tbaa !3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x double], [4 x double]* %137, i64 0, i64 %139
  %141 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 0
  %142 = getelementptr inbounds [4 x double], [4 x double]* %141, i64 0, i64 0
  %143 = ptrtoint double* %140 to i64
  %144 = ptrtoint double* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %126, i32 %127, double %134, i64 %146)
  %148 = load i32, i32* %13, align 4, !tbaa !3
  %149 = load i32, i32* %15, align 4, !tbaa !3
  %150 = load double*, double** %11, align 8, !tbaa !7
  %151 = load i32, i32* %13, align 4, !tbaa !3
  %152 = mul nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %150, i64 %153
  %155 = load i32, i32* %15, align 4, !tbaa !3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8, !tbaa !9
  %159 = load double*, double** %11, align 8, !tbaa !7
  %160 = load i32, i32* %13, align 4, !tbaa !3
  %161 = mul nsw i32 %160, 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %159, i64 %162
  %164 = load i32, i32* %15, align 4, !tbaa !3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %148, i32 %149, double %158, double* %166)
  br label %168

; <label>:168:                                    ; preds = %109
  %169 = load i32, i32* %15, align 4, !tbaa !3
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4, !tbaa !3
  br label %104

; <label>:171:                                    ; preds = %107
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %13, align 4, !tbaa !3
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4, !tbaa !3
  br label %97

; <label>:175:                                    ; preds = %100
  %176 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %176) #3
  store i32 1, i32* %16, align 4, !tbaa !3
  %177 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 1
  %178 = getelementptr inbounds [4 x double], [4 x double]* %177, i32 0, i32 0
  store double* %178, double** %10, align 8, !tbaa !7
  %179 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %179) #3
  store i32 0, i32* %17, align 4, !tbaa !3
  br label %180

; <label>:180:                                    ; preds = %214, %175
  %181 = load i32, i32* %17, align 4, !tbaa !3
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %185, label %183

; <label>:183:                                    ; preds = %180
  store i32 11, i32* %14, align 4
  %184 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %184) #3
  br label %217

; <label>:185:                                    ; preds = %180
  %186 = load i32, i32* %16, align 4, !tbaa !3
  %187 = load i32, i32* %17, align 4, !tbaa !3
  %188 = load i32, i32* %16, align 4, !tbaa !3
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %189
  %191 = load i32, i32* %17, align 4, !tbaa !3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x double], [4 x double]* %190, i64 0, i64 %192
  %194 = load double, double* %193, align 8, !tbaa !9
  %195 = load i32, i32* %16, align 4, !tbaa !3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %196
  %198 = load i32, i32* %17, align 4, !tbaa !3
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x double], [4 x double]* %197, i64 0, i64 %199
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %186, i32 %187, double %194, double* %200)
  %202 = load i32, i32* %16, align 4, !tbaa !3
  %203 = load i32, i32* %17, align 4, !tbaa !3
  %204 = load double*, double** %10, align 8, !tbaa !7
  %205 = load i32, i32* %17, align 4, !tbaa !3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8, !tbaa !9
  %209 = load double*, double** %10, align 8, !tbaa !7
  %210 = load i32, i32* %17, align 4, !tbaa !3
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %209, i64 %211
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %202, i32 %203, double %208, double* %212)
  br label %214

; <label>:214:                                    ; preds = %185
  %215 = load i32, i32* %17, align 4, !tbaa !3
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4, !tbaa !3
  br label %180

; <label>:217:                                    ; preds = %183
  %218 = bitcast %struct.record* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %218) #3
  %219 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 0
  %220 = getelementptr inbounds [3 x i8], [3 x i8]* %219, i64 0, i64 0
  store i8 65, i8* %220, align 8, !tbaa !11
  %221 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 0
  %222 = getelementptr inbounds [3 x i8], [3 x i8]* %221, i64 0, i64 1
  store i8 66, i8* %222, align 1, !tbaa !11
  %223 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 0
  %224 = getelementptr inbounds [3 x i8], [3 x i8]* %223, i64 0, i64 2
  store i8 67, i8* %224, align 2, !tbaa !11
  %225 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 1
  store double 4.200000e+01, double* %225, align 8, !tbaa !12
  %226 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 2
  store i8 90, i8* %226, align 8, !tbaa !14
  %227 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 3
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %227, i64 0, i64 1
  store i32 2, i32* %228, align 4, !tbaa !3
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i64 40)
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.record* %18)
  %231 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 0
  %232 = getelementptr inbounds [3 x i8], [3 x i8]* %231, i64 0, i64 0
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %232)
  %234 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 1
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), double* %234)
  %236 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 2
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %236)
  %238 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 3
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), [4 x i32]* %238)
  %240 = bitcast i8** %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %240) #3
  %241 = bitcast %struct.record* %18 to i8*
  %242 = getelementptr inbounds i8, i8* %241, i64 4
  %243 = getelementptr inbounds i8, i8* %242, i64 8
  store i8* %243, i8** %19, align 8, !tbaa !7
  %244 = load i8*, i8** %19, align 8, !tbaa !7
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %244)
  %246 = bitcast %struct.fraction* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %246) #3
  %247 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 0
  store i32 1, i32* %247, align 4, !tbaa !15
  %248 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 1
  store i32 17, i32* %248, align 4, !tbaa !17
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i64 8)
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.fraction* %20)
  %251 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 0
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32* %251)
  %253 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 0
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32* %254)
  %256 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 1
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32* %256)
  %258 = bitcast %struct.fraction* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258) #3
  %259 = bitcast %struct.fraction* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %259) #3
  %260 = bitcast %struct.fraction* %20 to i64*
  %261 = load i64, i64* %260, align 4
  %262 = call i64 @simp3(i64 %261)
  %263 = bitcast %struct.fraction* %22 to i64*
  store i64 %262, i64* %263, align 4
  %264 = bitcast %struct.fraction* %21 to i8*
  %265 = bitcast %struct.fraction* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %264, i8* align 4 %265, i64 8, i1 false), !tbaa.struct !18
  %266 = bitcast %struct.fraction* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %266) #3
  %267 = getelementptr inbounds %struct.fraction, %struct.fraction* %21, i32 0, i32 0
  %268 = load i32, i32* %267, align 4, !tbaa !15
  %269 = getelementptr inbounds %struct.fraction, %struct.fraction* %21, i32 0, i32 1
  %270 = load i32, i32* %269, align 4, !tbaa !17
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %268, i32 %270)
  %272 = bitcast [2 x %struct.fraction]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %272) #3
  %273 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 0
  %274 = getelementptr inbounds %struct.fraction, %struct.fraction* %273, i32 0, i32 0
  store i32 1, i32* %274, align 16, !tbaa !15
  %275 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 0
  %276 = getelementptr inbounds %struct.fraction, %struct.fraction* %275, i32 0, i32 1
  store i32 7, i32* %276, align 4, !tbaa !17
  %277 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 1
  %278 = getelementptr inbounds %struct.fraction, %struct.fraction* %277, i32 0, i32 0
  store i32 2, i32* %278, align 8, !tbaa !15
  %279 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 1
  %280 = getelementptr inbounds %struct.fraction, %struct.fraction* %279, i32 0, i32 1
  store i32 3, i32* %280, align 4, !tbaa !17
  %281 = bitcast %struct.fraction** %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %281) #3
  %282 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i32 0, i32 0
  store %struct.fraction* %282, %struct.fraction** %24, align 8, !tbaa !7
  %283 = load %struct.fraction*, %struct.fraction** %24, align 8, !tbaa !7
  %284 = getelementptr inbounds %struct.fraction, %struct.fraction* %283, i64 1
  %285 = getelementptr inbounds %struct.fraction, %struct.fraction* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4, !tbaa !17
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %286)
  %288 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 0
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), %struct.fraction* %288)
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), [2 x %struct.fraction]* %23)
  %291 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i32 0, i32 0
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct.fraction* %291)
  %293 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %23, i64 0, i64 1
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), %struct.fraction* %293)
  %295 = load i32, i32* %4, align 4, !tbaa !3
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %295)
  %297 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %297) #3
  store i32 0, i32* %25, align 4, !tbaa !3
  br label %298

; <label>:298:                                    ; preds = %340, %217
  %299 = load i32, i32* %25, align 4, !tbaa !3
  %300 = load i32, i32* %4, align 4, !tbaa !3
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %304, label %302

; <label>:302:                                    ; preds = %298
  store i32 14, i32* %14, align 4
  %303 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %303) #3
  br label %343

; <label>:304:                                    ; preds = %298
  %305 = bitcast i8** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %305) #3
  %306 = load i8**, i8*** %5, align 8, !tbaa !7
  %307 = load i32, i32* %25, align 4, !tbaa !3
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %306, i64 %308
  %310 = load i8*, i8** %309, align 8, !tbaa !7
  store i8* %310, i8** %26, align 8, !tbaa !7
  %311 = load i32, i32* %25, align 4, !tbaa !3
  %312 = load i8*, i8** %26, align 8, !tbaa !7
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %311, i8* %312)
  %314 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %314) #3
  store i32 0, i32* %27, align 4, !tbaa !3
  br label %315

; <label>:315:                                    ; preds = %335, %304
  %316 = load i32, i32* %27, align 4, !tbaa !3
  %317 = sext i32 %316 to i64
  %318 = load i8*, i8** %26, align 8, !tbaa !7
  %319 = call i64 @strlen(i8* %318)
  %320 = icmp ult i64 %317, %319
  br i1 %320, label %323, label %321

; <label>:321:                                    ; preds = %315
  store i32 17, i32* %14, align 4
  %322 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %322) #3
  br label %338

; <label>:323:                                    ; preds = %315
  %324 = load i8*, i8** %26, align 8, !tbaa !7
  %325 = load i32, i32* %27, align 4, !tbaa !3
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load i8, i8* %327, align 1, !tbaa !11
  %329 = sext i8 %328 to i32
  %330 = load i8*, i8** %26, align 8, !tbaa !7
  %331 = load i32, i32* %27, align 4, !tbaa !3
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 %329, i8* %333)
  br label %335

; <label>:335:                                    ; preds = %323
  %336 = load i32, i32* %27, align 4, !tbaa !3
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %27, align 4, !tbaa !3
  br label %315

; <label>:338:                                    ; preds = %321
  %339 = bitcast i8** %26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %339) #3
  br label %340

; <label>:340:                                    ; preds = %338
  %341 = load i32, i32* %25, align 4, !tbaa !3
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %25, align 4, !tbaa !3
  br label %298

; <label>:343:                                    ; preds = %302
  %344 = bitcast i8** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %344) #3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8** %28, align 8, !tbaa !7
  %345 = bitcast [7 x i8]* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %345) #3
  %346 = bitcast [7 x i8]* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %346, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @main.string2, i32 0, i32 0), i64 7, i1 false)
  %347 = load i8*, i8** %28, align 8, !tbaa !7
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %347)
  %349 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %349)
  %351 = load i8*, i8** %28, align 8, !tbaa !7
  %352 = getelementptr inbounds i8, i8* %351, i64 2
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %352)
  %354 = load i8*, i8** %28, align 8, !tbaa !7
  %355 = getelementptr inbounds i8, i8* %354, i64 3
  %356 = load i8, i8* %355, align 1, !tbaa !11
  %357 = sext i8 %356 to i32
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %357)
  %359 = load i8*, i8** %28, align 8, !tbaa !7
  %360 = getelementptr inbounds i8, i8* %359, i64 6
  %361 = load i8, i8* %360, align 1, !tbaa !11
  %362 = sext i8 %361 to i32
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %362)
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0))
  %365 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i64 0, i64 0
  store i8 65, i8* %365, align 1, !tbaa !11
  %366 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  store i8 65, i8* %366, align 1, !tbaa !11
  %367 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %368 = getelementptr inbounds i8, i8* %367, i64 5
  store i8 70, i8* %368, align 1, !tbaa !11
  %369 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %370 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %371 = call i64 @strlen(i8* %370)
  %372 = getelementptr inbounds i8, i8* %369, i64 %371
  store i8 71, i8* %372, align 1, !tbaa !11
  %373 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %374 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %375 = call i64 @strlen(i8* %374)
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = getelementptr inbounds i8, i8* %376, i64 1
  store i8 72, i8* %377, align 1, !tbaa !11
  %378 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i32 0, i32 0
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %378)
  %380 = bitcast [7 x i8]* %29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %380) #3
  %381 = bitcast i8** %28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %381) #3
  %382 = bitcast %struct.fraction** %24 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %382) #3
  %383 = bitcast [2 x %struct.fraction]* %23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %383) #3
  %384 = bitcast %struct.fraction* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %384) #3
  %385 = bitcast %struct.fraction* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %385) #3
  %386 = bitcast i8** %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %386) #3
  %387 = bitcast %struct.record* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %387) #3
  %388 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %388) #3
  %389 = bitcast double** %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %389) #3
  %390 = bitcast double** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %390) #3
  %391 = bitcast double** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %391) #3
  %392 = bitcast [3 x [4 x double]]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %392) #3
  %393 = bitcast [4 x double]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %393) #3
  %394 = bitcast double* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %394) #3
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i64 @strlen(i8*) #2

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"record", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20}
!14 = !{!13, !5, i64 16}
!15 = !{!16, !4, i64 0}
!16 = !{!"fraction", !4, i64 0, !4, i64 4}
!17 = !{!16, !4, i64 4}
!18 = !{i64 0, i64 4, !3, i64 4, i64 4, !3}
