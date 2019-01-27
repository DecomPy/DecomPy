; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addwc.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addwc.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addwc.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"((dspo >> 20) & 0x01) == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 285147647, i32* %3, align 4
  store i32 268500993, i32* %4, align 4
  store i32 8192, i32* %5, align 4
  store i32 553648641, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 asm "wrdsp $3\0Aaddwc $0, $1, $2\0A\09", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %8, i32 %9, i32 %10) #2, !srcloc !3
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %12, %13
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:21:                                     ; preds = %0
  br label %22

; <label>:22:                                     ; preds = %21, %20
  store i32 -61167, i32* %3, align 4
  store i32 131073, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 69906, i32* %7, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 asm "wrdsp $3\0Aaddwc $0, $1, $2\0A\09", "=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %23, i32 %24, i32 %25) #2, !srcloc !4
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %22
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:36:                                     ; preds = %22
  br label %37

; <label>:37:                                     ; preds = %36, %35
  store i32 -1879109359, i32* %3, align 4
  store i32 -2147352575, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 268505362, i32* %7, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call { i32, i32 } asm "wrdsp $4\0Aaddwc $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %38, i32 %39, i32 %40) #2, !srcloc !5
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  store i32 %42, i32* %2, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %37
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %54

; <label>:53:                                     ; preds = %37
  br label %54

; <label>:54:                                     ; preds = %53, %52
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 20
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 1
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %54
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:65:                                     ; preds = %54
  br label %66

; <label>:66:                                     ; preds = %65, %64
  ret i32 0
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 229, i32 252, i32 270}
!4 = !{i32 484, i32 507, i32 525}
!5 = !{i32 739, i32 762, i32 780, i32 804}
