; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_rddsp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_rddsp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_rddsp.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ccond_o == ccond_i\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"outflag_o == outflag_i\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"efi_o == efi_i\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"c_o == c_i\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"scount_o == scount_i\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"pos_o == pos_i\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 12, i32* %4, align 4
  store i32 27, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 15, i32* %8, align 4
  store i32 12, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 24
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 16
  %20 = or i32 %17, %19
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 14
  %23 = or i32 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 13
  %26 = or i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 7
  %29 = or i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 asm "wrdsp $1, 0x3F\0A\09rddsp $0, 0x3F\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %32) #2, !srcloc !3
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 255
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 14
  %42 = and i32 %41, 1
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 14
  %45 = and i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 7
  %48 = and i32 %47, 63
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 31
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %0
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %61
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %72

; <label>:71:                                     ; preds = %61
  br label %72

; <label>:72:                                     ; preds = %71, %70
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %72
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:82:                                     ; preds = %72
  br label %83

; <label>:83:                                     ; preds = %82, %81
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %84, %85
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %83
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:93:                                     ; preds = %83
  br label %94

; <label>:94:                                     ; preds = %93, %92
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %95, %96
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

; <label>:102:                                    ; preds = %94
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %105

; <label>:104:                                    ; preds = %94
  br label %105

; <label>:105:                                    ; preds = %104, %103
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %106, %107
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %105
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %116

; <label>:115:                                    ; preds = %105
  br label %116

; <label>:116:                                    ; preds = %115, %114
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
!3 = !{i32 622, i32 639, i32 669}
