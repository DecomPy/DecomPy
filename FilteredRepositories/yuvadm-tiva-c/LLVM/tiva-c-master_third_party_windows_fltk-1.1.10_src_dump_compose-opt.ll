; ModuleID = 'Repositories/yuvadm-tiva-c/Unfiltered/tiva-c-master_third_party_windows_fltk-1.1.10_src_dump_compose.c'
source_filename = "Repositories/yuvadm-tiva-c/Unfiltered/tiva-c-master_third_party_windows_fltk-1.1.10_src_dump_compose.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [193 x i8] c"  ! @ # $ y=| & : c a <<~ - r _ * +-2 3 ' u p . , 1 o >>141234? A`A'A^A~A:A*AEC,E`E'E^E:I`I'I^I:D-N~O`O'O^O~O:x O/U`U'U^U:Y'DDssa`a'a^a~a:a*aec,e`e'e^e:i`i'i^i:d-n~o`o'o^o~o:-:o/u`u'u^u:y'ddy:\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"<td><code>%c&nbsp</code>&nbsp&nbsp&nbsp%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"<td><code>%c%c</code>&nbsp&nbsp&nbsp%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

; <label>:5:                                      ; preds = %57, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %60

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %52, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %55

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 16, %13
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %14, %15
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str, i32 0, i32 0), i64 %18
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %36

; <label>:25:                                     ; preds = %12
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = sub i64 %31, ptrtoint ([193 x i8]* @.str to i64)
  %33 = sdiv i64 %32, 2
  %34 = add nsw i64 %33, 160
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %29, i64 %34)
  br label %51

; <label>:36:                                     ; preds = %12
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = sub i64 %46, ptrtoint ([193 x i8]* @.str to i64)
  %48 = sdiv i64 %47, 2
  %49 = add nsw i64 %48, 160
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %40, i32 %44, i64 %49)
  br label %51

; <label>:51:                                     ; preds = %36, %25
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %9

; <label>:55:                                     ; preds = %9
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %57

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %5

; <label>:60:                                     ; preds = %5
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
