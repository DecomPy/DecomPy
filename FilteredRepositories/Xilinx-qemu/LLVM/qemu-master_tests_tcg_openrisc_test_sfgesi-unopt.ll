; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_sfgesi.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_sfgesi.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [14 x i8] c"sfgesi error\0A\00", align 1

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
  store i32 0, i32* %2, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = call i32 asm "1:\0A\09l.addi   $0, $0, 1\0A\09l.sfgesi $0, 0x3\0A\09l.bf 1b\0A\09l.nop\0A\09", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %9) #4, !srcloc !7
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %26

; <label>:16:                                     ; preds = %0
  store i32 255, i32* %2, align 4, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 2, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = call i32 asm "1:\0A\09l.sub    $0, $0, $1\0A\09l.sfgesi $0, 0x3\0A\09l.bf 1b\0A\09l.nop\0A\09", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %18, i32 %17) #4, !srcloc !8
  store i32 %19, i32* %2, align 4, !tbaa !3
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %26

; <label>:25:                                     ; preds = %16
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %23, %14
  %27 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = load i32, i32* %1, align 4
  ret i32 %30
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
!7 = !{i32 111, i32 116, i32 146, i32 174, i32 193, i32 210}
!8 = !{i32 375, i32 380, i32 411, i32 439, i32 458, i32 475}
