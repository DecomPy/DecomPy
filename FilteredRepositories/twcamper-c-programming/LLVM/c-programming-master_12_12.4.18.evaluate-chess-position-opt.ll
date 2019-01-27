; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.18.evaluate-chess-position.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.18.evaluate-chess-position.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.new = private unnamed_addr constant [8 x [8 x i8]] [[8 x i8] c"rkbqkbkr", [8 x i8] c"pppppppp", [8 x i8] c"        ", [8 x i8] c"        ", [8 x i8] c"        ", [8 x i8] c"        ", [8 x i8] c"PPPPPPPP", [8 x i8] c"RKBQKBKR"], align 16
@main.advantage_black = private unnamed_addr constant [8 x [8 x i8]] [[8 x i8] c"rk qkbkr", [8 x i8] c"p p ppp ", [8 x i8] c"b     B ", [8 x i8] c" p      ", [8 x i8] c"  PpP   ", [8 x i8] c"      p ", [8 x i8] c"PP P PP ", [8 x i8] c"RK  KBK "], align 16
@main.advantage_white = private unnamed_addr constant [8 x [8 x i8]] [[8 x i8] c" k qk k ", [8 x i8] c"p p ppB ", [8 x i8] c"P R  P  ", [8 x i8] c"       p", [8 x i8] c"  P  K  ", [8 x i8] c"        ", [8 x i8] c" P PP PP", [8 x i8] c" K QKB R"], align 16
@.str = private unnamed_addr constant [14 x i8] c"New game: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Advantage black? %d : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Advantage white? %d : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x [8 x i8]], align 16
  %3 = alloca [8 x [8 x i8]], align 16
  %4 = alloca [8 x [8 x i8]], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [8 x [8 x i8]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.new, i32 0, i32 0, i32 0), i64 64, i1 false)
  %7 = bitcast [8 x [8 x i8]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.advantage_black, i32 0, i32 0, i32 0), i64 64, i1 false)
  %8 = bitcast [8 x [8 x i8]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.advantage_white, i32 0, i32 0, i32 0), i64 64, i1 false)
  %9 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %2, i32 0, i32 0
  %10 = call i32 @evaluate_position([8 x i8]* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %10)
  %12 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %3, i32 0, i32 0
  %13 = call i32 @evaluate_position([8 x i8]* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %16, i32 %17)
  %19 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %4, i32 0, i32 0
  %20 = call i32 @evaluate_position([8 x i8]* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %23, i32 %24)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @evaluate_position([8 x i8]*) #0 {
  %2 = alloca [8 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store [8 x i8]* %0, [8 x i8]** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %6 = load [8 x i8]*, [8 x i8]** %2, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8* %8, i8** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %26, %1
  %10 = load i8*, i8** %5, align 8
  %11 = load [8 x i8]*, [8 x i8]** %2, align 8
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 7
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  %14 = icmp ule i8* %10, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @black_value(i8 signext %17)
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @white_value(i8 signext %22)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %9

; <label>:29:                                     ; preds = %9
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %30, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @black_value(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 112, label %6
    i32 114, label %7
    i32 98, label %8
    i32 113, label %9
  ]

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

; <label>:7:                                      ; preds = %1
  store i32 5, i32* %2, align 4
  br label %11

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %2, align 4
  br label %11

; <label>:9:                                      ; preds = %1
  store i32 9, i32* %2, align 4
  br label %11

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %9, %8, %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @white_value(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 80, label %6
    i32 82, label %7
    i32 66, label %8
    i32 81, label %9
  ]

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

; <label>:7:                                      ; preds = %1
  store i32 5, i32* %2, align 4
  br label %11

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %2, align 4
  br label %11

; <label>:9:                                      ; preds = %1
  store i32 9, i32* %2, align 4
  br label %11

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %9, %8, %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
