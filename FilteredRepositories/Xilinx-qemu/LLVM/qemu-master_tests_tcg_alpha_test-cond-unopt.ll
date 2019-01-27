; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-cond.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-cond.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.anon = type { i32 (i64)*, i64, i32 }

@vectors = internal global [22 x %struct.anon] [%struct.anon { i32 (i64)* @test_eq, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_eq, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_ne, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_ne, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_ge, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_gt, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_gt, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_gt, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_lbc, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_lbc, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_lbc, i64 -1, i32 0 }, %struct.anon { i32 (i64)* @test_lbs, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_lbs, i64 1, i32 1 }, %struct.anon { i32 (i64)* @test_lbs, i64 -1, i32 1 }, %struct.anon { i32 (i64)* @test_le, i64 0, i32 1 }, %struct.anon { i32 (i64)* @test_le, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_le, i64 -1, i32 1 }, %struct.anon { i32 (i64)* @test_lt, i64 0, i32 0 }, %struct.anon { i32 (i64)* @test_lt, i64 1, i32 0 }, %struct.anon { i32 (i64)* @test_lt, i64 -1, i32 1 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @test_eq(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "beq $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !9
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @test_ne(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "bne $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !10
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_ge(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "bge $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !11
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_gt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "bgt $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !12
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_lbc(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "blbc $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !13
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_lbs(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "blbs $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !14
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_le(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "ble $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !15
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @test_lt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 1, i32* %3, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i64, i64* %2, align 8, !tbaa !3
  %7 = call i32 asm "blt $1,1f\0A\09addq $$31,$$31,$0\0A\091: unop\0A", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6, i32 %5) #4, !srcloc !16
  store i32 %7, i32* %3, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %2, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %30, %0
  %6 = load i32, i32* %2, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 22
  br i1 %8, label %9, label %33

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %2, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i32 (i64)*, i32 (i64)** %13, align 8, !tbaa !17
  %15 = load i32, i32* %2, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8, !tbaa !20
  %20 = call i32 %14(i64 %19)
  %21 = load i32, i32* %2, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @vectors, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8, !tbaa !21
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %9
  %28 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 7)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %35

; <label>:29:                                     ; preds = %9
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %2, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4, !tbaa !7
  br label %5

; <label>:33:                                     ; preds = %5
  %34 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %33, %27
  %36 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare i32 @write(...) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{i32 -2147470251, i32 -2147470237, i32 -2147470204}
!10 = !{i32 -2147465963, i32 -2147465949, i32 -2147465916}
!11 = !{i32 -2147465736, i32 -2147465722, i32 -2147465689}
!12 = !{i32 -2147465509, i32 -2147465495, i32 -2147465462}
!13 = !{i32 -2147465282, i32 -2147465268, i32 -2147465235}
!14 = !{i32 -2147465052, i32 -2147465038, i32 -2147465005}
!15 = !{i32 -2147464822, i32 -2147464808, i32 -2147464775}
!16 = !{i32 -2147464595, i32 -2147464581, i32 -2147464548}
!17 = !{!18, !19, i64 0}
!18 = !{!"", !19, i64 0, !4, i64 8, !8, i64 16}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!18, !4, i64 8}
!21 = !{!18, !8, i64 16}
