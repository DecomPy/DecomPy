; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.1.currency-denominations.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.1.currency-denominations.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [24 x i8] c"Enter a dollar amount: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"$20 bills: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"$10 bills: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"$5 bills: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"$1 bills: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %14 = load i32, i32* %2, align 4, !tbaa !3
  call void @pay_amount(i32 %14, i32* %3, i32* %4, i32* %5, i32* %6)
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %17)
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %19)
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %21)
  %23 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  %24 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  %25 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  %26 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @pay_amount(i32, i32*, i32*, i32*, i32*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !7
  store i32* %2, i32** %8, align 8, !tbaa !7
  store i32* %3, i32** %9, align 8, !tbaa !7
  store i32* %4, i32** %10, align 8, !tbaa !7
  %12 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %6, align 4, !tbaa !3
  %14 = sdiv i32 %13, 20
  %15 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 %14, i32* %15, align 4, !tbaa !3
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = srem i32 %16, 20
  store i32 %17, i32* %11, align 4, !tbaa !3
  %18 = load i32, i32* %11, align 4, !tbaa !3
  %19 = sdiv i32 %18, 10
  %20 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %19, i32* %20, align 4, !tbaa !3
  %21 = load i32, i32* %11, align 4, !tbaa !3
  %22 = srem i32 %21, 10
  store i32 %22, i32* %11, align 4, !tbaa !3
  %23 = load i32, i32* %11, align 4, !tbaa !3
  %24 = sdiv i32 %23, 5
  %25 = load i32*, i32** %9, align 8, !tbaa !7
  store i32 %24, i32* %25, align 4, !tbaa !3
  %26 = load i32, i32* %11, align 4, !tbaa !3
  %27 = srem i32 %26, 5
  store i32 %27, i32* %11, align 4, !tbaa !3
  %28 = load i32, i32* %11, align 4, !tbaa !3
  %29 = load i32*, i32** %10, align 8, !tbaa !7
  store i32 %28, i32* %29, align 4, !tbaa !3
  %30 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  ret void
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
