; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_a64l.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_a64l.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a64l.chars = internal constant [77 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\00\00\00\00\00\00\00\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&\00\00\00\00\00\00'()*+,-./0123456789:;<=>?@", align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @a64l(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %6

; <label>:6:                                      ; preds = %42, %1
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 6
  br i1 %8, label %9, label %45

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = sub nsw i32 %14, 46
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @__arraycount to i32 (i8*, ...)*)(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @a64l.chars, i32 0, i32 0))
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %28, label %21

; <label>:21:                                     ; preds = %9
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [77 x i8], [77 x i8]* @a64l.chars, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %21, %9
  br label %45

; <label>:29:                                     ; preds = %21
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [77 x i8], [77 x i8]* @a64l.chars, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 1
  %36 = load i64, i64* %4, align 8
  %37 = mul i64 %36, 6
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %35, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

; <label>:42:                                     ; preds = %29
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %6

; <label>:45:                                     ; preds = %28, %6
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  ret i64 %47
}

declare i32 @__arraycount(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
