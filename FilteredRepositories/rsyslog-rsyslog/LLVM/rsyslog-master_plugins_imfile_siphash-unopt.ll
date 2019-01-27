; ModuleID = 'Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c'
source_filename = "Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.rs_siphash = private unnamed_addr constant [11 x i8] c"rs_siphash\00", align 1
@.str = private unnamed_addr constant [80 x i8] c"Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(outlen == 8) || (outlen == 16)\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @rs_siphash(i8*, i64, i8*, i8*, i64) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8, !tbaa !3
  store i64 %1, i64* %8, align 8, !tbaa !7
  store i8* %2, i8** %9, align 8, !tbaa !3
  store i8* %3, i8** %10, align 8, !tbaa !3
  store i64 %4, i64* %11, align 8, !tbaa !7
  %24 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #4
  store i64 8317987319222330741, i64* %12, align 8, !tbaa !9
  %25 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #4
  store i64 7237128888997146477, i64* %13, align 8, !tbaa !9
  %26 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #4
  store i64 7816392313619706465, i64* %14, align 8, !tbaa !9
  %27 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #4
  store i64 8387220255154660723, i64* %15, align 8, !tbaa !9
  %28 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4
  %29 = load i8*, i8** %9, align 8, !tbaa !3
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1, !tbaa !11
  %32 = zext i8 %31 to i64
  %33 = load i8*, i8** %9, align 8, !tbaa !3
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1, !tbaa !11
  %36 = zext i8 %35 to i64
  %37 = shl i64 %36, 8
  %38 = or i64 %32, %37
  %39 = load i8*, i8** %9, align 8, !tbaa !3
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1, !tbaa !11
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 16
  %44 = or i64 %38, %43
  %45 = load i8*, i8** %9, align 8, !tbaa !3
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1, !tbaa !11
  %48 = zext i8 %47 to i64
  %49 = shl i64 %48, 24
  %50 = or i64 %44, %49
  %51 = load i8*, i8** %9, align 8, !tbaa !3
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1, !tbaa !11
  %54 = zext i8 %53 to i64
  %55 = shl i64 %54, 32
  %56 = or i64 %50, %55
  %57 = load i8*, i8** %9, align 8, !tbaa !3
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1, !tbaa !11
  %60 = zext i8 %59 to i64
  %61 = shl i64 %60, 40
  %62 = or i64 %56, %61
  %63 = load i8*, i8** %9, align 8, !tbaa !3
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load i8, i8* %64, align 1, !tbaa !11
  %66 = zext i8 %65 to i64
  %67 = shl i64 %66, 48
  %68 = or i64 %62, %67
  %69 = load i8*, i8** %9, align 8, !tbaa !3
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = load i8, i8* %70, align 1, !tbaa !11
  %72 = zext i8 %71 to i64
  %73 = shl i64 %72, 56
  %74 = or i64 %68, %73
  store i64 %74, i64* %16, align 8, !tbaa !9
  %75 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %75) #4
  %76 = load i8*, i8** %9, align 8, !tbaa !3
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1, !tbaa !11
  %80 = zext i8 %79 to i64
  %81 = load i8*, i8** %9, align 8, !tbaa !3
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1, !tbaa !11
  %85 = zext i8 %84 to i64
  %86 = shl i64 %85, 8
  %87 = or i64 %80, %86
  %88 = load i8*, i8** %9, align 8, !tbaa !3
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1, !tbaa !11
  %92 = zext i8 %91 to i64
  %93 = shl i64 %92, 16
  %94 = or i64 %87, %93
  %95 = load i8*, i8** %9, align 8, !tbaa !3
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1, !tbaa !11
  %99 = zext i8 %98 to i64
  %100 = shl i64 %99, 24
  %101 = or i64 %94, %100
  %102 = load i8*, i8** %9, align 8, !tbaa !3
  %103 = getelementptr inbounds i8, i8* %102, i64 8
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  %105 = load i8, i8* %104, align 1, !tbaa !11
  %106 = zext i8 %105 to i64
  %107 = shl i64 %106, 32
  %108 = or i64 %101, %107
  %109 = load i8*, i8** %9, align 8, !tbaa !3
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = getelementptr inbounds i8, i8* %110, i64 5
  %112 = load i8, i8* %111, align 1, !tbaa !11
  %113 = zext i8 %112 to i64
  %114 = shl i64 %113, 40
  %115 = or i64 %108, %114
  %116 = load i8*, i8** %9, align 8, !tbaa !3
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = getelementptr inbounds i8, i8* %117, i64 6
  %119 = load i8, i8* %118, align 1, !tbaa !11
  %120 = zext i8 %119 to i64
  %121 = shl i64 %120, 48
  %122 = or i64 %115, %121
  %123 = load i8*, i8** %9, align 8, !tbaa !3
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  %125 = getelementptr inbounds i8, i8* %124, i64 7
  %126 = load i8, i8* %125, align 1, !tbaa !11
  %127 = zext i8 %126 to i64
  %128 = shl i64 %127, 56
  %129 = or i64 %122, %128
  store i64 %129, i64* %17, align 8, !tbaa !9
  %130 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %130) #4
  %131 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %131) #4
  %132 = bitcast i8** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %132) #4
  %133 = load i8*, i8** %7, align 8, !tbaa !3
  %134 = load i64, i64* %8, align 8, !tbaa !7
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i64, i64* %8, align 8, !tbaa !7
  %137 = urem i64 %136, 8
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8* %139, i8** %20, align 8, !tbaa !3
  %140 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %140) #4
  %141 = load i64, i64* %8, align 8, !tbaa !7
  %142 = and i64 %141, 7
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %21, align 4, !tbaa !12
  %144 = bitcast i64* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %144) #4
  %145 = load i64, i64* %8, align 8, !tbaa !7
  %146 = shl i64 %145, 56
  store i64 %146, i64* %22, align 8, !tbaa !9
  %147 = load i64, i64* %11, align 8, !tbaa !7
  %148 = icmp eq i64 %147, 8
  br i1 %148, label %152, label %149

