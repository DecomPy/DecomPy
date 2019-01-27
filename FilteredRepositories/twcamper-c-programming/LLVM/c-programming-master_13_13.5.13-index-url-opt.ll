; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.5.13-index-url.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.5.13-index-url.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"http://www.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Usage: %s <domain>\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @build_index_url(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @llvm.objectsize.i64.p0i8(i8* %6, i1 false, i1 true)
  %8 = call i8* @__strcpy_chk(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %7) #4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false, i1 true)
  %13 = call i8* @__strcat_chk(i8* %9, i8* %10, i64 %12) #4
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false, i1 true)
  %17 = call i8* @__strcat_chk(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %16) #4
  ret void
}

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #2

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [255 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %22

; <label>:15:                                     ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i32 0, i32 0
  call void @build_index_url(i8* %18, i8* %19)
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i32 0, i32 0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %15, %9
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
