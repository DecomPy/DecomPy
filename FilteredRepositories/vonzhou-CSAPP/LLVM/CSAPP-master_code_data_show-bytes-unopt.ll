; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_code_data_show-bytes.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_code_data_show-bytes.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"For x = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"calling test_show_bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"calling show_twocomp\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Calling simple_show_a\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Calling simple_show_b\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Calling float_eg\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Calling string_ueg\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Calling string_leg\0A\00", align 1

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
define void @test_show_bytes(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4, !tbaa !7
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32, i32* %2, align 4, !tbaa !7
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = sitofp i32 %9 to float
  store float %10, float* %4, align 4, !tbaa !10
  %11 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  store i32* %3, i32** %5, align 8, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !7
  call void @show_int(i32 %12)
  %13 = load float, float* %4, align 4, !tbaa !10
  call void @show_float(float %13)
  %14 = load i32*, i32** %5, align 8, !tbaa !3
  %15 = bitcast i32* %14 to i8*
  call void @show_pointer(i8* %15)
  %16 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #3
  %17 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @simple_show_a() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 -2023406815, i32* %1, align 4, !tbaa !7
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast i32* %1 to i8*
  store i8* %5, i8** %2, align 8, !tbaa !3
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %6, i32 1)
  %7 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %7, i32 2)
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %8, i32 3)
  %9 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #3
  %10 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @simple_show_b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 305419896, i32* %1, align 4, !tbaa !7
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast i32* %1 to i8*
  store i8* %5, i8** %2, align 8, !tbaa !3
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %6, i32 1)
  %7 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %7, i32 2)
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  call void @show_bytes(i8* %8, i32 3)
  %9 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #3
  %10 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @float_eg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 3490593, i32* %1, align 4, !tbaa !7
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = load i32, i32* %1, align 4, !tbaa !7
  %6 = sitofp i32 %5 to float
  store float %6, float* %2, align 4, !tbaa !10
  %7 = load i32, i32* %1, align 4, !tbaa !7
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %7)
  %9 = load i32, i32* %1, align 4, !tbaa !7
  call void @show_int(i32 %9)
  %10 = load float, float* %2, align 4, !tbaa !10
  call void @show_float(float %10)
  store i32 3510593, i32* %1, align 4, !tbaa !7
  %11 = load i32, i32* %1, align 4, !tbaa !7
  %12 = sitofp i32 %11 to float
  store float %12, float* %2, align 4, !tbaa !10
  %13 = load i32, i32* %1, align 4, !tbaa !7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  %15 = load i32, i32* %1, align 4, !tbaa !7
  call void @show_int(i32 %15)
  %16 = load float, float* %2, align 4, !tbaa !10
  call void @show_float(float %16)
  %17 = bitcast float* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @string_ueg() #0 {
  %1 = alloca i8*, align 8
  %2 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %1, align 8, !tbaa !3
  %3 = load i8*, i8** %1, align 8, !tbaa !3
  %4 = load i8*, i8** %1, align 8, !tbaa !3
  %5 = call i64 @strlen(i8* %4)
  %6 = trunc i64 %5 to i32
  call void @show_bytes(i8* %3, i32 %6)
  %7 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #3
  ret void
}

declare i64 @strlen(i8*) #2

; Function Attrs: nounwind ssp uwtable
define void @string_leg() #0 {
  %1 = alloca i8*, align 8
  %2 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %1, align 8, !tbaa !3
  %3 = load i8*, i8** %1, align 8, !tbaa !3
  %4 = load i8*, i8** %1, align 8, !tbaa !3
  %5 = call i64 @strlen(i8* %4)
  %6 = trunc i64 %5 to i32
  call void @show_bytes(i8* %3, i32 %6)
  %7 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @show_twocomp() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %3) #3
  store i16 12345, i16* %1, align 2, !tbaa !12
  %4 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %4) #3
  %5 = load i16, i16* %1, align 2, !tbaa !12
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 0, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %2, align 2, !tbaa !12
  %9 = bitcast i16* %1 to i8*
  call void @show_bytes(i8* %9, i32 2)
  %10 = bitcast i16* %2 to i8*
  call void @show_bytes(i8* %10, i32 2)
  %11 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %11) #3
  %12 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %12) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 12345, i32* %6, align 4, !tbaa !7
  %8 = load i32, i32* %4, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = load i8**, i8*** %5, align 8, !tbaa !3
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8, !tbaa !3
  %17 = call i64 @strtol(i8* %16, i8** null, i32 0)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %13, %10
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %21 = load i32, i32* %6, align 4, !tbaa !7
  call void @test_show_bytes(i32 %21)
  br label %29

; <label>:22:                                     ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  call void @show_twocomp()
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  call void @simple_show_a()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  call void @simple_show_b()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  call void @float_eg()
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  call void @string_ueg()
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  call void @string_leg()
  br label %29

; <label>:29:                                     ; preds = %22, %19
  %30 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  ret i32 0
}

declare i64 @strtol(i8*, i8**, i32) #2

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