; <label>:149:                                    ; preds = %5
  %150 = load i64, i64* %11, align 8, !tbaa !7
  %151 = icmp eq i64 %150, 16
  br label %152

; <label>:152:                                    ; preds = %149, %5
  %153 = phi i1 [ true, %5 ], [ %151, %149 ]
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = call i64 @llvm.expect.i64(i64 %156, i64 0)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

; <label>:159:                                    ; preds = %152
  call void @__assert_rtn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.rs_siphash, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %162

; <label>:161:                                    ; preds = %152
  br label %162

; <label>:162:                                    ; preds = %161, %160
  %163 = load i64, i64* %17, align 8, !tbaa !9
  %164 = load i64, i64* %15, align 8, !tbaa !9
  %165 = xor i64 %164, %163
  store i64 %165, i64* %15, align 8, !tbaa !9
  %166 = load i64, i64* %16, align 8, !tbaa !9
  %167 = load i64, i64* %14, align 8, !tbaa !9
  %168 = xor i64 %167, %166
  store i64 %168, i64* %14, align 8, !tbaa !9
  %169 = load i64, i64* %17, align 8, !tbaa !9
  %170 = load i64, i64* %13, align 8, !tbaa !9
  %171 = xor i64 %170, %169
  store i64 %171, i64* %13, align 8, !tbaa !9
  %172 = load i64, i64* %16, align 8, !tbaa !9
  %173 = load i64, i64* %12, align 8, !tbaa !9
  %174 = xor i64 %173, %172
  store i64 %174, i64* %12, align 8, !tbaa !9
  %175 = load i64, i64* %11, align 8, !tbaa !7
  %176 = icmp eq i64 %175, 16
  br i1 %176, label %177, label %180

; <label>:177:                                    ; preds = %162
  %178 = load i64, i64* %13, align 8, !tbaa !9
  %179 = xor i64 %178, 238
  store i64 %179, i64* %13, align 8, !tbaa !9
  br label %180

; <label>:180:                                    ; preds = %177, %162
  br label %181

; <label>:181:                                    ; preds = %303, %180
  %182 = load i8*, i8** %7, align 8, !tbaa !3
  %183 = load i8*, i8** %20, align 8, !tbaa !3
  %184 = icmp ne i8* %182, %183
  br i1 %184, label %185, label %306

; <label>:185:                                    ; preds = %181
  %186 = load i8*, i8** %7, align 8, !tbaa !3
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1, !tbaa !11
  %189 = zext i8 %188 to i64
  %190 = load i8*, i8** %7, align 8, !tbaa !3
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1, !tbaa !11
  %193 = zext i8 %192 to i64
  %194 = shl i64 %193, 8
  %195 = or i64 %189, %194
  %196 = load i8*, i8** %7, align 8, !tbaa !3
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1, !tbaa !11
  %199 = zext i8 %198 to i64
  %200 = shl i64 %199, 16
  %201 = or i64 %195, %200
  %202 = load i8*, i8** %7, align 8, !tbaa !3
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  %204 = load i8, i8* %203, align 1, !tbaa !11
  %205 = zext i8 %204 to i64
  %206 = shl i64 %205, 24
  %207 = or i64 %201, %206
  %208 = load i8*, i8** %7, align 8, !tbaa !3
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  %210 = load i8, i8* %209, align 1, !tbaa !11
  %211 = zext i8 %210 to i64
  %212 = shl i64 %211, 32
  %213 = or i64 %207, %212
  %214 = load i8*, i8** %7, align 8, !tbaa !3
  %215 = getelementptr inbounds i8, i8* %214, i64 5
  %216 = load i8, i8* %215, align 1, !tbaa !11
  %217 = zext i8 %216 to i64
  %218 = shl i64 %217, 40
  %219 = or i64 %213, %218
  %220 = load i8*, i8** %7, align 8, !tbaa !3
  %221 = getelementptr inbounds i8, i8* %220, i64 6
  %222 = load i8, i8* %221, align 1, !tbaa !11
  %223 = zext i8 %222 to i64
  %224 = shl i64 %223, 48
  %225 = or i64 %219, %224
  %226 = load i8*, i8** %7, align 8, !tbaa !3
  %227 = getelementptr inbounds i8, i8* %226, i64 7
  %228 = load i8, i8* %227, align 1, !tbaa !11
  %229 = zext i8 %228 to i64
  %230 = shl i64 %229, 56
  %231 = or i64 %225, %230
  store i64 %231, i64* %18, align 8, !tbaa !9
  %232 = load i64, i64* %18, align 8, !tbaa !9
  %233 = load i64, i64* %15, align 8, !tbaa !9
  %234 = xor i64 %233, %232
  store i64 %234, i64* %15, align 8, !tbaa !9
  store i32 0, i32* %19, align 4, !tbaa !12
  br label %235

; <label>:235:                                    ; preds = %296, %185
  %236 = load i32, i32* %19, align 4, !tbaa !12
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %238, label %299

; <label>:238:                                    ; preds = %235
  br label %239

