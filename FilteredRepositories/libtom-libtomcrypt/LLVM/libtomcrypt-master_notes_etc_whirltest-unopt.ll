; ModuleID = 'Repositories/libtom-libtomcrypt/Unfiltered/libtomcrypt-master_notes_etc_whirltest.c'
source_filename = "Repositories/libtom-libtomcrypt/Unfiltered/libtomcrypt-master_notes_etc_whirltest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"0x%c%c, \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [4096 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  br label %6

; <label>:6:                                      ; preds = %35, %0
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %9 = call i8* @fgets(i8* %7, i32 4094, %struct.__sFILE* %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %36

; <label>:11:                                     ; preds = %6
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %34, %11
  %13 = load i32, i32* %3, align 4, !tbaa !7
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %35

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %20, i32 %26)
  %28 = load i32, i32* %3, align 4, !tbaa !7
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %3, align 4, !tbaa !7
  %30 = and i32 %29, 31
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %15
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %32, %15
  br label %12

; <label>:35:                                     ; preds = %12
  br label %6

; <label>:36:                                     ; preds = %6
  %37 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast [4096 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %38) #3
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @printf(i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
