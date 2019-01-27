; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_floor.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_floor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ilog2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = ashr i32 %14, 1
  %16 = or i32 %13, %15
  store i32 %16, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = ashr i32 %18, 2
  %20 = or i32 %17, %19
  store i32 %20, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = ashr i32 %22, 4
  %24 = or i32 %21, %23
  store i32 %24, i32* %2, align 4, !tbaa !3
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = ashr i32 %26, 8
  %28 = or i32 %25, %27
  store i32 %28, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* %2, align 4, !tbaa !3
  %30 = load i32, i32* %2, align 4, !tbaa !3
  %31 = ashr i32 %30, 16
  %32 = or i32 %29, %31
  store i32 %32, i32* %2, align 4, !tbaa !3
  store i32 21845, i32* %3, align 4, !tbaa !3
  %33 = load i32, i32* %3, align 4, !tbaa !3
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = shl i32 %34, 16
  %36 = or i32 %33, %35
  store i32 %36, i32* %3, align 4, !tbaa !3
  store i32 13107, i32* %4, align 4, !tbaa !3
  %37 = load i32, i32* %4, align 4, !tbaa !3
  %38 = load i32, i32* %4, align 4, !tbaa !3
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  store i32 %40, i32* %4, align 4, !tbaa !3
  store i32 3855, i32* %5, align 4, !tbaa !3
  %41 = load i32, i32* %5, align 4, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = shl i32 %42, 16
  %44 = or i32 %41, %43
  store i32 %44, i32* %5, align 4, !tbaa !3
  store i32 16711935, i32* %6, align 4, !tbaa !3
  store i32 65535, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = load i32, i32* %3, align 4, !tbaa !3
  %47 = and i32 %45, %46
  %48 = load i32, i32* %2, align 4, !tbaa !3
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %3, align 4, !tbaa !3
  %51 = and i32 %49, %50
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %2, align 4, !tbaa !3
  %53 = load i32, i32* %2, align 4, !tbaa !3
  %54 = load i32, i32* %4, align 4, !tbaa !3
  %55 = and i32 %53, %54
  %56 = load i32, i32* %2, align 4, !tbaa !3
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* %4, align 4, !tbaa !3
  %59 = and i32 %57, %58
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %2, align 4, !tbaa !3
  %61 = load i32, i32* %2, align 4, !tbaa !3
  %62 = load i32, i32* %5, align 4, !tbaa !3
  %63 = and i32 %61, %62
  %64 = load i32, i32* %2, align 4, !tbaa !3
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %5, align 4, !tbaa !3
  %67 = and i32 %65, %66
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %2, align 4, !tbaa !3
  %69 = load i32, i32* %2, align 4, !tbaa !3
  %70 = load i32, i32* %6, align 4, !tbaa !3
  %71 = and i32 %69, %70
  %72 = load i32, i32* %2, align 4, !tbaa !3
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* %6, align 4, !tbaa !3
  %75 = and i32 %73, %74
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %2, align 4, !tbaa !3
  %77 = load i32, i32* %2, align 4, !tbaa !3
  %78 = load i32, i32* %7, align 4, !tbaa !3
  %79 = and i32 %77, %78
  %80 = load i32, i32* %2, align 4, !tbaa !3
  %81 = ashr i32 %80, 16
  %82 = load i32, i32* %7, align 4, !tbaa !3
  %83 = and i32 %81, %82
  %84 = add nsw i32 %79, %83
  store i32 %84, i32* %2, align 4, !tbaa !3
  %85 = load i32, i32* %2, align 4, !tbaa !3
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %2, align 4, !tbaa !3
  %87 = load i32, i32* %2, align 4, !tbaa !3
  %88 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #2
  %89 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #2
  %90 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #2
  %91 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #2
  %92 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #2
  ret i32 %87
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
