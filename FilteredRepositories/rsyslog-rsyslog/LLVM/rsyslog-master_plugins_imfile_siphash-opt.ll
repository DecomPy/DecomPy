; ModuleID = 'Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c'
source_filename = "Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.rs_siphash = private unnamed_addr constant [11 x i8] c"rs_siphash\00", align 1
@.str = private unnamed_addr constant [80 x i8] c"Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(outlen == 8) || (outlen == 16)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 8317987319222330741, i64* %12, align 8
  store i64 7237128888997146477, i64* %13, align 8
  store i64 7816392313619706465, i64* %14, align 8
  store i64 8387220255154660723, i64* %15, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl i64 %30, 8
  %32 = or i64 %26, %31
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl i64 %36, 16
  %38 = or i64 %32, %37
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 24
  %44 = or i64 %38, %43
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl i64 %48, 32
  %50 = or i64 %44, %49
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = shl i64 %54, 40
  %56 = or i64 %50, %55
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = shl i64 %60, 48
  %62 = or i64 %56, %61
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = shl i64 %66, 56
  %68 = or i64 %62, %67
  store i64 %68, i64* %16, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = shl i64 %78, 8
  %80 = or i64 %73, %79
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i64
  %86 = shl i64 %85, 16
  %87 = or i64 %80, %86
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = shl i64 %92, 24
  %94 = or i64 %87, %93
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = shl i64 %99, 32
  %101 = or i64 %94, %100
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 8
  %104 = getelementptr inbounds i8, i8* %103, i64 5
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = shl i64 %106, 40
  %108 = or i64 %101, %107
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = shl i64 %113, 48
  %115 = or i64 %108, %114
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = getelementptr inbounds i8, i8* %117, i64 7
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = shl i64 %120, 56
  %122 = or i64 %115, %121
  store i64 %122, i64* %17, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i64, i64* %8, align 8
  %127 = urem i64 %126, 8
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8* %129, i8** %20, align 8
  %130 = load i64, i64* %8, align 8
  %131 = and i64 %130, 7
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %21, align 4
  %133 = load i64, i64* %8, align 8
  %134 = shl i64 %133, 56
  store i64 %134, i64* %22, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp eq i64 %135, 8
  br i1 %136, label %140, label %137

; <label>:137:                                    ; preds = %5
  %138 = load i64, i64* %11, align 8
  %139 = icmp eq i64 %138, 16
  br label %140

; <label>:140:                                    ; preds = %137, %5
  %141 = phi i1 [ true, %5 ], [ %139, %137 ]
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

; <label>:146:                                    ; preds = %140
  call void @__assert_rtn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.rs_siphash, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #2
  unreachable
                                                  ; No predecessors!
  br label %149

; <label>:148:                                    ; preds = %140
  br label %149

; <label>:149:                                    ; preds = %148, %147
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %15, align 8
  %152 = xor i64 %151, %150
  store i64 %152, i64* %15, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i64, i64* %14, align 8
  %155 = xor i64 %154, %153
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* %13, align 8
  %158 = xor i64 %157, %156
  store i64 %158, i64* %13, align 8
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %12, align 8
  %161 = xor i64 %160, %159
  store i64 %161, i64* %12, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp eq i64 %162, 16
  br i1 %163, label %164, label %167

; <label>:164:                                    ; preds = %149
  %165 = load i64, i64* %13, align 8
  %166 = xor i64 %165, 238
  store i64 %166, i64* %13, align 8
  br label %167

; <label>:167:                                    ; preds = %164, %149
  br label %168

; <label>:168:                                    ; preds = %289, %167
  %169 = load i8*, i8** %7, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = icmp ne i8* %169, %170
  br i1 %171, label %172, label %292

; <label>:172:                                    ; preds = %168
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  %181 = shl i64 %180, 8
  %182 = or i64 %176, %181
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i64
  %187 = shl i64 %186, 16
  %188 = or i64 %182, %187
  %189 = load i8*, i8** %7, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 3
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i64
  %193 = shl i64 %192, 24
  %194 = or i64 %188, %193
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i64
  %199 = shl i64 %198, 32
  %200 = or i64 %194, %199
  %201 = load i8*, i8** %7, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 5
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i64
  %205 = shl i64 %204, 40
  %206 = or i64 %200, %205
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 6
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i64
  %211 = shl i64 %210, 48
  %212 = or i64 %206, %211
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 7
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i64
  %217 = shl i64 %216, 56
  %218 = or i64 %212, %217
  store i64 %218, i64* %18, align 8
  %219 = load i64, i64* %18, align 8
  %220 = load i64, i64* %15, align 8
  %221 = xor i64 %220, %219
  store i64 %221, i64* %15, align 8
  store i32 0, i32* %19, align 4
  br label %222

