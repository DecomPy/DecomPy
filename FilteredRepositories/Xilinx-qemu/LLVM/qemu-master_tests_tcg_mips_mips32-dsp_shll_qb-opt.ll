; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_qb.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_qb.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [84 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_qb.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dsp == resultdsp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -2023406815, i32* %3, align 4
  store i32 -2023406815, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.qb $0, $2, 0x00\0A\09rddsp   $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #2, !srcloc !3
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = extractvalue { i32, i32 } %8, 1
  store i32 %9, i32* %2, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 22
  %13 = and i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:23:                                     ; preds = %0
  br label %24

; <label>:24:                                     ; preds = %23, %22
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %24
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:34:                                     ; preds = %24
  br label %35

; <label>:35:                                     ; preds = %34, %33
  store i32 -2023406815, i32* %3, align 4
  store i32 942151688, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.qb $0, $2, 0x03\0A\09rddsp   $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %36) #2, !srcloc !4
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = extractvalue { i32, i32 } %37, 1
  store i32 %38, i32* %2, align 4
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 22
  %42 = and i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %35
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:52:                                     ; preds = %35
  br label %53

; <label>:53:                                     ; preds = %52, %51
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %53
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:63:                                     ; preds = %53
  br label %64

; <label>:64:                                     ; preds = %63, %62
  store i32 1, i32* %3, align 4
  store i32 128, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.qb $0, $2, 0x07\0A\09rddsp   $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %65) #2, !srcloc !5
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = extractvalue { i32, i32 } %66, 1
  store i32 %67, i32* %2, align 4
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 22
  %71 = and i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %72, %73
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %64
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %82

; <label>:81:                                     ; preds = %64
  br label %82

; <label>:82:                                     ; preds = %81, %80
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %83, %84
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %82
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:92:                                     ; preds = %82
  br label %93

; <label>:93:                                     ; preds = %92, %91
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
!3 = !{i32 195, i32 206, i32 242, i32 268}
!4 = !{i32 512, i32 523, i32 559, i32 585}
!5 = !{i32 829, i32 840, i32 876, i32 902}
