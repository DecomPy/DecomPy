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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %2
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %15)
  call void @exit(i32 1) #3
  unreachable

; <label>:17:                                     ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %17
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* %27)
  call void @exit(i32 1) #3
  unreachable

; <label>:29:                                     ; preds = %17
  br label %30

; <label>:30:                                     ; preds = %29
  store i32 1, i32* %7, align 4
  br label %31

; <label>:31:                                     ; preds = %77, %30
  %32 = call i32 @getchar()
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %80

; <label>:34:                                     ; preds = %31
  br label %35

; <label>:35:                                     ; preds = %62, %34
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

; <label>:39:                                     ; preds = %35
  br label %40

; <label>:40:                                     ; preds = %60, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @putchar(i32 %45)
  br label %47

; <label>:47:                                     ; preds = %44, %40
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = call i32 @getchar()
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %60

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 64
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

; <label>:60:                                     ; preds = %55, %51, %48
  %61 = phi i1 [ false, %51 ], [ false, %48 ], [ %59, %55 ]
  br i1 %61, label %40, label %62

; <label>:62:                                     ; preds = %60
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %35

; <label>:65:                                     ; preds = %35
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %65
  store i32 0, i32* %7, align 4
  br label %69

; <label>:69:                                     ; preds = %68, %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @putchar(i32 %74)
  br label %76

; <label>:76:                                     ; preds = %73, %69
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %31

; <label>:80:                                     ; preds = %31
  call void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @atoi(i8*) #1

declare i32 @getchar() #1

declare i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
