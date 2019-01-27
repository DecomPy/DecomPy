; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_muli.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_muli.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [12 x i8] c"muli error\0A\00", align 1

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
  %12 = call i32 asm "l.muli    $0, $1, 0x1\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %11) #4, !srcloc !7
  store i32 %12, i32* %2, align 4, !tbaa !3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

; <label>:18:                                     ; preds = %0
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = call i32 asm "l.muli    $0, $1, 0x0\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %19) #4, !srcloc !8
  store i32 %20, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %18
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

; <label>:26:                                     ; preds = %18
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 255, i32* %4, align 4, !tbaa !3
  store i32 255, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = call i32 asm "l.muli    $0, $1, 0xff\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %27) #4, !srcloc !9
  store i32 %28, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* %2, align 4, !tbaa !3
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

; <label>:34:                                     ; preds = %26
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %32, %24, %16
  %36 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = load i32, i32* %1, align 4
  ret i32 %40
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
!7 = !{i32 132, i32 156}
!8 = !{i32 336, i32 360}
!9 = !{i32 542, i32 567}
