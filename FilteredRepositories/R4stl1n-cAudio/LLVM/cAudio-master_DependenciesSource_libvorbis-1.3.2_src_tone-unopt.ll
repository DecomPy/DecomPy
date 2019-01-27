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

; Function Attrs: nounwind ssp uwtable
define void @usage() #0 {
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind ssp uwtable
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
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  %15 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %16 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #6
  %17 = load i32, i32* %4, align 4, !tbaa !7
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %2
  call void @usage()
  br label %20

; <label>:20:                                     ; preds = %19, %2
  %21 = load i32, i32* %4, align 4, !tbaa !7
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = alloca i8, i64 %24, align 16
  %26 = bitcast i8* %25 to double*
  store double* %26, double** %8, align 8, !tbaa !3
  %27 = load i32, i32* %4, align 4, !tbaa !7
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = alloca i8, i64 %30, align 16
  %32 = bitcast i8* %31 to double*
  store double* %32, double** %9, align 8, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %77, %20
  %34 = load i8**, i8*** %5, align 8, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8, !tbaa !3
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %93

; <label>:41:                                     ; preds = %33
  %42 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #6
  %43 = load i8**, i8*** %5, align 8, !tbaa !3
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8, !tbaa !3
  %49 = call i8* @strchr(i8* %48, i32 44)
  store i8* %49, i8** %10, align 8, !tbaa !3
  %50 = load i8**, i8*** %5, align 8, !tbaa !3
  %51 = load i32, i32* %6, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8, !tbaa !3
  %56 = call double @atof(i8* %55)
  %57 = load double*, double** %8, align 8, !tbaa !3
  %58 = load i32, i32* %6, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %56, double* %60, align 8, !tbaa !9
  %61 = load i8*, i8** %10, align 8, !tbaa !3
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %41
  %64 = load i8*, i8** %10, align 8, !tbaa !3
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call double @atof(i8* %65)
  %67 = fmul double %66, 3.276700e+04
  %68 = load double*, double** %9, align 8, !tbaa !3
  %69 = load i32, i32* %6, align 4, !tbaa !7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  store double %67, double* %71, align 8, !tbaa !9
  br label %77

; <label>:72:                                     ; preds = %41
  %73 = load double*, double** %9, align 8, !tbaa !3
  %74 = load i32, i32* %6, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  store double 3.276700e+04, double* %76, align 8, !tbaa !9
  br label %77

; <label>:77:                                     ; preds = %72, %63
  %78 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %79 = load double*, double** %8, align 8, !tbaa !3
  %80 = load i32, i32* %6, align 4, !tbaa !7
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !9
  %84 = load double*, double** %9, align 8, !tbaa !3
  %85 = load i32, i32* %6, align 4, !tbaa !7
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8, !tbaa !9
  %89 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %83, double %88)
  %90 = load i32, i32* %6, align 4, !tbaa !7
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4, !tbaa !7
  %92 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #6
  br label %33

; <label>:93:                                     ; preds = %33
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %94

; <label>:94:                                     ; preds = %169, %93
  %95 = load i32, i32* %6, align 4, !tbaa !7
  %96 = icmp slt i32 %95, 441000
  br i1 %96, label %97, label %172

; <label>:97:                                     ; preds = %94
  %98 = bitcast float* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %98) #6
  store float 0.000000e+00, float* %11, align 4, !tbaa !11
  %99 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99) #6
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %100

; <label>:100:                                    ; preds = %129, %97
  %101 = load i32, i32* %7, align 4, !tbaa !7
  %102 = load i32, i32* %4, align 4, !tbaa !7
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %132

; <label>:105:                                    ; preds = %100
  %106 = load double*, double** %9, align 8, !tbaa !3
  %107 = load i32, i32* %7, align 4, !tbaa !7
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8, !tbaa !9
  %111 = load i32, i32* %6, align 4, !tbaa !7
  %112 = sitofp i32 %111 to float
  %113 = fdiv float %112, 4.410000e+04
  %114 = fpext float %113 to double
  %115 = load double*, double** %8, align 8, !tbaa !3
  %116 = load i32, i32* %7, align 4, !tbaa !7
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8, !tbaa !9
  %120 = fmul double %114, %119
  %121 = fmul double %120, 2.000000e+00
  %122 = fmul double %121, 0x400921FB54442D18
  %123 = call double @llvm.sin.f64(double %122)
  %124 = fmul double %110, %123
  %125 = load float, float* %11, align 4, !tbaa !11
  %126 = fpext float %125 to double
  %127 = fadd double %126, %124
  %128 = fptrunc double %127 to float
  store float %128, float* %11, align 4, !tbaa !11
  br label %129

; <label>:129:                                    ; preds = %105
  %130 = load i32, i32* %7, align 4, !tbaa !7
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4, !tbaa !7
  br label %100

; <label>:132:                                    ; preds = %100
  %133 = load float, float* %11, align 4, !tbaa !11
  %134 = fpext float %133 to double
  %135 = call double @llvm.rint.f64(double %134)
  %136 = fptosi double %135 to i32
  store i32 %136, i32* %12, align 4, !tbaa !7
  %137 = load i32, i32* %12, align 4, !tbaa !7
  %138 = sitofp i32 %137 to float
  %139 = fcmp ogt float %138, 3.276700e+04
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %132
  store i32 32767, i32* %12, align 4, !tbaa !7
  br label %141

; <label>:141:                                    ; preds = %140, %132
  %142 = load i32, i32* %12, align 4, !tbaa !7
  %143 = sitofp i32 %142 to float
  %144 = fcmp olt float %143, -3.276800e+04
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %141
  store i32 -32768, i32* %12, align 4, !tbaa !7
  br label %146

; <label>:146:                                    ; preds = %145, %141
  %147 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !3
  %148 = load i32, i32* %12, align 4, !tbaa !7
  %149 = and i32 %148, 255
  %150 = trunc i32 %149 to i8
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* %12, align 4, !tbaa !7
  %153 = ashr i32 %152, 8
  %154 = and i32 %153, 255
  %155 = trunc i32 %154 to i8
  %156 = sext i8 %155 to i32
  %157 = load i32, i32* %12, align 4, !tbaa !7
  %158 = and i32 %157, 255
  %159 = trunc i32 %158 to i8
  %160 = sext i8 %159 to i32
  %161 = load i32, i32* %12, align 4, !tbaa !7
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = trunc i32 %163 to i8
  %165 = sext i8 %164 to i32
  %166 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %151, i32 %156, i32 %160, i32 %165)
  %167 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %167) #6
  %168 = bitcast float* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %168) #6
  br label %169

; <label>:169:                                    ; preds = %146
  %170 = load i32, i32* %6, align 4, !tbaa !7
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4, !tbaa !7
  br label %94

; <label>:172:                                    ; preds = %94
  %173 = bitcast double** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %173) #6
  %174 = bitcast double** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %174) #6
  %175 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %175) #6
  %176 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %176) #6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i8* @strchr(i8*, i32) #1

declare double @atof(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double) #4

; Function Attrs: nounwind readnone speculatable
declare double @llvm.rint.f64(double) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}
