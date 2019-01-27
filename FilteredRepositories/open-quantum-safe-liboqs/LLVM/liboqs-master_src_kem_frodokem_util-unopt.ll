; ModuleID = 'Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_frodokem_util.c'
source_filename = "Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_frodokem_util.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
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
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8, !tbaa !3
  store i64 %1, i64* %7, align 8, !tbaa !7
  store i16* %2, i16** %8, align 8, !tbaa !3
  store i64 %3, i64* %9, align 8, !tbaa !7
  store i8 %4, i8* %10, align 1, !tbaa !9
  %20 = load i8*, i8** %6, align 8, !tbaa !3
  %21 = load i64, i64* %7, align 8, !tbaa !7
  %22 = load i8*, i8** %6, align 8, !tbaa !3
  %23 = call i64 @llvm.objectsize.i64.p0i8(i8* %22, i1 false, i1 true)
  %24 = call i8* @__memset_chk(i8* %20, i32 0, i64 %21, i64 %23) #4
  %25 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #4
  store i64 0, i64* %11, align 8, !tbaa !7
  %26 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #4
  store i64 0, i64* %12, align 8, !tbaa !7
  %27 = bitcast i16* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %27) #4
  store i16 0, i16* %13, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %14) #4
  store i8 0, i8* %14, align 1, !tbaa !9
  br label %28

; <label>:28:                                     ; preds = %156, %5
  %29 = load i64, i64* %11, align 8, !tbaa !7
  %30 = load i64, i64* %7, align 8, !tbaa !7
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %48

; <label>:32:                                     ; preds = %28
  %33 = load i64, i64* %12, align 8, !tbaa !7
  %34 = load i64, i64* %9, align 8, !tbaa !7
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %46, label %36

; <label>:36:                                     ; preds = %32
  %37 = load i64, i64* %12, align 8, !tbaa !7
  %38 = load i64, i64* %9, align 8, !tbaa !7
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %36
  %41 = load i8, i8* %14, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %42, 0
  br label %44

; <label>:44:                                     ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br label %46

; <label>:46:                                     ; preds = %44, %32
  %47 = phi i1 [ true, %32 ], [ %45, %44 ]
  br label %48

; <label>:48:                                     ; preds = %46, %28
  %49 = phi i1 [ false, %28 ], [ %47, %46 ]
  br i1 %49, label %50, label %157

; <label>:50:                                     ; preds = %48
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #4
  store i8 0, i8* %15, align 1, !tbaa !9
  br label %51

; <label>:51:                                     ; preds = %148, %50
  %52 = load i8, i8* %15, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %149

; <label>:55:                                     ; preds = %51
  %56 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %56) #4
  %57 = load i8, i8* %15, align 1, !tbaa !9
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 8, %58
  %60 = load i8, i8* %14, align 1, !tbaa !9
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %55
  %64 = load i8, i8* %15, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 8, %65
  br label %70

; <label>:67:                                     ; preds = %55
  %68 = load i8, i8* %14, align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  br label %70

; <label>:70:                                     ; preds = %67, %63
  %71 = phi i32 [ %66, %63 ], [ %69, %67 ]
  store i32 %71, i32* %16, align 4, !tbaa !12
  %72 = bitcast i16* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %72) #4
  %73 = load i32, i32* %16, align 4, !tbaa !12
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %17, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %18) #4
  %77 = load i16, i16* %13, align 2, !tbaa !10
  %78 = zext i16 %77 to i32
  %79 = load i8, i8* %14, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %16, align 4, !tbaa !12
  %82 = sub nsw i32 %80, %81
  %83 = ashr i32 %78, %82
  %84 = load i16, i16* %17, align 2, !tbaa !10
  %85 = zext i16 %84 to i32
  %86 = and i32 %83, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %18, align 1, !tbaa !9
  %88 = load i8*, i8** %6, align 8, !tbaa !3
  %89 = load i64, i64* %11, align 8, !tbaa !7
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %18, align 1, !tbaa !9
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %15, align 1, !tbaa !9
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 8, %96
  %98 = load i32, i32* %16, align 4, !tbaa !12
  %99 = sub nsw i32 %97, %98
  %100 = shl i32 %94, %99
  %101 = add nsw i32 %92, %100
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %6, align 8, !tbaa !3
  %104 = load i64, i64* %11, align 8, !tbaa !7
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 %102, i8* %105, align 1, !tbaa !9
  %106 = load i32, i32* %16, align 4, !tbaa !12
  %107 = load i8, i8* %15, align 1, !tbaa !9
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %15, align 1, !tbaa !9
  %111 = load i32, i32* %16, align 4, !tbaa !12
  %112 = load i8, i8* %14, align 1, !tbaa !9
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %14, align 1, !tbaa !9
  %116 = load i16, i16* %17, align 2, !tbaa !10
  %117 = zext i16 %116 to i32
  %118 = load i8, i8* %14, align 1, !tbaa !9
  %119 = zext i8 %118 to i32
  %120 = shl i32 %117, %119
  %121 = xor i32 %120, -1
  %122 = load i16, i16* %13, align 2, !tbaa !10
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, %121
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %13, align 2, !tbaa !10
  %126 = load i8, i8* %14, align 1, !tbaa !9
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %143

