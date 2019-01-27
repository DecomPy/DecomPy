; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.1.2.low-middle-high.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.1.2.low-middle-high.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@.str = private unnamed_addr constant [13 x i8] c"low: %p, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"high: %p, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"middle: %p, %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %6) #3
  %7 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([6 x i32]* @main.a to i8*), i64 24, i1 false)
  %8 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i32 0, i32 0
  store i32* %11, i32** %3, align 8, !tbaa !3
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  store i32* %12, i32** %5, align 8, !tbaa !3
  %13 = load i32*, i32** %3, align 8, !tbaa !3
  %14 = load i32*, i32** %3, align 8, !tbaa !3
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* %13, i32 %15)
  %17 = load i32*, i32** %5, align 8, !tbaa !3
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32* %17, i32 %19)
  %21 = load i32*, i32** %3, align 8, !tbaa !3
  %22 = load i32*, i32** %5, align 8, !tbaa !3
  %23 = load i32*, i32** %3, align 8, !tbaa !3
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = sdiv i64 %27, 2
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  store i32* %29, i32** %4, align 8, !tbaa !3
  %30 = load i32*, i32** %4, align 8, !tbaa !3
  %31 = load i32*, i32** %4, align 8, !tbaa !3
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32* %30, i32 %32)
  %34 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #3
  %35 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #3
  %36 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #3
  %37 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %37) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
