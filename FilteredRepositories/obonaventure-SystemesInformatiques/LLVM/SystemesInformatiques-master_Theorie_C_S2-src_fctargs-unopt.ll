; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_fctargs.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_fctargs.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"v={\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@wrong.vecteur = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@main.vecteur = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @length(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %13, %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %3, align 4, !tbaa !7
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:16:                                     ; preds = %5
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  ret i32 %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @plusun(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %4, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_vecteur(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %8
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4, !tbaa !7
  br label %8

; <label>:23:                                     ; preds = %8
  %24 = load i32, i32* %3, align 4, !tbaa !7
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %4, align 8, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !7
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %32)
  br label %36

; <label>:34:                                     ; preds = %23
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %34, %26
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @wrong() #0 {
  %1 = alloca [5 x i32], align 16
  %2 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %2) #3
  %3 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([5 x i32]* @wrong.vecteur to i8*), i64 20, i1 false)
  %4 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i32 0, i32 0
  %5 = ptrtoint i32* %4 to i32
  call void @plusun(i32 %5, i32* inttoptr (i64 5 to i32*))
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i32 0, i32 0
  call void @print_vecteur(i32 5, i32* %6)
  %7 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %7) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %7) #3
  %8 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @main.vecteur to i8*), i64 20, i1 false)
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  call void @plusun(i32 5, i32* %9)
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  call void @print_vecteur(i32 5, i32* %10)
  %11 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %11) #3
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
!9 = !{!5, !5, i64 0}
