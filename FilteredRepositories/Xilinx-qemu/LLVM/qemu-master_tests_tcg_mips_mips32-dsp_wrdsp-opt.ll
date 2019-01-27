; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ccond_o == (ccond_i & 0x0F)\00", align 1
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
  store i32 188, i32* %4, align 4
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
  %53 = and i32 %52, 15
  %54 = icmp eq i32 %51, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %62

; <label>:61:                                     ; preds = %0
  br label %62

; <label>:62:                                     ; preds = %61, %60
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %63, %64
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %62
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:72:                                     ; preds = %62
  br label %73

; <label>:73:                                     ; preds = %72, %71
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %73
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:83:                                     ; preds = %73
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %85, %86
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %84
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:94:                                     ; preds = %84
  br label %95

; <label>:95:                                     ; preds = %94, %93
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %95
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %106

; <label>:105:                                    ; preds = %95
  br label %106

; <label>:106:                                    ; preds = %105, %104
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %107, %108
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

; <label>:114:                                    ; preds = %106
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:116:                                    ; preds = %106
  br label %117

; <label>:117:                                    ; preds = %116, %115
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
