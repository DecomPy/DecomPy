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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gf_mul(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 285, i32 0
  %27 = xor i32 %21, %26
  store i32 %27, i32* %4, align 4
  br label %6

; <label>:28:                                     ; preds = %6
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sbox(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = lshr i32 %6, 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 15
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = xor i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @R, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = xor i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %37, 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %38, %39
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %15, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %18

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* @E, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* @Ei, i64 0, i64 %13
  store i32 %8, i32* %14, align 4
  br label %15

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %2, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4

; <label>:18:                                     ; preds = %4
  store i32 1, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %47, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %50

; <label>:22:                                     ; preds = %19
  store i32 0, i32* %2, align 4
  br label %23

; <label>:23:                                     ; preds = %43, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp ult i32 %24, 8
  br i1 %25, label %26, label %46

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %29
  %31 = load i32, i32* %2, align 4
  %32 = sub i32 %31, 1
  %33 = and i32 %32, 7
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %38
  %40 = load i32, i32* %2, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 0, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %26
  %44 = load i32, i32* %2, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %23

; <label>:46:                                     ; preds = %23
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %19

; <label>:50:                                     ; preds = %19
  store i32 0, i32* %3, align 4
  br label %51

; <label>:51:                                     ; preds = %140, %50
  %52 = load i32, i32* %3, align 4
  %53 = icmp ult i32 %52, 8
  br i1 %53, label %54, label %143

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

; <label>:57:                                     ; preds = %137, %54
  %58 = load i32, i32* %2, align 4
  %59 = icmp ult i32 %58, 256
  br i1 %59, label %60, label %138

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @sbox(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = call i32 @gf_mul(i32 %62, i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @sbox(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %72
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gf_mul(i32 %70, i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @sbox(i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %80
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %81, i64 0, i64 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @gf_mul(i32 %78, i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @sbox(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %89, i64 0, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gf_mul(i32 %86, i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @sbox(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %96
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %97, i64 0, i64 4
  %99 = load i32, i32* %98, align 16
  %100 = call i32 @gf_mul(i32 %94, i32 %99)
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @sbox(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %104
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %105, i64 0, i64 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @gf_mul(i32 %102, i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @sbox(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %112
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %113, i64 0, i64 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @gf_mul(i32 %110, i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @sbox(i32 %117)
  %119 = load i32, i32* %3, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @cir, i64 0, i64 %120
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %121, i64 0, i64 7
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @gf_mul(i32 %118, i32 %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %68, i32 %76, i32 %84, i32 %92, i32 %100, i32 %108, i32 %116, i32 %124)
  %126 = load i32, i32* %2, align 4
  %127 = icmp ult i32 %126, 255
  br i1 %127, label %128, label %130

; <label>:128:                                    ; preds = %60
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %130

; <label>:130:                                    ; preds = %128, %60
  %131 = load i32, i32* %2, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %2, align 4
  %133 = and i32 %132, 3
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

; <label>:135:                                    ; preds = %130
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %137

; <label>:137:                                    ; preds = %135, %130
  br label %57

; <label>:138:                                    ; preds = %57
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %140

; <label>:140:                                    ; preds = %138
  %141 = load i32, i32* %3, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %51

; <label>:143:                                    ; preds = %51
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %145

; <label>:145:                                    ; preds = %166, %143
  %146 = load i32, i32* %3, align 4
  %147 = icmp ule i32 %146, 10
  br i1 %147, label %148, label %169

; <label>:148:                                    ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %150

; <label>:150:                                    ; preds = %161, %148
  %151 = load i32, i32* %2, align 4
  %152 = icmp ult i32 %151, 8
  br i1 %152, label %153, label %164

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = mul i32 8, %154
  %156 = load i32, i32* %2, align 4
  %157 = add i32 %155, %156
  %158 = and i32 %157, 255
  %159 = call i32 @sbox(i32 %158)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %159)
  br label %161

; <label>:161:                                    ; preds = %153
  %162 = load i32, i32* %2, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %2, align 4
  br label %150

; <label>:164:                                    ; preds = %150
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  br label %166

; <label>:166:                                    ; preds = %164
  %167 = load i32, i32* %3, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %145

; <label>:169:                                    ; preds = %145
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