; <label>:222:                                    ; preds = %282, %172
  %223 = load i32, i32* %19, align 4
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %225, label %285

; <label>:225:                                    ; preds = %222
  br label %226

; <label>:226:                                    ; preds = %225
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %12, align 8
  %230 = load i64, i64* %13, align 8
  %231 = shl i64 %230, 13
  %232 = load i64, i64* %13, align 8
  %233 = lshr i64 %232, 51
  %234 = or i64 %231, %233
  store i64 %234, i64* %13, align 8
  %235 = load i64, i64* %12, align 8
  %236 = load i64, i64* %13, align 8
  %237 = xor i64 %236, %235
  store i64 %237, i64* %13, align 8
  %238 = load i64, i64* %12, align 8
  %239 = shl i64 %238, 32
  %240 = load i64, i64* %12, align 8
  %241 = lshr i64 %240, 32
  %242 = or i64 %239, %241
  store i64 %242, i64* %12, align 8
  %243 = load i64, i64* %15, align 8
  %244 = load i64, i64* %14, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %14, align 8
  %246 = load i64, i64* %15, align 8
  %247 = shl i64 %246, 16
  %248 = load i64, i64* %15, align 8
  %249 = lshr i64 %248, 48
  %250 = or i64 %247, %249
  store i64 %250, i64* %15, align 8
  %251 = load i64, i64* %14, align 8
  %252 = load i64, i64* %15, align 8
  %253 = xor i64 %252, %251
  store i64 %253, i64* %15, align 8
  %254 = load i64, i64* %15, align 8
  %255 = load i64, i64* %12, align 8
  %256 = add i64 %255, %254
  store i64 %256, i64* %12, align 8
  %257 = load i64, i64* %15, align 8
  %258 = shl i64 %257, 21
  %259 = load i64, i64* %15, align 8
  %260 = lshr i64 %259, 43
  %261 = or i64 %258, %260
  store i64 %261, i64* %15, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load i64, i64* %15, align 8
  %264 = xor i64 %263, %262
  store i64 %264, i64* %15, align 8
  %265 = load i64, i64* %13, align 8
  %266 = load i64, i64* %14, align 8
  %267 = add i64 %266, %265
  store i64 %267, i64* %14, align 8
  %268 = load i64, i64* %13, align 8
  %269 = shl i64 %268, 17
  %270 = load i64, i64* %13, align 8
  %271 = lshr i64 %270, 47
  %272 = or i64 %269, %271
  store i64 %272, i64* %13, align 8
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* %13, align 8
  %275 = xor i64 %274, %273
  store i64 %275, i64* %13, align 8
  %276 = load i64, i64* %14, align 8
  %277 = shl i64 %276, 32
  %278 = load i64, i64* %14, align 8
  %279 = lshr i64 %278, 32
  %280 = or i64 %277, %279
  store i64 %280, i64* %14, align 8
  br label %281

; <label>:281:                                    ; preds = %226
  br label %282

; <label>:282:                                    ; preds = %281
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %19, align 4
  br label %222

; <label>:285:                                    ; preds = %222
  %286 = load i64, i64* %18, align 8
  %287 = load i64, i64* %12, align 8
  %288 = xor i64 %287, %286
  store i64 %288, i64* %12, align 8
  br label %289

; <label>:289:                                    ; preds = %285
  %290 = load i8*, i8** %7, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 8
  store i8* %291, i8** %7, align 8
  br label %168

; <label>:292:                                    ; preds = %168
  %293 = load i32, i32* %21, align 4
  switch i32 %293, label %350 [
    i32 7, label %294
    i32 6, label %302
    i32 5, label %310
    i32 4, label %318
    i32 3, label %326
    i32 2, label %334
    i32 1, label %342
    i32 0, label %349
  ]

