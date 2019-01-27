; ModuleID = 'Repositories/R4stl1n-cAudio/Unfiltered/cAudio-master_DependenciesSource_libvorbis-1.3.2_src_tone.c'
source_filename = "Repositories/R4stl1n-cAudio/Unfiltered/cAudio-master_DependenciesSource_libvorbis-1.3.2_src_tone.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [69 x i8] c"tone <frequency_Hz>,[<amplitude>] [<frequency_Hz>,[<amplitude>]...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%g Hz, %g amp\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @usage() #0 {
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  call void @usage()
  br label %16

; <label>:16:                                     ; preds = %15, %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = alloca i8, i64 %20, align 16
  %22 = bitcast i8* %21 to double*
  store double* %22, double** %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = alloca i8, i64 %26, align 16
  %28 = bitcast i8* %27 to double*
  store double* %28, double** %9, align 8
  store i32 0, i32* %6, align 4
  br label %29

; <label>:29:                                     ; preds = %72, %16
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %87

; <label>:37:                                     ; preds = %29
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* %43, i32 44)
  store i8* %44, i8** %10, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call double @atof(i8* %50)
  %52 = load double*, double** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  store double %51, double* %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %67

; <label>:58:                                     ; preds = %37
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call double @atof(i8* %60)
  %62 = fmul double %61, 3.276700e+04
  %63 = load double*, double** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  store double %62, double* %66, align 8
  br label %72

; <label>:67:                                     ; preds = %37
  %68 = load double*, double** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  store double 3.276700e+04, double* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %67, %58
  %73 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %74 = load double*, double** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load double*, double** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %78, double %83)
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %29

; <label>:87:                                     ; preds = %29
  store i32 0, i32* %6, align 4
  br label %88

; <label>:88:                                     ; preds = %159, %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 441000
  br i1 %90, label %91, label %162

; <label>:91:                                     ; preds = %88
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %7, align 4
  br label %92

; <label>:92:                                     ; preds = %121, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %124

; <label>:97:                                     ; preds = %92
  %98 = load double*, double** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sitofp i32 %103 to float
  %105 = fdiv float %104, 4.410000e+04
  %106 = fpext float %105 to double
  %107 = load double*, double** %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fmul double %106, %111
  %113 = fmul double %112, 2.000000e+00
  %114 = fmul double %113, 0x400921FB54442D18
  %115 = call double @llvm.sin.f64(double %114)
  %116 = fmul double %102, %115
  %117 = load float, float* %11, align 4
  %118 = fpext float %117 to double
  %119 = fadd double %118, %116
  %120 = fptrunc double %119 to float
  store float %120, float* %11, align 4
  br label %121

; <label>:121:                                    ; preds = %97
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %92

; <label>:124:                                    ; preds = %92
  %125 = load float, float* %11, align 4
  %126 = fpext float %125 to double
  %127 = call double @llvm.rint.f64(double %126)
  %128 = fptosi double %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sitofp i32 %129 to float
  %131 = fcmp ogt float %130, 3.276700e+04
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %124
  store i32 32767, i32* %12, align 4
  br label %133

; <label>:133:                                    ; preds = %132, %124
  %134 = load i32, i32* %12, align 4
  %135 = sitofp i32 %134 to float
  %136 = fcmp olt float %135, -3.276800e+04
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %133
  store i32 -32768, i32* %12, align 4
  br label %138

; <label>:138:                                    ; preds = %137, %133
  %139 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = sext i8 %142 to i32
  %144 = load i32, i32* %12, align 4
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 255
  %147 = trunc i32 %146 to i8
  %148 = sext i8 %147 to i32
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = sext i8 %151 to i32
  %153 = load i32, i32* %12, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = sext i8 %156 to i32
  %158 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %143, i32 %148, i32 %152, i32 %157)
  br label %159

; <label>:159:                                    ; preds = %138
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %88

; <label>:162:                                    ; preds = %88
  ret i32 0
}

declare i8* @strchr(i8*, i32) #1

declare double @atof(i8*) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.rint.f64(double) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
