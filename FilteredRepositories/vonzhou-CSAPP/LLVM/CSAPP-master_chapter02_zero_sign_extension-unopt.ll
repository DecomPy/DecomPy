; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_zero_sign_extension.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter02_zero_sign_extension.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xs = %d:\09\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usx = %u:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x = %d:\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ux = %u:\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @show_bytes(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %17)
  br label %19

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:22:                                     ; preds = %7
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %24 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @show_int(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = bitcast i32* %2 to i8*
  call void @show_bytes(i8* %3, i32 4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @show_float(float) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4, !tbaa !10
  %3 = bitcast float* %2 to i8*
  call void @show_bytes(i8* %3, i32 4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @show_pointer(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %3 = bitcast i8** %2 to i8*
  call void @show_bytes(i8* %3, i32 8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %6) #3
  store i16 -12345, i16* %2, align 2, !tbaa !12
  %7 = bitcast i16* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %7) #3
  %8 = load i16, i16* %2, align 2, !tbaa !12
  store i16 %8, i16* %3, align 2, !tbaa !12
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i16, i16* %2, align 2, !tbaa !12
  %11 = sext i16 %10 to i32
  store i32 %11, i32* %4, align 4, !tbaa !7
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i16, i16* %3, align 2, !tbaa !12
  %14 = zext i16 %13 to i32
  store i32 %14, i32* %5, align 4, !tbaa !7
  %15 = load i16, i16* %2, align 2, !tbaa !12
  %16 = sext i16 %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %16)
  %18 = bitcast i16* %2 to i8*
  call void @show_bytes(i8* %18, i32 2)
  %19 = load i16, i16* %3, align 2, !tbaa !12
  %20 = zext i16 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %20)
  %22 = bitcast i16* %3 to i8*
  call void @show_bytes(i8* %22, i32 2)
  %23 = load i32, i32* %4, align 4, !tbaa !7
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %23)
  %25 = bitcast i32* %4 to i8*
  call void @show_bytes(i8* %25, i32 4)
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %26)
  %28 = bitcast i32* %5 to i8*
  call void @show_bytes(i8* %28, i32 4)
  %29 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast i16* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %31) #3
  %32 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %32) #3
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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !5, i64 0}
