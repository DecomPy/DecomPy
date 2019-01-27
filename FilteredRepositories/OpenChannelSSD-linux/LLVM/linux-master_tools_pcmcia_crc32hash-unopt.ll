; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_pcmcia_crc32hash.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_tools_pcmcia_crc32hash.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [30 x i8] c"no string passed as argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %25

; <label>:13:                                     ; preds = %2
  %14 = load i8**, i8*** %5, align 8, !tbaa !7
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8, !tbaa !7
  %17 = load i8**, i8*** %5, align 8, !tbaa !7
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8, !tbaa !7
  %20 = call i64 @strlen(i8* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 @crc32(i8* %16, i32 %21)
  store i32 %22, i32* %6, align 4, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !3
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %23)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %25

; <label>:25:                                     ; preds = %13, %11
  %26 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @crc32(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %35, %2
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = add i32 %10, -1
  store i32 %11, i32* %4, align 4, !tbaa !3
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !tbaa !7
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8, !tbaa !7
  %16 = load i8, i8* %14, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = xor i32 %18, %17
  store i32 %19, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %20

; <label>:20:                                     ; preds = %32, %13
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %6, align 4, !tbaa !3
  %25 = lshr i32 %24, 1
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -306674912, i32 0
  %31 = xor i32 %25, %30
  store i32 %31, i32* %6, align 4, !tbaa !3
  br label %32

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4, !tbaa !3
  br label %20

; <label>:35:                                     ; preds = %20
  br label %9

; <label>:36:                                     ; preds = %9
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  ret i32 %37
}

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