; <label>:294:                                    ; preds = %292
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 6
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i64
  %299 = shl i64 %298, 48
  %300 = load i64, i64* %22, align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* %22, align 8
  br label %302

; <label>:302:                                    ; preds = %292, %294
  %303 = load i8*, i8** %7, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 5
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i64
  %307 = shl i64 %306, 40
  %308 = load i64, i64* %22, align 8
  %309 = or i64 %308, %307
  store i64 %309, i64* %22, align 8
  br label %310

; <label>:310:                                    ; preds = %292, %302
  %311 = load i8*, i8** %7, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 4
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i64
  %315 = shl i64 %314, 32
  %316 = load i64, i64* %22, align 8
  %317 = or i64 %316, %315
  store i64 %317, i64* %22, align 8
  br label %318

; <label>:318:                                    ; preds = %292, %310
  %319 = load i8*, i8** %7, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 3
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i64
  %323 = shl i64 %322, 24
  %324 = load i64, i64* %22, align 8
  %325 = or i64 %324, %323
  store i64 %325, i64* %22, align 8
  br label %326

; <label>:326:                                    ; preds = %292, %318
  %327 = load i8*, i8** %7, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 2
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i64
  %331 = shl i64 %330, 16
  %332 = load i64, i64* %22, align 8
  %333 = or i64 %332, %331
  store i64 %333, i64* %22, align 8
  br label %334

; <label>:334:                                    ; preds = %292, %326
  %335 = load i8*, i8** %7, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i64
  %339 = shl i64 %338, 8
  %340 = load i64, i64* %22, align 8
  %341 = or i64 %340, %339
  store i64 %341, i64* %22, align 8
  br label %342

; <label>:342:                                    ; preds = %292, %334
  %343 = load i8*, i8** %7, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 0
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i64
  %347 = load i64, i64* %22, align 8
  %348 = or i64 %347, %346
  store i64 %348, i64* %22, align 8
  br label %351

; <label>:349:                                    ; preds = %292
  br label %350

; <label>:350:                                    ; preds = %292, %349
  br label %351

; <label>:351:                                    ; preds = %350, %342
  %352 = load i64, i64* %22, align 8
  %353 = load i64, i64* %15, align 8
  %354 = xor i64 %353, %352
  store i64 %354, i64* %15, align 8
  store i32 0, i32* %19, align 4
  br label %355

; <label>:355:                                    ; preds = %415, %351
  %356 = load i32, i32* %19, align 4
  %357 = icmp slt i32 %356, 2
  br i1 %357, label %358, label %418

; <label>:358:                                    ; preds = %355
  br label %359

; <label>:359:                                    ; preds = %358
  %360 = load i64, i64* %13, align 8
  %361 = load i64, i64* %12, align 8
  %362 = add i64 %361, %360
  store i64 %362, i64* %12, align 8
  %363 = load i64, i64* %13, align 8
  %364 = shl i64 %363, 13
  %365 = load i64, i64* %13, align 8
  %366 = lshr i64 %365, 51
  %367 = or i64 %364, %366
  store i64 %367, i64* %13, align 8
  %368 = load i64, i64* %12, align 8
  %369 = load i64, i64* %13, align 8
  %370 = xor i64 %369, %368
  store i64 %370, i64* %13, align 8
  %371 = load i64, i64* %12, align 8
  %372 = shl i64 %371, 32
  %373 = load i64, i64* %12, align 8
  %374 = lshr i64 %373, 32
  %375 = or i64 %372, %374
  store i64 %375, i64* %12, align 8
  %376 = load i64, i64* %15, align 8
  %377 = load i64, i64* %14, align 8
  %378 = add i64 %377, %376
  store i64 %378, i64* %14, align 8
  %379 = load i64, i64* %15, align 8
  %380 = shl i64 %379, 16
  %381 = load i64, i64* %15, align 8
  %382 = lshr i64 %381, 48
  %383 = or i64 %380, %382
  store i64 %383, i64* %15, align 8
  %384 = load i64, i64* %14, align 8
  %385 = load i64, i64* %15, align 8
  %386 = xor i64 %385, %384
  store i64 %386, i64* %15, align 8
  %387 = load i64, i64* %15, align 8
  %388 = load i64, i64* %12, align 8
  %389 = add i64 %388, %387
  store i64 %389, i64* %12, align 8
  %390 = load i64, i64* %15, align 8
  %391 = shl i64 %390, 21
  %392 = load i64, i64* %15, align 8
  %393 = lshr i64 %392, 43
  %394 = or i64 %391, %393
  store i64 %394, i64* %15, align 8
  %395 = load i64, i64* %12, align 8
  %396 = load i64, i64* %15, align 8
  %397 = xor i64 %396, %395
  store i64 %397, i64* %15, align 8
  %398 = load i64, i64* %13, align 8
  %399 = load i64, i64* %14, align 8
  %400 = add i64 %399, %398
  store i64 %400, i64* %14, align 8
  %401 = load i64, i64* %13, align 8
  %402 = shl i64 %401, 17
  %403 = load i64, i64* %13, align 8
  %404 = lshr i64 %403, 47
  %405 = or i64 %402, %404
  store i64 %405, i64* %13, align 8
  %406 = load i64, i64* %14, align 8
  %407 = load i64, i64* %13, align 8
  %408 = xor i64 %407, %406
  store i64 %408, i64* %13, align 8
  %409 = load i64, i64* %14, align 8
  %410 = shl i64 %409, 32
  %411 = load i64, i64* %14, align 8
  %412 = lshr i64 %411, 32
  %413 = or i64 %410, %412
  store i64 %413, i64* %14, align 8
  br label %414

