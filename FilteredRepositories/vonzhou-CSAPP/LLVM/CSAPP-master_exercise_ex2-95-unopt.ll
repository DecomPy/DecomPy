; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-95.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-95.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @float_i2f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %16 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #2
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #2
  %18 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #2
  %19 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #2
  %20 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  %21 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #2
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %1
  %25 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %132

; <label>:26:                                     ; preds = %1
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = and i32 %27, -2147483648
  %29 = icmp eq i32 %28, -2147483648
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4, !tbaa !3
  %31 = load i32, i32* %4, align 4, !tbaa !3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = xor i32 %34, -1
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4, !tbaa !3
  br label %37

; <label>:37:                                     ; preds = %33, %26
  store i32 1, i32* %8, align 4, !tbaa !3
  store i32 -2147483648, i32* %9, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %47, %37
  %39 = load i32, i32* %9, align 4, !tbaa !3
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = and i32 %39, %40
  %42 = load i32, i32* %9, align 4, !tbaa !3
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %8, align 4, !tbaa !3
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4, !tbaa !3
  br label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %9, align 4, !tbaa !3
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %9, align 4, !tbaa !3
  br label %38

; <label>:50:                                     ; preds = %38
  %51 = load i32, i32* %8, align 4, !tbaa !3
  %52 = zext i32 %51 to i64
  %53 = sub i64 32, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4, !tbaa !3
  %55 = load i32, i32* %7, align 4, !tbaa !3
  %56 = add i32 %55, 127
  store i32 %56, i32* %5, align 4, !tbaa !3
  %57 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %57) #2
  %58 = load i32, i32* %7, align 4, !tbaa !3
  %59 = icmp ugt i32 %58, 23
  br i1 %59, label %60, label %116

; <label>:60:                                     ; preds = %50
  %61 = load i32, i32* %7, align 4, !tbaa !3
  %62 = sub i32 %61, 23
  store i32 %62, i32* %11, align 4, !tbaa !3
  %63 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %63) #2
  %64 = load i32, i32* %11, align 4, !tbaa !3
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %3, align 4, !tbaa !3
  %68 = and i32 %66, %67
  store i32 %68, i32* %12, align 4, !tbaa !3
  %69 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %69) #2
  %70 = load i32, i32* %11, align 4, !tbaa !3
  %71 = sub nsw i32 %70, 1
  %72 = shl i32 1, %71
  store i32 %72, i32* %13, align 4, !tbaa !3
  %73 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %73) #2
  %74 = load i32, i32* %11, align 4, !tbaa !3
  %75 = shl i32 1, %74
  store i32 %75, i32* %14, align 4, !tbaa !3
  %76 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %76) #2
  %77 = load i32, i32* %12, align 4, !tbaa !3
  %78 = load i32, i32* %13, align 4, !tbaa !3
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %92, label %80

; <label>:80:                                     ; preds = %60
  %81 = load i32, i32* %12, align 4, !tbaa !3
  %82 = load i32, i32* %13, align 4, !tbaa !3
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %3, align 4, !tbaa !3
  %86 = load i32, i32* %14, align 4, !tbaa !3
  %87 = and i32 %85, %86
  %88 = load i32, i32* %14, align 4, !tbaa !3
  %89 = icmp eq i32 %87, %88
  br label %90

; <label>:90:                                     ; preds = %84, %80
  %91 = phi i1 [ false, %80 ], [ %89, %84 ]
  br label %92

; <label>:92:                                     ; preds = %90, %60
  %93 = phi i1 [ true, %60 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %15, align 4, !tbaa !3
  %95 = load i32, i32* %3, align 4, !tbaa !3
  %96 = load i32, i32* %11, align 4, !tbaa !3
  %97 = ashr i32 %95, %96
  %98 = and i32 %97, 8388607
  store i32 %98, i32* %6, align 4, !tbaa !3
  %99 = load i32, i32* %6, align 4, !tbaa !3
  %100 = icmp eq i32 %99, 8388607
  br i1 %100, label %101, label %107

; <label>:101:                                    ; preds = %92
  %102 = load i32, i32* %15, align 4, !tbaa !3
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %101
  store i32 0, i32* %6, align 4, !tbaa !3
  %105 = load i32, i32* %5, align 4, !tbaa !3
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4, !tbaa !3
  br label %111

; <label>:107:                                    ; preds = %101, %92
  %108 = load i32, i32* %15, align 4, !tbaa !3
  %109 = load i32, i32* %6, align 4, !tbaa !3
  %110 = add i32 %109, %108
  store i32 %110, i32* %6, align 4, !tbaa !3
  br label %111

; <label>:111:                                    ; preds = %107, %104
  %112 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #2
  %113 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #2
  %114 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #2
  %115 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #2
  br label %123

; <label>:116:                                    ; preds = %50
  %117 = load i32, i32* %7, align 4, !tbaa !3
  %118 = sub i32 23, %117
  store i32 %118, i32* %11, align 4, !tbaa !3
  %119 = load i32, i32* %3, align 4, !tbaa !3
  %120 = load i32, i32* %11, align 4, !tbaa !3
  %121 = shl i32 %119, %120
  %122 = and i32 %121, 8388607
  store i32 %122, i32* %6, align 4, !tbaa !3
  br label %123

; <label>:123:                                    ; preds = %116, %111
  %124 = load i32, i32* %4, align 4, !tbaa !3
  %125 = shl i32 %124, 31
  %126 = load i32, i32* %5, align 4, !tbaa !3
  %127 = shl i32 %126, 23
  %128 = or i32 %125, %127
  %129 = load i32, i32* %6, align 4, !tbaa !3
  %130 = or i32 %128, %129
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %10, align 4
  %131 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #2
  br label %132

; <label>:132:                                    ; preds = %123, %24
  %133 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #2
  %134 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134) #2
  %135 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %135) #2
  %136 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #2
  %137 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #2
  %138 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #2
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
