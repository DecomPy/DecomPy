; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_mul.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_mul.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"mul error\0A\00", align 1

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
  store i32 4, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  store i32 4, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = call i32 asm "l.mul    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %11, i32 %12) #4, !srcloc !7
  store i32 %13, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %47

; <label>:19:                                     ; preds = %0
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = call i32 asm "l.mul    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %20, i32 %21) #4, !srcloc !8
  store i32 %22, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %19
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %47

; <label>:28:                                     ; preds = %19
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 255, i32* %4, align 4, !tbaa !3
  store i32 255, i32* %5, align 4, !tbaa !3
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = call i32 asm "l.mul    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %29, i32 %30) #4, !srcloc !9
  store i32 %31, i32* %2, align 4, !tbaa !3
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %28
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %47

; <label>:37:                                     ; preds = %28
  store i32 2147483647, i32* %3, align 4, !tbaa !3
  store i32 2, i32* %4, align 4, !tbaa !3
  store i32 -2, i32* %5, align 4, !tbaa !3
  %38 = load i32, i32* %3, align 4, !tbaa !3
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = call i32 asm "l.mul    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %38, i32 %39) #4, !srcloc !10
  store i32 %40, i32* %2, align 4, !tbaa !3
  %41 = load i32, i32* %2, align 4, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %37
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %47

; <label>:46:                                     ; preds = %37
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %44, %35, %26, %17
  %48 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = load i32, i32* %1, align 4
  ret i32 %52
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
!7 = !{i32 132, i32 154}
!8 = !{i32 341, i32 363}
!9 = !{i32 552, i32 574}
!10 = !{i32 775, i32 797}