; <label>:414:                                    ; preds = %359
  br label %415

; <label>:415:                                    ; preds = %414
  %416 = load i32, i32* %19, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %19, align 4
  br label %355

; <label>:418:                                    ; preds = %355
  %419 = load i64, i64* %22, align 8
  %420 = load i64, i64* %12, align 8
  %421 = xor i64 %420, %419
  store i64 %421, i64* %12, align 8
  %422 = load i64, i64* %11, align 8
  %423 = icmp eq i64 %422, 16
  br i1 %423, label %424, label %427

; <label>:424:                                    ; preds = %418
  %425 = load i64, i64* %14, align 8
  %426 = xor i64 %425, 238
  store i64 %426, i64* %14, align 8
  br label %430

; <label>:427:                                    ; preds = %418
  %428 = load i64, i64* %14, align 8
  %429 = xor i64 %428, 255
  store i64 %429, i64* %14, align 8
  br label %430

; <label>:430:                                    ; preds = %427, %424
  store i32 0, i32* %19, align 4
  br label %431

; <label>:431:                                    ; preds = %491, %430
  %432 = load i32, i32* %19, align 4
  %433 = icmp slt i32 %432, 4
  br i1 %433, label %434, label %494

; <label>:434:                                    ; preds = %431
  br label %435

; <label>:435:                                    ; preds = %434
  %436 = load i64, i64* %13, align 8
  %437 = load i64, i64* %12, align 8
  %438 = add i64 %437, %436
  store i64 %438, i64* %12, align 8
  %439 = load i64, i64* %13, align 8
  %440 = shl i64 %439, 13
  %441 = load i64, i64* %13, align 8
  %442 = lshr i64 %441, 51
  %443 = or i64 %440, %442
  store i64 %443, i64* %13, align 8
  %444 = load i64, i64* %12, align 8
  %445 = load i64, i64* %13, align 8
  %446 = xor i64 %445, %444
  store i64 %446, i64* %13, align 8
  %447 = load i64, i64* %12, align 8
  %448 = shl i64 %447, 32
  %449 = load i64, i64* %12, align 8
  %450 = lshr i64 %449, 32
  %451 = or i64 %448, %450
  store i64 %451, i64* %12, align 8
  %452 = load i64, i64* %15, align 8
  %453 = load i64, i64* %14, align 8
  %454 = add i64 %453, %452
  store i64 %454, i64* %14, align 8
  %455 = load i64, i64* %15, align 8
  %456 = shl i64 %455, 16
  %457 = load i64, i64* %15, align 8
  %458 = lshr i64 %457, 48
  %459 = or i64 %456, %458
  store i64 %459, i64* %15, align 8
  %460 = load i64, i64* %14, align 8
  %461 = load i64, i64* %15, align 8
  %462 = xor i64 %461, %460
  store i64 %462, i64* %15, align 8
  %463 = load i64, i64* %15, align 8
  %464 = load i64, i64* %12, align 8
  %465 = add i64 %464, %463
  store i64 %465, i64* %12, align 8
  %466 = load i64, i64* %15, align 8
  %467 = shl i64 %466, 21
  %468 = load i64, i64* %15, align 8
  %469 = lshr i64 %468, 43
  %470 = or i64 %467, %469
  store i64 %470, i64* %15, align 8
  %471 = load i64, i64* %12, align 8
  %472 = load i64, i64* %15, align 8
  %473 = xor i64 %472, %471
  store i64 %473, i64* %15, align 8
  %474 = load i64, i64* %13, align 8
  %475 = load i64, i64* %14, align 8
  %476 = add i64 %475, %474
  store i64 %476, i64* %14, align 8
  %477 = load i64, i64* %13, align 8
  %478 = shl i64 %477, 17
  %479 = load i64, i64* %13, align 8
  %480 = lshr i64 %479, 47
  %481 = or i64 %478, %480
  store i64 %481, i64* %13, align 8
  %482 = load i64, i64* %14, align 8
  %483 = load i64, i64* %13, align 8
  %484 = xor i64 %483, %482
  store i64 %484, i64* %13, align 8
  %485 = load i64, i64* %14, align 8
  %486 = shl i64 %485, 32
  %487 = load i64, i64* %14, align 8
  %488 = lshr i64 %487, 32
  %489 = or i64 %486, %488
  store i64 %489, i64* %14, align 8
  br label %490

