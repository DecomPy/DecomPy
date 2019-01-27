; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_and_or.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_and_or.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"and error\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"andi error %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"or error\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"xor error\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"xori error\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 2, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = call i32 asm "l.and  $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %11, i32 %12) #4, !srcloc !7
  store i32 %13, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:19:                                     ; preds = %0
  store i32 2, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = call i32 asm "l.andi  $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %20) #4, !srcloc !8
  store i32 %21, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:28:                                     ; preds = %19
  store i32 3, i32* %5, align 4, !tbaa !3
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = call i32 asm "l.or   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %29, i32 %30) #4, !srcloc !9
  store i32 %31, i32* %2, align 4, !tbaa !3
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %28
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:37:                                     ; preds = %28
  store i32 3, i32* %5, align 4, !tbaa !3
  %38 = load i32, i32* %3, align 4, !tbaa !3
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = call i32 asm "l.xor  $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %38, i32 %39) #4, !srcloc !10
  store i32 %40, i32* %2, align 4, !tbaa !3
  %41 = load i32, i32* %2, align 4, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %37
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = call i32 asm "l.xori  $0, $1, 0x1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %47) #4, !srcloc !11
  store i32 %48, i32* %2, align 4, !tbaa !3
  %49 = load i32, i32* %2, align 4, !tbaa !3
  %50 = load i32, i32* %5, align 4, !tbaa !3
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %46
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:54:                                     ; preds = %46
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %52, %44, %35, %25, %17
  %56 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #3
  %57 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  %58 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = load i32, i32* %1, align 4
  ret i32 %60
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
!7 = !{i32 130, i32 150}
!8 = !{i32 311, i32 333}
!9 = !{i32 493, i32 513}
!10 = !{i32 673, i32 693}
!11 = !{i32 836, i32 858}
