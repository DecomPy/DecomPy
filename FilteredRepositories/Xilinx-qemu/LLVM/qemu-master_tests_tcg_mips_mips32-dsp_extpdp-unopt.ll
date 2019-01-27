; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [83 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pos == 3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"efi == 0\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"efi == 1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dsp == 0x3F\00", align 1

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
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 7, i32* %5, align 4, !tbaa !3
  store i32 12, i32* %8, align 4, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %17, i32 %18, i32 %16) #2, !srcloc !7
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, i32* %2, align 4, !tbaa !3
  store i32 %21, i32* %5, align 4, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = and i32 %22, 63
  store i32 %23, i32* %6, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = ashr i32 %24, 14
  %26 = and i32 %25, 1
  store i32 %26, i32* %7, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = icmp eq i32 %27, 3
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = call i64 @llvm.expect.i64(i64 %31, i64 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:36:                                     ; preds = %0
  br label %37

; <label>:37:                                     ; preds = %36, %35
  %38 = load i32, i32* %7, align 4, !tbaa !3
  %39 = icmp eq i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = call i64 @llvm.expect.i64(i64 %42, i64 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %37
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:47:                                     ; preds = %37
  br label %48

; <label>:48:                                     ; preds = %47, %46
  %49 = load i32, i32* %8, align 4, !tbaa !3
  %50 = load i32, i32* %2, align 4, !tbaa !3
  %51 = icmp eq i32 %49, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = call i64 @llvm.expect.i64(i64 %54, i64 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %48
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:59:                                     ; preds = %48
  br label %60

; <label>:60:                                     ; preds = %59, %58
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 1, i32* %5, align 4, !tbaa !3
  %61 = load i32, i32* %5, align 4, !tbaa !3
  %62 = load i32, i32* %3, align 4, !tbaa !3
  %63 = load i32, i32* %4, align 4, !tbaa !3
  %64 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %62, i32 %63, i32 %61) #2, !srcloc !8
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = extractvalue { i32, i32 } %64, 1
  store i32 %65, i32* %2, align 4, !tbaa !3
  store i32 %66, i32* %5, align 4, !tbaa !3
  %67 = load i32, i32* %5, align 4, !tbaa !3
  %68 = ashr i32 %67, 14
  %69 = and i32 %68, 1
  store i32 %69, i32* %7, align 4, !tbaa !3
  %70 = load i32, i32* %7, align 4, !tbaa !3
  %71 = icmp eq i32 %70, 1
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = call i64 @llvm.expect.i64(i64 %74, i64 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %60
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:79:                                     ; preds = %60
  br label %80

; <label>:80:                                     ; preds = %79, %78
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %8, align 4, !tbaa !3
  %81 = load i32, i32* %5, align 4, !tbaa !3
  %82 = load i32, i32* %3, align 4, !tbaa !3
  %83 = load i32, i32* %4, align 4, !tbaa !3
  %84 = call { i32, i32 } asm "wrdsp $1\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x00\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %82, i32 %83, i32 %81) #2, !srcloc !9
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = extractvalue { i32, i32 } %84, 1
  store i32 %85, i32* %2, align 4, !tbaa !3
  store i32 %86, i32* %5, align 4, !tbaa !3
  %87 = load i32, i32* %5, align 4, !tbaa !3
  %88 = icmp eq i32 %87, 63
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = call i64 @llvm.expect.i64(i64 %91, i64 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %80
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:96:                                     ; preds = %80
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i32, i32* %8, align 4, !tbaa !3
  %99 = load i32, i32* %2, align 4, !tbaa !3
  %100 = icmp eq i32 %98, %99
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = call i64 @llvm.expect.i64(i64 %103, i64 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

; <label>:106:                                    ; preds = %97
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:108:                                    ; preds = %97
  br label %109

; <label>:109:                                    ; preds = %108, %107
  %110 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #4
  %111 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #4
  %112 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #4
  %113 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #4
  %114 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4
  %115 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4
  %116 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #4
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
!7 = !{i32 198, i32 215, i32 244, i32 273, i32 310, i32 334}
!8 = !{i32 604, i32 621, i32 650, i32 679, i32 716, i32 740}
!9 = !{i32 945, i32 956, i32 985, i32 1014, i32 1051, i32 1075}
