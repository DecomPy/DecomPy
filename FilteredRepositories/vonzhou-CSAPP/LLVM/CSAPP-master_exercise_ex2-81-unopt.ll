; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-81.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-81.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [38 x i8] c"(x > INT_MIN) == (-x < -INT_MIN): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"((x + y) << 5) + x - y == 31 * y + 33 * x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"~x + ~y == ~(x + y): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"(int)(ux - uy) == -(y - x): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"((x >> 1) << 1) <= x: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i64 @random()
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4, !tbaa !3
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = call i64 @random()
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4, !tbaa !3
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %13, i32* %4, align 4, !tbaa !3
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %15, i32* %5, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = icmp sgt i32 %16, -2147483648
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = sub nsw i32 0, %19
  %21 = icmp slt i32 %20, -2147483648
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %24)
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = add nsw i32 %26, %27
  %29 = shl i32 %28, 5
  %30 = load i32, i32* %2, align 4, !tbaa !3
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %3, align 4, !tbaa !3
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = mul nsw i32 31, %34
  %36 = load i32, i32* %2, align 4, !tbaa !3
  %37 = mul nsw i32 33, %36
  %38 = add nsw i32 %35, %37
  %39 = icmp eq i32 %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 %40)
  %42 = load i32, i32* %2, align 4, !tbaa !3
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4, !tbaa !3
  %45 = xor i32 %44, -1
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* %2, align 4, !tbaa !3
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = add nsw i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = icmp eq i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %52)
  %54 = load i32, i32* %4, align 4, !tbaa !3
  %55 = load i32, i32* %5, align 4, !tbaa !3
  %56 = sub i32 %54, %55
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = load i32, i32* %2, align 4, !tbaa !3
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %56, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %62)
  %64 = load i32, i32* %2, align 4, !tbaa !3
  %65 = ashr i32 %64, 1
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %2, align 4, !tbaa !3
  %68 = icmp sle i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i32 %69)
  %71 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  %72 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  %73 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3
  %74 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i64 @random() #2

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
