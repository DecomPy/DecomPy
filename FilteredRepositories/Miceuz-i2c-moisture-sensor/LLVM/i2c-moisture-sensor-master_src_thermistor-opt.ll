; ModuleID = 'Repositories/Miceuz-i2c-moisture-sensor/Unfiltered/i2c-moisture-sensor-master_src_thermistor.c'
source_filename = "Repositories/Miceuz-i2c-moisture-sensor/Unfiltered/i2c-moisture-sensor-master_src_thermistor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.temp_point = type { i32, i32 }

@thermistorPoints = internal global [22 x %struct.temp_point] [%struct.temp_point { i32 850, i32 129 }, %struct.temp_point { i32 800, i32 146 }, %struct.temp_point { i32 750, i32 165 }, %struct.temp_point { i32 700, i32 186 }, %struct.temp_point { i32 650, i32 210 }, %struct.temp_point { i32 600, i32 236 }, %struct.temp_point { i32 550, i32 267 }, %struct.temp_point { i32 500, i32 300 }, %struct.temp_point { i32 450, i32 337 }, %struct.temp_point { i32 400, i32 376 }, %struct.temp_point { i32 350, i32 419 }, %struct.temp_point { i32 300, i32 464 }, %struct.temp_point { i32 200, i32 559 }, %struct.temp_point { i32 250, i32 511 }, %struct.temp_point { i32 150, i32 608 }, %struct.temp_point { i32 100, i32 656 }, %struct.temp_point { i32 50, i32 703 }, %struct.temp_point { i32 0, i32 748 }, %struct.temp_point { i32 -50, i32 789 }, %struct.temp_point { i32 -100, i32 828 }, %struct.temp_point { i32 -150, i32 862 }, %struct.temp_point { i32 -200, i32 892 }], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @thermistorLsbToTemperature(i32) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds ([22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 21, i32 1), align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* getelementptr inbounds ([22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 21, i32 0), align 8
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  br label %23

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds ([22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 0, i32 1), align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* getelementptr inbounds ([22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 0, i32 0), align 16
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %2, align 8
  br label %23

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call zeroext i8 @searchLsb(i32 %19)
  %21 = call i32 @interpolateTemperature(i32 %18, i8 zeroext %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  br label %23

; <label>:23:                                     ; preds = %17, %14, %7
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @interpolateTemperature(i32, i8 zeroext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.temp_point, %struct.temp_point* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.temp_point, %struct.temp_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.temp_point, %struct.temp_point* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.temp_point, %struct.temp_point* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @interpolate(i32 %5, i32 %12, i32 %17, i32 %24, i32 %29)
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i8 @searchLsb(i32) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 0, i8* %4, align 1
  br label %5

; <label>:5:                                      ; preds = %20, %1
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 22
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %5
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [22 x %struct.temp_point], [22 x %struct.temp_point]* @thermistorPoints, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.temp_point, %struct.temp_point* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %9
  %18 = load i8, i8* %4, align 1
  store i8 %18, i8* %2, align 1
  br label %24

; <label>:19:                                     ; preds = %9
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i8, i8* %4, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %4, align 1
  br label %5

; <label>:23:                                     ; preds = %5
  store i8 21, i8* %2, align 1
  br label %24

; <label>:24:                                     ; preds = %23, %17
  %25 = load i8, i8* %2, align 1
  ret i8 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @interpolate(i32, i32, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %14, %15
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
