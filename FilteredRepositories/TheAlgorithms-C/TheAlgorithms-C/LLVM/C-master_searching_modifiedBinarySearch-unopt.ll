; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_modifiedBinarySearch.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_modifiedBinarySearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@n = common global i32 0, align 4
@m = common global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Found at (%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"element not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @binarySearch(i32*, i32, i32, i32, i32) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  store i32 %4, i32* %10, align 4, !tbaa !7
  %13 = load i32, i32* @n, align 4, !tbaa !7
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* @m, align 4, !tbaa !7
  %16 = zext i32 %15 to i64
  br label %17

; <label>:17:                                     ; preds = %65, %5
  %18 = load i32, i32* %8, align 4, !tbaa !7
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %66

; <label>:21:                                     ; preds = %17
  %22 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = load i32, i32* %8, align 4, !tbaa !7
  %24 = load i32, i32* %9, align 4, !tbaa !7
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %11, align 4, !tbaa !7
  %27 = load i32*, i32** %6, align 8, !tbaa !3
  %28 = load i32, i32* %7, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, %16
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %11, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !7
  %36 = load i32, i32* %10, align 4, !tbaa !7
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %21
  %39 = load i32, i32* %7, align 4, !tbaa !7
  %40 = load i32, i32* %11, align 4, !tbaa !7
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %39, i32 %40)
  store i32 1, i32* %12, align 4
  br label %62

; <label>:42:                                     ; preds = %21
  %43 = load i32*, i32** %6, align 8, !tbaa !3
  %44 = load i32, i32* %7, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, %16
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %11, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = load i32, i32* %10, align 4, !tbaa !7
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %42
  %55 = load i32, i32* %11, align 4, !tbaa !7
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %9, align 4, !tbaa !7
  br label %60

; <label>:57:                                     ; preds = %42
  %58 = load i32, i32* %11, align 4, !tbaa !7
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4, !tbaa !7
  br label %60

; <label>:60:                                     ; preds = %57, %54
  br label %61

; <label>:61:                                     ; preds = %60
  store i32 0, i32* %12, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %38
  %63 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = load i32, i32* %12, align 4
  switch i32 %64, label %69 [
    i32 0, label %65
    i32 1, label %68
  ]

; <label>:65:                                     ; preds = %62
  br label %17

; <label>:66:                                     ; preds = %17
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %68

; <label>:68:                                     ; preds = %66, %62
  ret void

; <label>:69:                                     ; preds = %62
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @modifiedBinarySearch(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %14 = load i32, i32* @n, align 4, !tbaa !7
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @m, align 4, !tbaa !7
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %4
  %21 = load i32*, i32** %5, align 8, !tbaa !3
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %8, align 4, !tbaa !7
  call void @binarySearch(i32* %21, i32 0, i32 0, i32 %23, i32 %24)
  br label %208

; <label>:25:                                     ; preds = %4
  %26 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  %27 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4, !tbaa !7
  %30 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #3
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %11, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %80, %25
  %34 = load i32, i32* %9, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %10, align 4, !tbaa !7
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %81

; <label>:38:                                     ; preds = %33
  %39 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3
  %40 = load i32, i32* %9, align 4, !tbaa !7
  %41 = load i32, i32* %10, align 4, !tbaa !7
  %42 = add nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %12, align 4, !tbaa !7
  %44 = load i32*, i32** %5, align 8, !tbaa !3
  %45 = load i32, i32* %12, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %17
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %11, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = load i32, i32* %8, align 4, !tbaa !7
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %38
  %56 = load i32, i32* %12, align 4, !tbaa !7
  %57 = load i32, i32* %11, align 4, !tbaa !7
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %56, i32 %57)
  store i32 1, i32* %13, align 4
  br label %77

; <label>:59:                                     ; preds = %38
  %60 = load i32*, i32** %5, align 8, !tbaa !3
  %61 = load i32, i32* %12, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, %17
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %11, align 4, !tbaa !7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !7
  %69 = load i32, i32* %8, align 4, !tbaa !7
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %59
  %72 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %72, i32* %10, align 4, !tbaa !7
  br label %75

; <label>:73:                                     ; preds = %59
  %74 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %74, i32* %9, align 4, !tbaa !7
  br label %75

; <label>:75:                                     ; preds = %73, %71
  br label %76

; <label>:76:                                     ; preds = %75
  store i32 0, i32* %13, align 4
  br label %77

; <label>:77:                                     ; preds = %76, %55
  %78 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %203 [
    i32 0, label %80
  ]

; <label>:80:                                     ; preds = %77
  br label %33

; <label>:81:                                     ; preds = %33
  %82 = load i32*, i32** %5, align 8, !tbaa !3
  %83 = load i32, i32* %9, align 4, !tbaa !7
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %17
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %11, align 4, !tbaa !7
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !7
  %91 = load i32, i32* %8, align 4, !tbaa !7
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %81
  %94 = load i32, i32* %9, align 4, !tbaa !7
  %95 = load i32, i32* %11, align 4, !tbaa !7
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %94, i32 %95)
  br label %202

; <label>:97:                                     ; preds = %81
  %98 = load i32*, i32** %5, align 8, !tbaa !3
  %99 = load i32, i32* %9, align 4, !tbaa !7
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %101, %17
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %11, align 4, !tbaa !7
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !7
  %108 = load i32, i32* %8, align 4, !tbaa !7
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

; <label>:110:                                    ; preds = %97
  %111 = load i32, i32* %9, align 4, !tbaa !7
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %11, align 4, !tbaa !7
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %112, i32 %113)
  br label %201

