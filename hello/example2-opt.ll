; ModuleID = 'example2.c'
source_filename = "example2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%dM\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%dK\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%dB\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 @size(%struct.__dirstream* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call void @printDirectory(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @size(%struct.__dirstream*, i8*) #0 {
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca [256 x %struct.dirent*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8
  %14 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i32 0, i32 0
  %15 = call i32 @sortDirEntries(%struct.__dirstream* %13, %struct.dirent** %14)
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

; <label>:16:                                     ; preds = %85, %2
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %88

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %22
  %24 = load %struct.dirent*, %struct.dirent** %23, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 2
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %59

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strcpy(i8* %30, i8* %31) #4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %34 = call i8* @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %37
  %39 = load %struct.dirent*, %struct.dirent** %38, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 4
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i32 0, i32 0
  %42 = call i8* @strcat(i8* %35, i8* %41) #4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %44 = call i32 @stat(i8* %43, %struct.stat* %8) #4
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %52 = call %struct.__dirstream* @opendir(i8* %51)
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %54 = call i32 @size(%struct.__dirstream* %52, i8* %53)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  call void @printDirectory(i8* %57, i32 %58)
  br label %85

; <label>:59:                                     ; preds = %20
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @strcpy(i8* %60, i8* %61) #4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %64 = call i8* @strcat(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %67
  %69 = load %struct.dirent*, %struct.dirent** %68, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %70, i32 0, i32 0
  %72 = call i8* @strcat(i8* %65, i8* %71) #4
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %74 = call i32 @stat(i8* %73, %struct.stat* %8) #4
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  call void @printDirectory(i8* %81, i32 %84)
  br label %85

; <label>:85:                                     ; preds = %59, %29
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %16

; <label>:88:                                     ; preds = %16
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare %struct.__dirstream* @opendir(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @printDirectory(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1048576
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 1048576
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %11, i8* %12)
  br label %29

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1024
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 1024
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %20, i8* %21)
  br label %28

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %25, i8* %26)
  br label %28

; <label>:28:                                     ; preds = %23, %17
  br label %29

; <label>:29:                                     ; preds = %28, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sortDirEntries(%struct.__dirstream*, %struct.dirent**) #0 {
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca %struct.dirent**, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %3, align 8
  store %struct.dirent** %1, %struct.dirent*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %96, %2
  %12 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8
  %13 = call %struct.dirent* @readdir(%struct.__dirstream* %12)
  store %struct.dirent* %13, %struct.dirent** %5, align 8
  %14 = icmp ne %struct.dirent* %13, null
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 256
  br label %18

; <label>:18:                                     ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %20, label %97

; <label>:20:                                     ; preds = %18
  %21 = load %struct.dirent*, %struct.dirent** %5, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i32 0, i32 0
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %96

; <label>:26:                                     ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %5, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 4
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i32 0, i32 0
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %96

; <label>:32:                                     ; preds = %26
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %58, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

; <label>:40:                                     ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %42, label %62

; <label>:42:                                     ; preds = %40
  %43 = load %struct.dirent*, %struct.dirent** %5, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %44, i32 0, i32 0
  %46 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dirent*, %struct.dirent** %46, i64 %48
  %50 = load %struct.dirent*, %struct.dirent** %49, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %51, i32 0, i32 0
  %53 = call i32 @strcasecmp(i8* %45, i8* %52) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

; <label>:58:                                     ; preds = %55, %42
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %33

; <label>:62:                                     ; preds = %40
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %8, align 4
  br label %67

; <label>:67:                                     ; preds = %65, %62
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  br label %70

; <label>:70:                                     ; preds = %85, %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %88

; <label>:74:                                     ; preds = %70
  %75 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dirent*, %struct.dirent** %75, i64 %78
  %80 = load %struct.dirent*, %struct.dirent** %79, align 8
  %81 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dirent*, %struct.dirent** %81, i64 %83
  store %struct.dirent* %80, %struct.dirent** %84, align 8
  br label %85

; <label>:85:                                     ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %10, align 4
  br label %70

; <label>:88:                                     ; preds = %70
  %89 = load %struct.dirent*, %struct.dirent** %5, align 8
  %90 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dirent*, %struct.dirent** %90, i64 %92
  store %struct.dirent* %89, %struct.dirent** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

; <label>:96:                                     ; preds = %88, %26, %20
  br label %11

; <label>:97:                                     ; preds = %18
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
