; ModuleID = 'Repositories/libtom-libtomcrypt/Unfiltered/libtomcrypt-master_notes_etc_whirlgen.c'
source_filename = "Repositories/libtom-libtomcrypt/Unfiltered/libtomcrypt-master_notes_etc_whirlgen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@E = global [16 x i32] [i32 1, i32 11, i32 9, i32 12, i32 13, i32 6, i32 15, i32 3, i32 14, i32 8, i32 7, i32 4, i32 10, i32 2, i32 5, i32 0], align 16
@R = global [16 x i32] [i32 7, i32 12, i32 11, i32 13, i32 14, i32 4, i32 9, i32 15, i32 6, i32 3, i32 8, i32 10, i32 2, i32 5, i32 1, i32 0], align 16
@cir = global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 1, i32 4, i32 1, i32 8, i32 5, i32 2, i32 9], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer], align 16
@Ei = common global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [35 x i8] c"static const ulong64 sbox%d[] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CONST64(0x%02x%02x%02x%02x%02x%02x%02x%02x)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"static const ulong64 cont[] = {\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CONST64(0x\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"),\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @gf_mul(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = xor i32 %16, %15
  store i32 %17, i32* %5, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %14, %10
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = lshr i32 %19, 1
  store i32 %20, i32* %3, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 285, i32 0
  %28 = xor i32 %22, %27
  store i32 %28, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:29:                                     ; preds = %7
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret i32 %30
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sbox(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = lshr i32 %9, 4
  store i32 %10, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = and i32 %11, 15
  store i32 %12, i32* %4, align 4, !tbaa !3
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !3
  store i32 %16, i32* %3, align 4, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !3
  store i32 %20, i32* %4, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = load i32, i32* %4, align 4, !tbaa !3
  %23 = xor i32 %21, %22
  store i32 %23, i32* %5, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @R, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !3
  store i32 %27, i32* %5, align 4, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  %30 = xor i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !3
  store i32 %33, i32* %3, align 4, !tbaa !3
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = load i32, i32* %5, align 4, !tbaa !3
  %36 = xor i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !3
  store i32 %39, i32* %4, align 4, !tbaa !3
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %4, align 4, !tbaa !3
  %43 = or i32 %41, %42
  %44 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3
  %46 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %17, %0
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %15
  store i32 %10, i32* %16, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = add i32 %18, 1
  store i32 %19, i32* %2, align 4, !tbaa !3
  br label %6

; <label>:20:                                     ; preds = %6
  store i32 1, i32* %3, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %49, %20
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %52

; <label>:24:                                     ; preds = %21
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %25

; <label>:25:                                     ; preds = %45, %24
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %28, label %48

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %31
  %33 = load i32, i32* %2, align 4, !tbaa !3
  %34 = sub i32 %33, 1
  %35 = and i32 %34, 7
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !3
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %40
  %42 = load i32, i32* %2, align 4, !tbaa !3
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %41, i64 0, i64 %43
  store i32 %38, i32* %44, align 4, !tbaa !3
  br label %45

; <label>:45:                                     ; preds = %28
  %46 = load i32, i32* %2, align 4, !tbaa !3
  %47 = add i32 %46, 1
  store i32 %47, i32* %2, align 4, !tbaa !3
  br label %25

; <label>:48:                                     ; preds = %25
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %3, align 4, !tbaa !3
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4, !tbaa !3
  br label %21

; <label>:52:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %53

; <label>:53:                                     ; preds = %142, %52
  %54 = load i32, i32* %3, align 4, !tbaa !3
  %55 = icmp ult i32 %54, 8
  br i1 %55, label %56, label %145

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %57)
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %59

; <label>:59:                                     ; preds = %139, %56
  %60 = load i32, i32* %2, align 4, !tbaa !3
  %61 = icmp ult i32 %60, 256
  br i1 %61, label %62, label %140

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %2, align 4, !tbaa !3
  %64 = call i32 @sbox(i32 %63)
  %65 = load i32, i32* %3, align 4, !tbaa !3
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %66
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 0, i64 0
  %69 = load i32, i32* %68, align 16, !tbaa !3
  %70 = call i32 @gf_mul(i32 %64, i32 %69)
  %71 = load i32, i32* %2, align 4, !tbaa !3
  %72 = call i32 @sbox(i32 %71)
  %73 = load i32, i32* %3, align 4, !tbaa !3
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %74
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %75, i64 0, i64 1
  %77 = load i32, i32* %76, align 4, !tbaa !3
  %78 = call i32 @gf_mul(i32 %72, i32 %77)
  %79 = load i32, i32* %2, align 4, !tbaa !3
  %80 = call i32 @sbox(i32 %79)
  %81 = load i32, i32* %3, align 4, !tbaa !3
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %82
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %83, i64 0, i64 2
  %85 = load i32, i32* %84, align 8, !tbaa !3
  %86 = call i32 @gf_mul(i32 %80, i32 %85)
  %87 = load i32, i32* %2, align 4, !tbaa !3
  %88 = call i32 @sbox(i32 %87)
  %89 = load i32, i32* %3, align 4, !tbaa !3
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %90
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 3
  %93 = load i32, i32* %92, align 4, !tbaa !3
  %94 = call i32 @gf_mul(i32 %88, i32 %93)
  %95 = load i32, i32* %2, align 4, !tbaa !3
  %96 = call i32 @sbox(i32 %95)
  %97 = load i32, i32* %3, align 4, !tbaa !3
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %98
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 4
  %101 = load i32, i32* %100, align 16, !tbaa !3
  %102 = call i32 @gf_mul(i32 %96, i32 %101)
  %103 = load i32, i32* %2, align 4, !tbaa !3
  %104 = call i32 @sbox(i32 %103)
  %105 = load i32, i32* %3, align 4, !tbaa !3
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %106
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %107, i64 0, i64 5
  %109 = load i32, i32* %108, align 4, !tbaa !3
  %110 = call i32 @gf_mul(i32 %104, i32 %109)
  %111 = load i32, i32* %2, align 4, !tbaa !3
  %112 = call i32 @sbox(i32 %111)
  %113 = load i32, i32* %3, align 4, !tbaa !3
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %114
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %115, i64 0, i64 6
  %117 = load i32, i32* %116, align 8, !tbaa !3
  %118 = call i32 @gf_mul(i32 %112, i32 %117)
  %119 = load i32, i32* %2, align 4, !tbaa !3
  %120 = call i32 @sbox(i32 %119)
  %121 = load i32, i32* %3, align 4, !tbaa !3
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %122
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %123, i64 0, i64 7
  %125 = load i32, i32* %124, align 4, !tbaa !3
  %126 = call i32 @gf_mul(i32 %120, i32 %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %70, i32 %78, i32 %86, i32 %94, i32 %102, i32 %110, i32 %118, i32 %126)
  %128 = load i32, i32* %2, align 4, !tbaa !3
  %129 = icmp ult i32 %128, 255
  br i1 %129, label %130, label %132

; <label>:130:                                    ; preds = %62
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %132

; <label>:132:                                    ; preds = %130, %62
  %133 = load i32, i32* %2, align 4, !tbaa !3
  %134 = add i32 %133, 1
  store i32 %134, i32* %2, align 4, !tbaa !3
  %135 = and i32 %134, 3
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

; <label>:137:                                    ; preds = %132
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %139

; <label>:139:                                    ; preds = %137, %132
  br label %59

; <label>:140:                                    ; preds = %59
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %142

; <label>:142:                                    ; preds = %140
  %143 = load i32, i32* %3, align 4, !tbaa !3
  %144 = add i32 %143, 1
  store i32 %144, i32* %3, align 4, !tbaa !3
  br label %53

; <label>:145:                                    ; preds = %53
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %147

; <label>:147:                                    ; preds = %168, %145
  %148 = load i32, i32* %3, align 4, !tbaa !3
  %149 = icmp ule i32 %148, 10
  br i1 %149, label %150, label %171

; <label>:150:                                    ; preds = %147
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %152

; <label>:152:                                    ; preds = %163, %150
  %153 = load i32, i32* %2, align 4, !tbaa !3
  %154 = icmp ult i32 %153, 8
  br i1 %154, label %155, label %166

; <label>:155:                                    ; preds = %152
  %156 = load i32, i32* %3, align 4, !tbaa !3
  %157 = mul i32 8, %156
  %158 = load i32, i32* %2, align 4, !tbaa !3
  %159 = add i32 %157, %158
  %160 = and i32 %159, 255
  %161 = call i32 @sbox(i32 %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %161)
  br label %163

; <label>:163:                                    ; preds = %155
  %164 = load i32, i32* %2, align 4, !tbaa !3
  %165 = add i32 %164, 1
  store i32 %165, i32* %2, align 4, !tbaa !3
  br label %152

; <label>:166:                                    ; preds = %152
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  br label %168

; <label>:168:                                    ; preds = %166
  %169 = load i32, i32* %3, align 4, !tbaa !3
  %170 = add i32 %169, 1
  store i32 %170, i32* %3, align 4, !tbaa !3
  br label %147

; <label>:171:                                    ; preds = %147
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %173 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %173) #3
  %174 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %174) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
