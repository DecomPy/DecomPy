; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_deter_sign.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_deter_sign.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  store i32 -1, i32* %2, align 4, !tbaa !3
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  store i32 0, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  store i32 1, i32* %2, align 4, !tbaa !3
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %22)
  store i32 -1, i32* %2, align 4, !tbaa !3
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = lshr i32 %24, 31
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %27)
  store i32 0, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* %2, align 4, !tbaa !3
  %30 = lshr i32 %29, 31
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4, !tbaa !3
  %32 = load i32, i32* %3, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %32)
  store i32 1, i32* %2, align 4, !tbaa !3
  %34 = load i32, i32* %2, align 4, !tbaa !3
  %35 = lshr i32 %34, 31
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4, !tbaa !3
  %37 = load i32, i32* %3, align 4, !tbaa !3
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %37)
  store i32 -1, i32* %2, align 4, !tbaa !3
  %39 = load i32, i32* %2, align 4, !tbaa !3
  %40 = ashr i32 %39, 31
  store i32 %40, i32* %3, align 4, !tbaa !3
  %41 = load i32, i32* %3, align 4, !tbaa !3
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %41)
  store i32 0, i32* %2, align 4, !tbaa !3
  %43 = load i32, i32* %2, align 4, !tbaa !3
  %44 = ashr i32 %43, 31
  store i32 %44, i32* %3, align 4, !tbaa !3
  %45 = load i32, i32* %3, align 4, !tbaa !3
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %45)
  store i32 1, i32* %2, align 4, !tbaa !3
  %47 = load i32, i32* %2, align 4, !tbaa !3
  %48 = ashr i32 %47, 31
  store i32 %48, i32* %3, align 4, !tbaa !3
  %49 = load i32, i32* %3, align 4, !tbaa !3
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %49)
  %51 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
