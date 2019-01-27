; ModuleID = 'Repositories/stevedekorte-vertexdb/Unfiltered/vertexdb-master_source_basekit_source_Hash_murmur.c'
source_filename = "Repositories/stevedekorte-vertexdb/Unfiltered/vertexdb-master_source_basekit_source_Hash_murmur.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @MurmurHash2(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1540483477, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = xor i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %10, align 8
  br label %16

; <label>:16:                                     ; preds = %19, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 4
  br i1 %18, label %19, label %40

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul i32 %23, 1540483477
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = lshr i32 %25, 24
  %27 = load i32, i32* %11, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul i32 %29, 1540483477
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %31, 1540483477
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 4
  store i32 %39, i32* %5, align 4
  br label %16

; <label>:40:                                     ; preds = %16
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %67 [
    i32 3, label %42
    i32 2, label %50
    i32 1, label %58
  ]

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

; <label>:50:                                     ; preds = %40, %42
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %9, align 4
  %57 = xor i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

; <label>:58:                                     ; preds = %40, %50
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = xor i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul i32 %65, 1540483477
  store i32 %66, i32* %9, align 4
  br label %67

; <label>:67:                                     ; preds = %58, %40
  %68 = load i32, i32* %9, align 4
  %69 = lshr i32 %68, 13
  %70 = load i32, i32* %9, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul i32 %72, 1540483477
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = lshr i32 %74, 15
  %76 = load i32, i32* %9, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