; <label>:490:                                    ; preds = %435
  br label %491

; <label>:491:                                    ; preds = %490
  %492 = load i32, i32* %19, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %19, align 4
  br label %431

; <label>:494:                                    ; preds = %431
  %495 = load i64, i64* %12, align 8
  %496 = load i64, i64* %13, align 8
  %497 = xor i64 %495, %496
  %498 = load i64, i64* %14, align 8
  %499 = xor i64 %497, %498
  %500 = load i64, i64* %15, align 8
  %501 = xor i64 %499, %500
  store i64 %501, i64* %22, align 8
  %502 = load i64, i64* %22, align 8
  %503 = trunc i64 %502 to i32
  %504 = trunc i32 %503 to i8
  %505 = load i8*, i8** %10, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 0
  store i8 %504, i8* %506, align 1
  %507 = load i64, i64* %22, align 8
  %508 = trunc i64 %507 to i32
  %509 = lshr i32 %508, 8
  %510 = trunc i32 %509 to i8
  %511 = load i8*, i8** %10, align 8
  %512 = getelementptr inbounds i8, i8* %511, i64 1
  store i8 %510, i8* %512, align 1
  %513 = load i64, i64* %22, align 8
  %514 = trunc i64 %513 to i32
  %515 = lshr i32 %514, 16
  %516 = trunc i32 %515 to i8
  %517 = load i8*, i8** %10, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 2
  store i8 %516, i8* %518, align 1
  %519 = load i64, i64* %22, align 8
  %520 = trunc i64 %519 to i32
  %521 = lshr i32 %520, 24
  %522 = trunc i32 %521 to i8
  %523 = load i8*, i8** %10, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 3
  store i8 %522, i8* %524, align 1
  %525 = load i64, i64* %22, align 8
  %526 = lshr i64 %525, 32
  %527 = trunc i64 %526 to i32
  %528 = trunc i32 %527 to i8
  %529 = load i8*, i8** %10, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 4
  %531 = getelementptr inbounds i8, i8* %530, i64 0
  store i8 %528, i8* %531, align 1
  %532 = load i64, i64* %22, align 8
  %533 = lshr i64 %532, 32
  %534 = trunc i64 %533 to i32
  %535 = lshr i32 %534, 8
  %536 = trunc i32 %535 to i8
  %537 = load i8*, i8** %10, align 8
  %538 = getelementptr inbounds i8, i8* %537, i64 4
  %539 = getelementptr inbounds i8, i8* %538, i64 1
  store i8 %536, i8* %539, align 1
  %540 = load i64, i64* %22, align 8
  %541 = lshr i64 %540, 32
  %542 = trunc i64 %541 to i32
  %543 = lshr i32 %542, 16
  %544 = trunc i32 %543 to i8
  %545 = load i8*, i8** %10, align 8
  %546 = getelementptr inbounds i8, i8* %545, i64 4
  %547 = getelementptr inbounds i8, i8* %546, i64 2
  store i8 %544, i8* %547, align 1
  %548 = load i64, i64* %22, align 8
  %549 = lshr i64 %548, 32
  %550 = trunc i64 %549 to i32
  %551 = lshr i32 %550, 24
  %552 = trunc i32 %551 to i8
  %553 = load i8*, i8** %10, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 4
  %555 = getelementptr inbounds i8, i8* %554, i64 3
  store i8 %552, i8* %555, align 1
  %556 = load i64, i64* %11, align 8
  %557 = icmp eq i64 %556, 8
  br i1 %557, label %558, label %559

