; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_lwx.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_lwx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [80 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_lwx.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #4
  %11 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4
  %12 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  store i32 -1126239351, i32* %2, align 4, !tbaa !3
  store i32* %2, i32** %4, align 8, !tbaa !7
  %14 = load i32*, i32** %4, align 8, !tbaa !7
  %15 = ptrtoint i32* %14 to i64
  store i64 %15, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %6, align 8, !tbaa !9
  store i32 -1126239351, i32* %7, align 4, !tbaa !3
  %16 = load i64, i64* %6, align 8, !tbaa !9
  %17 = load i64, i64* %5, align 8, !tbaa !9
  %18 = call i32 asm "lwx $0, $1($2)\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %16, i64 %17) #2, !srcloc !11
  store i32 %18, i32* %3, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = load i32, i32* %7, align 4, !tbaa !3
  %21 = icmp eq i32 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = call i64 @llvm.expect.i64(i64 %24, i64 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:29:                                     ; preds = %0
  br label %30

; <label>:30:                                     ; preds = %29, %28
  %31 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4
  %32 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #4
  %33 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #4
  %34 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #4
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4
  %36 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{i32 268, i32 285}