; <label>:239:                                    ; preds = %238
  %240 = load i64, i64* %13, align 8, !tbaa !9
  %241 = load i64, i64* %12, align 8, !tbaa !9
  %242 = add i64 %241, %240
  store i64 %242, i64* %12, align 8, !tbaa !9
  %243 = load i64, i64* %13, align 8, !tbaa !9
  %244 = shl i64 %243, 13
  %245 = load i64, i64* %13, align 8, !tbaa !9
  %246 = lshr i64 %245, 51
  %247 = or i64 %244, %246
  store i64 %247, i64* %13, align 8, !tbaa !9
  %248 = load i64, i64* %12, align 8, !tbaa !9
  %249 = load i64, i64* %13, align 8, !tbaa !9
  %250 = xor i64 %249, %248
  store i64 %250, i64* %13, align 8, !tbaa !9
  %251 = load i64, i64* %12, align 8, !tbaa !9
  %252 = shl i64 %251, 32
  %253 = load i64, i64* %12, align 8, !tbaa !9
  %254 = lshr i64 %253, 32
  %255 = or i64 %252, %254
  store i64 %255, i64* %12, align 8, !tbaa !9
  %256 = load i64, i64* %15, align 8, !tbaa !9
  %257 = load i64, i64* %14, align 8, !tbaa !9
  %258 = add i64 %257, %256
  store i64 %258, i64* %14, align 8, !tbaa !9
  %259 = load i64, i64* %15, align 8, !tbaa !9
  %260 = shl i64 %259, 16
  %261 = load i64, i64* %15, align 8, !tbaa !9
  %262 = lshr i64 %261, 48
  %263 = or i64 %260, %262
  store i64 %263, i64* %15, align 8, !tbaa !9
  %264 = load i64, i64* %14, align 8, !tbaa !9
  %265 = load i64, i64* %15, align 8, !tbaa !9
  %266 = xor i64 %265, %264
  store i64 %266, i64* %15, align 8, !tbaa !9
  %267 = load i64, i64* %15, align 8, !tbaa !9
  %268 = load i64, i64* %12, align 8, !tbaa !9
  %269 = add i64 %268, %267
  store i64 %269, i64* %12, align 8, !tbaa !9
  %270 = load i64, i64* %15, align 8, !tbaa !9
  %271 = shl i64 %270, 21
  %272 = load i64, i64* %15, align 8, !tbaa !9
  %273 = lshr i64 %272, 43
  %274 = or i64 %271, %273
  store i64 %274, i64* %15, align 8, !tbaa !9
  %275 = load i64, i64* %12, align 8, !tbaa !9
  %276 = load i64, i64* %15, align 8, !tbaa !9
  %277 = xor i64 %276, %275
  store i64 %277, i64* %15, align 8, !tbaa !9
  %278 = load i64, i64* %13, align 8, !tbaa !9
  %279 = load i64, i64* %14, align 8, !tbaa !9
  %280 = add i64 %279, %278
  store i64 %280, i64* %14, align 8, !tbaa !9
  %281 = load i64, i64* %13, align 8, !tbaa !9
  %282 = shl i64 %281, 17
  %283 = load i64, i64* %13, align 8, !tbaa !9
  %284 = lshr i64 %283, 47
  %285 = or i64 %282, %284
  store i64 %285, i64* %13, align 8, !tbaa !9
  %286 = load i64, i64* %14, align 8, !tbaa !9
  %287 = load i64, i64* %13, align 8, !tbaa !9
  %288 = xor i64 %287, %286
  store i64 %288, i64* %13, align 8, !tbaa !9
  %289 = load i64, i64* %14, align 8, !tbaa !9
  %290 = shl i64 %289, 32
  %291 = load i64, i64* %14, align 8, !tbaa !9
  %292 = lshr i64 %291, 32
  %293 = or i64 %290, %292
  store i64 %293, i64* %14, align 8, !tbaa !9
  br label %294

; <label>:294:                                    ; preds = %239
  br label %295

; <label>:295:                                    ; preds = %294
  br label %296

; <label>:296:                                    ; preds = %295
  %297 = load i32, i32* %19, align 4, !tbaa !12
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %19, align 4, !tbaa !12
  br label %235

; <label>:299:                                    ; preds = %235
  %300 = load i64, i64* %18, align 8, !tbaa !9
  %301 = load i64, i64* %12, align 8, !tbaa !9
  %302 = xor i64 %301, %300
  store i64 %302, i64* %12, align 8, !tbaa !9
  br label %303

; <label>:303:                                    ; preds = %299
  %304 = load i8*, i8** %7, align 8, !tbaa !3
  %305 = getelementptr inbounds i8, i8* %304, i64 8
  store i8* %305, i8** %7, align 8, !tbaa !3
  br label %181

; <label>:306:                                    ; preds = %181
  %307 = load i32, i32* %21, align 4, !tbaa !12
  switch i32 %307, label %364 [
    i32 7, label %308
    i32 6, label %316
    i32 5, label %324
    i32 4, label %332
    i32 3, label %340
    i32 2, label %348
    i32 1, label %356
    i32 0, label %363
  ]

; <label>:308:                                    ; preds = %306
  %309 = load i8*, i8** %7, align 8, !tbaa !3
  %310 = getelementptr inbounds i8, i8* %309, i64 6
  %311 = load i8, i8* %310, align 1, !tbaa !11
  %312 = zext i8 %311 to i64
  %313 = shl i64 %312, 48
  %314 = load i64, i64* %22, align 8, !tbaa !9
  %315 = or i64 %314, %313
  store i64 %315, i64* %22, align 8, !tbaa !9
  br label %316

