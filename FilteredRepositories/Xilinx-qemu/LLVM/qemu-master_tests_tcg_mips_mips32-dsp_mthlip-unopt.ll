; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [83 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"dsp == result\00", align 1
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
  store i32 0, i32* %1, align 4
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  %15 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  store i32 7, i32* %5, align 4, !tbaa !3
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 16759722, i32* %2, align 4, !tbaa !3
  store i32 46283, i32* %7, align 4, !tbaa !3
  store i32 16759722, i32* %8, align 4, !tbaa !3
  store i32 39, i32* %6, align 4, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = call { i32, i32, i32 } asm "wrdsp $0, 0x01\0A\09mthi $1, $$ac1\0A\09mtlo $2, $$ac1\0A\09mthlip $3, $$ac1\0A\09mfhi $1, $$ac1\0A\09mflo $2, $$ac1\0A\09rddsp $0\0A\09", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %19, i32 %16, i32 %17, i32 %18) #2, !srcloc !7
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = extractvalue { i32, i32, i32 } %20, 1
  %23 = extractvalue { i32, i32, i32 } %20, 2
  store i32 %21, i32* %5, align 4, !tbaa !3
  store i32 %22, i32* %3, align 4, !tbaa !3
  store i32 %23, i32* %4, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = and i32 %24, 63
  store i32 %25, i32* %5, align 4, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = icmp eq i32 %26, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = call i64 @llvm.expect.i64(i64 %31, i64 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:36:                                     ; preds = %0
  br label %37

; <label>:37:                                     ; preds = %36, %35
  %38 = load i32, i32* %3, align 4, !tbaa !3
  %39 = load i32, i32* %7, align 4, !tbaa !3
  %40 = icmp eq i32 %38, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = call i64 @llvm.expect.i64(i64 %43, i64 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %37
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:48:                                     ; preds = %37
  br label %49

; <label>:49:                                     ; preds = %48, %47
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = load i32, i32* %8, align 4, !tbaa !3
  %52 = icmp eq i32 %50, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = call i64 @llvm.expect.i64(i64 %55, i64 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %49
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %49
  br label %61

; <label>:61:                                     ; preds = %60, %59
  store i32 31, i32* %5, align 4, !tbaa !3
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 16759722, i32* %2, align 4, !tbaa !3
  store i32 46283, i32* %7, align 4, !tbaa !3
  store i32 16759722, i32* %8, align 4, !tbaa !3
  store i32 63, i32* %6, align 4, !tbaa !3
  %62 = load i32, i32* %5, align 4, !tbaa !3
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = load i32, i32* %4, align 4, !tbaa !3
  %65 = load i32, i32* %2, align 4, !tbaa !3
  %66 = call { i32, i32, i32 } asm "wrdsp $0, 0x01\0A\09mthi $1, $$ac1\0A\09mtlo $2, $$ac1\0A\09mthlip $3, $$ac1\0A\09mfhi $1, $$ac1\0A\09mflo $2, $$ac1\0A\09rddsp $0\0A\09", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %65, i32 %62, i32 %63, i32 %64) #2, !srcloc !8
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = extractvalue { i32, i32, i32 } %66, 1
  %69 = extractvalue { i32, i32, i32 } %66, 2
  store i32 %67, i32* %5, align 4, !tbaa !3
  store i32 %68, i32* %3, align 4, !tbaa !3
  store i32 %69, i32* %4, align 4, !tbaa !3
  %70 = load i32, i32* %5, align 4, !tbaa !3
  %71 = and i32 %70, 63
  store i32 %71, i32* %5, align 4, !tbaa !3
  %72 = load i32, i32* %5, align 4, !tbaa !3
  %73 = load i32, i32* %6, align 4, !tbaa !3
  %74 = icmp eq i32 %72, %73
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = call i64 @llvm.expect.i64(i64 %77, i64 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %61
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:82:                                     ; preds = %61
  br label %83

; <label>:83:                                     ; preds = %82, %81
  %84 = load i32, i32* %3, align 4, !tbaa !3
  %85 = load i32, i32* %7, align 4, !tbaa !3
  %86 = icmp eq i32 %84, %85
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = call i64 @llvm.expect.i64(i64 %89, i64 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %83
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:94:                                     ; preds = %83
  br label %95

; <label>:95:                                     ; preds = %94, %93
  %96 = load i32, i32* %4, align 4, !tbaa !3
  %97 = load i32, i32* %8, align 4, !tbaa !3
  %98 = icmp eq i32 %96, %97
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = call i64 @llvm.expect.i64(i64 %101, i64 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %95
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:106:                                    ; preds = %95
  br label %107

; <label>:107:                                    ; preds = %106, %105
  %108 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #4
  %109 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #4
  %110 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #4
  %111 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4
  %112 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4
  %113 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4
  %114 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4
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
!7 = !{i32 275, i32 292, i32 321, i32 350, i32 381, i32 410, i32 439, i32 463}
!8 = !{i32 806, i32 823, i32 852, i32 881, i32 912, i32 941, i32 970, i32 994}
