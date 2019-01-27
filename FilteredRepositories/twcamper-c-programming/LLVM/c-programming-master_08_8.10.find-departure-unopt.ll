; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.10.find-departure.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.10.find-departure.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.departures = private unnamed_addr constant [8 x i32] [i32 480, i32 583, i32 679, i32 767, i32 840, i32 945, i32 1140, i32 1305], align 16
@main.arrivals = private unnamed_addr constant [8 x i32] [i32 616, i32 712, i32 811, i32 900, i32 968, i32 1075, i32 1280, i32 1438], align 16
@.str = private unnamed_addr constant [33 x i8] c"Request departure time: (24hr): \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%2d:%2d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Closest departure time is \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c", arriving at \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@print_am_pm.meridian = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%d:%.2d %s\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4
  %12 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([8 x i32]* @main.departures to i8*), i64 32, i1 false)
  %13 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4
  %14 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([8 x i32]* @main.arrivals to i8*), i64 32, i1 false)
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4
  %19 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4
  %21 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  store i32 1439, i32* %10, align 4, !tbaa !3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32* %7, i32* %8)
  %24 = load i32, i32* %7, align 4, !tbaa !3
  %25 = mul nsw i32 %24, 60
  %26 = load i32, i32* %8, align 4, !tbaa !3
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %46, %0
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %49

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %9, align 4, !tbaa !3
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %37 = sub nsw i32 %32, %36
  %38 = call i32 @abs(i32 %37) #5
  store i32 %38, i32* %5, align 4, !tbaa !3
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = load i32, i32* %10, align 4, !tbaa !3
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %31
  %43 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %43, i32* %10, align 4, !tbaa !3
  %44 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %44, i32* %4, align 4, !tbaa !3
  br label %45

; <label>:45:                                     ; preds = %42, %31
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4, !tbaa !3
  br label %28

; <label>:49:                                     ; preds = %28
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %51 = load i32, i32* %4, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !3
  call void @print_am_pm(i32 %54)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %56 = load i32, i32* %4, align 4, !tbaa !3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !3
  call void @print_am_pm(i32 %59)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %61 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4
  %62 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4
  %63 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4
  %64 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4
  %65 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4
  %66 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4
  %67 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4
  %68 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %68) #4
  %69 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %69) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind ssp uwtable
define void @print_am_pm(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store i32 %0, i32* %2, align 4, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = sdiv i32 %7, 60
  store i32 %8, i32* %3, align 4, !tbaa !3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = srem i32 %10, 60
  store i32 %11, i32* %4, align 4, !tbaa !3
  %12 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %12) #4
  %13 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @print_am_pm.meridian, i32 0, i32 0), i64 3, i1 false)
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = icmp sge i32 %14, 12
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 80, i8* %17, align 1, !tbaa !7
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = sub nsw i32 %18, 12
  store i32 %19, i32* %3, align 4, !tbaa !3
  br label %20

; <label>:20:                                     ; preds = %16, %1
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  store i32 12, i32* %3, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 0
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %25, i32 %26, i8* %27)
  %29 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %29) #4
  %30 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4
  %31 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
