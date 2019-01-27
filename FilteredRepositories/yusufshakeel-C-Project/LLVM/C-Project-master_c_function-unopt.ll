; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_function.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_function.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter value of n: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"60 percent of %d = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Square of %d = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Cube of %d = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %6 = load i32, i32* %2, align 4, !tbaa !3
  call void @square(i32 %6)
  %7 = load i32, i32* %2, align 4, !tbaa !3
  call void @cube(i32 %7)
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = call float @percent60(i32 %9)
  %11 = fpext float %10 to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %8, double %11)
  %13 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @square(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4, !tbaa !3
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = mul nsw i32 %4, %5
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %3, i32 %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cube(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4, !tbaa !3
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = mul nsw i32 %4, %5
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = mul nsw i32 %6, %7
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %3, i32 %8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define float @percent60(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = sitofp i32 %3 to double
  %5 = fmul double 6.000000e-01, %4
  %6 = fptrunc double %5 to float
  ret float %6
}

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
