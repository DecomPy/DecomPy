; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex17_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex17_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %3) #3
  %4 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  store i32 1, i32* %4, align 16, !tbaa !3
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 1
  store i32 -1, i32* %5, align 4, !tbaa !3
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  store i32 14, i32* %6, align 8, !tbaa !3
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 3
  store i32 4, i32* %7, align 4, !tbaa !3
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 4
  store i32 3, i32* %8, align 16, !tbaa !3
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  %10 = call i32 @ft_max(i32* %9, i32 5)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %10)
  %12 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %12) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @ft_max(i32*, i32) #2

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