; <label>:316:                                    ; preds = %306, %308
  %317 = load i8*, i8** %7, align 8, !tbaa !3
  %318 = getelementptr inbounds i8, i8* %317, i64 5
  %319 = load i8, i8* %318, align 1, !tbaa !11
  %320 = zext i8 %319 to i64
  %321 = shl i64 %320, 40
  %322 = load i64, i64* %22, align 8, !tbaa !9
  %323 = or i64 %322, %321
  store i64 %323, i64* %22, align 8, !tbaa !9
  br label %324

; <label>:324:                                    ; preds = %306, %316
  %325 = load i8*, i8** %7, align 8, !tbaa !3
  %326 = getelementptr inbounds i8, i8* %325, i64 4
  %327 = load i8, i8* %326, align 1, !tbaa !11
  %328 = zext i8 %327 to i64
  %329 = shl i64 %328, 32
  %330 = load i64, i64* %22, align 8, !tbaa !9
  %331 = or i64 %330, %329
  store i64 %331, i64* %22, align 8, !tbaa !9
  br label %332

; <label>:332:                                    ; preds = %306, %324
  %333 = load i8*, i8** %7, align 8, !tbaa !3
  %334 = getelementptr inbounds i8, i8* %333, i64 3
  %335 = load i8, i8* %334, align 1, !tbaa !11
  %336 = zext i8 %335 to i64
  %337 = shl i64 %336, 24
  %338 = load i64, i64* %22, align 8, !tbaa !9
  %339 = or i64 %338, %337
  store i64 %339, i64* %22, align 8, !tbaa !9
  br label %340

; <label>:340:                                    ; preds = %306, %332
  %341 = load i8*, i8** %7, align 8, !tbaa !3
  %342 = getelementptr inbounds i8, i8* %341, i64 2
  %343 = load i8, i8* %342, align 1, !tbaa !11
  %344 = zext i8 %343 to i64
  %345 = shl i64 %344, 16
  %346 = load i64, i64* %22, align 8, !tbaa !9
  %347 = or i64 %346, %345
  store i64 %347, i64* %22, align 8, !tbaa !9
  br label %348

; <label>:348:                                    ; preds = %306, %340
  %349 = load i8*, i8** %7, align 8, !tbaa !3
  %350 = getelementptr inbounds i8, i8* %349, i64 1
  %351 = load i8, i8* %350, align 1, !tbaa !11
  %352 = zext i8 %351 to i64
  %353 = shl i64 %352, 8
  %354 = load i64, i64* %22, align 8, !tbaa !9
  %355 = or i64 %354, %353
  store i64 %355, i64* %22, align 8, !tbaa !9
  br label %356

; <label>:356:                                    ; preds = %306, %348
  %357 = load i8*, i8** %7, align 8, !tbaa !3
  %358 = getelementptr inbounds i8, i8* %357, i64 0
  %359 = load i8, i8* %358, align 1, !tbaa !11
  %360 = zext i8 %359 to i64
  %361 = load i64, i64* %22, align 8, !tbaa !9
  %362 = or i64 %361, %360
  store i64 %362, i64* %22, align 8, !tbaa !9
  br label %365

; <label>:363:                                    ; preds = %306
  br label %364

; <label>:364:                                    ; preds = %306, %363
  br label %365

; <label>:365:                                    ; preds = %364, %356
  %366 = load i64, i64* %22, align 8, !tbaa !9
  %367 = load i64, i64* %15, align 8, !tbaa !9
  %368 = xor i64 %367, %366
  store i64 %368, i64* %15, align 8, !tbaa !9
  store i32 0, i32* %19, align 4, !tbaa !12
  br label %369

; <label>:369:                                    ; preds = %430, %365
  %370 = load i32, i32* %19, align 4, !tbaa !12
  %371 = icmp slt i32 %370, 2
  br i1 %371, label %372, label %433

; <label>:372:                                    ; preds = %369
  br label %373

