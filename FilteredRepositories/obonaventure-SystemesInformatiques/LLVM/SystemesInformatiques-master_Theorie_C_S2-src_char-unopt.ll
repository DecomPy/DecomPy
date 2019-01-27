; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_char.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_char.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.name1 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"Longueur de name1 [%s] : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

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
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.name1, i32 0, i32 0), i64 4, i1 false)
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0
  %13 = call i32 @length(i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* %11, i32 %13)
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %25, %2
  %16 = load i32, i32* %6, align 4, !tbaa !7
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %23)
  br label %25

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4, !tbaa !7
  br label %15

; <label>:28:                                     ; preds = %15
  %29 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

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
