; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.12.two-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.12.two-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@constinit = private global [6 x i32] [i32 10, i32 9, i32 312, i32 569, i32 1, i32 311], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @find_two_largest(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %9, align 8
  br label %13

; <label>:13:                                     ; preds = %45, %4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = icmp ult i32* %14, %18
  br i1 %19, label %20, label %48

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %44

; <label>:33:                                     ; preds = %20
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %39, %33
  br label %44

; <label>:44:                                     ; preds = %43, %26
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  br label %13

; <label>:48:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %6 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([6 x i32]* @constinit to i8*), i64 24, i1 false)
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i32 0, i32 0
  call void @find_two_largest(i32* %7, i32 6, i32* %2, i32* %3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
