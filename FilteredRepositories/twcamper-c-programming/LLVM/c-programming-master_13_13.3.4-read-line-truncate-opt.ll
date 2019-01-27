; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-truncate.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-truncate.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"Enter a string:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+---------\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"String 1 (%d):\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"String 2 (%d):\0A%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [21 x i8], align 16
  %3 = alloca [21 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %5 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %6 = call i32 @read_line(i8* %5, i32 20)
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %6, i8* %7)
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %10 = call i32 @read_line(i8* %9, i32 20)
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %10, i8* %11)
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_header(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %10, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* %8)
  br label %10

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %4

; <label>:13:                                     ; preds = %4
  %14 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @read_line(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %2
  %8 = call i32 @getchar()
  store i32 %8, i32* %5, align 4
  %9 = call i32 @isspace(i32 %8) #3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  br label %7

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 %14, i8* %19, align 1
  br label %20

; <label>:20:                                     ; preds = %29, %12
  %21 = call i32 @getchar()
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

; <label>:27:                                     ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %31, i8* %36, align 1
  br label %20

; <label>:37:                                     ; preds = %27
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @getchar() #1

declare i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
