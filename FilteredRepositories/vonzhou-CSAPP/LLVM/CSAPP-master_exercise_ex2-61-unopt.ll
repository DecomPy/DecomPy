; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-61.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-61.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [22 x i8] c"x=111...111 return 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"!(0x%X+1): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"wrong\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"x=000...000 return 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"!0x%X: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"x=_1111 1111_else return 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"(0x%X & (0xFF << ((sizeof(int)-1) << 3))) + (1 << ((sizeof(int)-1) << 3)): %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"x=else..._0000 0000_ return 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"!(0x%X & 0xFF): %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @ex2_61() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 32, i32* %2, align 4, !tbaa !3
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4, !tbaa !3
  %6 = load i32, i32* %1, align 4, !tbaa !3
  %7 = load i32, i32* %1, align 4, !tbaa !3
  %8 = add nsw i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %6, i8* %12)
  store i32 -2, i32* %1, align 4, !tbaa !3
  %14 = load i32, i32* %1, align 4, !tbaa !3
  %15 = load i32, i32* %1, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %14, i8* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %1, align 4, !tbaa !3
  %23 = load i32, i32* %1, align 4, !tbaa !3
  %24 = load i32, i32* %1, align 4, !tbaa !3
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %23, i8* %28)
  store i32 1, i32* %1, align 4, !tbaa !3
  %30 = load i32, i32* %1, align 4, !tbaa !3
  %31 = load i32, i32* %1, align 4, !tbaa !3
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %30, i8* %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  store i32 -15584170, i32* %1, align 4, !tbaa !3
  %38 = load i32, i32* %1, align 4, !tbaa !3
  %39 = load i32, i32* %1, align 4, !tbaa !3
  %40 = load i32, i32* %2, align 4, !tbaa !3
  %41 = sub nsw i32 %40, 8
  %42 = shl i32 255, %41
  %43 = and i32 %39, %42
  %44 = load i32, i32* %2, align 4, !tbaa !3
  %45 = sub nsw i32 %44, 8
  %46 = shl i32 1, %45
  %47 = add nsw i32 %43, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0), i32 %38, i8* %51)
  store i32 -268435457, i32* %1, align 4, !tbaa !3
  %53 = load i32, i32* %1, align 4, !tbaa !3
  %54 = load i32, i32* %1, align 4, !tbaa !3
  %55 = load i32, i32* %2, align 4, !tbaa !3
  %56 = sub nsw i32 %55, 8
  %57 = shl i32 255, %56
  %58 = and i32 %54, %57
  %59 = load i32, i32* %2, align 4, !tbaa !3
  %60 = sub nsw i32 %59, 8
  %61 = shl i32 1, %60
  %62 = add nsw i32 %58, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0), i32 %53, i8* %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 305419776, i32* %1, align 4, !tbaa !3
  %69 = load i32, i32* %1, align 4, !tbaa !3
  %70 = load i32, i32* %1, align 4, !tbaa !3
  %71 = and i32 %70, 255
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %69, i8* %75)
  store i32 305419777, i32* %1, align 4, !tbaa !3
  %77 = load i32, i32* %1, align 4, !tbaa !3
  %78 = load i32, i32* %1, align 4, !tbaa !3
  %79 = and i32 %78, 255
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %77, i8* %83)
  %85 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  %86 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

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
