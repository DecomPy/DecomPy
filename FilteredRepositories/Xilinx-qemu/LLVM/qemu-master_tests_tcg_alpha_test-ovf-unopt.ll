; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-ovf.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_alpha_test-ovf.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.anon = type { i64 (i64, i64)*, i64, i64, i64 }

@vectors = internal global [1 x %struct.anon] [%struct.anon { i64 (i64, i64)* @test_subqv, i64 0, i64 131416064, i64 -131416064 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %4

; <label>:4:                                      ; preds = %34, %0
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 1
  br i1 %7, label %8, label %37

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* @vectors, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i64 (i64, i64)*, i64 (i64, i64)** %12, align 16, !tbaa !7
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* @vectors, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !11
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* @vectors, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 16, !tbaa !12
  %24 = call i64 %13(i64 %18, i64 %23)
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* @vectors, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !13
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %8
  %32 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 7)
  br label %33

; <label>:33:                                     ; preds = %31, %8
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %2, align 4, !tbaa !3
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4, !tbaa !3
  br label %4

; <label>:37:                                     ; preds = %4
  %38 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3)
  %39 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @write(...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @test_subqv(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8, !tbaa !14
  store i64 %1, i64* %4, align 8, !tbaa !14
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i64, i64* %3, align 8, !tbaa !14
  %8 = load i64, i64* %4, align 8, !tbaa !14
  %9 = call i64 asm "subq/v $1,$2,$0", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %7, i64 %8) #4, !srcloc !15
  store i64 %9, i64* %5, align 8, !tbaa !14
  %10 = load i64, i64* %5, align 8, !tbaa !14
  %11 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #3
  ret i64 %10
}

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !10, i64 8}
!12 = !{!8, !10, i64 16}
!13 = !{!8, !10, i64 24}
!14 = !{!10, !10, i64 0}
!15 = !{i32 64}