; <label>:373:                                    ; preds = %372
  %374 = load i64, i64* %13, align 8, !tbaa !9
  %375 = load i64, i64* %12, align 8, !tbaa !9
  %376 = add i64 %375, %374
  store i64 %376, i64* %12, align 8, !tbaa !9
  %377 = load i64, i64* %13, align 8, !tbaa !9
  %378 = shl i64 %377, 13
  %379 = load i64, i64* %13, align 8, !tbaa !9
  %380 = lshr i64 %379, 51
  %381 = or i64 %378, %380
  store i64 %381, i64* %13, align 8, !tbaa !9
  %382 = load i64, i64* %12, align 8, !tbaa !9
  %383 = load i64, i64* %13, align 8, !tbaa !9
  %384 = xor i64 %383, %382
  store i64 %384, i64* %13, align 8, !tbaa !9
  %385 = load i64, i64* %12, align 8, !tbaa !9
  %386 = shl i64 %385, 32
  %387 = load i64, i64* %12, align 8, !tbaa !9
  %388 = lshr i64 %387, 32
  %389 = or i64 %386, %388
  store i64 %389, i64* %12, align 8, !tbaa !9
  %390 = load i64, i64* %15, align 8, !tbaa !9
  %391 = load i64, i64* %14, align 8, !tbaa !9
  %392 = add i64 %391, %390
  store i64 %392, i64* %14, align 8, !tbaa !9
  %393 = load i64, i64* %15, align 8, !tbaa !9
  %394 = shl i64 %393, 16
  %395 = load i64, i64* %15, align 8, !tbaa !9
  %396 = lshr i64 %395, 48
  %397 = or i64 %394, %396
  store i64 %397, i64* %15, align 8, !tbaa !9
  %398 = load i64, i64* %14, align 8, !tbaa !9
  %399 = load i64, i64* %15, align 8, !tbaa !9
  %400 = xor i64 %399, %398
  store i64 %400, i64* %15, align 8, !tbaa !9
  %401 = load i64, i64* %15, align 8, !tbaa !9
  %402 = load i64, i64* %12, align 8, !tbaa !9
  %403 = add i64 %402, %401
  store i64 %403, i64* %12, align 8, !tbaa !9
  %404 = load i64, i64* %15, align 8, !tbaa !9
  %405 = shl i64 %404, 21
  %406 = load i64, i64* %15, align 8, !tbaa !9
  %407 = lshr i64 %406, 43
  %408 = or i64 %405, %407
  store i64 %408, i64* %15, align 8, !tbaa !9
  %409 = load i64, i64* %12, align 8, !tbaa !9
  %410 = load i64, i64* %15, align 8, !tbaa !9
  %411 = xor i64 %410, %409
  store i64 %411, i64* %15, align 8, !tbaa !9
  %412 = load i64, i64* %13, align 8, !tbaa !9
  %413 = load i64, i64* %14, align 8, !tbaa !9
  %414 = add i64 %413, %412
  store i64 %414, i64* %14, align 8, !tbaa !9
  %415 = load i64, i64* %13, align 8, !tbaa !9
  %416 = shl i64 %415, 17
  %417 = load i64, i64* %13, align 8, !tbaa !9
  %418 = lshr i64 %417, 47
  %419 = or i64 %416, %418
  store i64 %419, i64* %13, align 8, !tbaa !9
  %420 = load i64, i64* %14, align 8, !tbaa !9
  %421 = load i64, i64* %13, align 8, !tbaa !9
  %422 = xor i64 %421, %420
  store i64 %422, i64* %13, align 8, !tbaa !9
  %423 = load i64, i64* %14, align 8, !tbaa !9
  %424 = shl i64 %423, 32
  %425 = load i64, i64* %14, align 8, !tbaa !9
  %426 = lshr i64 %425, 32
  %427 = or i64 %424, %426
  store i64 %427, i64* %14, align 8, !tbaa !9
  br label %428

; <label>:428:                                    ; preds = %373
  br label %429

; <label>:429:                                    ; preds = %428
  br label %430

; <label>:430:                                    ; preds = %429
  %431 = load i32, i32* %19, align 4, !tbaa !12
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %19, align 4, !tbaa !12
  br label %369

; <label>:433:                                    ; preds = %369
  %434 = load i64, i64* %22, align 8, !tbaa !9
  %435 = load i64, i64* %12, align 8, !tbaa !9
  %436 = xor i64 %435, %434
  store i64 %436, i64* %12, align 8, !tbaa !9
  %437 = load i64, i64* %11, align 8, !tbaa !7
  %438 = icmp eq i64 %437, 16
  br i1 %438, label %439, label %442

; <label>:439:                                    ; preds = %433
  %440 = load i64, i64* %14, align 8, !tbaa !9
  %441 = xor i64 %440, 238
  store i64 %441, i64* %14, align 8, !tbaa !9
  br label %445

; <label>:442:                                    ; preds = %433
  %443 = load i64, i64* %14, align 8, !tbaa !9
  %444 = xor i64 %443, 255
  store i64 %444, i64* %14, align 8, !tbaa !9
  br label %445

; <label>:445:                                    ; preds = %442, %439
  store i32 0, i32* %19, align 4, !tbaa !12
  br label %446

; <label>:446:                                    ; preds = %507, %445
  %447 = load i32, i32* %19, align 4, !tbaa !12
  %448 = icmp slt i32 %447, 4
  br i1 %448, label %449, label %510

; <label>:449:                                    ; preds = %446
  br label %450

