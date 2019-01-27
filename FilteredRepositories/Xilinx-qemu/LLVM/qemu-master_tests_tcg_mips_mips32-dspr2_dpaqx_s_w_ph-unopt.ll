; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [91 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dsp == resultdsp\00", align 1
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
  store i32 5, i32* %5, align 4, !tbaa !3
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  store i32 5, i32* %6, align 4, !tbaa !3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  store i32 -2147483393, i32* %2, align 4, !tbaa !3
  store i32 98304, i32* %3, align 4, !tbaa !3
  store i32 5, i32* %7, align 4, !tbaa !3
  store i32 -2147483134, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %20, i32 %21, i32 %18, i32 %19) #2, !srcloc !7
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = extractvalue { i32, i32, i32 } %22, 1
  %25 = extractvalue { i32, i32, i32 } %22, 2
  store i32 %23, i32* %5, align 4, !tbaa !3
  store i32 %24, i32* %6, align 4, !tbaa !3
  store i32 %25, i32* %4, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = ashr i32 %26, 17
  %28 = and i32 %27, 1
  store i32 %28, i32* %4, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = load i32, i32* %9, align 4, !tbaa !3
  %31 = icmp eq i32 %29, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = call i64 @llvm.expect.i64(i64 %34, i64 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:39:                                     ; preds = %0
  br label %40

; <label>:40:                                     ; preds = %39, %38
  %41 = load i32, i32* %5, align 4, !tbaa !3
  %42 = load i32, i32* %7, align 4, !tbaa !3
  %43 = icmp eq i32 %41, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = call i64 @llvm.expect.i64(i64 %46, i64 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %40
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:51:                                     ; preds = %40
  br label %52

; <label>:52:                                     ; preds = %51, %50
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = load i32, i32* %8, align 4, !tbaa !3
  %55 = icmp eq i32 %53, %54
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = call i64 @llvm.expect.i64(i64 %58, i64 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %52
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:63:                                     ; preds = %52
  br label %64

; <label>:64:                                     ; preds = %63, %62
  store i32 5, i32* %5, align 4, !tbaa !3
  store i32 5, i32* %6, align 4, !tbaa !3
  store i32 16711935, i32* %2, align 4, !tbaa !3
  store i32 65538, i32* %3, align 4, !tbaa !3
  store i32 5, i32* %7, align 4, !tbaa !3
  store i32 1535, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %65 = load i32, i32* %5, align 4, !tbaa !3
  %66 = load i32, i32* %6, align 4, !tbaa !3
  %67 = load i32, i32* %2, align 4, !tbaa !3
  %68 = load i32, i32* %3, align 4, !tbaa !3
  %69 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %67, i32 %68, i32 %65, i32 %66) #2, !srcloc !8
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = extractvalue { i32, i32, i32 } %69, 1
  %72 = extractvalue { i32, i32, i32 } %69, 2
  store i32 %70, i32* %5, align 4, !tbaa !3
  store i32 %71, i32* %6, align 4, !tbaa !3
  store i32 %72, i32* %4, align 4, !tbaa !3
  %73 = load i32, i32* %4, align 4, !tbaa !3
  %74 = ashr i32 %73, 17
  %75 = and i32 %74, 1
  store i32 %75, i32* %4, align 4, !tbaa !3
  %76 = load i32, i32* %4, align 4, !tbaa !3
  %77 = load i32, i32* %9, align 4, !tbaa !3
  %78 = icmp eq i32 %76, %77
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = call i64 @llvm.expect.i64(i64 %81, i64 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %64
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %87

; <label>:86:                                     ; preds = %64
  br label %87

; <label>:87:                                     ; preds = %86, %85
  %88 = load i32, i32* %5, align 4, !tbaa !3
  %89 = load i32, i32* %7, align 4, !tbaa !3
  %90 = icmp eq i32 %88, %89
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = call i64 @llvm.expect.i64(i64 %93, i64 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %87
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:98:                                     ; preds = %87
  br label %99

; <label>:99:                                     ; preds = %98, %97
  %100 = load i32, i32* %6, align 4, !tbaa !3
  %101 = load i32, i32* %8, align 4, !tbaa !3
  %102 = icmp eq i32 %100, %101
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = call i64 @llvm.expect.i64(i64 %105, i64 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

; <label>:108:                                    ; preds = %99
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:110:                                    ; preds = %99
  br label %111

; <label>:111:                                    ; preds = %110, %109
  store i32 5, i32* %5, align 4, !tbaa !3
  store i32 5, i32* %6, align 4, !tbaa !3
  store i32 -2147483393, i32* %2, align 4, !tbaa !3
  store i32 163840, i32* %3, align 4, !tbaa !3
  store i32 5, i32* %7, align 4, !tbaa !3
  store i32 -2147482624, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %112 = load i32, i32* %5, align 4, !tbaa !3
  %113 = load i32, i32* %6, align 4, !tbaa !3
  %114 = load i32, i32* %2, align 4, !tbaa !3
  %115 = load i32, i32* %3, align 4, !tbaa !3
  %116 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %114, i32 %115, i32 %112, i32 %113) #2, !srcloc !9
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = extractvalue { i32, i32, i32 } %116, 1
  %119 = extractvalue { i32, i32, i32 } %116, 2
  store i32 %117, i32* %5, align 4, !tbaa !3
  store i32 %118, i32* %6, align 4, !tbaa !3
  store i32 %119, i32* %4, align 4, !tbaa !3
  %120 = load i32, i32* %4, align 4, !tbaa !3
  %121 = ashr i32 %120, 17
  %122 = and i32 %121, 1
  store i32 %122, i32* %4, align 4, !tbaa !3
  %123 = load i32, i32* %4, align 4, !tbaa !3
  %124 = load i32, i32* %9, align 4, !tbaa !3
  %125 = icmp eq i32 %123, %124
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = call i64 @llvm.expect.i64(i64 %128, i64 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %111
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %134

; <label>:133:                                    ; preds = %111
  br label %134

; <label>:134:                                    ; preds = %133, %132
  %135 = load i32, i32* %5, align 4, !tbaa !3
  %136 = load i32, i32* %7, align 4, !tbaa !3
  %137 = icmp eq i32 %135, %136
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = call i64 @llvm.expect.i64(i64 %140, i64 0)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %134
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %146

; <label>:145:                                    ; preds = %134
  br label %146

; <label>:146:                                    ; preds = %145, %144
  %147 = load i32, i32* %6, align 4, !tbaa !3
  %148 = load i32, i32* %8, align 4, !tbaa !3
  %149 = icmp eq i32 %147, %148
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = call i64 @llvm.expect.i64(i64 %152, i64 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

; <label>:155:                                    ; preds = %146
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %158

; <label>:157:                                    ; preds = %146
  br label %158

; <label>:158:                                    ; preds = %157, %156
  %159 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #4
  %160 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #4
  %161 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %161) #4
  %162 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %162) #4
  %163 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %163) #4
  %164 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %164) #4
  %165 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %165) #4
  %166 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %166) #4
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
!7 = !{i32 275, i32 292, i32 322, i32 363, i32 393, i32 423, i32 447}
!8 = !{i32 1070, i32 1087, i32 1117, i32 1158, i32 1188, i32 1218, i32 1242}
!9 = !{i32 1614, i32 1631, i32 1661, i32 1702, i32 1732, i32 1762, i32 1786}
