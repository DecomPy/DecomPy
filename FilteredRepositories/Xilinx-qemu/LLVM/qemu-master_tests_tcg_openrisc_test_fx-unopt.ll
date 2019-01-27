; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_fx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_fx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"ff1 error\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fl1 error\0A\00", align 1

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
  store i32 291, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = call i32 asm "l.ff1 $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %9) #4, !srcloc !7
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

; <label>:16:                                     ; preds = %0
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = call i32 asm "l.ff1 $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #4, !srcloc !8
  store i32 %18, i32* %2, align 4, !tbaa !3
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

; <label>:24:                                     ; preds = %16
  store i32 291, i32* %3, align 4, !tbaa !3
  store i32 9, i32* %4, align 4, !tbaa !3
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = call i32 asm "l.fl1 $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %25) #4, !srcloc !9
  store i32 %26, i32* %2, align 4, !tbaa !3
  %27 = load i32, i32* %2, align 4, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %24
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

; <label>:32:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  %33 = load i32, i32* %3, align 4, !tbaa !3
  %34 = call i32 asm "l.fl1 $0, $1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %33) #4, !srcloc !10
  store i32 %34, i32* %2, align 4, !tbaa !3
  %35 = load i32, i32* %2, align 4, !tbaa !3
  %36 = load i32, i32* %4, align 4, !tbaa !3
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

; <label>:40:                                     ; preds = %32
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %38, %30, %22, %14
  %42 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = load i32, i32* %1, align 4
  ret i32 %45
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
!7 = !{i32 116, i32 131}
!8 = !{i32 295, i32 310}
!9 = !{i32 476, i32 491}
!10 = !{i32 655, i32 670}
