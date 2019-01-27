; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.5.11-str-cmp.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.5.11-str-cmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"%s == %s? %d:(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0123\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_comparison(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @str_cmp(i8* %6, i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* %9, i8* %10, i32 %13, i32 %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @str_cmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

; <label>:6:                                      ; preds = %20, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %6
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %33

; <label>:19:                                     ; preds = %14
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %6

; <label>:25:                                     ; preds = %6
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %3, align 4
  br label %33

; <label>:33:                                     ; preds = %25, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  call void @print_comparison(i8* %6, i8* %7)
  %8 = load i8*, i8** %2, align 8
  call void @print_comparison(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  call void @print_comparison(i8* %9, i8* %10)
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %4, align 8
  call void @print_comparison(i8* %11, i8* %12)
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %5, align 8
  call void @print_comparison(i8* %13, i8* %14)
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  call void @print_comparison(i8* %15, i8* %16)
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  call void @print_comparison(i8* %17, i8* %18)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
