; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shra_r_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shra_r_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shra_r_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  store i32 -2023406815, i32* %3, align 4, !tbaa !3
  store i32 -252901276, i32* %4, align 4, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = call i32 asm "shra_r.ph $0, $1, 0x03\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %8) #2, !srcloc !7
  store i32 %9, i32* %2, align 4, !tbaa !3
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp eq i32 %10, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = call i64 @llvm.expect.i64(i64 %15, i64 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:20:                                     ; preds = %0
  br label %21

; <label>:21:                                     ; preds = %20, %19
  store i32 -2023406815, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = call i32 asm "shra_r.ph $0, $1, 0x00\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %22) #2, !srcloc !8
  store i32 %23, i32* %2, align 4, !tbaa !3
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = load i32, i32* %4, align 4, !tbaa !3
  %26 = icmp eq i32 %24, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = call i64 @llvm.expect.i64(i64 %29, i64 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %21
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:34:                                     ; preds = %21
  br label %35

; <label>:35:                                     ; preds = %34, %33
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4
  %37 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4
  %38 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 156, i32 181}
!8 = !{i32 332, i32 357}
