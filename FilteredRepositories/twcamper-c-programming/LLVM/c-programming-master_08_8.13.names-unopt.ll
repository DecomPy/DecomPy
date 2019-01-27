; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.13.names.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.13.names.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [30 x i8] c"Enter a first and last name: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%20s %20s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"You entered the name: %s, %c.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [20 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %4) #3
  %5 = bitcast [20 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %5) #3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), [20 x i8]* %2, [20 x i8]* %3)
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %10 = load i8, i8* %9, align 16, !tbaa !3
  %11 = sext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* %8, i32 %11)
  %13 = bitcast [20 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %13) #3
  %14 = bitcast [20 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %14) #3
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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
