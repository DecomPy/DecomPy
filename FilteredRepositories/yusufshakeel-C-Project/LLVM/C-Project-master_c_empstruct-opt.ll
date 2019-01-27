; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_empstruct.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_empstruct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.employee = type { [30 x i8], [5 x i8], float }

@.str = private unnamed_addr constant [23 x i8] c"\0AEnter emp #%d detail\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Name: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Post: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Salary: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\0AHighest Earner Detail\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Name: %s\0APost: %s\0ASalary: %.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.employee], align 16
  %3 = alloca %struct.employee, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %31, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %34

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.employee, %struct.employee* %16, i32 0, i32 0
  %18 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [30 x i8]* %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.employee, %struct.employee* %22, i32 0, i32 1
  %24 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [5 x i8]* %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.employee, %struct.employee* %28, i32 0, i32 2
  %30 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), float* %29)
  br label %31

; <label>:31:                                     ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

; <label>:34:                                     ; preds = %6
  store i32 0, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %36
  %38 = bitcast %struct.employee* %3 to i8*
  %39 = bitcast %struct.employee* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %39, i64 40, i1 false)
  store i32 1, i32* %4, align 4
  br label %40

; <label>:40:                                     ; preds = %60, %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %63

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.employee, %struct.employee* %46, i32 0, i32 2
  %48 = load float, float* %47, align 4
  %49 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = fcmp ogt float %48, %50
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %43
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %55
  %57 = bitcast %struct.employee* %3 to i8*
  %58 = bitcast %struct.employee* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 8 %58, i64 40, i1 false)
  br label %59

; <label>:59:                                     ; preds = %52, %43
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %40

; <label>:63:                                     ; preds = %40
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  %65 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 0
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 1
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 2
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* %66, i8* %68, double %71)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
