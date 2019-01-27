; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_最大公约数和最小公倍数_gcd.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E6\9C\80\E5\A4\A7\E5\85\AC\E7\BA\A6\E6\95\B0\E5\92\8C\E6\9C\80\E5\B0\8F\E5\85\AC\E5\80\8D\E6\95\B0_gcd.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\E6\9C\80\E5\A4\A7\E5\85\AC\E7\BA\A6\E6\95\B0=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\E6\9C\80\E5\B0\8F\E5\85\AC\E5\80\8D\E6\95\B0=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32*, i32** %3, align 8, !tbaa !3
  %8 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %8, i32* %5, align 4, !tbaa !7
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  store i32 %10, i32* %11, align 4, !tbaa !7
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %12, i32* %13, align 4, !tbaa !7
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %4, align 4, !tbaa !7
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  call void @swap(i32* %3, i32* %4)
  br label %11

; <label>:11:                                     ; preds = %10, %2
  br label %12

; <label>:12:                                     ; preds = %17, %11
  %13 = load i32, i32* %3, align 4, !tbaa !7
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = srem i32 %13, %14
  store i32 %15, i32* %5, align 4, !tbaa !7
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4, !tbaa !7
  store i32 %18, i32* %3, align 4, !tbaa !7
  %19 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %19, i32* %4, align 4, !tbaa !7
  br label %12

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %4, align 4, !tbaa !7
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  br label %14

; <label>:14:                                     ; preds = %17, %2
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* %6, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = call i32 @gcd(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %9, align 4, !tbaa !7
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  br label %14

; <label>:30:                                     ; preds = %14
  %31 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  %32 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  ret i32 0
}

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
