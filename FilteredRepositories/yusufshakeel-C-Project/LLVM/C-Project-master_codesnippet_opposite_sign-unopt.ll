; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_opposite_sign.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_opposite_sign.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %2, align 4, !tbaa !3
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = xor i32 %8, %11
  store i32 %12, i32* %4, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %13)
  store i32 1, i32* %2, align 4, !tbaa !3
  store i32 -1, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = xor i32 %15, %18
  store i32 %19, i32* %4, align 4, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %20)
  store i32 0, i32* %2, align 4, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = xor i32 %22, %25
  store i32 %26, i32* %4, align 4, !tbaa !3
  %27 = load i32, i32* %4, align 4, !tbaa !3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %27)
  store i32 0, i32* %2, align 4, !tbaa !3
  store i32 -1, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %2, align 4, !tbaa !3
  %30 = load i32, i32* %3, align 4, !tbaa !3
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = xor i32 %29, %32
  store i32 %33, i32* %4, align 4, !tbaa !3
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %34)
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
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
