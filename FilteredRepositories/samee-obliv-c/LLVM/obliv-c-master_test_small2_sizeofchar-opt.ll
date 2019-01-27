; ModuleID = 'Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small2_sizeofchar.c'
source_filename = "Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small2_sizeofchar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [78 x i8] c"Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small2_sizeofchar.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sz1 == sizeof(int)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sz2 == sizeof(char)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(int)i == (int)-1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4095 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32 4, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp eq i64 %7, 4
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i32 15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #2
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:15:                                     ; preds = %0
  br label %16

; <label>:16:                                     ; preds = %15, %14
  store i32 1, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 1
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %16
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #2
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:26:                                     ; preds = %16
  br label %27

; <label>:27:                                     ; preds = %26, %25
  store i32 -1, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, -1
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %27
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #2
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:36:                                     ; preds = %27
  br label %37

; <label>:37:                                     ; preds = %36, %35
  ret i32 0
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