; <label>:115:                                    ; preds = %97
  %116 = load i32, i32* %8, align 4, !tbaa !7
  %117 = load i32*, i32** %5, align 8, !tbaa !3
  %118 = load i32, i32* %9, align 4, !tbaa !7
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, %17
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %11, align 4, !tbaa !7
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !7
  %127 = icmp sle i32 %116, %126
  br i1 %127, label %128, label %134

; <label>:128:                                    ; preds = %115
  %129 = load i32*, i32** %5, align 8, !tbaa !3
  %130 = load i32, i32* %9, align 4, !tbaa !7
  %131 = load i32, i32* %11, align 4, !tbaa !7
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %8, align 4, !tbaa !7
  call void @binarySearch(i32* %129, i32 %130, i32 0, i32 %132, i32 %133)
  br label %200

; <label>:134:                                    ; preds = %115
  %135 = load i32, i32* %8, align 4, !tbaa !7
  %136 = load i32*, i32** %5, align 8, !tbaa !3
  %137 = load i32, i32* %9, align 4, !tbaa !7
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, %17
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %11, align 4, !tbaa !7
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !7
  %146 = icmp sge i32 %135, %145
  br i1 %146, label %147, label %168

; <label>:147:                                    ; preds = %134
  %148 = load i32, i32* %8, align 4, !tbaa !7
  %149 = load i32*, i32** %5, align 8, !tbaa !3
  %150 = load i32, i32* %9, align 4, !tbaa !7
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %17
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %7, align 4, !tbaa !7
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4, !tbaa !7
  %159 = icmp sle i32 %148, %158
  br i1 %159, label %160, label %168

; <label>:160:                                    ; preds = %147
  %161 = load i32*, i32** %5, align 8, !tbaa !3
  %162 = load i32, i32* %9, align 4, !tbaa !7
  %163 = load i32, i32* %11, align 4, !tbaa !7
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %7, align 4, !tbaa !7
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %8, align 4, !tbaa !7
  call void @binarySearch(i32* %161, i32 %162, i32 %164, i32 %166, i32 %167)
  br label %199

; <label>:168:                                    ; preds = %147, %134
  %169 = load i32, i32* %8, align 4, !tbaa !7
  %170 = load i32*, i32** %5, align 8, !tbaa !3
  %171 = load i32, i32* %9, align 4, !tbaa !7
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, %17
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %11, align 4, !tbaa !7
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !7
  %181 = icmp sle i32 %169, %180
  br i1 %181, label %182, label %189

; <label>:182:                                    ; preds = %168
  %183 = load i32*, i32** %5, align 8, !tbaa !3
  %184 = load i32, i32* %9, align 4, !tbaa !7
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %11, align 4, !tbaa !7
  %187 = sub nsw i32 %186, 1
  %188 = load i32, i32* %8, align 4, !tbaa !7
  call void @binarySearch(i32* %183, i32 %185, i32 0, i32 %187, i32 %188)
  br label %198

; <label>:189:                                    ; preds = %168
  %190 = load i32*, i32** %5, align 8, !tbaa !3
  %191 = load i32, i32* %9, align 4, !tbaa !7
  %192 = add nsw i32 %191, 1
  %193 = load i32, i32* %11, align 4, !tbaa !7
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* %7, align 4, !tbaa !7
  %196 = sub nsw i32 %195, 1
  %197 = load i32, i32* %8, align 4, !tbaa !7
  call void @binarySearch(i32* %190, i32 %192, i32 %194, i32 %196, i32 %197)
  br label %198

; <label>:198:                                    ; preds = %189, %182
  br label %199

; <label>:199:                                    ; preds = %198, %160
  br label %200

; <label>:200:                                    ; preds = %199, %128
  br label %201

; <label>:201:                                    ; preds = %200, %110
  br label %202

; <label>:202:                                    ; preds = %201, %93
  store i32 0, i32* %13, align 4
  br label %203

; <label>:203:                                    ; preds = %202, %77
  %204 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %204) #3
  %205 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %205) #3
  %206 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %206) #3
  %207 = load i32, i32* %13, align 4
  switch i32 %207, label %209 [
    i32 0, label %208
    i32 1, label %208
  ]

; <label>:208:                                    ; preds = %20, %203, %203
  ret void

; <label>:209:                                    ; preds = %203
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32* @n, i32* @m, i32* %2)
  %11 = load i32, i32* @n, align 4, !tbaa !7
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @m, align 4, !tbaa !7
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = mul nuw i64 %12, %14
  %17 = alloca i32, i64 %16, align 16
  store i64 %12, i64* %4, align 8
  store i64 %14, i64* %5, align 8
  %18 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %46, %0
  %20 = load i32, i32* %6, align 4, !tbaa !7
  %21 = load i32, i32* @n, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %19
  store i32 2, i32* %7, align 4
  %24 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  br label %49

; <label>:25:                                     ; preds = %19
  %26 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %42, %25
  %28 = load i32, i32* %8, align 4, !tbaa !7
  %29 = load i32, i32* @m, align 4, !tbaa !7
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %27
  store i32 5, i32* %7, align 4
  %32 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  br label %45

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %14
  %37 = getelementptr inbounds i32, i32* %17, i64 %36
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %40)
  br label %42

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %8, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4, !tbaa !7
  br label %27

; <label>:45:                                     ; preds = %31
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %6, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4, !tbaa !7
  br label %19

; <label>:49:                                     ; preds = %23
  %50 = load i32, i32* @n, align 4, !tbaa !7
  %51 = load i32, i32* @m, align 4, !tbaa !7
  %52 = load i32, i32* %2, align 4, !tbaa !7
  call void @modifiedBinarySearch(i32* %17, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  %53 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
