; ModuleID = 'Repositories/pret-agbcc/Unfiltered/agbcc-master_libgcc_libgcc1-test.c'
source_filename = "Repositories/pret-agbcc/Unfiltered/agbcc-master_libgcc_libgcc1-test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@foo.table = internal global [4 x i32] [i32 20, i32 69, i32 4, i32 12], align 16
@foo.idx = internal global i32 0, align 4
@dfoo.table = internal global [4 x double] [double 2.040000e+01, double 6.996000e+01, double 4.400000e+00, double 2.022020e+02], align 16
@dfoo.idx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main_without__main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = call i32 @foo()
  store i32 %9, i32* %1, align 4
  %10 = call i32 @foo()
  store i32 %10, i32* %2, align 4
  %11 = call i32 @foo()
  store i32 %11, i32* %3, align 4
  %12 = call i32 @foo()
  store i32 %12, i32* %4, align 4
  %13 = call double @dfoo()
  %14 = fptrunc double %13 to float
  store float %14, float* %5, align 4
  %15 = call double @dfoo()
  %16 = fptrunc double %15 to float
  store float %16, float* %6, align 4
  %17 = call double @dfoo()
  store double %17, double* %7, align 8
  %18 = call double @dfoo()
  store double %18, double* %8, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @discard(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i32 @discard(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = srem i32 %27, %28
  %30 = call i32 @discard(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = udiv i32 %31, %32
  %34 = call i32 @discard(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = urem i32 %35, %36
  %38 = call i32 @discard(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = ashr i32 %39, %40
  %42 = call i32 @discard(i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* %2, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @discard(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = lshr i32 %47, %48
  %50 = call i32 @discard(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @discard(i32 %53)
  %55 = load double, double* %7, align 8
  %56 = load double, double* %8, align 8
  %57 = fadd double %55, %56
  %58 = call i32 @ddiscard(double %57)
  %59 = load double, double* %7, align 8
  %60 = load double, double* %8, align 8
  %61 = fsub double %59, %60
  %62 = call i32 @ddiscard(double %61)
  %63 = load double, double* %7, align 8
  %64 = load double, double* %8, align 8
  %65 = fmul double %63, %64
  %66 = call i32 @ddiscard(double %65)
  %67 = load double, double* %7, align 8
  %68 = load double, double* %8, align 8
  %69 = fdiv double %67, %68
  %70 = call i32 @ddiscard(double %69)
  %71 = load double, double* %7, align 8
  %72 = fsub double -0.000000e+00, %71
  %73 = call i32 @ddiscard(double %72)
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fadd float %74, %75
  %77 = fpext float %76 to double
  %78 = call i32 @ddiscard(double %77)
  %79 = load float, float* %5, align 4
  %80 = load float, float* %6, align 4
  %81 = fsub float %79, %80
  %82 = fpext float %81 to double
  %83 = call i32 @ddiscard(double %82)
  %84 = load float, float* %5, align 4
  %85 = load float, float* %6, align 4
  %86 = fmul float %84, %85
  %87 = fpext float %86 to double
  %88 = call i32 @ddiscard(double %87)
  %89 = load float, float* %5, align 4
  %90 = load float, float* %6, align 4
  %91 = fdiv float %89, %90
  %92 = fpext float %91 to double
  %93 = call i32 @ddiscard(double %92)
  %94 = load float, float* %5, align 4
  %95 = fsub float -0.000000e+00, %94
  %96 = fpext float %95 to double
  %97 = call i32 @ddiscard(double %96)
  %98 = load double, double* %7, align 8
  %99 = fptosi double %98 to i32
  %100 = call i32 @discard(i32 %99)
  %101 = load float, float* %5, align 4
  %102 = fptosi float %101 to i32
  %103 = call i32 @discard(i32 %102)
  %104 = load i32, i32* %1, align 4
  %105 = sitofp i32 %104 to double
  %106 = call i32 @ddiscard(double %105)
  %107 = load i32, i32* %1, align 4
  %108 = sitofp i32 %107 to float
  %109 = fpext float %108 to double
  %110 = call i32 @ddiscard(double %109)
  %111 = load double, double* %7, align 8
  %112 = fptrunc double %111 to float
  %113 = fpext float %112 to double
  %114 = call i32 @ddiscard(double %113)
  %115 = load double, double* %7, align 8
  %116 = load double, double* %8, align 8
  %117 = fcmp oeq double %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @discard(i32 %118)
  %120 = load double, double* %7, align 8
  %121 = load double, double* %8, align 8
  %122 = fcmp olt double %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @discard(i32 %123)
  %125 = load double, double* %7, align 8
  %126 = load double, double* %8, align 8
  %127 = fcmp ogt double %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @discard(i32 %128)
  %130 = load double, double* %7, align 8
  %131 = load double, double* %8, align 8
  %132 = fcmp une double %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @discard(i32 %133)
  %135 = load double, double* %7, align 8
  %136 = load double, double* %8, align 8
  %137 = fcmp ole double %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @discard(i32 %138)
  %140 = load double, double* %7, align 8
  %141 = load double, double* %8, align 8
  %142 = fcmp oge double %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @discard(i32 %143)
  %145 = load float, float* %5, align 4
  %146 = load float, float* %6, align 4
  %147 = fcmp oeq float %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @discard(i32 %148)
  %150 = load float, float* %5, align 4
  %151 = load float, float* %6, align 4
  %152 = fcmp olt float %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @discard(i32 %153)
  %155 = load float, float* %5, align 4
  %156 = load float, float* %6, align 4
  %157 = fcmp ogt float %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @discard(i32 %158)
  %160 = load float, float* %5, align 4
  %161 = load float, float* %6, align 4
  %162 = fcmp une float %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @discard(i32 %163)
  %165 = load float, float* %5, align 4
  %166 = load float, float* %6, align 4
  %167 = fcmp ole float %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @discard(i32 %168)
  %170 = load float, float* %5, align 4
  %171 = load float, float* %6, align 4
  %172 = fcmp oge float %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @discard(i32 %173)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @discard(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ddiscard(double) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @foo() #0 {
  %1 = load i32, i32* @foo.idx, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @foo.idx, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @foo.table, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @dfoo() #0 {
  %1 = load i32, i32* @dfoo.idx, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @dfoo.idx, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x double], [4 x double]* @dfoo.table, i64 0, i64 %3
  %5 = load double, double* %4, align 8
  ret double %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @memcpy() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @"\01start"() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @"\01_start"() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @"\01__start"() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mainCRTStartup() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
