; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_exprbin.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_exprbin.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"~ %s = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s & %s = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s | %s = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s ^ %s = %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @int2bin(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i8*, i8** %4, align 8, !tbaa !7
  %8 = getelementptr inbounds i8, i8* %7, i64 32
  store i8 0, i8* %8, align 1, !tbaa !9
  store i32 31, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %29, %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %4, align 8, !tbaa !7
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 49, i8* %20, align 1, !tbaa !9
  br label %26

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %4, align 8, !tbaa !7
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 48, i8* %25, align 1, !tbaa !9
  br label %26

; <label>:26:                                     ; preds = %21, %16
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = lshr i32 %27, 1
  store i32 %28, i32* %3, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:32:                                     ; preds = %9
  %33 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @char2bin(i8 zeroext, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1, !tbaa !9
  store i8* %1, i8** %4, align 8, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i8*, i8** %4, align 8, !tbaa !7
  %8 = getelementptr inbounds i8, i8* %7, i64 8
  store i8 0, i8* %8, align 1, !tbaa !9
  store i32 7, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %32, %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %35

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* %3, align 1, !tbaa !9
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %4, align 8, !tbaa !7
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 49, i8* %21, align 1, !tbaa !9
  br label %27

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %4, align 8, !tbaa !7
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 48, i8* %26, align 1, !tbaa !9
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = load i8, i8* %3, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1, !tbaa !9
  br label %32

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:35:                                     ; preds = %9
  %36 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #3
  store i8 0, i8* %6, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #3
  store i8 -6, i8* %7, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #3
  store i8 95, i8* %8, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %9) #3
  store i8 80, i8* %9, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %10) #3
  store i8 80, i8* %10, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %11) #3
  %18 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store i32 0, i32* %12, align 4, !tbaa !3
  store i32 4, i32* %13, align 4, !tbaa !3
  store i32 5, i32* %14, align 4, !tbaa !3
  %21 = bitcast [32 x i8]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %21) #3
  %22 = bitcast [32 x i8]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %22) #3
  %23 = bitcast [32 x i8]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %23) #3
  %24 = load i8, i8* %6, align 1, !tbaa !9
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %24, i8* %25)
  %26 = load i8, i8* %6, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, -1
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %29, i8* %30)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %31, i8* %32)
  %34 = load i8, i8* %7, align 1, !tbaa !9
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %34, i8* %35)
  %36 = load i8, i8* %8, align 1, !tbaa !9
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %36, i8* %37)
  %38 = load i8, i8* %7, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %8, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %43, i8* %44)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* %45, i8* %46, i8* %47)
  %49 = load i8, i8* %7, align 1, !tbaa !9
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %49, i8* %50)
  %51 = load i8, i8* %8, align 1, !tbaa !9
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %51, i8* %52)
  %53 = load i8, i8* %7, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %8, align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %58, i8* %59)
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %60, i8* %61, i8* %62)
  %64 = load i8, i8* %7, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %8, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = xor i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %69, i8* %70)
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %71, i8* %72, i8* %73)
  %75 = load i8, i8* %7, align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, -1
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %11, align 1, !tbaa !9
  %79 = load i8, i8* %7, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %8, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %11, align 1, !tbaa !9
  %85 = load i8, i8* %7, align 1, !tbaa !9
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %8, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %11, align 1, !tbaa !9
  %91 = load i8, i8* %7, align 1, !tbaa !9
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %8, align 1, !tbaa !9
  %94 = zext i8 %93 to i32
  %95 = xor i32 %92, %94
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %11, align 1, !tbaa !9
  %97 = load i8, i8* %9, align 1, !tbaa !9
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 126
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %11, align 1, !tbaa !9
  %101 = load i8, i8* %10, align 1, !tbaa !9
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, 24
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %11, align 1, !tbaa !9
  store i32 0, i32* %3, align 4
  %105 = bitcast [32 x i8]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %105) #3
  %106 = bitcast [32 x i8]* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %106) #3
  %107 = bitcast [32 x i8]* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %107) #3
  %108 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #3
  %109 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #3
  %110 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %11) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %10) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %8) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %7) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #3
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

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
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
