; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_swapUsingXOR.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_swapUsingXOR.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"Enter x: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Enter y: \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"After swap:\0Ax = %d\0Ay = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %3)
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = xor i32 %10, %11
  store i32 %12, i32* %2, align 4, !tbaa !3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = xor i32 %13, %14
  store i32 %15, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = xor i32 %16, %17
  store i32 %18, i32* %2, align 4, !tbaa !3
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %19, i32 %20)
  %22 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
