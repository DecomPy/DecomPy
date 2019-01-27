; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_dpaq_sa_l_w.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_dpaq_sa_l_w.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [88 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_dpaq_sa_l_w.c\00", align 1
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
  store i32 0, i32* %5, align 4, !tbaa !3
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4
  store i32 0, i32* %6, align 4, !tbaa !3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  store i32 -2147483648, i32* %2, align 4, !tbaa !3
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 2147483647, i32* %7, align 4, !tbaa !3
  store i32 -1, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = call { i32, i32, i32 } asm "mthi        $0, $$ac1\0A\09mtlo        $1, $$ac1\0A\09dpaq_sa.l.w $$ac1, $3, $4\0A\09mfhi        $0,   $$ac1\0A\09mflo        $1,   $$ac1\0A\09rddsp       $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %20, i32 %21, i32 %18, i32 %19) #2, !srcloc !7
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:63:                                     ; preds = %52
  br label %64

; <label>:64:                                     ; preds = %63, %62
  store i32 18, i32* %5, align 4, !tbaa !3
  store i32 72, i32* %6, align 4, !tbaa !3
  store i32 -2147483648, i32* %2, align 4, !tbaa !3
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 2147483647, i32* %7, align 4, !tbaa !3
  store i32 -1, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %65 = load i32, i32* %5, align 4, !tbaa !3
  %66 = load i32, i32* %6, align 4, !tbaa !3
  %67 = load i32, i32* %2, align 4, !tbaa !3
  %68 = load i32, i32* %3, align 4, !tbaa !3
  %69 = call { i32, i32, i32 } asm "mthi        $0, $$ac1\0A\09mtlo        $1, $$ac1\0A\09dpaq_sa.l.w $$ac1, $3, $4\0A\09mfhi        $0,   $$ac1\0A\09mflo        $1,   $$ac1\0A\09rddsp       $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %67, i32 %68, i32 %65, i32 %66) #2, !srcloc !8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:110:                                    ; preds = %99
  br label %111

; <label>:111:                                    ; preds = %110, %109
  store i32 1947546272, i32* %5, align 4, !tbaa !3
  store i32 -51725560, i32* %6, align 4, !tbaa !3
  store i32 -2147483648, i32* %2, align 4, !tbaa !3
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 2147483647, i32* %7, align 4, !tbaa !3
  store i32 -1, i32* %8, align 4, !tbaa !3
  store i32 1, i32* %9, align 4, !tbaa !3
  %112 = load i32, i32* %5, align 4, !tbaa !3
  %113 = load i32, i32* %6, align 4, !tbaa !3
  %114 = load i32, i32* %2, align 4, !tbaa !3
  %115 = load i32, i32* %3, align 4, !tbaa !3
  %116 = call { i32, i32, i32 } asm "mthi        $0, $$ac1\0A\09mtlo        $1, $$ac1\0A\09dpaq_sa.l.w $$ac1, $3, $4\0A\09mfhi        $0,   $$ac1\0A\09mflo        $1,   $$ac1\0A\09rddsp       $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %114, i32 %115, i32 %112, i32 %113) #2, !srcloc !9
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %158

; <label>:157:                                    ; preds = %146
  br label %158

; <label>:158:                                    ; preds = %157, %156
  store i32 0, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 -1073741824, i32* %2, align 4, !tbaa !3
  store i32 2147483647, i32* %3, align 4, !tbaa !3
  store i32 -1073741824, i32* %7, align 4, !tbaa !3
  store i32 -2147483648, i32* %8, align 4, !tbaa !3
  store i32 0, i32* %9, align 4, !tbaa !3
  %159 = load i32, i32* %5, align 4, !tbaa !3
  %160 = load i32, i32* %6, align 4, !tbaa !3
  %161 = load i32, i32* %2, align 4, !tbaa !3
  %162 = load i32, i32* %3, align 4, !tbaa !3
  %163 = call { i32, i32, i32 } asm "wrdsp       $$0\0A\09mthi        $0, $$ac1\0A\09mtlo        $1, $$ac1\0A\09dpaq_sa.l.w $$ac1, $3, $4\0A\09mfhi        $0,   $$ac1\0A\09mflo        $1,   $$ac1\0A\09rddsp       $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %161, i32 %162, i32 %159, i32 %160) #2, !srcloc !10
  %164 = extractvalue { i32, i32, i32 } %163, 0
  %165 = extractvalue { i32, i32, i32 } %163, 1
  %166 = extractvalue { i32, i32, i32 } %163, 2
  store i32 %164, i32* %5, align 4, !tbaa !3
  store i32 %165, i32* %6, align 4, !tbaa !3
  store i32 %166, i32* %4, align 4, !tbaa !3
  %167 = load i32, i32* %4, align 4, !tbaa !3
  %168 = ashr i32 %167, 17
  %169 = and i32 %168, 1
  store i32 %169, i32* %4, align 4, !tbaa !3
  %170 = load i32, i32* %4, align 4, !tbaa !3
  %171 = load i32, i32* %9, align 4, !tbaa !3
  %172 = icmp eq i32 %170, %171
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = call i64 @llvm.expect.i64(i64 %175, i64 0)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %158
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %181

; <label>:180:                                    ; preds = %158
  br label %181

; <label>:181:                                    ; preds = %180, %179
  %182 = load i32, i32* %5, align 4, !tbaa !3
  %183 = load i32, i32* %7, align 4, !tbaa !3
  %184 = icmp eq i32 %182, %183
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = sext i32 %186 to i64
  %188 = call i64 @llvm.expect.i64(i64 %187, i64 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

; <label>:190:                                    ; preds = %181
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %193

; <label>:192:                                    ; preds = %181
  br label %193

; <label>:193:                                    ; preds = %192, %191
  %194 = load i32, i32* %6, align 4, !tbaa !3
  %195 = load i32, i32* %8, align 4, !tbaa !3
  %196 = icmp eq i32 %194, %195
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = call i64 @llvm.expect.i64(i64 %199, i64 0)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

; <label>:202:                                    ; preds = %193
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %205

; <label>:204:                                    ; preds = %193
  br label %205

; <label>:205:                                    ; preds = %204, %203
  store i32 536870912, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 -536870912, i32* %2, align 4, !tbaa !3
  store i32 2147483647, i32* %3, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  store i32 1073741824, i32* %8, align 4, !tbaa !3
  store i32 0, i32* %9, align 4, !tbaa !3
  %206 = load i32, i32* %5, align 4, !tbaa !3
  %207 = load i32, i32* %6, align 4, !tbaa !3
  %208 = load i32, i32* %2, align 4, !tbaa !3
  %209 = load i32, i32* %3, align 4, !tbaa !3
  %210 = call { i32, i32, i32 } asm "wrdsp       $$0\0A\09mthi        $0, $$ac1\0A\09mtlo        $1, $$ac1\0A\09dpaq_sa.l.w $$ac1, $3, $4\0A\09mfhi        $0,   $$ac1\0A\09mflo        $1,   $$ac1\0A\09rddsp       $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %208, i32 %209, i32 %206, i32 %207) #2, !srcloc !11
  %211 = extractvalue { i32, i32, i32 } %210, 0
  %212 = extractvalue { i32, i32, i32 } %210, 1
  %213 = extractvalue { i32, i32, i32 } %210, 2
  store i32 %211, i32* %5, align 4, !tbaa !3
  store i32 %212, i32* %6, align 4, !tbaa !3
  store i32 %213, i32* %4, align 4, !tbaa !3
  %214 = load i32, i32* %4, align 4, !tbaa !3
  %215 = ashr i32 %214, 17
  %216 = and i32 %215, 1
  store i32 %216, i32* %4, align 4, !tbaa !3
  %217 = load i32, i32* %4, align 4, !tbaa !3
  %218 = load i32, i32* %9, align 4, !tbaa !3
  %219 = icmp eq i32 %217, %218
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = sext i32 %221 to i64
  %223 = call i64 @llvm.expect.i64(i64 %222, i64 0)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

; <label>:225:                                    ; preds = %205
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %228

; <label>:227:                                    ; preds = %205
  br label %228

; <label>:228:                                    ; preds = %227, %226
  %229 = load i32, i32* %5, align 4, !tbaa !3
  %230 = load i32, i32* %7, align 4, !tbaa !3
  %231 = icmp eq i32 %229, %230
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  %234 = sext i32 %233 to i64
  %235 = call i64 @llvm.expect.i64(i64 %234, i64 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

; <label>:237:                                    ; preds = %228
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %240

; <label>:239:                                    ; preds = %228
  br label %240

; <label>:240:                                    ; preds = %239, %238
  %241 = load i32, i32* %6, align 4, !tbaa !3
  %242 = load i32, i32* %8, align 4, !tbaa !3
  %243 = icmp eq i32 %241, %242
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = call i64 @llvm.expect.i64(i64 %246, i64 0)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

; <label>:249:                                    ; preds = %240
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %252

; <label>:251:                                    ; preds = %240
  br label %252

; <label>:252:                                    ; preds = %251, %250
  %253 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %253) #4
  %254 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %254) #4
  %255 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %255) #4
  %256 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %256) #4
  %257 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %257) #4
  %258 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %258) #4
  %259 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %259) #4
  %260 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %260) #4
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
!7 = !{i32 291, i32 314, i32 350, i32 390, i32 428, i32 466, i32 496}
!8 = !{i32 885, i32 908, i32 944, i32 984, i32 1022, i32 1060, i32 1090}
!9 = !{i32 1479, i32 1502, i32 1538, i32 1578, i32 1616, i32 1654, i32 1684}
!10 = !{i32 2052, i32 2069, i32 2105, i32 2141, i32 2181, i32 2219, i32 2257, i32 2287}
!11 = !{i32 2655, i32 2672, i32 2708, i32 2744, i32 2784, i32 2822, i32 2860, i32 2890}
