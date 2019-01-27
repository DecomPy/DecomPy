; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex13_ex13.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex13_ex13.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"arg %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@main.states = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"state %d: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8*], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %22, %2
  %11 = load i32, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = load i8**, i8*** %5, align 8, !tbaa !7
  %17 = load i32, i32* %6, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8, !tbaa !7
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %15, i8* %20)
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %6, align 4, !tbaa !3
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4, !tbaa !3
  br label %10

; <label>:25:                                     ; preds = %10
  %26 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %26) #3
  %27 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([4 x i8*]* @main.states to i8*), i64 32, i1 false)
  %28 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3
  store i32 5, i32* %8, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %40, %25
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = load i32, i32* %8, align 4, !tbaa !3
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %6, align 4, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8, !tbaa !7
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %34, i8* %38)
  br label %40

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4, !tbaa !3
  br label %29

; <label>:43:                                     ; preds = %29
  %44 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %45) #3
  %46 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
