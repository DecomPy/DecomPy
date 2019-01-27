; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_r_w.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_r_w.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_r_w.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsp == 1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dsp == 0\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  store i32 5, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 7, i32* %6, align 4, !tbaa !3
  store i32 3, i32* %3, align 4, !tbaa !3
  store i32 -1610606951, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_r.w $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %15, i32 %16, i32 %17, i32 %14) #2, !srcloc !7
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, i32* %2, align 4, !tbaa !3
  store i32 %20, i32* %6, align 4, !tbaa !3
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = ashr i32 %21, 23
  %23 = and i32 %22, 1
  store i32 %23, i32* %6, align 4, !tbaa !3
  %24 = load i32, i32* %6, align 4, !tbaa !3
  %25 = icmp eq i32 %24, 1
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = call i64 @llvm.expect.i64(i64 %28, i64 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:33:                                     ; preds = %0
  br label %34

; <label>:34:                                     ; preds = %33, %32
  %35 = load i32, i32* %7, align 4, !tbaa !3
  %36 = load i32, i32* %2, align 4, !tbaa !3
  %37 = icmp eq i32 %35, %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = call i64 @llvm.expect.i64(i64 %40, i64 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %34
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:45:                                     ; preds = %34
  br label %46

; <label>:46:                                     ; preds = %45, %44
  store i32 0, i32* %6, align 4, !tbaa !3
  %47 = load i32, i32* %6, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %47) #4, !srcloc !8
  store i32 4, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  store i32 46283, i32* %5, align 4, !tbaa !3
  store i32 268438349, i32* %7, align 4, !tbaa !3
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = load i32, i32* %3, align 4, !tbaa !3
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = load i32, i32* %5, align 4, !tbaa !3
  %52 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_r.w $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %49, i32 %50, i32 %51, i32 %48) #2, !srcloc !9
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = extractvalue { i32, i32 } %52, 1
  store i32 %53, i32* %2, align 4, !tbaa !3
  store i32 %54, i32* %6, align 4, !tbaa !3
  %55 = load i32, i32* %6, align 4, !tbaa !3
  %56 = ashr i32 %55, 23
  %57 = and i32 %56, 1
  store i32 %57, i32* %6, align 4, !tbaa !3
  %58 = load i32, i32* %6, align 4, !tbaa !3
  %59 = icmp eq i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = call i64 @llvm.expect.i64(i64 %62, i64 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %46
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %68

; <label>:67:                                     ; preds = %46
  br label %68

; <label>:68:                                     ; preds = %67, %66
  %69 = load i32, i32* %7, align 4, !tbaa !3
  %70 = load i32, i32* %2, align 4, !tbaa !3
  %71 = icmp eq i32 %69, %70
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = call i64 @llvm.expect.i64(i64 %74, i64 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %68
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:79:                                     ; preds = %68
  br label %80

; <label>:80:                                     ; preds = %79, %78
  store i32 0, i32* %6, align 4, !tbaa !3
  %81 = load i32, i32* %6, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %81) #4, !srcloc !10
  store i32 31, i32* %3, align 4, !tbaa !3
  store i32 1073741823, i32* %4, align 4, !tbaa !3
  store i32 734916353, i32* %5, align 4, !tbaa !3
  store i32 2147483646, i32* %7, align 4, !tbaa !3
  %82 = load i32, i32* %6, align 4, !tbaa !3
  %83 = load i32, i32* %3, align 4, !tbaa !3
  %84 = load i32, i32* %4, align 4, !tbaa !3
  %85 = load i32, i32* %5, align 4, !tbaa !3
  %86 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_r.w $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %83, i32 %84, i32 %85, i32 %82) #2, !srcloc !11
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = extractvalue { i32, i32 } %86, 1
  store i32 %87, i32* %2, align 4, !tbaa !3
  store i32 %88, i32* %6, align 4, !tbaa !3
  %89 = load i32, i32* %6, align 4, !tbaa !3
  %90 = ashr i32 %89, 23
  %91 = and i32 %90, 1
  store i32 %91, i32* %6, align 4, !tbaa !3
  %92 = load i32, i32* %6, align 4, !tbaa !3
  %93 = icmp eq i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = call i64 @llvm.expect.i64(i64 %96, i64 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

; <label>:99:                                     ; preds = %80
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %102

; <label>:101:                                    ; preds = %80
  br label %102

; <label>:102:                                    ; preds = %101, %100
  %103 = load i32, i32* %7, align 4, !tbaa !3
  %104 = load i32, i32* %2, align 4, !tbaa !3
  %105 = icmp eq i32 %103, %104
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = call i64 @llvm.expect.i64(i64 %108, i64 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %102
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %114

; <label>:113:                                    ; preds = %102
  br label %114

; <label>:114:                                    ; preds = %113, %112
  %115 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4
  %116 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #4
  %117 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #4
  %118 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #4
  %119 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #4
  %120 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #4
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
!7 = !{i32 212, i32 229, i32 258, i32 287, i32 325, i32 349}
!8 = !{i32 572, i32 583}
!9 = !{i32 720, i32 737, i32 766, i32 795, i32 833, i32 857}
!10 = !{i32 1080, i32 1091}
!11 = !{i32 1239, i32 1256, i32 1285, i32 1314, i32 1352, i32 1376}