; <label>:450:                                    ; preds = %449
  %451 = load i64, i64* %13, align 8, !tbaa !9
  %452 = load i64, i64* %12, align 8, !tbaa !9
  %453 = add i64 %452, %451
  store i64 %453, i64* %12, align 8, !tbaa !9
  %454 = load i64, i64* %13, align 8, !tbaa !9
  %455 = shl i64 %454, 13
  %456 = load i64, i64* %13, align 8, !tbaa !9
  %457 = lshr i64 %456, 51
  %458 = or i64 %455, %457
  store i64 %458, i64* %13, align 8, !tbaa !9
  %459 = load i64, i64* %12, align 8, !tbaa !9
  %460 = load i64, i64* %13, align 8, !tbaa !9
  %461 = xor i64 %460, %459
  store i64 %461, i64* %13, align 8, !tbaa !9
  %462 = load i64, i64* %12, align 8, !tbaa !9
  %463 = shl i64 %462, 32
  %464 = load i64, i64* %12, align 8, !tbaa !9
  %465 = lshr i64 %464, 32
  %466 = or i64 %463, %465
  store i64 %466, i64* %12, align 8, !tbaa !9
  %467 = load i64, i64* %15, align 8, !tbaa !9
  %468 = load i64, i64* %14, align 8, !tbaa !9
  %469 = add i64 %468, %467
  store i64 %469, i64* %14, align 8, !tbaa !9
  %470 = load i64, i64* %15, align 8, !tbaa !9
  %471 = shl i64 %470, 16
  %472 = load i64, i64* %15, align 8, !tbaa !9
  %473 = lshr i64 %472, 48
  %474 = or i64 %471, %473
  store i64 %474, i64* %15, align 8, !tbaa !9
  %475 = load i64, i64* %14, align 8, !tbaa !9
  %476 = load i64, i64* %15, align 8, !tbaa !9
  %477 = xor i64 %476, %475
  store i64 %477, i64* %15, align 8, !tbaa !9
  %478 = load i64, i64* %15, align 8, !tbaa !9
  %479 = load i64, i64* %12, align 8, !tbaa !9
  %480 = add i64 %479, %478
  store i64 %480, i64* %12, align 8, !tbaa !9
  %481 = load i64, i64* %15, align 8, !tbaa !9
  %482 = shl i64 %481, 21
  %483 = load i64, i64* %15, align 8, !tbaa !9
  %484 = lshr i64 %483, 43
  %485 = or i64 %482, %484
  store i64 %485, i64* %15, align 8, !tbaa !9
  %486 = load i64, i64* %12, align 8, !tbaa !9
  %487 = load i64, i64* %15, align 8, !tbaa !9
  %488 = xor i64 %487, %486
  store i64 %488, i64* %15, align 8, !tbaa !9
  %489 = load i64, i64* %13, align 8, !tbaa !9
  %490 = load i64, i64* %14, align 8, !tbaa !9
  %491 = add i64 %490, %489
  store i64 %491, i64* %14, align 8, !tbaa !9
  %492 = load i64, i64* %13, align 8, !tbaa !9
  %493 = shl i64 %492, 17
  %494 = load i64, i64* %13, align 8, !tbaa !9
  %495 = lshr i64 %494, 47
  %496 = or i64 %493, %495
  store i64 %496, i64* %13, align 8, !tbaa !9
  %497 = load i64, i64* %14, align 8, !tbaa !9
  %498 = load i64, i64* %13, align 8, !tbaa !9
  %499 = xor i64 %498, %497
  store i64 %499, i64* %13, align 8, !tbaa !9
  %500 = load i64, i64* %14, align 8, !tbaa !9
  %501 = shl i64 %500, 32
  %502 = load i64, i64* %14, align 8, !tbaa !9
  %503 = lshr i64 %502, 32
  %504 = or i64 %501, %503
  store i64 %504, i64* %14, align 8, !tbaa !9
  br label %505

; <label>:505:                                    ; preds = %450
  br label %506

; <label>:506:                                    ; preds = %505
  br label %507

; <label>:507:                                    ; preds = %506
  %508 = load i32, i32* %19, align 4, !tbaa !12
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %19, align 4, !tbaa !12
  br label %446

; <label>:510:                                    ; preds = %446
  %511 = load i64, i64* %12, align 8, !tbaa !9
  %512 = load i64, i64* %13, align 8, !tbaa !9
  %513 = xor i64 %511, %512
  %514 = load i64, i64* %14, align 8, !tbaa !9
  %515 = xor i64 %513, %514
  %516 = load i64, i64* %15, align 8, !tbaa !9
  %517 = xor i64 %515, %516
  store i64 %517, i64* %22, align 8, !tbaa !9
  %518 = load i64, i64* %22, align 8, !tbaa !9
  %519 = trunc i64 %518 to i32
  %520 = trunc i32 %519 to i8
  %521 = load i8*, i8** %10, align 8, !tbaa !3
  %522 = getelementptr inbounds i8, i8* %521, i64 0
  store i8 %520, i8* %522, align 1, !tbaa !11
  %523 = load i64, i64* %22, align 8, !tbaa !9
  %524 = trunc i64 %523 to i32
  %525 = lshr i32 %524, 8
  %526 = trunc i32 %525 to i8
  %527 = load i8*, i8** %10, align 8, !tbaa !3
  %528 = getelementptr inbounds i8, i8* %527, i64 1
  store i8 %526, i8* %528, align 1, !tbaa !11
  %529 = load i64, i64* %22, align 8, !tbaa !9
  %530 = trunc i64 %529 to i32
  %531 = lshr i32 %530, 16
  %532 = trunc i32 %531 to i8
  %533 = load i8*, i8** %10, align 8, !tbaa !3
  %534 = getelementptr inbounds i8, i8* %533, i64 2
  store i8 %532, i8* %534, align 1, !tbaa !11
  %535 = load i64, i64* %22, align 8, !tbaa !9
  %536 = trunc i64 %535 to i32
  %537 = lshr i32 %536, 24
  %538 = trunc i32 %537 to i8
  %539 = load i8*, i8** %10, align 8, !tbaa !3
  %540 = getelementptr inbounds i8, i8* %539, i64 3
  store i8 %538, i8* %540, align 1, !tbaa !11
  %541 = load i64, i64* %22, align 8, !tbaa !9
  %542 = lshr i64 %541, 32
  %543 = trunc i64 %542 to i32
  %544 = trunc i32 %543 to i8
  %545 = load i8*, i8** %10, align 8, !tbaa !3
  %546 = getelementptr inbounds i8, i8* %545, i64 4
  %547 = getelementptr inbounds i8, i8* %546, i64 0
  store i8 %544, i8* %547, align 1, !tbaa !11
  %548 = load i64, i64* %22, align 8, !tbaa !9
  %549 = lshr i64 %548, 32
  %550 = trunc i64 %549 to i32
  %551 = lshr i32 %550, 8
  %552 = trunc i32 %551 to i8
  %553 = load i8*, i8** %10, align 8, !tbaa !3
  %554 = getelementptr inbounds i8, i8* %553, i64 4
  %555 = getelementptr inbounds i8, i8* %554, i64 1
  store i8 %552, i8* %555, align 1, !tbaa !11
  %556 = load i64, i64* %22, align 8, !tbaa !9
  %557 = lshr i64 %556, 32
  %558 = trunc i64 %557 to i32
  %559 = lshr i32 %558, 16
  %560 = trunc i32 %559 to i8
  %561 = load i8*, i8** %10, align 8, !tbaa !3
  %562 = getelementptr inbounds i8, i8* %561, i64 4
  %563 = getelementptr inbounds i8, i8* %562, i64 2
  store i8 %560, i8* %563, align 1, !tbaa !11
  %564 = load i64, i64* %22, align 8, !tbaa !9
  %565 = lshr i64 %564, 32
  %566 = trunc i64 %565 to i32
  %567 = lshr i32 %566, 24
  %568 = trunc i32 %567 to i8
  %569 = load i8*, i8** %10, align 8, !tbaa !3
  %570 = getelementptr inbounds i8, i8* %569, i64 4
  %571 = getelementptr inbounds i8, i8* %570, i64 3
  store i8 %568, i8* %571, align 1, !tbaa !11
  %572 = load i64, i64* %11, align 8, !tbaa !7
  %573 = icmp eq i64 %572, 8
  br i1 %573, label %574, label %575