; <label>:129:                                    ; preds = %70
  %130 = load i64, i64* %12, align 8, !tbaa !7
  %131 = load i64, i64* %9, align 8, !tbaa !7
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %141

; <label>:133:                                    ; preds = %129
  %134 = load i16*, i16** %8, align 8, !tbaa !3
  %135 = load i64, i64* %12, align 8, !tbaa !7
  %136 = getelementptr inbounds i16, i16* %134, i64 %135
  %137 = load i16, i16* %136, align 2, !tbaa !10
  store i16 %137, i16* %13, align 2, !tbaa !10
  %138 = load i8, i8* %10, align 1, !tbaa !9
  store i8 %138, i8* %14, align 1, !tbaa !9
  %139 = load i64, i64* %12, align 8, !tbaa !7
  %140 = add i64 %139, 1
  store i64 %140, i64* %12, align 8, !tbaa !7
  br label %142

; <label>:141:                                    ; preds = %129
  store i32 5, i32* %19, align 4
  br label %144

; <label>:142:                                    ; preds = %133
  br label %143

; <label>:143:                                    ; preds = %142, %70
  store i32 0, i32* %19, align 4
  br label %144

; <label>:144:                                    ; preds = %143, %141
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #4
  %145 = bitcast i16* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %145) #4
  %146 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %146) #4
  %147 = load i32, i32* %19, align 4
  switch i32 %147, label %161 [
    i32 0, label %148
    i32 5, label %149
  ]

; <label>:148:                                    ; preds = %144
  br label %51

; <label>:149:                                    ; preds = %144, %51
  %150 = load i8, i8* %15, align 1, !tbaa !9
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %153, label %156

; <label>:153:                                    ; preds = %149
  %154 = load i64, i64* %11, align 8, !tbaa !7
  %155 = add i64 %154, 1
  store i64 %155, i64* %11, align 8, !tbaa !7
  br label %156

; <label>:156:                                    ; preds = %153, %149
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #4
  br label %28

; <label>:157:                                    ; preds = %48
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %14) #4
  %158 = bitcast i16* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %158) #4
  %159 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %159) #4
  %160 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %160) #4
  ret void

; <label>:161:                                    ; preds = %144
  unreachable
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
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
  %19 = alloca i32, align 4
  store i16* %0, i16** %6, align 8, !tbaa !3
  store i64 %1, i64* %7, align 8, !tbaa !7
  store i8* %2, i8** %8, align 8, !tbaa !3
  store i64 %3, i64* %9, align 8, !tbaa !7
  store i8 %4, i8* %10, align 1, !tbaa !9
  %20 = load i16*, i16** %6, align 8, !tbaa !3
  %21 = bitcast i16* %20 to i8*
  %22 = load i64, i64* %7, align 8, !tbaa !7
  %23 = mul i64 %22, 2
  %24 = load i16*, i16** %6, align 8, !tbaa !3
  %25 = bitcast i16* %24 to i8*
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true)
  %27 = call i8* @__memset_chk(i8* %21, i32 0, i64 %23, i64 %26) #4
  %28 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4
  store i64 0, i64* %11, align 8, !tbaa !7
  %29 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #4
  store i64 0, i64* %12, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %13) #4
  store i8 0, i8* %13, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %14) #4
  store i8 0, i8* %14, align 1, !tbaa !9
  br label %30

; <label>:30:                                     ; preds = %167, %5
  %31 = load i64, i64* %11, align 8, !tbaa !7
  %32 = load i64, i64* %7, align 8, !tbaa !7
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %50

; <label>:34:                                     ; preds = %30
  %35 = load i64, i64* %12, align 8, !tbaa !7
  %36 = load i64, i64* %9, align 8, !tbaa !7
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %48, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i64, i64* %12, align 8, !tbaa !7
  %40 = load i64, i64* %9, align 8, !tbaa !7
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %38
  %43 = load i8, i8* %14, align 1, !tbaa !9
  %44 = zext i8 %43 to i32
  %45 = icmp sgt i32 %44, 0
  br label %46

; <label>:46:                                     ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br label %48

; <label>:48:                                     ; preds = %46, %34
  %49 = phi i1 [ true, %34 ], [ %47, %46 ]
  br label %50

; <label>:50:                                     ; preds = %48, %30
  %51 = phi i1 [ false, %30 ], [ %49, %48 ]
  br i1 %51, label %52, label %168

; <label>:52:                                     ; preds = %50
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %15) #4
  store i8 0, i8* %15, align 1, !tbaa !9
  br label %53

; <label>:53:                                     ; preds = %157, %52
  %54 = load i8, i8* %15, align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %10, align 1, !tbaa !9
  %57 = zext i8 %56 to i32
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %158

