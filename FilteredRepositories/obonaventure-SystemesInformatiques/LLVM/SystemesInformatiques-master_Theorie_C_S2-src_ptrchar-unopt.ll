; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_ptrchar.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_ptrchar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.str = private unnamed_addr constant [9 x i8] c"sinf1252\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"c vaut %c et est stock\C3\A9 \C3\A0 l'adresse : %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"*str_ptr vaut %p et pointe vers %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"apr\C3\A8s str_ptr=str[];\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Contenu du tableau\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"str[%d]=%c et *(str_ptr+%d) contient %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #3
  store i8 90, i8* %6, align 1, !tbaa !9
  %10 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 9, i8* %10) #3
  %11 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @main.str, i32 0, i32 0), i64 9, i1 false)
  %12 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store i8* null, i8** %8, align 8, !tbaa !7
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i8* %6, i8** %8, align 8, !tbaa !7
  %14 = load i8, i8* %6, align 1, !tbaa !9
  %15 = sext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 %15, i8* %6)
  %17 = load i8*, i8** %8, align 8, !tbaa !7
  %18 = load i8*, i8** %8, align 8, !tbaa !7
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %17, i32 %20)
  %22 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i32 0, i32 0
  store i8* %22, i8** %8, align 8, !tbaa !7
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  %24 = load i8*, i8** %8, align 8, !tbaa !7
  %25 = load i8*, i8** %8, align 8, !tbaa !7
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %24, i32 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %51, %2
  %31 = load i32, i32* %9, align 4, !tbaa !3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i32 0, i32 0
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %9, align 4, !tbaa !3
  %38 = load i32, i32* %9, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !9
  %42 = sext i8 %41 to i32
  %43 = load i32, i32* %9, align 4, !tbaa !3
  %44 = load i8*, i8** %8, align 8, !tbaa !7
  %45 = load i32, i32* %9, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1, !tbaa !9
  %49 = sext i8 %48 to i32
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 %37, i32 %42, i32 %43, i32 %49)
  br label %51

; <label>:51:                                     ; preds = %36
  %52 = load i32, i32* %9, align 4, !tbaa !3
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4, !tbaa !3
  br label %30

; <label>:54:                                     ; preds = %30
  store i32 0, i32* %3, align 4
  %55 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  %56 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #3
  %57 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 9, i8* %57) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #3
  %58 = load i32, i32* %3, align 4
  ret i32 %58
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