; <label>:574:                                    ; preds = %510
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %712

; <label>:575:                                    ; preds = %510
  %576 = load i64, i64* %13, align 8, !tbaa !9
  %577 = xor i64 %576, 221
  store i64 %577, i64* %13, align 8, !tbaa !9
  store i32 0, i32* %19, align 4, !tbaa !12
  br label %578

; <label>:578:                                    ; preds = %639, %575
  %579 = load i32, i32* %19, align 4, !tbaa !12
  %580 = icmp slt i32 %579, 4
  br i1 %580, label %581, label %642

; <label>:581:                                    ; preds = %578
  br label %582

; <label>:582:                                    ; preds = %581
  %583 = load i64, i64* %13, align 8, !tbaa !9
  %584 = load i64, i64* %12, align 8, !tbaa !9
  %585 = add i64 %584, %583
  store i64 %585, i64* %12, align 8, !tbaa !9
  %586 = load i64, i64* %13, align 8, !tbaa !9
  %587 = shl i64 %586, 13
  %588 = load i64, i64* %13, align 8, !tbaa !9
  %589 = lshr i64 %588, 51
  %590 = or i64 %587, %589
  store i64 %590, i64* %13, align 8, !tbaa !9
  %591 = load i64, i64* %12, align 8, !tbaa !9
  %592 = load i64, i64* %13, align 8, !tbaa !9
  %593 = xor i64 %592, %591
  store i64 %593, i64* %13, align 8, !tbaa !9
  %594 = load i64, i64* %12, align 8, !tbaa !9
  %595 = shl i64 %594, 32
  %596 = load i64, i64* %12, align 8, !tbaa !9
  %597 = lshr i64 %596, 32
  %598 = or i64 %595, %597
  store i64 %598, i64* %12, align 8, !tbaa !9
  %599 = load i64, i64* %15, align 8, !tbaa !9
  %600 = load i64, i64* %14, align 8, !tbaa !9
  %601 = add i64 %600, %599
  store i64 %601, i64* %14, align 8, !tbaa !9
  %602 = load i64, i64* %15, align 8, !tbaa !9
  %603 = shl i64 %602, 16
  %604 = load i64, i64* %15, align 8, !tbaa !9
  %605 = lshr i64 %604, 48
  %606 = or i64 %603, %605
  store i64 %606, i64* %15, align 8, !tbaa !9
  %607 = load i64, i64* %14, align 8, !tbaa !9
  %608 = load i64, i64* %15, align 8, !tbaa !9
  %609 = xor i64 %608, %607
  store i64 %609, i64* %15, align 8, !tbaa !9
  %610 = load i64, i64* %15, align 8, !tbaa !9
  %611 = load i64, i64* %12, align 8, !tbaa !9
  %612 = add i64 %611, %610
  store i64 %612, i64* %12, align 8, !tbaa !9
  %613 = load i64, i64* %15, align 8, !tbaa !9
  %614 = shl i64 %613, 21
  %615 = load i64, i64* %15, align 8, !tbaa !9
  %616 = lshr i64 %615, 43
  %617 = or i64 %614, %616
  store i64 %617, i64* %15, align 8, !tbaa !9
  %618 = load i64, i64* %12, align 8, !tbaa !9
  %619 = load i64, i64* %15, align 8, !tbaa !9
  %620 = xor i64 %619, %618
  store i64 %620, i64* %15, align 8, !tbaa !9
  %621 = load i64, i64* %13, align 8, !tbaa !9
  %622 = load i64, i64* %14, align 8, !tbaa !9
  %623 = add i64 %622, %621
  store i64 %623, i64* %14, align 8, !tbaa !9
  %624 = load i64, i64* %13, align 8, !tbaa !9
  %625 = shl i64 %624, 17
  %626 = load i64, i64* %13, align 8, !tbaa !9
  %627 = lshr i64 %626, 47
  %628 = or i64 %625, %627
  store i64 %628, i64* %13, align 8, !tbaa !9
  %629 = load i64, i64* %14, align 8, !tbaa !9
  %630 = load i64, i64* %13, align 8, !tbaa !9
  %631 = xor i64 %630, %629
  store i64 %631, i64* %13, align 8, !tbaa !9
  %632 = load i64, i64* %14, align 8, !tbaa !9
  %633 = shl i64 %632, 32
  %634 = load i64, i64* %14, align 8, !tbaa !9
  %635 = lshr i64 %634, 32
  %636 = or i64 %633, %635
  store i64 %636, i64* %14, align 8, !tbaa !9
  br label %637

