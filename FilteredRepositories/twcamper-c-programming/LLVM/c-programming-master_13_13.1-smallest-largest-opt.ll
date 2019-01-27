; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.1-smallest-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.1-smallest-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.smallest = private unnamed_addr constant <{ i8, [20 x i8] }> <{ i8 127, [20 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [15 x i8] c"Enter a word: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%20s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Lowest word: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Highest word: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [21 x i8], align 16
  %3 = alloca [21 x i8], align 16
  %4 = alloca [21 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds (<{ i8, [20 x i8] }>, <{ i8, [20 x i8] }>* @main.smallest, i32 0, i32 0), i64 21, i1 false)
  br label %6

; <label>:6:                                      ; preds = %32, %0
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %8 = call i64 @strlen(i8* %7)
  %9 = icmp ne i64 %8, 4
  br i1 %9, label %10, label %33

; <label>:10:                                     ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %12 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %12)
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %15 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %16 = call i32 @strcmp(i8* %14, i8* %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %20 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %21 = call i8* @__strncpy_chk(i8* %19, i8* %20, i64 20, i64 21) #4
  br label %32

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %24 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %25 = call i32 @strcmp(i8* %23, i8* %24)
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %30 = call i8* @__strncpy_chk(i8* %28, i8* %29, i64 20, i64 21) #4
  br label %31

; <label>:31:                                     ; preds = %27, %22
  br label %32

; <label>:32:                                     ; preds = %31, %18
  br label %6

; <label>:33:                                     ; preds = %6
  %34 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %34)
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %36)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i64 @strlen(i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
