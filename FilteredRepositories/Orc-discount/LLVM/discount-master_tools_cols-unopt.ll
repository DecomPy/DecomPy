; ModuleID = 'Repositories/Orc-discount/Unfiltered/discount-master_tools_cols.c'
source_filename = "Repositories/Orc-discount/Unfiltered/discount-master_tools_cols.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"usage: %s width\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: please set width to > 0\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %2
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %16 = load i8**, i8*** %5, align 8, !tbaa !7
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8, !tbaa !7
  %19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %18)
  call void @exit(i32 1) #5
  unreachable

; <label>:20:                                     ; preds = %2
  %21 = load i8**, i8*** %5, align 8, !tbaa !7
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8, !tbaa !7
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %8, align 4, !tbaa !3
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %20
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %28 = load i8**, i8*** %5, align 8, !tbaa !7
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8, !tbaa !7
  %31 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* %30)
  call void @exit(i32 1) #5
  unreachable

; <label>:32:                                     ; preds = %20
  br label %33

; <label>:33:                                     ; preds = %32
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %34

; <label>:34:                                     ; preds = %80, %33
  %35 = call i32 @getchar()
  store i32 %35, i32* %6, align 4, !tbaa !3
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %83

; <label>:37:                                     ; preds = %34
  br label %38

; <label>:38:                                     ; preds = %65, %37
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = and i32 %39, 192
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

; <label>:42:                                     ; preds = %38
  br label %43

; <label>:43:                                     ; preds = %63, %42
  %44 = load i32, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %8, align 4, !tbaa !3
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = call i32 @putchar(i32 %48)
  br label %50

; <label>:50:                                     ; preds = %47, %43
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = call i32 @getchar()
  store i32 %52, i32* %6, align 4, !tbaa !3
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %6, align 4, !tbaa !3
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %6, align 4, !tbaa !3
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

; <label>:63:                                     ; preds = %58, %54, %51
  %64 = phi i1 [ false, %54 ], [ false, %51 ], [ %62, %58 ]
  br i1 %64, label %43, label %65

; <label>:65:                                     ; preds = %63
  %66 = load i32, i32* %7, align 4, !tbaa !3
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4, !tbaa !3
  br label %38

; <label>:68:                                     ; preds = %38
  %69 = load i32, i32* %6, align 4, !tbaa !3
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %72

; <label>:72:                                     ; preds = %71, %68
  %73 = load i32, i32* %7, align 4, !tbaa !3
  %74 = load i32, i32* %8, align 4, !tbaa !3
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %6, align 4, !tbaa !3
  %78 = call i32 @putchar(i32 %77)
  br label %79

; <label>:79:                                     ; preds = %76, %72
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %7, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4, !tbaa !3
  br label %34

; <label>:83:                                     ; preds = %34
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i32 @atoi(i8*) #2

declare i32 @getchar() #2

declare i32 @putchar(i32) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
