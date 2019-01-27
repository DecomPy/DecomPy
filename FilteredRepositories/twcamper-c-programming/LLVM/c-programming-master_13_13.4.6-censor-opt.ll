; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.6-censor.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.6-censor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.s = private unnamed_addr constant [88 x i8] c"Philo (a.k.a. \22Mr. Fuffoo Pants\22) the foolish foodie found tofu profoundly fulfilling.\0A\00", align 16
@main.s1 = private unnamed_addr constant [59 x i8] c"Roderick Riddick loved the films of Ernst Lubibitch (sic).\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"Before:\0B%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"After: \0B%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dick\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"bitch\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [88 x i8], align 16
  %3 = alloca [59 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [88 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([88 x i8], [88 x i8]* @main.s, i32 0, i32 0), i64 88, i1 false)
  %5 = bitcast [59 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([59 x i8], [59 x i8]* @main.s1, i32 0, i32 0), i64 59, i1 false)
  %6 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %6)
  %8 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  call void @censor(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %9 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %9)
  %11 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %11)
  %13 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  call void @censor(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %14 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  call void @censor(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %15 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %15)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @censor(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %7, align 8
  br label %13

; <label>:13:                                     ; preds = %76, %2
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %79

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  br label %20

; <label>:20:                                     ; preds = %35, %18
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %27, %30
  br label %32

; <label>:32:                                     ; preds = %24, %20
  %33 = phi i1 [ false, %20 ], [ %31, %24 ]
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %32
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  br label %20

; <label>:40:                                     ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %61

; <label>:44:                                     ; preds = %40
  br label %45

; <label>:45:                                     ; preds = %49, %44
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %49, label %60

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  store i8 120, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %6, align 8
  br label %45

; <label>:60:                                     ; preds = %45
  br label %75

; <label>:61:                                     ; preds = %40
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %74

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load i8*, i8** %7, align 8
  %72 = sub i64 0, %70
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %7, align 8
  br label %74

; <label>:74:                                     ; preds = %65, %61
  br label %75

; <label>:75:                                     ; preds = %74, %60
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  br label %13

; <label>:79:                                     ; preds = %13
  ret void
}

declare i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
