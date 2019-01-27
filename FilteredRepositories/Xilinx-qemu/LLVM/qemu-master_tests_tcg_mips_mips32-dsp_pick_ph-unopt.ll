; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_pick_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_pick_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [84 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_pick_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  store i32 305419896, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 167772160, i32* %5, align 4, !tbaa !3
  store i32 305414945, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = call i32 asm "wrdsp $3, 0x10\0A\09pick.ph $0, $1, $2\0A\09", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13, i32 %14) #2, !srcloc !7
  store i32 %15, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !3
  %18 = icmp eq i32 %16, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = call i64 @llvm.expect.i64(i64 %21, i64 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:26:                                     ; preds = %0
  br label %27

; <label>:27:                                     ; preds = %26, %25
  store i32 305419896, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 50331648, i32* %5, align 4, !tbaa !3
  store i32 305419896, i32* %6, align 4, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = call i32 asm "wrdsp $3, 0x10\0A\09pick.ph $0, $1, $2\0A\09", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %28, i32 %29, i32 %30) #2, !srcloc !8
  store i32 %31, i32* %2, align 4, !tbaa !3
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = icmp eq i32 %32, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = call i64 @llvm.expect.i64(i64 %37, i64 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %27
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:42:                                     ; preds = %27
  br label %43

; <label>:43:                                     ; preds = %42, %41
  store i32 305419896, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 -2023406815, i32* %6, align 4, !tbaa !3
  %44 = load i32, i32* %3, align 4, !tbaa !3
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = load i32, i32* %5, align 4, !tbaa !3
  %47 = call i32 asm "wrdsp $3, 0x10\0A\09pick.ph $0, $1, $2\0A\09", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %44, i32 %45, i32 %46) #2, !srcloc !9
  store i32 %47, i32* %2, align 4, !tbaa !3
  %48 = load i32, i32* %2, align 4, !tbaa !3
  %49 = load i32, i32* %6, align 4, !tbaa !3
  %50 = icmp eq i32 %48, %49
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = call i64 @llvm.expect.i64(i64 %53, i64 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %43
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:58:                                     ; preds = %43
  br label %59

; <label>:59:                                     ; preds = %58, %57
  %60 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4
  %61 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4
  %62 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4
  %63 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4
  %64 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4
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
!7 = !{i32 204, i32 221, i32 255}
!8 = !{i32 464, i32 481, i32 515}
!9 = !{i32 724, i32 741, i32 775}
