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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @main.departures to i8*), i64 32, i1 false)
  %12 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([8 x i32]* @main.arrivals to i8*), i64 32, i1 false)
  store i32 1439, i32* %10, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32* %7, i32* %8)
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 60
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %19

; <label>:19:                                     ; preds = %37, %0
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %40

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %23, %27
  %29 = call i32 @abs(i32 %28) #4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %4, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %22
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

; <label>:40:                                     ; preds = %19
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  call void @print_am_pm(i32 %45)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  call void @print_am_pm(i32 %50)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_am_pm(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %6, 60
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 60
  store i32 %9, i32* %4, align 4
  %10 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @print_am_pm.meridian, i32 0, i32 0), i64 3, i1 false)
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 12
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 80, i8* %14, align 1
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 12
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 12, i32* %3, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i32 0, i32 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %22, i32 %23, i8* %24)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
