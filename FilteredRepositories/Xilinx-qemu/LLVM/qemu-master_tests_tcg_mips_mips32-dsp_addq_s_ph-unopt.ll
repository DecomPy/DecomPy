; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"result == rd\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"((dsp >> 20) & 0x01) == 1\00", align 1

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
  store i32 -1, i32* %3, align 4, !tbaa !3
  store i32 269488144, i32* %4, align 4, !tbaa !3
  store i32 269422607, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13) #2, !srcloc !7
  store i32 %14, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = icmp eq i32 %15, %16
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = call i64 @llvm.expect.i64(i64 %20, i64 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:25:                                     ; preds = %0
  br label %26

; <label>:26:                                     ; preds = %25, %24
  store i32 923960445, i32* %3, align 4, !tbaa !3
  store i32 3256109, i32* %4, align 4, !tbaa !3
  store i32 927170560, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %27, i32 %28) #2, !srcloc !8
  store i32 %29, i32* %2, align 4, !tbaa !3
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = load i32, i32* %2, align 4, !tbaa !3
  %32 = icmp eq i32 %30, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = call i64 @llvm.expect.i64(i64 %35, i64 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %26
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:40:                                     ; preds = %26
  br label %41

; <label>:41:                                     ; preds = %40, %39
  %42 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  store i32 %42, i32* %5, align 4, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !3
  %44 = ashr i32 %43, 20
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 1
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = call i64 @llvm.expect.i64(i64 %49, i64 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %41
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:54:                                     ; preds = %41
  br label %55

; <label>:55:                                     ; preds = %54, %53
  store i32 2147452029, i32* %3, align 4, !tbaa !3
  store i32 3256109, i32* %4, align 4, !tbaa !3
  store i32 2147450880, i32* %6, align 4, !tbaa !3
  %56 = load i32, i32* %3, align 4, !tbaa !3
  %57 = load i32, i32* %4, align 4, !tbaa !3
  %58 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %56, i32 %57) #2, !srcloc !10
  store i32 %58, i32* %2, align 4, !tbaa !3
  %59 = load i32, i32* %6, align 4, !tbaa !3
  %60 = load i32, i32* %2, align 4, !tbaa !3
  %61 = icmp eq i32 %59, %60
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = call i64 @llvm.expect.i64(i64 %64, i64 0)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %55
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:69:                                     ; preds = %55
  br label %70

; <label>:70:                                     ; preds = %69, %68
  %71 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !11
  store i32 %71, i32* %5, align 4, !tbaa !3
  %72 = load i32, i32* %5, align 4, !tbaa !3
  %73 = ashr i32 %72, 20
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 1
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = call i64 @llvm.expect.i64(i64 %78, i64 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %70
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:83:                                     ; preds = %70
  br label %84

; <label>:84:                                     ; preds = %83, %82
  store i32 -2144304003, i32* %3, align 4, !tbaa !3
  store i32 -1979666643, i32* %4, align 4, !tbaa !3
  store i32 -2147450880, i32* %6, align 4, !tbaa !3
  %85 = load i32, i32* %3, align 4, !tbaa !3
  %86 = load i32, i32* %4, align 4, !tbaa !3
  %87 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %85, i32 %86) #2, !srcloc !12
  store i32 %87, i32* %2, align 4, !tbaa !3
  %88 = load i32, i32* %6, align 4, !tbaa !3
  %89 = load i32, i32* %2, align 4, !tbaa !3
  %90 = icmp eq i32 %88, %89
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = call i64 @llvm.expect.i64(i64 %93, i64 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %84
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:98:                                     ; preds = %84
  br label %99

; <label>:99:                                     ; preds = %98, %97
  %100 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !13
  store i32 %100, i32* %5, align 4, !tbaa !3
  %101 = load i32, i32* %5, align 4, !tbaa !3
  %102 = ashr i32 %101, 20
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 1
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = call i64 @llvm.expect.i64(i64 %107, i64 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %99
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:112:                                    ; preds = %99
  br label %113

; <label>:113:                                    ; preds = %112, %111
  %114 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #4
  %115 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #4
  %116 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #4
  %117 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #4
  %118 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #4
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
!7 = !{i32 197, i32 222}
!8 = !{i32 406, i32 431}
!9 = !{i32 540, i32 551}
!10 = !{i32 721, i32 746}
!11 = !{i32 855, i32 866}
!12 = !{i32 1036, i32 1061}
!13 = !{i32 1170, i32 1181}
