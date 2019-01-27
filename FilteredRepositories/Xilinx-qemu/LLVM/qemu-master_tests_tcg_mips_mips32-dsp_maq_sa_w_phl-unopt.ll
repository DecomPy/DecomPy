; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [89 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"resulth == acho\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"resultl == aclo\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"((dsp >> 17) & 0x01) == 0x01\00", align 1

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
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  %14 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4
  %21 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 -16384000, i32* %3, align 4, !tbaa !3
  store i32 -889192448, i32* %2, align 4, !tbaa !3
  store i32 0, i32* %9, align 4, !tbaa !3
  store i32 6830283, i32* %10, align 4, !tbaa !3
  %22 = load i32, i32* %4, align 4, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = load i32, i32* %3, align 4, !tbaa !3
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09maq_sa.w.phl $$ac1, $4, $5\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09", "=r,=r,r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %22, i32 %23, i32 %24, i32 %25) #2, !srcloc !7
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  store i32 %27, i32* %7, align 4, !tbaa !3
  store i32 %28, i32* %8, align 4, !tbaa !3
  %29 = load i32, i32* %9, align 4, !tbaa !3
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = icmp eq i32 %29, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = call i64 @llvm.expect.i64(i64 %34, i64 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:39:                                     ; preds = %0
  br label %40

; <label>:40:                                     ; preds = %39, %38
  %41 = load i32, i32* %10, align 4, !tbaa !3
  %42 = load i32, i32* %8, align 4, !tbaa !3
  %43 = icmp eq i32 %41, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = call i64 @llvm.expect.i64(i64 %46, i64 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %40
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:51:                                     ; preds = %40
  br label %52

; <label>:52:                                     ; preds = %51, %50
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 -2147483648, i32* %2, align 4, !tbaa !3
  store i32 0, i32* %9, align 4, !tbaa !3
  store i32 2147483647, i32* %10, align 4, !tbaa !3
  store i32 1, i32* %11, align 4, !tbaa !3
  %53 = load i32, i32* %4, align 4, !tbaa !3
  %54 = load i32, i32* %5, align 4, !tbaa !3
  %55 = load i32, i32* %3, align 4, !tbaa !3
  %56 = load i32, i32* %2, align 4, !tbaa !3
  %57 = call { i32, i32, i32 } asm "mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09maq_sa.w.phl $$ac1, $5, $6\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %53, i32 %54, i32 %55, i32 %56) #2, !srcloc !8
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = extractvalue { i32, i32, i32 } %57, 1
  %60 = extractvalue { i32, i32, i32 } %57, 2
  store i32 %58, i32* %7, align 4, !tbaa !3
  store i32 %59, i32* %8, align 4, !tbaa !3
  store i32 %60, i32* %6, align 4, !tbaa !3
  %61 = load i32, i32* %9, align 4, !tbaa !3
  %62 = load i32, i32* %7, align 4, !tbaa !3
  %63 = icmp eq i32 %61, %62
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = call i64 @llvm.expect.i64(i64 %66, i64 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %52
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %72

; <label>:71:                                     ; preds = %52
  br label %72

; <label>:72:                                     ; preds = %71, %70
  %73 = load i32, i32* %10, align 4, !tbaa !3
  %74 = load i32, i32* %8, align 4, !tbaa !3
  %75 = icmp eq i32 %73, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = call i64 @llvm.expect.i64(i64 %78, i64 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %72
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:83:                                     ; preds = %72
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = load i32, i32* %6, align 4, !tbaa !3
  %86 = ashr i32 %85, 17
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 1
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = call i64 @llvm.expect.i64(i64 %91, i64 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %84
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:96:                                     ; preds = %84
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #4
  %99 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4
  %100 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #4
  %101 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4
  %102 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4
  %103 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #4
  %104 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #4
  %105 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #4
  %106 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #4
  %107 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #4
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
!7 = !{i32 325, i32 341, i32 370, i32 411, i32 440, i32 469}
!8 = !{i32 802, i32 818, i32 847, i32 888, i32 917, i32 946, i32 970}
