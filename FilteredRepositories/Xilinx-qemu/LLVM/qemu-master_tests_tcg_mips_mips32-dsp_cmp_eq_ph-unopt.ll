; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_cmp_eq_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_cmp_eq_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_cmp_eq_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  store i32 293040230, i32* %3, align 4, !tbaa !3
  store i32 1437217791, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = call i32 asm "cmp.eq.ph $1, $2\0A\09rddsp $0\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %10, i32 %11) #2, !srcloc !7
  store i32 %12, i32* %2, align 4, !tbaa !3
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = ashr i32 %13, 24
  %15 = and i32 %14, 3
  store i32 %15, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = icmp eq i32 %16, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = call i64 @llvm.expect.i64(i64 %21, i64 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:26:                                     ; preds = %0
  br label %27

; <label>:27:                                     ; preds = %26, %25
  store i32 293040230, i32* %3, align 4, !tbaa !3
  store i32 293040230, i32* %4, align 4, !tbaa !3
  store i32 3, i32* %5, align 4, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = call i32 asm "cmp.eq.ph $1, $2\0A\09rddsp $0\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %28, i32 %29) #2, !srcloc !8
  store i32 %30, i32* %2, align 4, !tbaa !3
  %31 = load i32, i32* %2, align 4, !tbaa !3
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 3
  store i32 %33, i32* %2, align 4, !tbaa !3
  %34 = load i32, i32* %2, align 4, !tbaa !3
  %35 = load i32, i32* %5, align 4, !tbaa !3
  %36 = icmp eq i32 %34, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = call i64 @llvm.expect.i64(i64 %39, i64 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %27
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:44:                                     ; preds = %27
  br label %45

; <label>:45:                                     ; preds = %44, %43
  %46 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4
  %47 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4
  %48 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4
  %49 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4
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
!7 = !{i32 178, i32 197, i32 221}
!8 = !{i32 428, i32 447, i32 471}
