; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_arith_arith_op.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_arith_arith_op.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@sa = global i32 1, align 4
@sb = global i32 2, align 4
@sc = global i32 3, align 4
@ua = global i32 1, align 4
@ub = global i32 2, align 4
@uc = global i32 3, align 4
@fa = global float 1.000000e+00, align 4
@fb = global float 2.000000e+00, align 4
@fc = global float 3.000000e+00, align 4
@da = global double 1.000000e+00, align 8
@db = global double 2.000000e+00, align 8
@dc = global double 3.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"sc = %x \0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"uc = %x \0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fc = %f \0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dc = %f \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @DoTest() #0 {
  %1 = load i32, i32* @sa, align 4
  %2 = load i32, i32* @sb, align 4
  %3 = or i32 %1, %2
  store i32 %3, i32* @sc, align 4
  %4 = load i32, i32* @sc, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %4)
  %6 = load i32, i32* @sa, align 4
  %7 = load i32, i32* @sb, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* @sc, align 4
  %9 = load i32, i32* @sc, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %9)
  %11 = load i32, i32* @sa, align 4
  %12 = load i32, i32* @sb, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* @sc, align 4
  %14 = load i32, i32* @sc, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %14)
  %16 = load i32, i32* @sa, align 4
  %17 = shl i32 %16, 2
  store i32 %17, i32* @sc, align 4
  %18 = load i32, i32* @sc, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %18)
  %20 = load i32, i32* @sa, align 4
  %21 = ashr i32 %20, 2
  store i32 %21, i32* @sc, align 4
  %22 = load i32, i32* @sc, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %22)
  %24 = load i32, i32* @sa, align 4
  %25 = load i32, i32* @sb, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* @sc, align 4
  %27 = load i32, i32* @sc, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %27)
  %29 = load i32, i32* @sa, align 4
  %30 = load i32, i32* @sb, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* @sc, align 4
  %32 = load i32, i32* @sc, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %32)
  %34 = load i32, i32* @sa, align 4
  %35 = load i32, i32* @sb, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* @sc, align 4
  %37 = load i32, i32* @sc, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %37)
  %39 = load i32, i32* @sa, align 4
  %40 = load i32, i32* @sb, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* @sc, align 4
  %42 = load i32, i32* @sc, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %42)
  %44 = load i32, i32* @sc, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @sc, align 4
  %46 = load i32, i32* @sc, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %46)
  %48 = load i32, i32* @sc, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @sc, align 4
  %50 = load i32, i32* @sc, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @sc, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %50)
  %53 = load i32, i32* @sa, align 4
  %54 = load i32, i32* @sb, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* @sc, align 4
  %56 = load i32, i32* @sc, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %56)
  %58 = load i32, i32* @sa, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* @sc, align 4
  %60 = load i32, i32* @sc, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %60)
  %62 = load i32, i32* @sa, align 4
  %63 = xor i32 %62, -1
  store i32 %63, i32* @sc, align 4
  %64 = load i32, i32* @sc, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %64)
  %66 = load i32, i32* @ua, align 4
  %67 = load i32, i32* @ub, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* @uc, align 4
  %69 = load i32, i32* @uc, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %69)
  %71 = load i32, i32* @ua, align 4
  %72 = load i32, i32* @ub, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* @uc, align 4
  %74 = load i32, i32* @uc, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %74)
  %76 = load i32, i32* @ua, align 4
  %77 = load i32, i32* @ub, align 4
  %78 = xor i32 %76, %77
  store i32 %78, i32* @uc, align 4
  %79 = load i32, i32* @uc, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %79)
  %81 = load i32, i32* @ua, align 4
  %82 = shl i32 %81, 2
  store i32 %82, i32* @uc, align 4
  %83 = load i32, i32* @uc, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %83)
  %85 = load i32, i32* @ua, align 4
  %86 = lshr i32 %85, 2
  store i32 %86, i32* @uc, align 4
  %87 = load i32, i32* @uc, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %87)
  %89 = load i32, i32* @ua, align 4
  %90 = load i32, i32* @ub, align 4
  %91 = add i32 %89, %90
  store i32 %91, i32* @uc, align 4
  %92 = load i32, i32* @uc, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  %94 = load i32, i32* @ua, align 4
  %95 = load i32, i32* @ub, align 4
  %96 = sub i32 %94, %95
  store i32 %96, i32* @uc, align 4
  %97 = load i32, i32* @uc, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %97)
  %99 = load i32, i32* @ua, align 4
  %100 = load i32, i32* @ub, align 4
  %101 = mul i32 %99, %100
  store i32 %101, i32* @uc, align 4
  %102 = load i32, i32* @uc, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %102)
  %104 = load i32, i32* @ua, align 4
  %105 = load i32, i32* @ub, align 4
  %106 = udiv i32 %104, %105
  store i32 %106, i32* @uc, align 4
  %107 = load i32, i32* @uc, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %107)
  %109 = load i32, i32* @uc, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* @uc, align 4
  %111 = load i32, i32* @uc, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %111)
  %113 = load i32, i32* @uc, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* @uc, align 4
  %115 = load i32, i32* @uc, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* @uc, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %115)
  %118 = load i32, i32* @ua, align 4
  %119 = load i32, i32* @ub, align 4
  %120 = urem i32 %118, %119
  store i32 %120, i32* @uc, align 4
  %121 = load i32, i32* @uc, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %121)
  %123 = load i32, i32* @ua, align 4
  %124 = sub i32 0, %123
  store i32 %124, i32* @uc, align 4
  %125 = load i32, i32* @uc, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %125)
  %127 = load i32, i32* @ua, align 4
  %128 = xor i32 %127, -1
  store i32 %128, i32* @uc, align 4
  %129 = load i32, i32* @uc, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %129)
  %131 = load float, float* @fa, align 4
  %132 = load float, float* @fb, align 4
  %133 = fadd float %131, %132
  store float %133, float* @fc, align 4
  %134 = load float, float* @fc, align 4
  %135 = fpext float %134 to double
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %135)
  %137 = load float, float* @fa, align 4
  %138 = load float, float* @fb, align 4
  %139 = fsub float %137, %138
  store float %139, float* @fc, align 4
  %140 = load float, float* @fc, align 4
  %141 = fpext float %140 to double
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %141)
  %143 = load float, float* @fa, align 4
  %144 = load float, float* @fb, align 4
  %145 = fmul float %143, %144
  store float %145, float* @fc, align 4
  %146 = load float, float* @fc, align 4
  %147 = fpext float %146 to double
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %147)
  %149 = load float, float* @fa, align 4
  %150 = load float, float* @fb, align 4
  %151 = fdiv float %149, %150
  store float %151, float* @fc, align 4
  %152 = load float, float* @fc, align 4
  %153 = fpext float %152 to double
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %153)
  %155 = load float, float* @fc, align 4
  %156 = fadd float %155, 1.000000e+00
  store float %156, float* @fc, align 4
  %157 = load float, float* @fc, align 4
  %158 = fpext float %157 to double
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %158)
  %160 = load float, float* @fc, align 4
  %161 = fadd float %160, -1.000000e+00
  store float %161, float* @fc, align 4
  %162 = load float, float* @fc, align 4
  %163 = fadd float %162, -1.000000e+00
  store float %163, float* @fc, align 4
  %164 = fpext float %162 to double
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %164)
  %166 = load double, double* @da, align 8
  %167 = load double, double* @db, align 8
  %168 = fadd double %166, %167
  store double %168, double* @dc, align 8
  %169 = load double, double* @dc, align 8
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %169)
  %171 = load double, double* @da, align 8
  %172 = load double, double* @db, align 8
  %173 = fsub double %171, %172
  store double %173, double* @dc, align 8
  %174 = load double, double* @dc, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %174)
  %176 = load double, double* @da, align 8
  %177 = load double, double* @db, align 8
  %178 = fmul double %176, %177
  store double %178, double* @dc, align 8
  %179 = load double, double* @dc, align 8
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %179)
  %181 = load double, double* @da, align 8
  %182 = load double, double* @db, align 8
  %183 = fdiv double %181, %182
  store double %183, double* @dc, align 8
  %184 = load double, double* @dc, align 8
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %184)
  %186 = load double, double* @dc, align 8
  %187 = fadd double %186, 1.000000e+00
  store double %187, double* @dc, align 8
  %188 = load double, double* @dc, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %188)
  %190 = load double, double* @dc, align 8
  %191 = fadd double %190, -1.000000e+00
  store double %191, double* @dc, align 8
  %192 = load double, double* @dc, align 8
  %193 = fadd double %192, -1.000000e+00
  store double %193, double* @dc, align 8
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), double %192)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @DoTest()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
