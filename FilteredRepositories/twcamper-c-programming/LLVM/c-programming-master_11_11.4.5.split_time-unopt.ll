; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.5.split_time.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.5.split_time.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"%d:%d:%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @split_time(i64, i32*, i32*, i32*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !7
  store i32* %3, i32** %8, align 8, !tbaa !7
  %9 = load i64, i64* %5, align 8, !tbaa !3
  %10 = sdiv i64 %9, 3600
  %11 = trunc i64 %10 to i32
  %12 = load i32*, i32** %6, align 8, !tbaa !7
  store i32 %11, i32* %12, align 4, !tbaa !9
  %13 = load i64, i64* %5, align 8, !tbaa !3
  %14 = srem i64 %13, 3600
  %15 = sdiv i64 %14, 60
  %16 = trunc i64 %15 to i32
  %17 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 %16, i32* %17, align 4, !tbaa !9
  %18 = load i64, i64* %5, align 8, !tbaa !3
  %19 = srem i64 %18, 60
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %20, i32* %21, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !9
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %4, align 4, !tbaa !9
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %5, align 8, !tbaa !7
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8, !tbaa !7
  %18 = call i32 @atoi(i8* %17)
  %19 = sext i32 %18 to i64
  call void @split_time(i64 %19, i32* %6, i32* %7, i32* %8)
  %20 = load i32, i32* %6, align 4, !tbaa !9
  %21 = load i32, i32* %7, align 4, !tbaa !9
  %22 = load i32, i32* %8, align 4, !tbaa !9
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %20, i32 %21, i32 %22)
  br label %24

; <label>:24:                                     ; preds = %14, %2
  %25 = call i64 @time(i64* null)
  call void @split_time(i64 %25, i32* %6, i32* %7, i32* %8)
  %26 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #2

declare i64 @time(i64*) #2

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
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
