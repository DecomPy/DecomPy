; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips64-dsp_printf.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips64-dsp_printf.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.printf_spec = type { i8 }

@number.digits = internal global [16 x i8] c"0123456789abcdef", align 16
@vprintf.printf_buf = internal global [512 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @memcpy(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %26, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  br label %26

; <label>:26:                                     ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %12

; <label>:29:                                     ; preds = %12
  %30 = load i8*, i8** %4, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @number(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 16
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %23, %2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, 15
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* @number.digits, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %20, i8** %6, align 8
  store i8 %18, i8* %20, align 1
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 4
  store i64 %22, i64* %4, align 8
  br label %23

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %10

; <label>:26:                                     ; preds = %10
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @__number(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %8, align 8
  store i8 48, i8* %14, align 1
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %3, align 8
  br label %49

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %18
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i64, i64* %7, align 8
  %24 = udiv i64 %23, 10
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %18

; <label>:27:                                     ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %8, align 8
  br label %32

; <label>:32:                                     ; preds = %35, %27
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = urem i64 %36, 10
  %38 = add i64 %37, 48
  %39 = trunc i64 %38 to i8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %8, align 8
  store i8 %39, i8* %41, align 1
  %42 = load i64, i64* %5, align 8
  %43 = udiv i64 %42, 10
  store i64 %43, i64* %5, align 8
  br label %32

; <label>:44:                                     ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %3, align 8
  br label %49

; <label>:49:                                     ; preds = %44, %13
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store double 0.000000e+00, double* %9, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %3
  store i64 0, i64* %4, align 8
  br label %235

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %8, align 4
  %17 = load i64, i64* %5, align 8
  %18 = shl i64 %17, 1
  %19 = lshr i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %20

; <label>:20:                                     ; preds = %32, %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 52
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %24, %26
  %28 = and i64 %27, 1
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %23
  br label %35

; <label>:31:                                     ; preds = %23
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %20

; <label>:35:                                     ; preds = %30, %20
  %36 = load i64*, i64** %6, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = lshr i64 %37, 56
  %39 = icmp ne i64 %38, 63
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = lshr i64 %41, 52
  %43 = icmp eq i64 %42, 1023
  br i1 %43, label %44, label %77

; <label>:44:                                     ; preds = %40, %35
  %45 = load i64, i64* %5, align 8
  %46 = lshr i64 %45, 52
  %47 = sub i64 %46, 1023
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 52, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %49, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 12, %54
  %56 = shl i64 %53, %55
  %57 = load i64, i64* %10, align 8
  %58 = add i64 12, %57
  %59 = lshr i64 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = lshr i64 %59, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %5, align 8
  %64 = shl i64 %63, 12
  %65 = lshr i64 %64, 12
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %67, %68
  %70 = lshr i64 %65, %69
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = or i64 %70, %74
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  br label %141

; <label>:77:                                     ; preds = %40
  %78 = load i64, i64* %5, align 8
  %79 = lshr i64 %78, 52
  %80 = sub i64 %79, 1023
  %81 = xor i64 %80, -1
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %5, align 8
  %84 = shl i64 %83, 12
  %85 = lshr i64 %84, 12
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %10, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 1, %87
  %89 = sitofp i32 %88 to double
  %90 = fdiv double 1.000000e+00, %89
  %91 = load double, double* %9, align 8
  %92 = fadd double %91, %90
  store double %92, double* %9, align 8
  store i32 1, i32* %8, align 4
  br label %93

; <label>:93:                                     ; preds = %116, %77
  %94 = load i32, i32* %8, align 4
  %95 = icmp sle i32 %94, 16
  br i1 %95, label %96, label %119

; <label>:96:                                     ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 52, %98
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %97, %100
  %102 = and i64 %101, 1
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

; <label>:104:                                    ; preds = %96
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %105, %107
  %109 = trunc i64 %108 to i32
  %110 = shl i32 1, %109
  %111 = sitofp i32 %110 to double
  %112 = fdiv double 1.000000e+00, %111
  %113 = load double, double* %9, align 8
  %114 = fadd double %113, %112
  store double %114, double* %9, align 8
  br label %115

; <label>:115:                                    ; preds = %104, %96
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %93

; <label>:119:                                    ; preds = %93
  store i32 1, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %120

; <label>:120:                                    ; preds = %133, %119
  %121 = load i32, i32* %8, align 4
  %122 = icmp sle i32 %121, 4
  br i1 %122, label %123, label %136

; <label>:123:                                    ; preds = %120
  %124 = load double, double* %9, align 8
  %125 = fmul double %124, 1.000000e+01
  store double %125, double* %9, align 8
  %126 = load double, double* %9, align 8
  %127 = fptoui double %126 to i64
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %132, label %129

; <label>:129:                                    ; preds = %123
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %132

; <label>:132:                                    ; preds = %129, %123
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %120

; <label>:136:                                    ; preds = %120
  %137 = load i64, i64* %10, align 8
  %138 = load i64*, i64** %7, align 8
  store i64 %137, i64* %138, align 8
  %139 = load double, double* %9, align 8
  %140 = fptoui double %139 to i64
  store i64 %140, i64* %4, align 8
  br label %235

; <label>:141:                                    ; preds = %44
  %142 = load i64, i64* %5, align 8
  %143 = and i64 %142, 15
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %191

; <label>:145:                                    ; preds = %141
  store i32 1, i32* %8, align 4
  br label %146

; <label>:146:                                    ; preds = %166, %145
  %147 = load i32, i32* %8, align 4
  %148 = icmp sle i32 %147, 16
  br i1 %148, label %149, label %169

; <label>:149:                                    ; preds = %146
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = lshr i64 %150, %154
  %156 = and i64 %155, 1
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

; <label>:158:                                    ; preds = %149
  %159 = load i32, i32* %8, align 4
  %160 = shl i32 1, %159
  %161 = sitofp i32 %160 to double
  %162 = fdiv double 1.000000e+00, %161
  %163 = load double, double* %9, align 8
  %164 = fadd double %163, %162
  store double %164, double* %9, align 8
  br label %165

; <label>:165:                                    ; preds = %158, %149
  br label %166

; <label>:166:                                    ; preds = %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %146

; <label>:169:                                    ; preds = %146
  store i32 1, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %170

; <label>:170:                                    ; preds = %183, %169
  %171 = load i32, i32* %8, align 4
  %172 = icmp sle i32 %171, 4
  br i1 %172, label %173, label %186

; <label>:173:                                    ; preds = %170
  %174 = load double, double* %9, align 8
  %175 = fmul double %174, 1.000000e+01
  store double %175, double* %9, align 8
  %176 = load double, double* %9, align 8
  %177 = fptoui double %176 to i64
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %182, label %179

; <label>:179:                                    ; preds = %173
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %10, align 8
  br label %182

; <label>:182:                                    ; preds = %179, %173
  br label %183

; <label>:183:                                    ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %170

; <label>:186:                                    ; preds = %170
  %187 = load i64, i64* %10, align 8
  %188 = load i64*, i64** %7, align 8
  store i64 %187, i64* %188, align 8
  %189 = load double, double* %9, align 8
  %190 = fptoui double %189 to i64
  store i64 %190, i64* %4, align 8
  br label %235

; <label>:191:                                    ; preds = %141
  %192 = load i64, i64* %11, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %233

; <label>:194:                                    ; preds = %191
  store i32 1, i32* %8, align 4
  br label %195

; <label>:195:                                    ; preds = %217, %194
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %11, align 8
  %199 = icmp ule i64 %197, %198
  br i1 %199, label %200, label %220

; <label>:200:                                    ; preds = %195
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 %202, %204
  %206 = lshr i64 %201, %205
  %207 = and i64 %206, 1
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

; <label>:209:                                    ; preds = %200
  %210 = load i32, i32* %8, align 4
  %211 = shl i32 1, %210
  %212 = sitofp i32 %211 to double
  %213 = fdiv double 1.000000e+00, %212
  %214 = load double, double* %9, align 8
  %215 = fadd double %214, %213
  store double %215, double* %9, align 8
  br label %216

; <label>:216:                                    ; preds = %209, %200
  br label %217

; <label>:217:                                    ; preds = %216
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %195

; <label>:220:                                    ; preds = %195
  store i32 1, i32* %8, align 4
  br label %221

; <label>:221:                                    ; preds = %227, %220
  %222 = load i32, i32* %8, align 4
  %223 = icmp sle i32 %222, 4
  br i1 %223, label %224, label %230

; <label>:224:                                    ; preds = %221
  %225 = load double, double* %9, align 8
  %226 = fmul double %225, 1.000000e+01
  store double %226, double* %9, align 8
  br label %227

; <label>:227:                                    ; preds = %224
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %221

; <label>:230:                                    ; preds = %221
  %231 = load double, double* %9, align 8
  %232 = fptoui double %231 to i64
  store i64 %232, i64* %4, align 8
  br label %235

; <label>:233:                                    ; preds = %191
  br label %234

; <label>:234:                                    ; preds = %233
  store i64 0, i64* %4, align 8
  br label %235

; <label>:235:                                    ; preds = %234, %230, %186, %136, %15
  %236 = load i64, i64* %4, align 8
  ret i64 %236
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = bitcast %struct.printf_spec* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 1, i1 false)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %10, align 8
  store i8* %18, i8** %9, align 8
  br label %19

; <label>:19:                                     ; preds = %124, %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %125

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @format_decode(i8* %25, %struct.printf_spec* %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %7, align 8
  %31 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %11, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %124 [
    i32 0, label %34
    i32 1, label %43
    i32 2, label %70
    i32 3, label %83
  ]

; <label>:34:                                     ; preds = %23
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i8* @memcpy(i8* %35, i8* %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %9, align 8
  br label %124

; <label>:43:                                     ; preds = %23
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %8, align 8
  %53 = call i8* @number(i8* %51, i64 %52)
  store i8* %53, i8** %9, align 8
  br label %54

; <label>:54:                                     ; preds = %66, %43
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %69

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %10, align 8
  store i8 48, i8* %64, align 1
  br label %69

; <label>:65:                                     ; preds = %58
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  br label %54

; <label>:69:                                     ; preds = %63, %54
  br label %124

; <label>:70:                                     ; preds = %23
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 2
  %75 = call i8* @memcpy(i8* %71, i8* %72, i32 %74)
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -2
  %81 = load i64, i64* %8, align 8
  %82 = call i8* @__number(i8* %80, i64 %81)
  store i8* %82, i8** %9, align 8
  br label %124

; <label>:83:                                     ; preds = %23
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @modf(i64 %84, i64* %14, i64* %16)
  store i64 %85, i64* %15, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, 2
  %90 = call i8* @memcpy(i8* %86, i8* %87, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %91, 2
  %93 = load i8*, i8** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %9, align 8
  %96 = load i64, i64* %8, align 8
  %97 = lshr i64 %96, 63
  %98 = and i64 %97, 1
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %83
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 45, i8* %101, align 1
  br label %103

; <label>:103:                                    ; preds = %100, %83
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i8* @__number(i8* %104, i64 %105)
  store i8* %106, i8** %9, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

; <label>:109:                                    ; preds = %103
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 46, i8* %110, align 1
  br label %112

; <label>:112:                                    ; preds = %116, %109
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %16, align 8
  %115 = icmp ne i64 %113, 0
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %9, align 8
  store i8 48, i8* %117, align 1
  br label %112

; <label>:119:                                    ; preds = %112
  %120 = load i8*, i8** %9, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i8* @__number(i8* %120, i64 %121)
  store i8* %122, i8** %9, align 8
  br label %123

; <label>:123:                                    ; preds = %119, %103
  br label %124

; <label>:124:                                    ; preds = %23, %123, %70, %69, %34
  br label %19

; <label>:125:                                    ; preds = %19
  %126 = load i8*, i8** %9, align 8
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  ret i32 %132
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @format_decode(i8*, %struct.printf_spec*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.printf_spec*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.printf_spec* %1, %struct.printf_spec** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  br label %21

; <label>:17:                                     ; preds = %11
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %7

; <label>:21:                                     ; preds = %16, %7
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %35 [
    i32 120, label %26
    i32 100, label %29
    i32 102, label %32
  ]

; <label>:26:                                     ; preds = %21
  %27 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8
  %28 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %27, i32 0, i32 0
  store i8 1, i8* %28, align 1
  br label %38

; <label>:29:                                     ; preds = %21
  %30 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8
  %31 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %30, i32 0, i32 0
  store i8 2, i8* %31, align 1
  br label %38

; <label>:32:                                     ; preds = %21
  %33 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8
  %34 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %33, i32 0, i32 0
  store i8 3, i8* %34, align 1
  br label %38

; <label>:35:                                     ; preds = %21
  %36 = load %struct.printf_spec*, %struct.printf_spec** %4, align 8
  %37 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %36, i32 0, i32 0
  store i8 0, i8* %37, align 1
  br label %38

; <label>:38:                                     ; preds = %35, %32, %29, %26
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @vprintf(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @vsnprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @vprintf.printf_buf, i32 0, i32 0), i32 512, i8* %6, i64 %7)
  store i32 %8, i32* %5, align 4
  call void @serial_out(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @vprintf.printf_buf, i32 0, i32 0))
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @serial_out(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %2, align 8
  %10 = load i8, i8* %8, align 1
  store i8 %10, i8* inttoptr (i64 -1207958536 to i8*), align 1
  br label %3

; <label>:11:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @printf(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 asm sideeffect "move\09$0, $$5\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @vprintf(i8* %5, i64 %8)
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 -2147466299, i32 -2147466275}
