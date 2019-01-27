; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_test-i386-ssse3.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_test-i386-ssse3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.ehlo = private unnamed_addr constant [8 x i8] c"EHLO    ", align 1
@main.e = private unnamed_addr constant [16 x i8] c"LLOaaaaaaaaaaaaa", align 16
@main.f = private unnamed_addr constant [16 x i8] c"aaaaaaaaaaaaaaHE", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%i - %i = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%5.5s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%i = %i\0A%i = %i = %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca [8 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @main.ehlo, i32 0, i32 0), i64 8, i1 false)
  store i64 -9187202489428869119, i64* %8, align 8
  store i64 589831, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = bitcast [16 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @main.e, i32 0, i32 0), i64 16, i1 false)
  %17 = bitcast [16 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @main.f, i32 0, i32 0), i64 16, i1 false)
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i32 0, i32 0
  call void asm sideeffect "movq    ($0), %mm0", "r,~{mm0},~{mm1},~{dirflag},~{fpsr},~{flags}"(i8* %18) #3, !srcloc !3
  call void asm sideeffect "movq    $0, %mm1", "*m,~{dirflag},~{fpsr},~{flags}"(i64* %8) #3, !srcloc !4
  call void asm sideeffect "pshufb  %mm1, %mm0", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  call void asm sideeffect "movq    %mm0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"([16 x i8]* %6) #3, !srcloc !6
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %19)
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i32 0, i32 0
  call void asm sideeffect "movq    ($0), %mm0", "r,~{mm0},~{dirflag},~{fpsr},~{flags}"(i8* %21) #3, !srcloc !7
  call void asm sideeffect "pshufb  $0, %mm0", "*m,~{dirflag},~{fpsr},~{flags}"(i64* %8) #3, !srcloc !8
  call void asm sideeffect "movq    %mm0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"([16 x i8]* %6) #3, !srcloc !9
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %22)
  %24 = load i64, i64* %9, align 8
  call void asm sideeffect "movq    $0, %mm0", "r,~{mm0},~{dirflag},~{fpsr},~{flags}"(i64 %24) #3, !srcloc !10
  call void asm sideeffect "phsubsw $0, %mm0", "*m,~{dirflag},~{fpsr},~{flags}"(i64* %10) #3, !srcloc !11
  call void asm sideeffect "movq    %mm0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i64* %9) #3, !srcloc !12
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i16
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 9, i32 7, i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 0
  call void asm sideeffect "movdqa  ($0), %xmm0", "r,~{xmm0},~{dirflag},~{fpsr},~{flags}"(i8* %30) #3, !srcloc !13
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0
  call void asm sideeffect "palignr $$14, ($0), %xmm0", "r,~{dirflag},~{fpsr},~{flags}"(i8* %31) #3, !srcloc !14
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  call void asm sideeffect "movdqa  %xmm0, ($0)", "r,~{dirflag},~{fpsr},~{flags}"(i8* %32) #3, !srcloc !15
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %33)
  call void asm sideeffect "movq    $$0x8421000010009c63, %rax", "~{rax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !16
  call void asm sideeffect "popcnt  %ax, %dx", "~{dx},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !17
  call void asm sideeffect "popcnt  %eax, %ecx", "~{ecx},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !18
  call void asm sideeffect "popcnt  %rax, %rax", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !19
  call void asm sideeffect "movq    %rax, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i64* %9) #3, !srcloc !20
  call void asm sideeffect "movl    %ecx, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %11) #3, !srcloc !21
  call void asm sideeffect "movw    %dx, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* %12) #3, !srcloc !22
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = load i16, i16* %12, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 13, i32 %36, i32 9, i32 %37, i32 %40)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 480}
!4 = !{i32 549}
!5 = !{i32 601}
!6 = !{i32 639}
!7 = !{i32 749}
!8 = !{i32 811}
!9 = !{i32 863}
!10 = !{i32 973}
!11 = !{i32 1030}
!12 = !{i32 1079}
!13 = !{i32 1215}
!14 = !{i32 1276}
!15 = !{i32 1333}
!16 = !{i32 1459}
!17 = !{i32 1525}
!18 = !{i32 1574}
!19 = !{i32 1626}
!20 = !{i32 1664}
!21 = !{i32 1712}
!22 = !{i32 1760}
