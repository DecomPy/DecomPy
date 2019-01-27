; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-73.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-73.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @saturating_add(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4, !tbaa !3
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #2
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = and i32 %16, -2147483648
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = and i32 %20, -2147483648
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = and i32 %24, -2147483648
  %26 = icmp ne i32 %25, 0
  br label %27

; <label>:27:                                     ; preds = %23, %19, %2
  %28 = phi i1 [ false, %19 ], [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4, !tbaa !3
  %30 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #2
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %4, align 4, !tbaa !3
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = and i32 %39, -2147483648
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

; <label>:43:                                     ; preds = %38, %34, %27
  %44 = phi i1 [ false, %34 ], [ false, %27 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4, !tbaa !3
  %46 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #2
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = load i32, i32* %7, align 4, !tbaa !3
  %49 = or i32 %47, %48
  %50 = sub nsw i32 -2147483648, %49
  %51 = and i32 2147483647, %50
  store i32 %51, i32* %8, align 4, !tbaa !3
  %52 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #2
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sub nsw i32 -2147483648, %56
  %58 = and i32 2147483647, %57
  store i32 %58, i32* %9, align 4, !tbaa !3
  %59 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %59) #2
  %60 = load i32, i32* %9, align 4, !tbaa !3
  %61 = add nsw i32 -2147483648, %60
  %62 = load i32, i32* %6, align 4, !tbaa !3
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = load i32, i32* %7, align 4, !tbaa !3
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %10, align 4, !tbaa !3
  %69 = load i32, i32* %5, align 4, !tbaa !3
  %70 = load i32, i32* %8, align 4, !tbaa !3
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4, !tbaa !3
  %73 = add nsw i32 %71, %72
  %74 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #2
  %75 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #2
  %76 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #2
  %77 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #2
  %78 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #2
  %79 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #2
  ret i32 %73
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
