; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_init_test.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_init_test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.anon = type { [3 x i32], i32 }

@w = global [2 x %struct.anon] [%struct.anon { [3 x i32] [i32 1, i32 0, i32 0], i32 0 }, %struct.anon { [3 x i32] [i32 2, i32 0, i32 0], i32 0 }], align 16
@q1 = global [4 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 4, i32 5], [2 x i32] [i32 6, i32 0], [2 x i32] zeroinitializer], [3 x [2 x i32]] zeroinitializer], align 16
@q2 = global [4 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 4, i32 5], [2 x i32] [i32 6, i32 0], [2 x i32] zeroinitializer], [3 x [2 x i32]] zeroinitializer], align 16
@q3 = global [4 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [3 x [2 x i32]] [[2 x i32] [i32 4, i32 5], [2 x i32] [i32 6, i32 0], [2 x i32] zeroinitializer], [3 x [2 x i32]] zeroinitializer], align 16
@x = global [3 x i32] [i32 1, i32 3, i32 5], align 4
@y1 = global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 3, i32 5], [3 x i32] [i32 2, i32 4, i32 6], [3 x i32] [i32 3, i32 5, i32 7], [3 x i32] zeroinitializer], align 16
@y2 = global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 3, i32 5], [3 x i32] [i32 2, i32 4, i32 6], [3 x i32] [i32 3, i32 5, i32 7], [3 x i32] zeroinitializer], align 16
@z = global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 0], [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] [i32 3, i32 0, i32 0], [3 x i32] [i32 4, i32 0, i32 0]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @printInts(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %23 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  call void @printInts(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @x, i64 0, i64 0), i32 3)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @y1, i64 0, i64 0, i64 0), i32 12)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @y2, i64 0, i64 0, i64 0), i32 12)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @z, i64 0, i64 0, i64 0), i32 12)
  call void @printInts(i32* getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @w, i32 0, i32 0, i32 0, i32 0), i32 4)
  call void @printInts(i32* getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @w, i64 0, i64 1, i32 0, i32 0), i32 4)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x [2 x i32]]], [4 x [3 x [2 x i32]]]* @q1, i64 0, i64 0, i64 0, i64 0), i32 24)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x [2 x i32]]], [4 x [3 x [2 x i32]]]* @q2, i64 0, i64 0, i64 0, i64 0), i32 24)
  call void @printInts(i32* getelementptr inbounds ([4 x [3 x [2 x i32]]], [4 x [3 x [2 x i32]]]* @q3, i64 0, i64 0, i64 0, i64 0), i32 24)
  ret i32 0
}

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
