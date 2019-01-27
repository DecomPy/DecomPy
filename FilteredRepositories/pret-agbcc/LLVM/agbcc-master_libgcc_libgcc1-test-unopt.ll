; ModuleID = 'Repositories/pret-agbcc/Unfiltered/agbcc-master_libgcc_libgcc1-test.c'
source_filename = "Repositories/pret-agbcc/Unfiltered/agbcc-master_libgcc_libgcc1-test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@foo.table = internal global [4 x i32] [i32 20, i32 69, i32 4, i32 12], align 16
@foo.idx = internal global i32 0, align 4
@dfoo.table = internal global [4 x double] [double 2.040000e+01, double 6.996000e+01, double 4.400000e+00, double 2.022020e+02], align 16
@dfoo.idx = internal global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main_without__main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = call i32 @foo()
  store i32 %10, i32* %1, align 4, !tbaa !3
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = call i32 @foo()
  store i32 %12, i32* %2, align 4, !tbaa !3
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = call i32 @foo()
  store i32 %14, i32* %3, align 4, !tbaa !3
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #2
  %16 = call i32 @foo()
  store i32 %16, i32* %4, align 4, !tbaa !3
  %17 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #2
  %18 = call double @dfoo()
  %19 = fptrunc double %18 to float
  store float %19, float* %5, align 4, !tbaa !7
  %20 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  %21 = call double @dfoo()
  %22 = fptrunc double %21 to float
  store float %22, float* %6, align 4, !tbaa !7
  %23 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #2
  %24 = call double @dfoo()
  store double %24, double* %7, align 8, !tbaa !9
  %25 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #2
  %26 = call double @dfoo()
  store double %26, double* %8, align 8, !tbaa !9
  %27 = load i32, i32* %1, align 4, !tbaa !3
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @discard(i32 %29)
  %31 = load i32, i32* %1, align 4, !tbaa !3
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = sdiv i32 %31, %32
  %34 = call i32 @discard(i32 %33)
  %35 = load i32, i32* %1, align 4, !tbaa !3
  %36 = load i32, i32* %2, align 4, !tbaa !3
  %37 = srem i32 %35, %36
  %38 = call i32 @discard(i32 %37)
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = load i32, i32* %4, align 4, !tbaa !3
  %41 = udiv i32 %39, %40
  %42 = call i32 @discard(i32 %41)
  %43 = load i32, i32* %3, align 4, !tbaa !3
  %44 = load i32, i32* %4, align 4, !tbaa !3
  %45 = urem i32 %43, %44
  %46 = call i32 @discard(i32 %45)
  %47 = load i32, i32* %1, align 4, !tbaa !3
  %48 = load i32, i32* %2, align 4, !tbaa !3
  %49 = ashr i32 %47, %48
  %50 = call i32 @discard(i32 %49)
  %51 = load i32, i32* %1, align 4, !tbaa !3
  %52 = load i32, i32* %2, align 4, !tbaa !3
  %53 = shl i32 %51, %52
  %54 = call i32 @discard(i32 %53)
  %55 = load i32, i32* %3, align 4, !tbaa !3
  %56 = load i32, i32* %4, align 4, !tbaa !3
  %57 = lshr i32 %55, %56
  %58 = call i32 @discard(i32 %57)
  %59 = load i32, i32* %3, align 4, !tbaa !3
  %60 = load i32, i32* %4, align 4, !tbaa !3
  %61 = shl i32 %59, %60
  %62 = call i32 @discard(i32 %61)
  %63 = load double, double* %7, align 8, !tbaa !9
  %64 = load double, double* %8, align 8, !tbaa !9
  %65 = fadd double %63, %64
  %66 = call i32 @ddiscard(double %65)
  %67 = load double, double* %7, align 8, !tbaa !9
  %68 = load double, double* %8, align 8, !tbaa !9
  %69 = fsub double %67, %68
  %70 = call i32 @ddiscard(double %69)
  %71 = load double, double* %7, align 8, !tbaa !9
  %72 = load double, double* %8, align 8, !tbaa !9
  %73 = fmul double %71, %72
  %74 = call i32 @ddiscard(double %73)
  %75 = load double, double* %7, align 8, !tbaa !9
  %76 = load double, double* %8, align 8, !tbaa !9
  %77 = fdiv double %75, %76
  %78 = call i32 @ddiscard(double %77)
  %79 = load double, double* %7, align 8, !tbaa !9
  %80 = fsub double -0.000000e+00, %79
  %81 = call i32 @ddiscard(double %80)
  %82 = load float, float* %5, align 4, !tbaa !7
  %83 = load float, float* %6, align 4, !tbaa !7
  %84 = fadd float %82, %83
  %85 = fpext float %84 to double
  %86 = call i32 @ddiscard(double %85)
  %87 = load float, float* %5, align 4, !tbaa !7
  %88 = load float, float* %6, align 4, !tbaa !7
  %89 = fsub float %87, %88
  %90 = fpext float %89 to double
  %91 = call i32 @ddiscard(double %90)
  %92 = load float, float* %5, align 4, !tbaa !7
  %93 = load float, float* %6, align 4, !tbaa !7
  %94 = fmul float %92, %93
  %95 = fpext float %94 to double
  %96 = call i32 @ddiscard(double %95)
  %97 = load float, float* %5, align 4, !tbaa !7
  %98 = load float, float* %6, align 4, !tbaa !7
  %99 = fdiv float %97, %98
  %100 = fpext float %99 to double
  %101 = call i32 @ddiscard(double %100)
  %102 = load float, float* %5, align 4, !tbaa !7
  %103 = fsub float -0.000000e+00, %102
  %104 = fpext float %103 to double
  %105 = call i32 @ddiscard(double %104)
  %106 = load double, double* %7, align 8, !tbaa !9
  %107 = fptosi double %106 to i32
  %108 = call i32 @discard(i32 %107)
  %109 = load float, float* %5, align 4, !tbaa !7
  %110 = fptosi float %109 to i32
  %111 = call i32 @discard(i32 %110)
  %112 = load i32, i32* %1, align 4, !tbaa !3
  %113 = sitofp i32 %112 to double
  %114 = call i32 @ddiscard(double %113)
  %115 = load i32, i32* %1, align 4, !tbaa !3
  %116 = sitofp i32 %115 to float
  %117 = fpext float %116 to double
  %118 = call i32 @ddiscard(double %117)
  %119 = load double, double* %7, align 8, !tbaa !9
  %120 = fptrunc double %119 to float
  %121 = fpext float %120 to double
  %122 = call i32 @ddiscard(double %121)
  %123 = load double, double* %7, align 8, !tbaa !9
  %124 = load double, double* %8, align 8, !tbaa !9
  %125 = fcmp oeq double %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @discard(i32 %126)
  %128 = load double, double* %7, align 8, !tbaa !9
  %129 = load double, double* %8, align 8, !tbaa !9
  %130 = fcmp olt double %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @discard(i32 %131)
  %133 = load double, double* %7, align 8, !tbaa !9
  %134 = load double, double* %8, align 8, !tbaa !9
  %135 = fcmp ogt double %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @discard(i32 %136)
  %138 = load double, double* %7, align 8, !tbaa !9
  %139 = load double, double* %8, align 8, !tbaa !9
  %140 = fcmp une double %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @discard(i32 %141)
  %143 = load double, double* %7, align 8, !tbaa !9
  %144 = load double, double* %8, align 8, !tbaa !9
  %145 = fcmp ole double %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @discard(i32 %146)
  %148 = load double, double* %7, align 8, !tbaa !9
  %149 = load double, double* %8, align 8, !tbaa !9
  %150 = fcmp oge double %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @discard(i32 %151)
  %153 = load float, float* %5, align 4, !tbaa !7
  %154 = load float, float* %6, align 4, !tbaa !7
  %155 = fcmp oeq float %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @discard(i32 %156)
  %158 = load float, float* %5, align 4, !tbaa !7
  %159 = load float, float* %6, align 4, !tbaa !7
  %160 = fcmp olt float %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @discard(i32 %161)
  %163 = load float, float* %5, align 4, !tbaa !7
  %164 = load float, float* %6, align 4, !tbaa !7
  %165 = fcmp ogt float %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @discard(i32 %166)
  %168 = load float, float* %5, align 4, !tbaa !7
  %169 = load float, float* %6, align 4, !tbaa !7
  %170 = fcmp une float %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @discard(i32 %171)
  %173 = load float, float* %5, align 4, !tbaa !7
  %174 = load float, float* %6, align 4, !tbaa !7
  %175 = fcmp ole float %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @discard(i32 %176)
  %178 = load float, float* %5, align 4, !tbaa !7
  %179 = load float, float* %6, align 4, !tbaa !7
  %180 = fcmp oge float %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @discard(i32 %181)
  %183 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %183) #2
  %184 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %184) #2
  %185 = bitcast float* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %185) #2
  %186 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %186) #2
  %187 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %187) #2
  %188 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %188) #2
  %189 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %189) #2
  %190 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %190) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @discard(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @ddiscard(double) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8, !tbaa !9
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @foo() #0 {
  %1 = load i32, i32* @foo.idx, align 4, !tbaa !3
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @foo.idx, align 4, !tbaa !3
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @foo.table, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !3
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define double @dfoo() #0 {
  %1 = load i32, i32* @dfoo.idx, align 4, !tbaa !3
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @dfoo.idx, align 4, !tbaa !3
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x double], [4 x double]* @dfoo.table, i64 0, i64 %3
  %5 = load double, double* %4, align 8, !tbaa !9
  ret double %5
}

; Function Attrs: nounwind ssp uwtable
define void @memcpy() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @"\01start"() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @"\01_start"() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @"\01__start"() #0 {
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mainCRTStartup() #0 {
  ret void
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !5, i64 0}