; <label>:558:                                    ; preds = %494
  store i32 0, i32* %6, align 4
  br label %695

; <label>:559:                                    ; preds = %494
  %560 = load i64, i64* %13, align 8
  %561 = xor i64 %560, 221
  store i64 %561, i64* %13, align 8
  store i32 0, i32* %19, align 4
  br label %562

; <label>:562:                                    ; preds = %622, %559
  %563 = load i32, i32* %19, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %565, label %625

; <label>:565:                                    ; preds = %562
  br label %566

; <label>:566:                                    ; preds = %565
  %567 = load i64, i64* %13, align 8
  %568 = load i64, i64* %12, align 8
  %569 = add i64 %568, %567
  store i64 %569, i64* %12, align 8
  %570 = load i64, i64* %13, align 8
  %571 = shl i64 %570, 13
  %572 = load i64, i64* %13, align 8
  %573 = lshr i64 %572, 51
  %574 = or i64 %571, %573
  store i64 %574, i64* %13, align 8
  %575 = load i64, i64* %12, align 8
  %576 = load i64, i64* %13, align 8
  %577 = xor i64 %576, %575
  store i64 %577, i64* %13, align 8
  %578 = load i64, i64* %12, align 8
  %579 = shl i64 %578, 32
  %580 = load i64, i64* %12, align 8
  %581 = lshr i64 %580, 32
  %582 = or i64 %579, %581
  store i64 %582, i64* %12, align 8
  %583 = load i64, i64* %15, align 8
  %584 = load i64, i64* %14, align 8
  %585 = add i64 %584, %583
  store i64 %585, i64* %14, align 8
  %586 = load i64, i64* %15, align 8
  %587 = shl i64 %586, 16
  %588 = load i64, i64* %15, align 8
  %589 = lshr i64 %588, 48
  %590 = or i64 %587, %589
  store i64 %590, i64* %15, align 8
  %591 = load i64, i64* %14, align 8
  %592 = load i64, i64* %15, align 8
  %593 = xor i64 %592, %591
  store i64 %593, i64* %15, align 8
  %594 = load i64, i64* %15, align 8
  %595 = load i64, i64* %12, align 8
  %596 = add i64 %595, %594
  store i64 %596, i64* %12, align 8
  %597 = load i64, i64* %15, align 8
  %598 = shl i64 %597, 21
  %599 = load i64, i64* %15, align 8
  %600 = lshr i64 %599, 43
  %601 = or i64 %598, %600
  store i64 %601, i64* %15, align 8
  %602 = load i64, i64* %12, align 8
  %603 = load i64, i64* %15, align 8
  %604 = xor i64 %603, %602
  store i64 %604, i64* %15, align 8
  %605 = load i64, i64* %13, align 8
  %606 = load i64, i64* %14, align 8
  %607 = add i64 %606, %605
  store i64 %607, i64* %14, align 8
  %608 = load i64, i64* %13, align 8
  %609 = shl i64 %608, 17
  %610 = load i64, i64* %13, align 8
  %611 = lshr i64 %610, 47
  %612 = or i64 %609, %611
  store i64 %612, i64* %13, align 8
  %613 = load i64, i64* %14, align 8
  %614 = load i64, i64* %13, align 8
  %615 = xor i64 %614, %613
  store i64 %615, i64* %13, align 8
  %616 = load i64, i64* %14, align 8
  %617 = shl i64 %616, 32
  %618 = load i64, i64* %14, align 8
  %619 = lshr i64 %618, 32
  %620 = or i64 %617, %619
  store i64 %620, i64* %14, align 8
  br label %621

; <label>:621:                                    ; preds = %566
  br label %622

