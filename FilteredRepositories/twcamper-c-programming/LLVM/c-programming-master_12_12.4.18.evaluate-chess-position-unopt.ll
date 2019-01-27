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

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x [8 x i8]], align 16
  %3 = alloca [8 x [8 x i8]], align 16
  %4 = alloca [8 x [8 x i8]], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [8 x [8 x i8]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #3
  %7 = bitcast [8 x [8 x i8]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.new, i32 0, i32 0, i32 0), i64 64, i1 false)
  %8 = bitcast [8 x [8 x i8]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #3
  %9 = bitcast [8 x [8 x i8]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.advantage_black, i32 0, i32 0, i32 0), i64 64, i1 false)
  %10 = bitcast [8 x [8 x i8]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %10) #3
  %11 = bitcast [8 x [8 x i8]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([8 x [8 x i8]], [8 x [8 x i8]]* @main.advantage_white, i32 0, i32 0, i32 0), i64 64, i1 false)
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %2, i32 0, i32 0
  %14 = call i32 @evaluate_position([8 x i8]* %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %14)
  %16 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %3, i32 0, i32 0
  %17 = call i32 @evaluate_position([8 x i8]* %16)
  store i32 %17, i32* %5, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %20, i32 %21)
  %23 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %4, i32 0, i32 0
  %24 = call i32 @evaluate_position([8 x i8]* %23)
  store i32 %24, i32* %5, align 4, !tbaa !3
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4, !tbaa !3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %27, i32 %28)
  %30 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast [8 x [8 x i8]]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %31) #3
  %32 = bitcast [8 x [8 x i8]]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %32) #3
  %33 = bitcast [8 x [8 x i8]]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %33) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @evaluate_position([8 x i8]*) #0 {
  %2 = alloca [8 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store [8 x i8]* %0, [8 x i8]** %2, align 8, !tbaa !7
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  %9 = load [8 x i8]*, [8 x i8]** %2, align 8, !tbaa !7
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  store i8* %11, i8** %5, align 8, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %29, %1
  %13 = load i8*, i8** %5, align 8, !tbaa !7
  %14 = load [8 x i8]*, [8 x i8]** %2, align 8, !tbaa !7
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 7
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 7
  %17 = icmp ule i8* %13, %16
  br i1 %17, label %18, label %32

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %5, align 8, !tbaa !7
  %20 = load i8, i8* %19, align 1, !tbaa !9
  %21 = call i32 @black_value(i8 signext %20)
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %3, align 4, !tbaa !3
  %24 = load i8*, i8** %5, align 8, !tbaa !7
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = call i32 @white_value(i8 signext %25)
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %4, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %18
  %30 = load i8*, i8** %5, align 8, !tbaa !7
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8, !tbaa !7
  br label %12

; <label>:32:                                     ; preds = %12
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = sub nsw i32 %33, %34
  %36 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #3
  %37 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret i32 %35
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @black_value(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1, !tbaa !9
  %4 = load i8, i8* %3, align 1, !tbaa !9
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

; Function Attrs: nounwind ssp uwtable
define i32 @white_value(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1, !tbaa !9
  %4 = load i8, i8* %3, align 1, !tbaa !9
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

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
