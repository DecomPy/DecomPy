; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-cond.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-cond.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.anon = type { i32 (i64)*, i64, i32 }

@vectors = internal global [22 x %struct.anon] [%struct.anon { i32 (i64)* @test_eq, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_eq, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_ne, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_ne, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_gt, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_gt, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_gt, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_lbc, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_lbc, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_lbc, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_lbs, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_lbs, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_lbs, i64 -1, i32 1 }, %struct.anon { i32 (i64)* @test_le, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_le, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_le, i64 -1, i32 1 }, %struct.anon { i32 (i64)* @test_lt, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_lt, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_lt, i64 -1, i32 1 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_eq(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "beq $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !3
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_ne(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "bne $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_ge(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "bge $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_gt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "bgt $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !6
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_lbc(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "blbc $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !7
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_lbs(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "blbs $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_le(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "ble $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !9
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test_lt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 asm "blt $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %5, i32 %4) #2, !srcloc !10
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %28, %0
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 22
  br i1 %6, label %7, label %31

; <label>:7:                                      ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i32 (i64)*, i32 (i64)** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 %12(i64 %17)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %7
  %26 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 7)
  store i32 1, i32* %1, align 4
  br label %33

; <label>:27:                                     ; preds = %7
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %3

; <label>:31:                                     ; preds = %3
  %32 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3)
  store i32 0, i32* %1, align 4
  br label %33

; <label>:33:                                     ; preds = %31, %25
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare i32 @write(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 -2147470250, i32 -2147470236, i32 -2147470203}
!4 = !{i32 -2147465962, i32 -2147465948, i32 -2147465915}
!5 = !{i32 -2147465735, i32 -2147465721, i32 -2147465688}
!6 = !{i32 -2147465508, i32 -2147465494, i32 -2147465461}
!7 = !{i32 -2147465281, i32 -2147465267, i32 -2147465234}
!8 = !{i32 -2147465051, i32 -2147465037, i32 -2147465004}
!9 = !{i32 -2147464821, i32 -2147464807, i32 -2147464774}
!10 = !{i32 -2147464594, i32 -2147464580, i32 -2147464547}