; <label>:622:                                    ; preds = %621
  %623 = load i32, i32* %19, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %19, align 4
  br label %562

; <label>:625:                                    ; preds = %562
  %626 = load i64, i64* %12, align 8
  %627 = load i64, i64* %13, align 8
  %628 = xor i64 %626, %627
  %629 = load i64, i64* %14, align 8
  %630 = xor i64 %628, %629
  %631 = load i64, i64* %15, align 8
  %632 = xor i64 %630, %631
  store i64 %632, i64* %22, align 8
  %633 = load i64, i64* %22, align 8
  %634 = trunc i64 %633 to i32
  %635 = trunc i32 %634 to i8
  %636 = load i8*, i8** %10, align 8
  %637 = getelementptr inbounds i8, i8* %636, i64 8
  %638 = getelementptr inbounds i8, i8* %637, i64 0
  store i8 %635, i8* %638, align 1
  %639 = load i64, i64* %22, align 8
  %640 = trunc i64 %639 to i32
  %641 = lshr i32 %640, 8
  %642 = trunc i32 %641 to i8
  %643 = load i8*, i8** %10, align 8
  %644 = getelementptr inbounds i8, i8* %643, i64 8
  %645 = getelementptr inbounds i8, i8* %644, i64 1
  store i8 %642, i8* %645, align 1
  %646 = load i64, i64* %22, align 8
  %647 = trunc i64 %646 to i32
  %648 = lshr i32 %647, 16
  %649 = trunc i32 %648 to i8
  %650 = load i8*, i8** %10, align 8
  %651 = getelementptr inbounds i8, i8* %650, i64 8
  %652 = getelementptr inbounds i8, i8* %651, i64 2
  store i8 %649, i8* %652, align 1
  %653 = load i64, i64* %22, align 8
  %654 = trunc i64 %653 to i32
  %655 = lshr i32 %654, 24
  %656 = trunc i32 %655 to i8
  %657 = load i8*, i8** %10, align 8
  %658 = getelementptr inbounds i8, i8* %657, i64 8
  %659 = getelementptr inbounds i8, i8* %658, i64 3
  store i8 %656, i8* %659, align 1
  %660 = load i64, i64* %22, align 8
  %661 = lshr i64 %660, 32
  %662 = trunc i64 %661 to i32
  %663 = trunc i32 %662 to i8
  %664 = load i8*, i8** %10, align 8
  %665 = getelementptr inbounds i8, i8* %664, i64 8
  %666 = getelementptr inbounds i8, i8* %665, i64 4
  %667 = getelementptr inbounds i8, i8* %666, i64 0
  store i8 %663, i8* %667, align 1
  %668 = load i64, i64* %22, align 8
  %669 = lshr i64 %668, 32
  %670 = trunc i64 %669 to i32
  %671 = lshr i32 %670, 8
  %672 = trunc i32 %671 to i8
  %673 = load i8*, i8** %10, align 8
  %674 = getelementptr inbounds i8, i8* %673, i64 8
  %675 = getelementptr inbounds i8, i8* %674, i64 4
  %676 = getelementptr inbounds i8, i8* %675, i64 1
  store i8 %672, i8* %676, align 1
  %677 = load i64, i64* %22, align 8
  %678 = lshr i64 %677, 32
  %679 = trunc i64 %678 to i32
  %680 = lshr i32 %679, 16
  %681 = trunc i32 %680 to i8
  %682 = load i8*, i8** %10, align 8
  %683 = getelementptr inbounds i8, i8* %682, i64 8
  %684 = getelementptr inbounds i8, i8* %683, i64 4
  %685 = getelementptr inbounds i8, i8* %684, i64 2
  store i8 %681, i8* %685, align 1
  %686 = load i64, i64* %22, align 8
  %687 = lshr i64 %686, 32
  %688 = trunc i64 %687 to i32
  %689 = lshr i32 %688, 24
  %690 = trunc i32 %689 to i8
  %691 = load i8*, i8** %10, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 8
  %693 = getelementptr inbounds i8, i8* %692, i64 4
  %694 = getelementptr inbounds i8, i8* %693, i64 3
  store i8 %690, i8* %694, align 1
  store i32 0, i32* %6, align 4
  br label %695

; <label>:695:                                    ; preds = %625, %558
  %696 = load i32, i32* %6, align 4
  ret i32 %696
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
