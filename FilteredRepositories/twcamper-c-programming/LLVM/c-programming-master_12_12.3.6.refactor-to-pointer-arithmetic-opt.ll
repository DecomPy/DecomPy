; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.6.refactor-to-pointer-arithmetic.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.6.refactor-to-pointer-arithmetic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.numbers = private unnamed_addr constant [5 x i32] [i32 12, i32 34, i32 56, i32 78, i32 99], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum_array(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %6, align 8
  br label %8

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = icmp ult i32* %9, %13
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  br label %8

; <label>:23:                                     ; preds = %8
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([5 x i32]* @main.numbers to i8*), i64 20, i1 false)
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %6 = call i32 @sum_array(i32* %5, i32 2)
  store i32 %6, i32* %3, align 4
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
