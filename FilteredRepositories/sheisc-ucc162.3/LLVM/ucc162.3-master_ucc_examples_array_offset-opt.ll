; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_offset.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_offset.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@arr = common global [4 x [4 x i32]] zeroinitializer, align 16
@ptr = global [4 x [4 x i32]]* @arr, align 8
@ptr2 = global [4 x [4 x i32]]** @ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store i32 5, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i32 0, i32 0, i32 0), align 16
  %3 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 0, i64 0), align 16
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %3)
  store i32 10, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i32 0, i32 0, i64 2), align 8
  %5 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 0, i64 2), align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 %8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 20, i32* %10, align 8
  %11 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 2, i64 2), align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %11)
  %13 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** @ptr, align 8
  %14 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %13, i64 0, i64 2
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 30, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 2, i64 2), align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %16)
  %18 = load [4 x [4 x i32]]**, [4 x [4 x i32]]*** @ptr2, align 8
  %19 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %18, align 8
  %20 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %19, i64 0, i64 2
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 40, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @arr, i64 0, i64 2, i64 2), align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %22)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
