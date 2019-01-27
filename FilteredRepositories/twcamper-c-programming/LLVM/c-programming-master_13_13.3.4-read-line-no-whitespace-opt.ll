; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-no-whitespace.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.3.4-read-line-no-whitespace.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"Enter a string:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+---------\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Your %d character string, Sir:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [81 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %2, i32 0, i32 0
  %6 = call i32 @read_line(i8* %5, i32 80)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [81 x i8], [81 x i8]* %2, i32 0, i32 0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %7, i8* %8)
  call void @print_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
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
  %6 = icmp slt i32 %5, 8
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
  %14 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
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

; <label>:7:                                      ; preds = %29, %2
  %8 = call i32 @getchar()
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @isspace(i32 %11) #3
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

; <label>:15:                                     ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 %23, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %21, %17
  br label %7

; <label>:30:                                     ; preds = %15
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare i32 @getchar() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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
