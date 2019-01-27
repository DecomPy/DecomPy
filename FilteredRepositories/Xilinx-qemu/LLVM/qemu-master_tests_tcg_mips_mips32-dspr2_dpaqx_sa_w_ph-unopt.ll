; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [92 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dsp >> (16 + 1) == resultdsp\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ach == resulth\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"acl == resultl\00", align 1

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
  store i32 5, i32* %5, align 4, !tbaa !3
  store i32 5, i32* %6, align 4, !tbaa !3
  store i32 16711935, i32* %2, align 4, !tbaa !3
  store i32 65538, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  store i32 2147483647, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = call { i32, i32, i32 } asm "wrdsp $2\0A\09mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_sa.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %21, i32 %22, i32 %18, i32 %19, i32 %20) #2, !srcloc !7
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = extractvalue { i32, i32, i32 } %23, 1
  %26 = extractvalue { i32, i32, i32 } %23, 2
  store i32 %24, i32* %5, align 4, !tbaa !3
  store i32 %25, i32* %6, align 4, !tbaa !3
  store i32 %26, i32* %4, align 4, !tbaa !3
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = ashr i32 %27, 17
  %29 = load i32, i32* %9, align 4, !tbaa !3
  %30 = icmp eq i32 %28, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = call i64 @llvm.expect.i64(i64 %33, i64 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:38:                                     ; preds = %0
  br label %39

; <label>:39:                                     ; preds = %38, %37
  %40 = load i32, i32* %5, align 4, !tbaa !3
  %41 = load i32, i32* %7, align 4, !tbaa !3
  %42 = icmp eq i32 %40, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = call i64 @llvm.expect.i64(i64 %45, i64 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %39
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:50:                                     ; preds = %39
  br label %51

; <label>:51:                                     ; preds = %50, %49
  %52 = load i32, i32* %6, align 4, !tbaa !3
  %53 = load i32, i32* %8, align 4, !tbaa !3
  %54 = icmp eq i32 %52, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i64 @llvm.expect.i64(i64 %57, i64 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %51
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:62:                                     ; preds = %51
  br label %63

; <label>:63:                                     ; preds = %62, %61
  store i32 9, i32* %5, align 4, !tbaa !3
  store i32 11, i32* %6, align 4, !tbaa !3
  store i32 -2147483393, i32* %2, align 4, !tbaa !3
  store i32 98304, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  store i32 2147483647, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  %64 = load i32, i32* %5, align 4, !tbaa !3
  %65 = load i32, i32* %6, align 4, !tbaa !3
  %66 = load i32, i32* %4, align 4, !tbaa !3
  %67 = load i32, i32* %2, align 4, !tbaa !3
  %68 = load i32, i32* %3, align 4, !tbaa !3
  %69 = call { i32, i32, i32 } asm "wrdsp $2\0A\09mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_sa.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %67, i32 %68, i32 %64, i32 %65, i32 %66) #2, !srcloc !8
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = extractvalue { i32, i32, i32 } %69, 1
  %72 = extractvalue { i32, i32, i32 } %69, 2
  store i32 %70, i32* %5, align 4, !tbaa !3
  store i32 %71, i32* %6, align 4, !tbaa !3
  store i32 %72, i32* %4, align 4, !tbaa !3
  %73 = load i32, i32* %4, align 4, !tbaa !3
  %74 = ashr i32 %73, 17
  %75 = load i32, i32* %9, align 4, !tbaa !3
  %76 = icmp eq i32 %74, %75
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = call i64 @llvm.expect.i64(i64 %79, i64 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

; <label>:82:                                     ; preds = %63
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:84:                                     ; preds = %63
  br label %85

; <label>:85:                                     ; preds = %84, %83
  %86 = load i32, i32* %5, align 4, !tbaa !3
  %87 = load i32, i32* %7, align 4, !tbaa !3
  %88 = icmp eq i32 %86, %87
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = call i64 @llvm.expect.i64(i64 %91, i64 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %85
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:96:                                     ; preds = %85
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i32, i32* %6, align 4, !tbaa !3
  %99 = load i32, i32* %8, align 4, !tbaa !3
  %100 = icmp eq i32 %98, %99
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = call i64 @llvm.expect.i64(i64 %103, i64 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

; <label>:106:                                    ; preds = %97
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:108:                                    ; preds = %97
  br label %109

; <label>:109:                                    ; preds = %108, %107
  %110 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #4
  %111 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4
  %112 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4
  %113 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4
  %114 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4
  %116 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #4
  %117 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #4
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
!7 = !{i32 324, i32 335, i32 365, i32 395, i32 437, i32 467, i32 497, i32 521}
!8 = !{i32 900, i32 911, i32 941, i32 971, i32 1013, i32 1043, i32 1073, i32 1097}
