; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-79.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-79.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @fiveeighths(i32) #0 {
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
  store i32 %0, i32* %2, align 4, !tbaa !3
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = and i32 %14, -2147483648
  %16 = icmp eq i32 %15, -2147483648
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4, !tbaa !3
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #2
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = and i32 %19, 1
  store i32 %20, i32* %4, align 4, !tbaa !3
  %21 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #2
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = and i32 %22, 7
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4, !tbaa !3
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #2
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = and i32 %29, %30
  %32 = shl i32 %31, 3
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  %35 = and i32 %34, -8
  store i32 %35, i32* %6, align 4, !tbaa !3
  %36 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #2
  %37 = load i32, i32* %3, align 4, !tbaa !3
  %38 = load i32, i32* %5, align 4, !tbaa !3
  %39 = and i32 %37, %38
  %40 = shl i32 %39, 3
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = and i32 %42, -8
  store i32 %43, i32* %7, align 4, !tbaa !3
  %44 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #2
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 2
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %8, align 4, !tbaa !3
  %50 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #2
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = and i32 %51, 7
  %53 = load i32, i32* %7, align 4, !tbaa !3
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %9, align 4, !tbaa !3
  %55 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %55) #2
  %56 = load i32, i32* %3, align 4, !tbaa !3
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 1, %59
  %61 = and i32 %60, 1
  store i32 %61, i32* %10, align 4, !tbaa !3
  %62 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %62) #2
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = add nsw i32 7, %66
  %68 = and i32 %67, 7
  store i32 %68, i32* %11, align 4, !tbaa !3
  %69 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %69) #2
  %70 = load i32, i32* %8, align 4, !tbaa !3
  %71 = load i32, i32* %9, align 4, !tbaa !3
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %11, align 4, !tbaa !3
  %74 = add nsw i32 %72, %73
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %12, align 4, !tbaa !3
  %76 = load i32, i32* %2, align 4, !tbaa !3
  %77 = load i32, i32* %10, align 4, !tbaa !3
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 1
  %80 = load i32, i32* %2, align 4, !tbaa !3
  %81 = load i32, i32* %11, align 4, !tbaa !3
  %82 = add nsw i32 %80, %81
  %83 = ashr i32 %82, 3
  %84 = add nsw i32 %79, %83
  %85 = load i32, i32* %12, align 4, !tbaa !3
  %86 = add nsw i32 %84, %85
  %87 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #2
  %88 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #2
  %89 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #2
  %90 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #2
  %91 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #2
  %92 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #2
  %93 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #2
  %94 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #2
  %95 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #2
  %96 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #2
  ret i32 %86
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