; <label>:59:                                     ; preds = %53
  %60 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %60) #4
  %61 = load i8, i8* %10, align 1, !tbaa !9
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %15, align 1, !tbaa !9
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %62, %64
  %66 = load i8, i8* %14, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %75

; <label>:69:                                     ; preds = %59
  %70 = load i8, i8* %10, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %15, align 1, !tbaa !9
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %71, %73
  br label %78

; <label>:75:                                     ; preds = %59
  %76 = load i8, i8* %14, align 1, !tbaa !9
  %77 = zext i8 %76 to i32
  br label %78

; <label>:78:                                     ; preds = %75, %69
  %79 = phi i32 [ %74, %69 ], [ %77, %75 ]
  store i32 %79, i32* %16, align 4, !tbaa !12
  %80 = bitcast i16* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %80) #4
  %81 = load i32, i32* %16, align 4, !tbaa !12
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %17, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %18) #4
  %85 = load i8, i8* %13, align 1, !tbaa !9
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %14, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %16, align 4, !tbaa !12
  %90 = sub nsw i32 %88, %89
  %91 = ashr i32 %86, %90
  %92 = load i16, i16* %17, align 2, !tbaa !10
  %93 = zext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %18, align 1, !tbaa !9
  %96 = load i16*, i16** %6, align 8, !tbaa !3
  %97 = load i64, i64* %11, align 8, !tbaa !7
  %98 = getelementptr inbounds i16, i16* %96, i64 %97
  %99 = load i16, i16* %98, align 2, !tbaa !10
  %100 = zext i16 %99 to i32
  %101 = load i8, i8* %18, align 1, !tbaa !9
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* %10, align 1, !tbaa !9
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* %15, align 1, !tbaa !9
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %104, %106
  %108 = load i32, i32* %16, align 4, !tbaa !12
  %109 = sub nsw i32 %107, %108
  %110 = shl i32 %102, %109
  %111 = add nsw i32 %100, %110
  %112 = trunc i32 %111 to i16
  %113 = load i16*, i16** %6, align 8, !tbaa !3
  %114 = load i64, i64* %11, align 8, !tbaa !7
  %115 = getelementptr inbounds i16, i16* %113, i64 %114
  store i16 %112, i16* %115, align 2, !tbaa !10
  %116 = load i32, i32* %16, align 4, !tbaa !12
  %117 = load i8, i8* %15, align 1, !tbaa !9
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %15, align 1, !tbaa !9
  %121 = load i32, i32* %16, align 4, !tbaa !12
  %122 = load i8, i8* %14, align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, %121
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %14, align 1, !tbaa !9
  %126 = load i16, i16* %17, align 2, !tbaa !10
  %127 = zext i16 %126 to i32
  %128 = load i8, i8* %14, align 1, !tbaa !9
  %129 = zext i8 %128 to i32
  %130 = shl i32 %127, %129
  %131 = xor i32 %130, -1
  %132 = load i8, i8* %13, align 1, !tbaa !9
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, %131
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %13, align 1, !tbaa !9
  %136 = load i8, i8* %14, align 1, !tbaa !9
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %152

; <label>:139:                                    ; preds = %78
  %140 = load i64, i64* %12, align 8, !tbaa !7
  %141 = load i64, i64* %9, align 8, !tbaa !7
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %150

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %8, align 8, !tbaa !3
  %145 = load i64, i64* %12, align 8, !tbaa !7
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1, !tbaa !9
  store i8 %147, i8* %13, align 1, !tbaa !9
  store i8 8, i8* %14, align 1, !tbaa !9
  %148 = load i64, i64* %12, align 8, !tbaa !7
  %149 = add i64 %148, 1
  store i64 %149, i64* %12, align 8, !tbaa !7
  br label %151

; <label>:150:                                    ; preds = %139
  store i32 5, i32* %19, align 4
  br label %153

; <label>:151:                                    ; preds = %143
  br label %152

; <label>:152:                                    ; preds = %151, %78
  store i32 0, i32* %19, align 4
  br label %153

; <label>:153:                                    ; preds = %152, %150
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #4
  %154 = bitcast i16* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %154) #4
  %155 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #4
  %156 = load i32, i32* %19, align 4
  switch i32 %156, label %171 [
    i32 0, label %157
    i32 5, label %158
  ]

; <label>:157:                                    ; preds = %153
  br label %53

; <label>:158:                                    ; preds = %153, %53
  %159 = load i8, i8* %15, align 1, !tbaa !9
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* %10, align 1, !tbaa !9
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %167

; <label>:164:                                    ; preds = %158
  %165 = load i64, i64* %11, align 8, !tbaa !7
  %166 = add i64 %165, 1
  store i64 %166, i64* %11, align 8, !tbaa !7
  br label %167

; <label>:167:                                    ; preds = %164, %158
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #4
  br label %30

; <label>:168:                                    ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %14) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4
  %169 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %169) #4
  %170 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #4
  ret void

; <label>:171:                                    ; preds = %153
  unreachable
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

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
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !5, i64 0}
