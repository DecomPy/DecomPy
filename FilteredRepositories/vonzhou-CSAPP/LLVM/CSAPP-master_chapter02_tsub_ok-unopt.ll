; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_tsub_ok.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_tsub_ok.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"x=%d, y=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"negative overflow, sum - x = %d \0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"positive overflow, sum - x = %d \0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tsub_ok ? = %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @tadd_ok(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %9)
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4, !tbaa !3
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = icmp sge i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %21, %18, %2
  %25 = phi i1 [ false, %18 ], [ false, %2 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = sub nsw i32 %30, %31
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %32)
  br label %34

; <label>:34:                                     ; preds = %29, %24
  %35 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #3
  %36 = load i32, i32* %3, align 4, !tbaa !3
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %44

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = icmp slt i32 %42, 0
  br label %44

; <label>:44:                                     ; preds = %41, %38, %34
  %45 = phi i1 [ false, %38 ], [ false, %34 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4, !tbaa !3
  %47 = load i32, i32* %7, align 4, !tbaa !3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %5, align 4, !tbaa !3
  %51 = load i32, i32* %3, align 4, !tbaa !3
  %52 = sub nsw i32 %50, %51
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 %52)
  br label %54

; <label>:54:                                     ; preds = %49, %44
  %55 = load i32, i32* %6, align 4, !tbaa !3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %7, align 4, !tbaa !3
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

; <label>:61:                                     ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3
  %65 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3
  %66 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  ret i32 %63
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define i32 @tsub_ok(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !3
  %7 = sub nsw i32 0, %6
  %8 = call i32 @tadd_ok(i32 %5, i32 %7)
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @tsub_ok(i32 -1, i32 -2147483648)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %2)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
