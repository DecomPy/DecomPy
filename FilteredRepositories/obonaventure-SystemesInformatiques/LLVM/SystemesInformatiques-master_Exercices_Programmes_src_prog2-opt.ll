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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %17 = alloca %struct.record, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.fraction, align 4
  %20 = alloca %struct.fraction, align 4
  %21 = alloca %struct.fraction, align 4
  %22 = alloca [2 x %struct.fraction], align 16
  %23 = alloca %struct.fraction*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca [7 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = bitcast [4 x double]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([4 x double]* @main.tab to i8*), i64 32, i1 false)
  %30 = bitcast [3 x [4 x double]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([3 x [4 x double]]* @main.mat to i8*), i64 96, i1 false)
  %31 = getelementptr inbounds [4 x double], [4 x double]* %7, i32 0, i32 0
  store double* %31, double** %9, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 8)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double* %6)
  store i32 0, i32* %12, align 4
  br label %34

; <label>:34:                                     ; preds = %80, %2
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %83

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 %40
  %42 = load double, double* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 %44
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %38, double %42, double* %45)
  %47 = load i32, i32* %12, align 4
  %48 = load double*, double** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double*, double** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %47, double %52, double* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load double*, double** %9, align 8
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sitofp i32 %61 to double
  %63 = fadd double %60, %62
  %64 = load double*, double** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %58, double %63, double* %67)
  %69 = load i32, i32* %12, align 4
  %70 = load double*, double** %9, align 8
  %71 = load double, double* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sitofp i32 %72 to double
  %74 = fadd double %71, %73
  %75 = load double*, double** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %69, double %74, double* %78)
  br label %80

; <label>:80:                                     ; preds = %37
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %34

; <label>:83:                                     ; preds = %34
  %84 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [4 x double], [4 x double]* %84, i64 0, i64 0
  store double* %85, double** %11, align 8
  store i32 0, i32* %13, align 4
  br label %86

; <label>:86:                                     ; preds = %156, %83
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %159

; <label>:89:                                     ; preds = %86
  store i32 0, i32* %14, align 4
  br label %90

; <label>:90:                                     ; preds = %152, %89
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %155

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %97
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x double], [4 x double]* %98, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %104
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x double], [4 x double]* %105, i64 0, i64 %107
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %94, i32 %95, double %102, double* %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %113
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x double], [4 x double]* %114, i64 0, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %120
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x double], [4 x double]* %121, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 0
  %126 = getelementptr inbounds [4 x double], [4 x double]* %125, i64 0, i64 0
  %127 = ptrtoint double* %124 to i64
  %128 = ptrtoint double* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %110, i32 %111, double %118, i64 %130)
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load double*, double** %11, align 8
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %135, 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %134, i64 %137
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  %142 = load double, double* %141, align 8
  %143 = load double*, double** %11, align 8
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 %144, 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %143, i64 %146
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %147, i64 %149
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %132, i32 %133, double %142, double* %150)
  br label %152

; <label>:152:                                    ; preds = %93
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %90

; <label>:155:                                    ; preds = %90
  br label %156

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %86

; <label>:159:                                    ; preds = %86
  store i32 1, i32* %15, align 4
  %160 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 1
  %161 = getelementptr inbounds [4 x double], [4 x double]* %160, i32 0, i32 0
  store double* %161, double** %10, align 8
  store i32 0, i32* %16, align 4
  br label %162

; <label>:162:                                    ; preds = %194, %159
  %163 = load i32, i32* %16, align 4
  %164 = icmp slt i32 %163, 4
  br i1 %164, label %165, label %197

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %169
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x double], [4 x double]* %170, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x [4 x double]], [3 x [4 x double]]* %8, i64 0, i64 %176
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x double], [4 x double]* %177, i64 0, i64 %179
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %166, i32 %167, double %174, double* %180)
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load double*, double** %10, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = load double*, double** %10, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %189, i64 %191
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %182, i32 %183, double %188, double* %192)
  br label %194

; <label>:194:                                    ; preds = %165
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  br label %162

