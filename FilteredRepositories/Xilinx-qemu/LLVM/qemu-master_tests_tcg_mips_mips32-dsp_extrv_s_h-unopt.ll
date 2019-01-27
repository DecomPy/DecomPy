; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c\00", align 1
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
  store i32 32767, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %15, i32 %16, i32 %17, i32 %14) #2, !srcloc !7
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
  store i32 8, i32* %3, align 4, !tbaa !3
  store i32 -1, i32* %4, align 4, !tbaa !3
  store i32 305414945, i32* %5, align 4, !tbaa !3
  store i32 -32768, i32* %7, align 4, !tbaa !3
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = load i32, i32* %4, align 4, !tbaa !3
  %50 = load i32, i32* %5, align 4, !tbaa !3
  %51 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %48, i32 %49, i32 %50, i32 %47) #2, !srcloc !8
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = extractvalue { i32, i32 } %51, 1
  store i32 %52, i32* %2, align 4, !tbaa !3
  store i32 %53, i32* %6, align 4, !tbaa !3
  %54 = load i32, i32* %6, align 4, !tbaa !3
  %55 = ashr i32 %54, 23
  %56 = and i32 %55, 1
  store i32 %56, i32* %6, align 4, !tbaa !3
  %57 = load i32, i32* %6, align 4, !tbaa !3
  %58 = icmp eq i32 %57, 1
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = call i64 @llvm.expect.i64(i64 %61, i64 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %46
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %67

; <label>:66:                                     ; preds = %46
  br label %67

; <label>:67:                                     ; preds = %66, %65
  %68 = load i32, i32* %7, align 4, !tbaa !3
  %69 = load i32, i32* %2, align 4, !tbaa !3
  %70 = icmp eq i32 %68, %69
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = call i64 @llvm.expect.i64(i64 %73, i64 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %67
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %79

; <label>:78:                                     ; preds = %67
  br label %79

; <label>:79:                                     ; preds = %78, %77
  store i32 0, i32* %6, align 4, !tbaa !3
  %80 = load i32, i32* %6, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %80) #4, !srcloc !9
  store i32 4, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 17185, i32* %5, align 4, !tbaa !3
  store i32 1074, i32* %7, align 4, !tbaa !3
  %81 = load i32, i32* %6, align 4, !tbaa !3
  %82 = load i32, i32* %3, align 4, !tbaa !3
  %83 = load i32, i32* %4, align 4, !tbaa !3
  %84 = load i32, i32* %5, align 4, !tbaa !3
  %85 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %82, i32 %83, i32 %84, i32 %81) #2, !srcloc !10
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = extractvalue { i32, i32 } %85, 1
  store i32 %86, i32* %2, align 4, !tbaa !3
  store i32 %87, i32* %6, align 4, !tbaa !3
  %88 = load i32, i32* %6, align 4, !tbaa !3
  %89 = ashr i32 %88, 23
  %90 = and i32 %89, 1
  store i32 %90, i32* %6, align 4, !tbaa !3
  %91 = load i32, i32* %6, align 4, !tbaa !3
  %92 = icmp eq i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = call i64 @llvm.expect.i64(i64 %95, i64 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %79
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:100:                                    ; preds = %79
  br label %101

; <label>:101:                                    ; preds = %100, %99
  %102 = load i32, i32* %7, align 4, !tbaa !3
  %103 = load i32, i32* %2, align 4, !tbaa !3
  %104 = icmp eq i32 %102, %103
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = call i64 @llvm.expect.i64(i64 %107, i64 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %101
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:112:                                    ; preds = %101
  br label %113

; <label>:113:                                    ; preds = %112, %111
  store i32 28, i32* %3, align 4, !tbaa !3
  store i32 291, i32* %4, align 4, !tbaa !3
  store i32 -2023406815, i32* %5, align 4, !tbaa !3
  store i32 4664, i32* %7, align 4, !tbaa !3
  %114 = load i32, i32* %6, align 4, !tbaa !3
  %115 = load i32, i32* %3, align 4, !tbaa !3
  %116 = load i32, i32* %4, align 4, !tbaa !3
  %117 = load i32, i32* %5, align 4, !tbaa !3
  %118 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %115, i32 %116, i32 %117, i32 %114) #2, !srcloc !11
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = extractvalue { i32, i32 } %118, 1
  store i32 %119, i32* %2, align 4, !tbaa !3
  store i32 %120, i32* %6, align 4, !tbaa !3
  %121 = load i32, i32* %6, align 4, !tbaa !3
  %122 = ashr i32 %121, 23
  %123 = and i32 %122, 1
  store i32 %123, i32* %6, align 4, !tbaa !3
  %124 = load i32, i32* %6, align 4, !tbaa !3
  %125 = icmp eq i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = call i64 @llvm.expect.i64(i64 %128, i64 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %113
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %134

; <label>:133:                                    ; preds = %113
  br label %134

; <label>:134:                                    ; preds = %133, %132
  %135 = load i32, i32* %7, align 4, !tbaa !3
  %136 = load i32, i32* %2, align 4, !tbaa !3
  %137 = icmp eq i32 %135, %136
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = call i64 @llvm.expect.i64(i64 %140, i64 0)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %134
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %146

; <label>:145:                                    ; preds = %134
  br label %146

; <label>:146:                                    ; preds = %145, %144
  %147 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %147) #4
  %148 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #4
  %149 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #4
  %150 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150) #4
  %151 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #4
  %152 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %152) #4
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
!8 = !{i32 616, i32 633, i32 662, i32 691, i32 729, i32 753}
!9 = !{i32 969, i32 980}
!10 = !{i32 1115, i32 1132, i32 1161, i32 1190, i32 1228, i32 1252}
!11 = !{i32 1510, i32 1527, i32 1556, i32 1585, i32 1623, i32 1647}
