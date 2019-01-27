; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.6-censor.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.6-censor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.s = private unnamed_addr constant [88 x i8] c"Philo (a.k.a. \22Mr. Fuffoo Pants\22) the foolish foodie found tofu profoundly fulfilling.\0A\00", align 16
@main.s1 = private unnamed_addr constant [59 x i8] c"Roderick Riddick loved the films of Ernst Lubibitch (sic).\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"Before:\0B%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"After: \0B%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dick\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"bitch\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [88 x i8], align 16
  %3 = alloca [59 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [88 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* %4) #3
  %5 = bitcast [88 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([88 x i8], [88 x i8]* @main.s, i32 0, i32 0), i64 88, i1 false)
  %6 = bitcast [59 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 59, i8* %6) #3
  %7 = bitcast [59 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([59 x i8], [59 x i8]* @main.s1, i32 0, i32 0), i64 59, i1 false)
  %8 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %8)
  %10 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  call void @censor(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %11 = getelementptr inbounds [88 x i8], [88 x i8]* %2, i32 0, i32 0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %11)
  %13 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %13)
  %15 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  call void @censor(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %16 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  call void @censor(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %17 = getelementptr inbounds [59 x i8], [59 x i8]* %3, i32 0, i32 0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  %19 = bitcast [59 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 59, i8* %19) #3
  %20 = bitcast [88 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 88, i8* %20) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @censor(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load i8*, i8** %4, align 8, !tbaa !3
  %10 = load i8*, i8** %4, align 8, !tbaa !3
  %11 = call i64 @strlen(i8* %10)
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %5, align 8, !tbaa !3
  %13 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  %15 = load i8*, i8** %3, align 8, !tbaa !3
  store i8* %15, i8** %7, align 8, !tbaa !3
  br label %16

; <label>:16:                                     ; preds = %79, %2
  %17 = load i8*, i8** %7, align 8, !tbaa !3
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %82

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %22, i8** %6, align 8, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %38, %21
  %24 = load i8*, i8** %6, align 8, !tbaa !3
  %25 = load i8*, i8** %5, align 8, !tbaa !3
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %7, align 8, !tbaa !3
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %6, align 8, !tbaa !3
  %32 = load i8, i8* %31, align 1, !tbaa !7
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br label %35

; <label>:35:                                     ; preds = %27, %23
  %36 = phi i1 [ false, %23 ], [ %34, %27 ]
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %35
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %7, align 8, !tbaa !3
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8, !tbaa !3
  %41 = load i8*, i8** %6, align 8, !tbaa !3
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8, !tbaa !3
  br label %23

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %6, align 8, !tbaa !3
  %45 = load i8*, i8** %5, align 8, !tbaa !3
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %64

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %52, %47
  %49 = load i8*, i8** %6, align 8, !tbaa !3
  %50 = load i8*, i8** %4, align 8, !tbaa !3
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %63

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %7, align 8, !tbaa !3
  %54 = load i8*, i8** %6, align 8, !tbaa !3
  %55 = load i8*, i8** %4, align 8, !tbaa !3
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %53, i64 %59
  store i8 120, i8* %60, align 1, !tbaa !7
  %61 = load i8*, i8** %6, align 8, !tbaa !3
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %6, align 8, !tbaa !3
  br label %48

; <label>:63:                                     ; preds = %48
  br label %78

; <label>:64:                                     ; preds = %43
  %65 = load i8*, i8** %6, align 8, !tbaa !3
  %66 = load i8*, i8** %4, align 8, !tbaa !3
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %77

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** %6, align 8, !tbaa !3
  %70 = load i8*, i8** %4, align 8, !tbaa !3
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i8*, i8** %7, align 8, !tbaa !3
  %75 = sub i64 0, %73
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8, !tbaa !3
  br label %77

; <label>:77:                                     ; preds = %68, %64
  br label %78

; <label>:78:                                     ; preds = %77, %63
  br label %79

; <label>:79:                                     ; preds = %78
  %80 = load i8*, i8** %7, align 8, !tbaa !3
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8, !tbaa !3
  br label %16

; <label>:82:                                     ; preds = %16
  %83 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #3
  %84 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #3
  %85 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i64 @strlen(i8*) #2

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
!7 = !{!5, !5, i64 0}
