; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdpv.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdpv.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [84 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdpv.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pos == 3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"efi == 0\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"efi == 1\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  store i32 5, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 7, i32* %6, align 4, !tbaa !3
  store i32 3, i32* %3, align 4, !tbaa !3
  store i32 12, i32* %9, align 4, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdpv $0, $$ac1, $4\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %19, i32 %20, i32 %21, i32 %18) #2, !srcloc !7
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = extractvalue { i32, i32 } %22, 1
  store i32 %23, i32* %2, align 4, !tbaa !3
  store i32 %24, i32* %6, align 4, !tbaa !3
  %25 = load i32, i32* %6, align 4, !tbaa !3
  %26 = and i32 %25, 63
  store i32 %26, i32* %7, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = ashr i32 %27, 14
  %29 = and i32 %28, 1
  store i32 %29, i32* %8, align 4, !tbaa !3
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = icmp eq i32 %30, 3
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = call i64 @llvm.expect.i64(i64 %34, i64 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:39:                                     ; preds = %0
  br label %40

; <label>:40:                                     ; preds = %39, %38
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = icmp eq i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = call i64 @llvm.expect.i64(i64 %45, i64 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %40
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:50:                                     ; preds = %40
  br label %51

; <label>:51:                                     ; preds = %50, %49
  %52 = load i32, i32* %9, align 4, !tbaa !3
  %53 = load i32, i32* %2, align 4, !tbaa !3
  %54 = icmp eq i32 %52, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i64 @llvm.expect.i64(i64 %57, i64 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %51
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:62:                                     ; preds = %51
  br label %63

; <label>:63:                                     ; preds = %62, %61
  store i32 5, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  %64 = load i32, i32* %6, align 4, !tbaa !3
  %65 = load i32, i32* %4, align 4, !tbaa !3
  %66 = load i32, i32* %5, align 4, !tbaa !3
  %67 = load i32, i32* %3, align 4, !tbaa !3
  %68 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdpv $0, $$ac1, $4\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %65, i32 %66, i32 %67, i32 %64) #2, !srcloc !8
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = extractvalue { i32, i32 } %68, 1
  store i32 %69, i32* %2, align 4, !tbaa !3
  store i32 %70, i32* %6, align 4, !tbaa !3
  %71 = load i32, i32* %6, align 4, !tbaa !3
  %72 = ashr i32 %71, 14
  %73 = and i32 %72, 1
  store i32 %73, i32* %8, align 4, !tbaa !3
  %74 = load i32, i32* %8, align 4, !tbaa !3
  %75 = icmp eq i32 %74, 1
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = call i64 @llvm.expect.i64(i64 %78, i64 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %63
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:83:                                     ; preds = %63
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #4
  %86 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #4
  %87 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4
  %88 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4
  %89 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4
  %90 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4
  %91 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4
  %92 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4
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
!7 = !{i32 218, i32 235, i32 264, i32 293, i32 329, i32 353}
!8 = !{i32 632, i32 649, i32 678, i32 707, i32 743, i32 767}
