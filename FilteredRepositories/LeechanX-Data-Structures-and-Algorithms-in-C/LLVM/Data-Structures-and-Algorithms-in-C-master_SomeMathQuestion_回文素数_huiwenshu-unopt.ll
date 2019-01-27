; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_回文素数_huiwenshu.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E5\9B\9E\E6\96\87\E7\B4\A0\E6\95\B0_huiwenshu.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @isPalindrome(i32) #0 {
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
  store i32 %0, i32* %3, align 4, !tbaa !3
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 10, i32* %4, align 4, !tbaa !3
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  store i32 1, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %76

; <label>:18:                                     ; preds = %1
  br label %19

; <label>:19:                                     ; preds = %23, %18
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = mul i32 %24, 10
  store i32 %25, i32* %4, align 4, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4, !tbaa !3
  br label %19

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = udiv i32 %29, 10
  store i32 %30, i32* %4, align 4, !tbaa !3
  %31 = load i32, i32* %5, align 4, !tbaa !3
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %5, align 4, !tbaa !3
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #2
  store i32 0, i32* %7, align 4, !tbaa !3
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #2
  %35 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #2
  %36 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #2
  %37 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %37, i32* %10, align 4, !tbaa !3
  %38 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #2
  %39 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %39, i32* %11, align 4, !tbaa !3
  br label %40

; <label>:40:                                     ; preds = %54, %28
  %41 = load i32, i32* %7, align 4, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %10, align 4, !tbaa !3
  %46 = load i32, i32* %4, align 4, !tbaa !3
  %47 = udiv i32 %45, %46
  store i32 %47, i32* %8, align 4, !tbaa !3
  %48 = load i32, i32* %11, align 4, !tbaa !3
  %49 = urem i32 %48, 10
  store i32 %49, i32* %9, align 4, !tbaa !3
  %50 = load i32, i32* %8, align 4, !tbaa !3
  %51 = load i32, i32* %9, align 4, !tbaa !3
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %44
  br label %64

; <label>:54:                                     ; preds = %44
  %55 = load i32, i32* %10, align 4, !tbaa !3
  %56 = load i32, i32* %4, align 4, !tbaa !3
  %57 = urem i32 %55, %56
  store i32 %57, i32* %10, align 4, !tbaa !3
  %58 = load i32, i32* %4, align 4, !tbaa !3
  %59 = udiv i32 %58, 10
  store i32 %59, i32* %4, align 4, !tbaa !3
  %60 = load i32, i32* %11, align 4, !tbaa !3
  %61 = udiv i32 %60, 10
  store i32 %61, i32* %11, align 4, !tbaa !3
  %62 = load i32, i32* %7, align 4, !tbaa !3
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4, !tbaa !3
  br label %40

; <label>:64:                                     ; preds = %53, %40
  %65 = load i32, i32* %7, align 4, !tbaa !3
  %66 = load i32, i32* %5, align 4, !tbaa !3
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %64
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %70

; <label>:69:                                     ; preds = %64
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %68
  %71 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #2
  %72 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #2
  %73 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #2
  %74 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #2
  %75 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #2
  br label %76

; <label>:76:                                     ; preds = %70, %17
  %77 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #2
  %78 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #2
  %79 = load i32, i32* %2, align 4
  ret i32 %79
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
