; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_backtrace.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_backtrace.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"[%p] %20ld 0x%-16lx \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define signext i8 @safechar(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1, !tbaa !3
  %4 = load i8, i8* %3, align 1, !tbaa !3
  %5 = sext i8 %4 to i32
  %6 = icmp sge i32 %5, 97
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %1
  %8 = load i8, i8* %3, align 1, !tbaa !3
  %9 = sext i8 %8 to i32
  %10 = icmp sle i32 %9, 122
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %7
  %12 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %12, i8* %2, align 1
  br label %94

; <label>:13:                                     ; preds = %7, %1
  %14 = load i8, i8* %3, align 1, !tbaa !3
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 65
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %3, align 1, !tbaa !3
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 90
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %22, i8* %2, align 1
  br label %94

; <label>:23:                                     ; preds = %17, %13
  %24 = load i8, i8* %3, align 1, !tbaa !3
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %3, align 1, !tbaa !3
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %32, i8* %2, align 1
  br label %94

; <label>:33:                                     ; preds = %27, %23
  %34 = load i8, i8* %3, align 1, !tbaa !3
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %38, i8* %2, align 1
  br label %94

; <label>:39:                                     ; preds = %33
  %40 = load i8, i8* %3, align 1, !tbaa !3
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %44, i8* %2, align 1
  br label %94

; <label>:45:                                     ; preds = %39
  %46 = load i8, i8* %3, align 1, !tbaa !3
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %50, i8* %2, align 1
  br label %94

; <label>:51:                                     ; preds = %45
  %52 = load i8, i8* %3, align 1, !tbaa !3
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %56, i8* %2, align 1
  br label %94

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %3, align 1, !tbaa !3
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 40
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %57
  %62 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %62, i8* %2, align 1
  br label %94

; <label>:63:                                     ; preds = %57
  %64 = load i8, i8* %3, align 1, !tbaa !3
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 41
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %63
  %68 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %68, i8* %2, align 1
  br label %94

; <label>:69:                                     ; preds = %63
  %70 = load i8, i8* %3, align 1, !tbaa !3
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 91
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %69
  %74 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %74, i8* %2, align 1
  br label %94

; <label>:75:                                     ; preds = %69
  %76 = load i8, i8* %3, align 1, !tbaa !3
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 93
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %75
  %80 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %80, i8* %2, align 1
  br label %94

; <label>:81:                                     ; preds = %75
  %82 = load i8, i8* %3, align 1, !tbaa !3
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 123
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %81
  %86 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %86, i8* %2, align 1
  br label %94

; <label>:87:                                     ; preds = %81
  %88 = load i8, i8* %3, align 1, !tbaa !3
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 125
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %87
  %92 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %92, i8* %2, align 1
  br label %94

; <label>:93:                                     ; preds = %87
  store i8 46, i8* %2, align 1
  br label %94

; <label>:94:                                     ; preds = %93, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %21, %11
  %95 = load i8, i8* %2, align 1
  ret i8 %95
}

; Function Attrs: nounwind ssp uwtable
define void @print_backtrace(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !6
  %5 = bitcast i64** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = bitcast i64** %3 to i64*
  %7 = getelementptr inbounds i64, i64* %6, i64 1
  store i64* %7, i64** %3, align 8, !tbaa !6
  br label %8

; <label>:8:                                      ; preds = %39, %1
  %9 = load i64*, i64** %3, align 8, !tbaa !6
  %10 = ptrtoint i64* %9 to i64
  %11 = load i8*, i8** %2, align 8, !tbaa !6
  %12 = ptrtoint i8* %11 to i64
  %13 = icmp sle i64 %10, %12
  br i1 %13, label %14, label %44

; <label>:14:                                     ; preds = %8
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i64*, i64** %3, align 8, !tbaa !6
  %17 = load i64*, i64** %3, align 8, !tbaa !6
  %18 = load i64, i64* %17, align 8, !tbaa !8
  %19 = load i64*, i64** %3, align 8, !tbaa !6
  %20 = load i64, i64* %19, align 8, !tbaa !8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i64* %16, i64 %18, i64 %20)
  store i32 0, i32* %4, align 4, !tbaa !10
  br label %22

; <label>:22:                                     ; preds = %36, %14
  %23 = load i32, i32* %4, align 4, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %22
  %27 = load i64*, i64** %3, align 8, !tbaa !6
  %28 = bitcast i64* %27 to i8*
  %29 = load i32, i32* %4, align 4, !tbaa !10
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1, !tbaa !3
  %33 = call signext i8 @safechar(i8 signext %32)
  %34 = sext i8 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %34)
  br label %36

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %4, align 4, !tbaa !10
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4, !tbaa !10
  br label %22

; <label>:39:                                     ; preds = %22
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %41 = load i64*, i64** %3, align 8, !tbaa !6
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %3, align 8, !tbaa !6
  %43 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  br label %8

; <label>:44:                                     ; preds = %8
  %45 = bitcast i64** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i64 @bar(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !6
  %3 = load i8*, i8** %2, align 8, !tbaa !6
  call void @print_backtrace(i8* %3)
  ret i64 42
}

; Function Attrs: nounwind ssp uwtable
define i64 @foo(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !6
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  store i64 42, i64* %3, align 8, !tbaa !8
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load i8*, i8** %2, align 8, !tbaa !6
  store i8* %9, i8** %5, align 8, !tbaa !6
  %10 = load i64, i64* %3, align 8, !tbaa !8
  store i64 %10, i64* %4, align 8, !tbaa !8
  %11 = load i64, i64* %4, align 8, !tbaa !8
  %12 = load i64, i64* %3, align 8, !tbaa !8
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** %5, align 8, !tbaa !6
  %15 = call i64 @bar(i8* %14)
  %16 = add nsw i64 %13, %15
  %17 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #3
  %18 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #3
  %19 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #3
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !10
  store i8** %1, i8*** %5, align 8, !tbaa !6
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = load i8**, i8*** %5, align 8, !tbaa !6
  %9 = load i32, i32* %4, align 4, !tbaa !10
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %8, i64 %11
  %13 = load i8*, i8** %12, align 8, !tbaa !6
  store i8* %13, i8** %6, align 8, !tbaa !6
  %14 = load i8*, i8** %6, align 8, !tbaa !6
  %15 = load i8*, i8** %6, align 8, !tbaa !6
  %16 = call i64 @strlen(i8* %15)
  %17 = add i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = call i64 @foo(i8* %18)
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #3
  ret i32 %20
}

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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !4, i64 0}
