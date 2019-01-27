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

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.employee], align 16
  %3 = alloca %struct.employee, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [3 x %struct.employee]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* %6) #3
  %7 = bitcast %struct.employee* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %35, %0
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.employee, %struct.employee* %20, i32 0, i32 0
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [30 x i8]* %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.employee, %struct.employee* %26, i32 0, i32 1
  %28 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), [5 x i8]* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.employee, %struct.employee* %32, i32 0, i32 2
  %34 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), float* %33)
  br label %35

; <label>:35:                                     ; preds = %13
  %36 = load i32, i32* %4, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:38:                                     ; preds = %10
  store i32 0, i32* %5, align 4, !tbaa !3
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %40
  %42 = bitcast %struct.employee* %3 to i8*
  %43 = bitcast %struct.employee* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %43, i64 40, i1 false), !tbaa.struct !7
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %44

; <label>:44:                                     ; preds = %64, %38
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %67

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %4, align 4, !tbaa !3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.employee, %struct.employee* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4, !tbaa !11
  %53 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 2
  %54 = load float, float* %53, align 4, !tbaa !11
  %55 = fcmp ogt float %52, %54
  br i1 %55, label %56, label %63

; <label>:56:                                     ; preds = %47
  %57 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %57, i32* %5, align 4, !tbaa !3
  %58 = load i32, i32* %5, align 4, !tbaa !3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x %struct.employee], [3 x %struct.employee]* %2, i64 0, i64 %59
  %61 = bitcast %struct.employee* %3 to i8*
  %62 = bitcast %struct.employee* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 8 %62, i64 40, i1 false), !tbaa.struct !7
  br label %63

; <label>:63:                                     ; preds = %56, %47
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %4, align 4, !tbaa !3
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4, !tbaa !3
  br label %44

; <label>:67:                                     ; preds = %44
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  %69 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 0
  %70 = getelementptr inbounds [30 x i8], [30 x i8]* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 1
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.employee, %struct.employee* %3, i32 0, i32 2
  %74 = load float, float* %73, align 4, !tbaa !11
  %75 = fpext float %74 to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* %70, i8* %72, double %75)
  %77 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  %78 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3
  %79 = bitcast %struct.employee* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %79) #3
  %80 = bitcast [3 x %struct.employee]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 120, i8* %80) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!7 = !{i64 0, i64 30, !8, i64 30, i64 5, !8, i64 36, i64 4, !9}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !10, i64 36}
!12 = !{!"employee", !5, i64 0, !5, i64 30, !10, i64 36}
