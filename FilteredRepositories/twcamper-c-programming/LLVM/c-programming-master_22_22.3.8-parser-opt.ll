; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c" #%[0123456789,]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" #123\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"strcmp(sales_rank, \22123\22) == 0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" #999,999,901 \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"999,999,901\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"strcmp(sales_rank, \22999,999,901\22) == 0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" #24,675\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"24,675\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"strcmp(sales_rank, \2224,675\22) == 0\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"strcmp(sales_rank, \221\22) == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [255 x i8], align 16
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %4, [255 x i8]* %3)
  %6 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %8 = icmp eq i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:15:                                     ; preds = %0
  br label %16

; <label>:16:                                     ; preds = %15, %14
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %17, [255 x i8]* %3)
  %19 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %16
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:28:                                     ; preds = %16
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %30, [255 x i8]* %3)
  %32 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %34 = icmp eq i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %29
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:41:                                     ; preds = %29
  br label %42

; <label>:42:                                     ; preds = %41, %40
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %43, [255 x i8]* %3)
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %47 = icmp eq i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %42
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:54:                                     ; preds = %42
  br label %55

; <label>:55:                                     ; preds = %54, %53
  ret i32 0
}

declare i32 @sscanf(i8*, i8*, ...) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