; <label>:197:                                    ; preds = %162
  %198 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 0
  %199 = getelementptr inbounds [3 x i8], [3 x i8]* %198, i64 0, i64 0
  store i8 65, i8* %199, align 8
  %200 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 0
  %201 = getelementptr inbounds [3 x i8], [3 x i8]* %200, i64 0, i64 1
  store i8 66, i8* %201, align 1
  %202 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 0
  %203 = getelementptr inbounds [3 x i8], [3 x i8]* %202, i64 0, i64 2
  store i8 67, i8* %203, align 2
  %204 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 1
  store double 4.200000e+01, double* %204, align 8
  %205 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 2
  store i8 90, i8* %205, align 8
  %206 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 3
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %206, i64 0, i64 1
  store i32 2, i32* %207, align 4
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i64 40)
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.record* %17)
  %210 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 0
  %211 = getelementptr inbounds [3 x i8], [3 x i8]* %210, i64 0, i64 0
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %211)
  %213 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 1
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), double* %213)
  %215 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 2
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %215)
  %217 = getelementptr inbounds %struct.record, %struct.record* %17, i32 0, i32 3
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), [4 x i32]* %217)
  %219 = bitcast %struct.record* %17 to i8*
  %220 = getelementptr inbounds i8, i8* %219, i64 4
  %221 = getelementptr inbounds i8, i8* %220, i64 8
  store i8* %221, i8** %18, align 8
  %222 = load i8*, i8** %18, align 8
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %222)
  %224 = getelementptr inbounds %struct.fraction, %struct.fraction* %19, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = getelementptr inbounds %struct.fraction, %struct.fraction* %19, i32 0, i32 1
  store i32 17, i32* %225, align 4
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i64 8)
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct.fraction* %19)
  %228 = getelementptr inbounds %struct.fraction, %struct.fraction* %19, i32 0, i32 0
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32* %228)
  %230 = getelementptr inbounds %struct.fraction, %struct.fraction* %19, i32 0, i32 0
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32* %231)
  %233 = getelementptr inbounds %struct.fraction, %struct.fraction* %19, i32 0, i32 1
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32* %233)
  %235 = bitcast %struct.fraction* %19 to i64*
  %236 = load i64, i64* %235, align 4
  %237 = call i64 @simp3(i64 %236)
  %238 = bitcast %struct.fraction* %21 to i64*
  store i64 %237, i64* %238, align 4
  %239 = bitcast %struct.fraction* %20 to i8*
  %240 = bitcast %struct.fraction* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %239, i8* align 4 %240, i64 8, i1 false)
  %241 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.fraction, %struct.fraction* %20, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %242, i32 %244)
  %246 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 0
  %247 = getelementptr inbounds %struct.fraction, %struct.fraction* %246, i32 0, i32 0
  store i32 1, i32* %247, align 16
  %248 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 0
  %249 = getelementptr inbounds %struct.fraction, %struct.fraction* %248, i32 0, i32 1
  store i32 7, i32* %249, align 4
  %250 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 1
  %251 = getelementptr inbounds %struct.fraction, %struct.fraction* %250, i32 0, i32 0
  store i32 2, i32* %251, align 8
  %252 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 1
  %253 = getelementptr inbounds %struct.fraction, %struct.fraction* %252, i32 0, i32 1
  store i32 3, i32* %253, align 4
  %254 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i32 0, i32 0
  store %struct.fraction* %254, %struct.fraction** %23, align 8
  %255 = load %struct.fraction*, %struct.fraction** %23, align 8
  %256 = getelementptr inbounds %struct.fraction, %struct.fraction* %255, i64 1
  %257 = getelementptr inbounds %struct.fraction, %struct.fraction* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %258)
  %260 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 0
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), %struct.fraction* %260)
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), [2 x %struct.fraction]* %22)
  %263 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i32 0, i32 0
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct.fraction* %263)
  %265 = getelementptr inbounds [2 x %struct.fraction], [2 x %struct.fraction]* %22, i64 0, i64 1
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), %struct.fraction* %265)
  %267 = load i32, i32* %4, align 4
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %267)
  store i32 0, i32* %24, align 4
  br label %269

; <label>:269:                                    ; preds = %304, %197
  %270 = load i32, i32* %24, align 4
  %271 = load i32, i32* %4, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %307

; <label>:273:                                    ; preds = %269
  %274 = load i8**, i8*** %5, align 8
  %275 = load i32, i32* %24, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %25, align 8
  %279 = load i32, i32* %24, align 4
  %280 = load i8*, i8** %25, align 8
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %279, i8* %280)
  store i32 0, i32* %26, align 4
  br label %282

; <label>:282:                                    ; preds = %300, %273
  %283 = load i32, i32* %26, align 4
  %284 = sext i32 %283 to i64
  %285 = load i8*, i8** %25, align 8
  %286 = call i64 @strlen(i8* %285)
  %287 = icmp ult i64 %284, %286
  br i1 %287, label %288, label %303

; <label>:288:                                    ; preds = %282
  %289 = load i8*, i8** %25, align 8
  %290 = load i32, i32* %26, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = load i8*, i8** %25, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 %294, i8* %298)
  br label %300

; <label>:300:                                    ; preds = %288
  %301 = load i32, i32* %26, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %26, align 4
  br label %282

; <label>:303:                                    ; preds = %282
  br label %304

; <label>:304:                                    ; preds = %303
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %24, align 4
  br label %269

; <label>:307:                                    ; preds = %269
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8** %27, align 8
  %308 = bitcast [7 x i8]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %308, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @main.string2, i32 0, i32 0), i64 7, i1 false)
  %309 = load i8*, i8** %27, align 8
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %309)
  %311 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %311)
  %313 = load i8*, i8** %27, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 2
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %314)
  %316 = load i8*, i8** %27, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 3
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %319)
  %321 = load i8*, i8** %27, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 6
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %324)
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0))
  %327 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i64 0, i64 0
  store i8 65, i8* %327, align 1
  %328 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  store i8 65, i8* %328, align 1
  %329 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %330 = getelementptr inbounds i8, i8* %329, i64 5
  store i8 70, i8* %330, align 1
  %331 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %332 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %333 = call i64 @strlen(i8* %332)
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  store i8 71, i8* %334, align 1
  %335 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %336 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %337 = call i64 @strlen(i8* %336)
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = getelementptr inbounds i8, i8* %338, i64 1
  store i8 72, i8* %339, align 1
  %340 = getelementptr inbounds [7 x i8], [7 x i8]* %28, i32 0, i32 0
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %340)
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare i32 @printf(i8*, ...) #2

declare i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
