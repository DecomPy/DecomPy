; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.1-smallest-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.1-smallest-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.smallest = private unnamed_addr constant <{ i8, [20 x i8] }> <{ i8 127, [20 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [15 x i8] c"Enter a word: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%20s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Lowest word: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Highest word: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [21 x i8], align 16
  %3 = alloca [21 x i8], align 16
  %4 = alloca [21 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 21, i8* %5) #4
  %6 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 21, i8* %6) #4
  %7 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds (<{ i8, [20 x i8] }>, <{ i8, [20 x i8] }>* @main.smallest, i32 0, i32 0), i64 21, i1 false)
  %8 = bitcast [21 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 21, i8* %8) #4
  br label %9

; <label>:9:                                      ; preds = %35, %0
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ne i64 %11, 4
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %16 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %15)
  %17 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %18 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %19 = call i32 @strcmp(i8* %17, i8* %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %24 = call i8* @__strncpy_chk(i8* %22, i8* %23, i64 20, i64 21) #4
  br label %35

; <label>:25:                                     ; preds = %13
  %26 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %27 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %28 = call i32 @strcmp(i8* %26, i8* %27)
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %32 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i32 0, i32 0
  %33 = call i8* @__strncpy_chk(i8* %31, i8* %32, i64 20, i64 21) #4
  br label %34

; <label>:34:                                     ; preds = %30, %25
  br label %35

; <label>:35:                                     ; preds = %34, %21
  br label %9

; <label>:36:                                     ; preds = %9
  %37 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %37)
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i32 0, i32 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %39)
  %41 = bitcast [21 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 21, i8* %41) #4
  %42 = bitcast [21 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 21, i8* %42) #4
  %43 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 21, i8* %43) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i64 @strlen(i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
