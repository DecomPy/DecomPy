; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_lx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"lbz error, %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lbs error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"lhs error, %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lhz error\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"lws error, %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lwz error\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [50 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast [50 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 35, i32* %4, align 4, !tbaa !3
  %9 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %10 = call i32 asm "l.ori r8, r0, 0x123\0A\09l.sb  0x4 + $1, r8\0A\09\0A\09l.lbz $0, 0x4 + $1\0A\09", "=r,=*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %9, i32* %9) #3, !srcloc !7
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %15)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:17:                                     ; preds = %0
  store i32 35, i32* %4, align 4, !tbaa !3
  %18 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %19 = call i32 asm "l.lbs $0, 0x4 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %18) #4, !srcloc !8
  store i32 %19, i32* %2, align 4, !tbaa !3
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:25:                                     ; preds = %17
  store i32 4369, i32* %4, align 4, !tbaa !3
  %26 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %27 = call i32 asm "l.ori r8, r0, 0x1111\0A\09l.sh  0x20 + $1, r8\0A\09\0A\09l.lhs $0, 0x20 + $1\0A\09", "=r,=*m,~{dirflag},~{fpsr},~{flags}"(i32* %26) #3, !srcloc !9
  store i32 %27, i32* %2, align 4, !tbaa !3
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %32)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:34:                                     ; preds = %25
  store i32 4369, i32* %4, align 4, !tbaa !3
  %35 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %36 = call i32 asm "l.lhz $0, 0x20 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %35) #4, !srcloc !10
  store i32 %36, i32* %2, align 4, !tbaa !3
  %37 = load i32, i32* %2, align 4, !tbaa !3
  %38 = load i32, i32* %4, align 4, !tbaa !3
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:42:                                     ; preds = %34
  store i32 17895987, i32* %4, align 4, !tbaa !3
  %43 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %44 = call i32 asm "l.ori r8, r0, 0x1233\0A\09l.movhi r1, 0x111\0A\09l.or  r8, r8, r1\0A\09l.sw  0x123 + $1, r8\0A\09\0A\09l.lws $0, 0x123 + $1\0A\09", "=r,=*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %43, i32* %43) #3, !srcloc !11
  store i32 %44, i32* %2, align 4, !tbaa !3
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = load i32, i32* %4, align 4, !tbaa !3
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %2, align 4, !tbaa !3
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %49)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:51:                                     ; preds = %42
  store i32 17895987, i32* %4, align 4, !tbaa !3
  %52 = getelementptr inbounds [50 x i32], [50 x i32]* %3, i32 0, i32 0
  %53 = call i32 asm "l.lwz $0, 0x123 + $1\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %52) #4, !srcloc !12
  store i32 %53, i32* %2, align 4, !tbaa !3
  %54 = load i32, i32* %2, align 4, !tbaa !3
  %55 = load i32, i32* %4, align 4, !tbaa !3
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %51
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:59:                                     ; preds = %51
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %59, %57, %48, %40, %31, %23, %14
  %61 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast [50 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %62) #3
  %63 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = load i32, i32* %1, align 4
  ret i32 %64
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
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 116, i32 138, i32 168, i32 180, i32 210}
!8 = !{i32 367, i32 388}
!9 = !{i32 545, i32 568, i32 599, i32 611, i32 642}
!10 = !{i32 801, i32 823}
!11 = !{i32 983, i32 1006, i32 1035, i32 1063, i32 1095, i32 1107, i32 1139}
!12 = !{i32 1301, i32 1324}
