; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_extx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_extx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"extbs error\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"extbz error\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"exths error\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"exthz error\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"extws error\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"extwz error\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 131, i32* %3, align 4, !tbaa !3
  store i32 -125, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = call i32 asm "l.extbs  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %9) #4, !srcloc !7
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:16:                                     ; preds = %0
  store i32 131, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = call i32 asm "l.extbz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #4, !srcloc !8
  store i32 %18, i32* %2, align 4, !tbaa !3
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:24:                                     ; preds = %16
  store i32 32899, i32* %3, align 4, !tbaa !3
  store i32 -32637, i32* %4, align 4, !tbaa !3
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = call i32 asm "l.exths  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %25) #4, !srcloc !9
  store i32 %26, i32* %2, align 4, !tbaa !3
  %27 = load i32, i32* %2, align 4, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %24
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:32:                                     ; preds = %24
  store i32 32899, i32* %4, align 4, !tbaa !3
  %33 = load i32, i32* %3, align 4, !tbaa !3
  %34 = call i32 asm "l.exthz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %33) #4, !srcloc !10
  store i32 %34, i32* %2, align 4, !tbaa !3
  %35 = load i32, i32* %2, align 4, !tbaa !3
  %36 = load i32, i32* %4, align 4, !tbaa !3
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:40:                                     ; preds = %32
  store i32 17, i32* %3, align 4, !tbaa !3
  store i32 17, i32* %4, align 4, !tbaa !3
  %41 = load i32, i32* %3, align 4, !tbaa !3
  %42 = call i32 asm "l.extws  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %41) #4, !srcloc !11
  store i32 %42, i32* %2, align 4, !tbaa !3
  %43 = load i32, i32* %2, align 4, !tbaa !3
  %44 = load i32, i32* %4, align 4, !tbaa !3
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %40
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %3, align 4, !tbaa !3
  %50 = call i32 asm "l.extwz  $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %49) #4, !srcloc !12
  store i32 %50, i32* %2, align 4, !tbaa !3
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = load i32, i32* %4, align 4, !tbaa !3
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %48
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:56:                                     ; preds = %48
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %54, %46, %38, %30, %22, %14
  %58 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 124, i32 142}
!8 = !{i32 298, i32 316}
!9 = !{i32 494, i32 512}
!10 = !{i32 670, i32 688}
!11 = !{i32 858, i32 876}
!12 = !{i32 1014, i32 1032}
