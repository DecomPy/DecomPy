; ModuleID = 'Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_frodokem_util.c'
source_filename = "Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_frodokem_util.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @oqs_kem_frodokem_pack(i8*, i64, i16*, i64, i8 zeroext) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i16* %2, i16** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false, i1 true)
  %23 = call i8* @__memset_chk(i8* %19, i32 0, i64 %20, i64 %22) #3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i16 0, i16* %13, align 2
  store i8 0, i8* %14, align 1
  br label %24

; <label>:24:                                     ; preds = %145, %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %24
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %42, label %32

; <label>:32:                                     ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %32
  %37 = load i8, i8* %14, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 0
  br label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br label %42

; <label>:42:                                     ; preds = %40, %28
  %43 = phi i1 [ true, %28 ], [ %41, %40 ]
  br label %44

; <label>:44:                                     ; preds = %42, %24
  %45 = phi i1 [ false, %24 ], [ %43, %42 ]
  br i1 %45, label %46, label %146

; <label>:46:                                     ; preds = %44
  store i8 0, i8* %15, align 1
  br label %47

; <label>:47:                                     ; preds = %137, %46
  %48 = load i8, i8* %15, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %138

; <label>:51:                                     ; preds = %47
  %52 = load i8, i8* %15, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 8, %53
  %55 = load i8, i8* %14, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %51
  %59 = load i8, i8* %15, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 8, %60
  br label %65

; <label>:62:                                     ; preds = %51
  %63 = load i8, i8* %14, align 1
  %64 = zext i8 %63 to i32
  br label %65

; <label>:65:                                     ; preds = %62, %58
  %66 = phi i32 [ %61, %58 ], [ %64, %62 ]
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = shl i32 1, %67
  %69 = sub nsw i32 %68, 1
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %17, align 2
  %71 = load i16, i16* %13, align 2
  %72 = zext i16 %71 to i32
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %74, %75
  %77 = ashr i32 %72, %76
  %78 = load i16, i16* %17, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %77, %79
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %18, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %18, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %15, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 8, %90
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %91, %92
  %94 = shl i32 %88, %93
  %95 = add nsw i32 %86, %94
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  %100 = load i32, i32* %16, align 4
  %101 = load i8, i8* %15, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %15, align 1
  %105 = load i32, i32* %16, align 4
  %106 = load i8, i8* %14, align 1
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %14, align 1
  %110 = load i16, i16* %17, align 2
  %111 = zext i16 %110 to i32
  %112 = load i8, i8* %14, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %111, %113
  %115 = xor i32 %114, -1
  %116 = load i16, i16* %13, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, %115
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %13, align 2
  %120 = load i8, i8* %14, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %137

; <label>:123:                                    ; preds = %65
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %135

; <label>:127:                                    ; preds = %123
  %128 = load i16*, i16** %8, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds i16, i16* %128, i64 %129
  %131 = load i16, i16* %130, align 2
  store i16 %131, i16* %13, align 2
  %132 = load i8, i8* %10, align 1
  store i8 %132, i8* %14, align 1
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  br label %136

; <label>:135:                                    ; preds = %123
  br label %138

; <label>:136:                                    ; preds = %127
  br label %137

; <label>:137:                                    ; preds = %136, %65
  br label %47

; <label>:138:                                    ; preds = %135, %47
  %139 = load i8, i8* %15, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 8
  br i1 %141, label %142, label %145

; <label>:142:                                    ; preds = %138
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %145

; <label>:145:                                    ; preds = %142, %138
  br label %24

; <label>:146:                                    ; preds = %44
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @oqs_kem_frodokem_unpack(i16*, i64, i8*, i64, i8 zeroext) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  store i16* %0, i16** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %19 = load i16*, i16** %6, align 8
  %20 = bitcast i16* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 2
  %23 = load i16*, i16** %6, align 8
  %24 = bitcast i16* %23 to i8*
  %25 = call i64 @llvm.objectsize.i64.p0i8(i8* %24, i1 false, i1 true)
  %26 = call i8* @__memset_chk(i8* %20, i32 0, i64 %22, i64 %25) #3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  br label %27

; <label>:27:                                     ; preds = %157, %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %47

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %45, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %35
  %40 = load i8, i8* %14, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sgt i32 %41, 0
  br label %43

; <label>:43:                                     ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br label %45

; <label>:45:                                     ; preds = %43, %31
  %46 = phi i1 [ true, %31 ], [ %44, %43 ]
  br label %47

; <label>:47:                                     ; preds = %45, %27
  %48 = phi i1 [ false, %27 ], [ %46, %45 ]
  br i1 %48, label %49, label %158

; <label>:49:                                     ; preds = %47
  store i8 0, i8* %15, align 1
  br label %50

; <label>:50:                                     ; preds = %147, %49
  %51 = load i8, i8* %15, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %148

; <label>:56:                                     ; preds = %50
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %15, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %58, %60
  %62 = load i8, i8* %14, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %56
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %15, align 1
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %67, %69
  br label %74

; <label>:71:                                     ; preds = %56
  %72 = load i8, i8* %14, align 1
  %73 = zext i8 %72 to i32
  br label %74

; <label>:74:                                     ; preds = %71, %65
  %75 = phi i32 [ %70, %65 ], [ %73, %71 ]
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %17, align 2
  %80 = load i8, i8* %13, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %14, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %83, %84
  %86 = ashr i32 %81, %85
  %87 = load i16, i16* %17, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %86, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %18, align 1
  %91 = load i16*, i16** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i16, i16* %91, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = load i8, i8* %18, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* %15, align 1
  %101 = zext i8 %100 to i32
  %102 = sub nsw i32 %99, %101
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = shl i32 %97, %104
  %106 = add nsw i32 %95, %105
  %107 = trunc i32 %106 to i16
  %108 = load i16*, i16** %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i16, i16* %108, i64 %109
  store i16 %107, i16* %110, align 2
  %111 = load i32, i32* %16, align 4
  %112 = load i8, i8* %15, align 1
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %15, align 1
  %116 = load i32, i32* %16, align 4
  %117 = load i8, i8* %14, align 1
  %118 = zext i8 %117 to i32
  %119 = sub nsw i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = load i16, i16* %17, align 2
  %122 = zext i16 %121 to i32
  %123 = load i8, i8* %14, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %122, %124
  %126 = xor i32 %125, -1
  %127 = load i8, i8* %13, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, %126
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %13, align 1
  %131 = load i8, i8* %14, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %147

; <label>:134:                                    ; preds = %74
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %145

; <label>:138:                                    ; preds = %134
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %13, align 1
  store i8 8, i8* %14, align 1
  %143 = load i64, i64* %12, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %12, align 8
  br label %146

; <label>:145:                                    ; preds = %134
  br label %148

; <label>:146:                                    ; preds = %138
  br label %147

; <label>:147:                                    ; preds = %146, %74
  br label %50

; <label>:148:                                    ; preds = %145, %50
  %149 = load i8, i8* %15, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* %10, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %157

; <label>:154:                                    ; preds = %148
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  br label %157

; <label>:157:                                    ; preds = %154, %148
  br label %27

; <label>:158:                                    ; preds = %47
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
