; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_sizeofptr.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_sizeofptr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Type\09\09\09Taille\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"char *\09\09\09%ld octet(s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unsigned char *\09\09%ld octet(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"short *\09\09\09%ld octet(s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"unsigned short *\09%ld octet(s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"int *\09\09\09%ld octet(s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"unsigned int *\09\09%ld octet(s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"long *\09\09\09%ld octet(s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unsigned long *\09\09%ld octet(s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"long long *\09\09%ld octet(s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"unsigned long long *\09%ld octet(s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"float *\09\09\09%ld octet(s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"double *\09\09%ld octet(s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"long double *\09\09%ld octet(s)\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i64 8)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i64 8)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 8)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i64 8)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i64 8)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i64 8)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i64 8)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i64 8)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i64 8)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i64 8)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i64 8)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 8)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!8 = !{!"any pointer", !5, i64 0}
