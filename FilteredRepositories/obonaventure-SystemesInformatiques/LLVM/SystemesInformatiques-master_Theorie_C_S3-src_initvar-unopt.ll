; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_initvar.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_initvar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [39 x i8] c"R\C3\A9sultat de read() avant init(): %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"R\C3\A9sultat de read() apr\C3\A8s init() : %ld\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @init() #0 {
  %1 = alloca [1000 x i64], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [1000 x i64]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8000, i8* %3) #3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %16, %0
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 1000
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1000 x i64], [1000 x i64]* %1, i64 0, i64 %14
  store i64 %12, i64* %15, align 8, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4, !tbaa !3
  br label %5

; <label>:19:                                     ; preds = %8
  %20 = bitcast [1000 x i64]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8000, i8* %20) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i64 @read() #0 {
  %1 = alloca [1000 x i64], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = bitcast [1000 x i64]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8000, i8* %4) #3
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  store i64 0, i64* %2, align 8, !tbaa !7
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %19, %0
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %7
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  br label %22

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1000 x i64], [1000 x i64]* %1, i64 0, i64 %14
  %16 = load i64, i64* %15, align 8, !tbaa !7
  %17 = load i64, i64* %2, align 8, !tbaa !7
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %2, align 8, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4, !tbaa !3
  br label %7

; <label>:22:                                     ; preds = %10
  %23 = load i64, i64* %2, align 8, !tbaa !7
  %24 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #3
  %25 = bitcast [1000 x i64]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8000, i8* %25) #3
  ret i64 %23
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !9
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 5, i32* %6, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %2
  %11 = load i8**, i8*** %5, align 8, !tbaa !9
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8, !tbaa !9
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* %6, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %10, %2
  %16 = call i64 @read()
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i64 %16)
  call void @init()
  %18 = call i64 @read()
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i64 %18)
  %20 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  ret i32 0
}

declare i32 @atoi(i8*) #2

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
