; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_ptrex.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_ptrex.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.str = private unnamed_addr constant [5 x i8] c"Unix\00", align 1
@.str = private unnamed_addr constant [50 x i8] c"valeur de i : %d, valeur point\C3\A9e par ptr_i : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"valeur de str[%d] : %c, valeur point\C3\A9e par *(s+%d) : %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 1, i32* %6, align 4, !tbaa !3
  %11 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  %12 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %12) #3
  %13 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @main.str, i32 0, i32 0), i64 5, i1 false)
  %14 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  store i32* %6, i32** %7, align 8, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = load i32*, i32** %7, align 8, !tbaa !7
  %17 = load i32, i32* %16, align 4, !tbaa !3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %17)
  %19 = load i32*, i32** %7, align 8, !tbaa !7
  %20 = load i32, i32* %19, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1252
  %22 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 %21, i32* %22, align 4, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !3
  %24 = load i32*, i32** %7, align 8, !tbaa !7
  %25 = load i32, i32* %24, align 4, !tbaa !3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %23, i32 %25)
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i32 0, i32 0
  store i8* %27, i8** %9, align 8, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %49, %2
  %29 = load i32, i32* %6, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i32 0, i32 0
  %32 = call i64 @strlen(i8* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %52

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = load i32, i32* %6, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = sext i8 %39 to i32
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = load i8*, i8** %9, align 8, !tbaa !7
  %43 = load i32, i32* %6, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 %35, i32 %40, i32 %41, i32 %47)
  br label %49

; <label>:49:                                     ; preds = %34
  %50 = load i32, i32* %6, align 4, !tbaa !3
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4, !tbaa !3
  br label %28

; <label>:52:                                     ; preds = %28
  %53 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #3
  %54 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %54) #3
  %55 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #3
  %56 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

declare i64 @strlen(i8*) #2

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