; <label>:637:                                    ; preds = %582
  br label %638

; <label>:638:                                    ; preds = %637
  br label %639

; <label>:639:                                    ; preds = %638
  %640 = load i32, i32* %19, align 4, !tbaa !12
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %19, align 4, !tbaa !12
  br label %578

; <label>:642:                                    ; preds = %578
  %643 = load i64, i64* %12, align 8, !tbaa !9
  %644 = load i64, i64* %13, align 8, !tbaa !9
  %645 = xor i64 %643, %644
  %646 = load i64, i64* %14, align 8, !tbaa !9
  %647 = xor i64 %645, %646
  %648 = load i64, i64* %15, align 8, !tbaa !9
  %649 = xor i64 %647, %648
  store i64 %649, i64* %22, align 8, !tbaa !9
  %650 = load i64, i64* %22, align 8, !tbaa !9
  %651 = trunc i64 %650 to i32
  %652 = trunc i32 %651 to i8
  %653 = load i8*, i8** %10, align 8, !tbaa !3
  %654 = getelementptr inbounds i8, i8* %653, i64 8
  %655 = getelementptr inbounds i8, i8* %654, i64 0
  store i8 %652, i8* %655, align 1, !tbaa !11
  %656 = load i64, i64* %22, align 8, !tbaa !9
  %657 = trunc i64 %656 to i32
  %658 = lshr i32 %657, 8
  %659 = trunc i32 %658 to i8
  %660 = load i8*, i8** %10, align 8, !tbaa !3
  %661 = getelementptr inbounds i8, i8* %660, i64 8
  %662 = getelementptr inbounds i8, i8* %661, i64 1
  store i8 %659, i8* %662, align 1, !tbaa !11
  %663 = load i64, i64* %22, align 8, !tbaa !9
  %664 = trunc i64 %663 to i32
  %665 = lshr i32 %664, 16
  %666 = trunc i32 %665 to i8
  %667 = load i8*, i8** %10, align 8, !tbaa !3
  %668 = getelementptr inbounds i8, i8* %667, i64 8
  %669 = getelementptr inbounds i8, i8* %668, i64 2
  store i8 %666, i8* %669, align 1, !tbaa !11
  %670 = load i64, i64* %22, align 8, !tbaa !9
  %671 = trunc i64 %670 to i32
  %672 = lshr i32 %671, 24
  %673 = trunc i32 %672 to i8
  %674 = load i8*, i8** %10, align 8, !tbaa !3
  %675 = getelementptr inbounds i8, i8* %674, i64 8
  %676 = getelementptr inbounds i8, i8* %675, i64 3
  store i8 %673, i8* %676, align 1, !tbaa !11
  %677 = load i64, i64* %22, align 8, !tbaa !9
  %678 = lshr i64 %677, 32
  %679 = trunc i64 %678 to i32
  %680 = trunc i32 %679 to i8
  %681 = load i8*, i8** %10, align 8, !tbaa !3
  %682 = getelementptr inbounds i8, i8* %681, i64 8
  %683 = getelementptr inbounds i8, i8* %682, i64 4
  %684 = getelementptr inbounds i8, i8* %683, i64 0
  store i8 %680, i8* %684, align 1, !tbaa !11
  %685 = load i64, i64* %22, align 8, !tbaa !9
  %686 = lshr i64 %685, 32
  %687 = trunc i64 %686 to i32
  %688 = lshr i32 %687, 8
  %689 = trunc i32 %688 to i8
  %690 = load i8*, i8** %10, align 8, !tbaa !3
  %691 = getelementptr inbounds i8, i8* %690, i64 8
  %692 = getelementptr inbounds i8, i8* %691, i64 4
  %693 = getelementptr inbounds i8, i8* %692, i64 1
  store i8 %689, i8* %693, align 1, !tbaa !11
  %694 = load i64, i64* %22, align 8, !tbaa !9
  %695 = lshr i64 %694, 32
  %696 = trunc i64 %695 to i32
  %697 = lshr i32 %696, 16
  %698 = trunc i32 %697 to i8
  %699 = load i8*, i8** %10, align 8, !tbaa !3
  %700 = getelementptr inbounds i8, i8* %699, i64 8
  %701 = getelementptr inbounds i8, i8* %700, i64 4
  %702 = getelementptr inbounds i8, i8* %701, i64 2
  store i8 %698, i8* %702, align 1, !tbaa !11
  %703 = load i64, i64* %22, align 8, !tbaa !9
  %704 = lshr i64 %703, 32
  %705 = trunc i64 %704 to i32
  %706 = lshr i32 %705, 24
  %707 = trunc i32 %706 to i8
  %708 = load i8*, i8** %10, align 8, !tbaa !3
  %709 = getelementptr inbounds i8, i8* %708, i64 8
  %710 = getelementptr inbounds i8, i8* %709, i64 4
  %711 = getelementptr inbounds i8, i8* %710, i64 3
  store i8 %707, i8* %711, align 1, !tbaa !11
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %712

; <label>:712:                                    ; preds = %642, %574
  %713 = bitcast i64* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %713) #4
  %714 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %714) #4
  %715 = bitcast i8** %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %715) #4
  %716 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %716) #4
  %717 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %717) #4
  %718 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %718) #4
  %719 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %719) #4
  %720 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %720) #4
  %721 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %721) #4
  %722 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %722) #4
  %723 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %723) #4
  %724 = load i32, i32* %6, align 4
  ret i32 %724
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !5, i64 0}
