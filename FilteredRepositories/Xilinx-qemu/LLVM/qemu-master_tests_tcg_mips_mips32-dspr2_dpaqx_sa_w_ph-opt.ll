; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [92 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_sa_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dsp >> (16 + 1) == resultdsp\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ach == resulth\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"acl == resultl\00", align 1

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
  store i32 0, i32* %1, align 4
  store i32 5, i32* %5, align 4
  store i32 5, i32* %6, align 4
  store i32 16711935, i32* %2, align 4
  store i32 65538, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 2147483647, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call { i32, i32, i32 } asm "wrdsp $2\0A\09mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_sa.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %13, i32 %14, i32 %10, i32 %11, i32 %12) #2, !srcloc !3
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = extractvalue { i32, i32, i32 } %15, 1
  %18 = extractvalue { i32, i32, i32 } %15, 2
  store i32 %16, i32* %5, align 4
  store i32 %17, i32* %6, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 17
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %20, %21
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:29:                                     ; preds = %0
  br label %30

; <label>:30:                                     ; preds = %29, %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %30
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:40:                                     ; preds = %30
  br label %41

; <label>:41:                                     ; preds = %40, %39
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %41
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:51:                                     ; preds = %41
  br label %52

; <label>:52:                                     ; preds = %51, %50
  store i32 9, i32* %5, align 4
  store i32 11, i32* %6, align 4
  store i32 -2147483393, i32* %2, align 4
  store i32 98304, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 2147483647, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call { i32, i32, i32 } asm "wrdsp $2\0A\09mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_sa.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %56, i32 %57, i32 %53, i32 %54, i32 %55) #2, !srcloc !4
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = extractvalue { i32, i32, i32 } %58, 1
  %61 = extractvalue { i32, i32, i32 } %58, 2
  store i32 %59, i32* %5, align 4
  store i32 %60, i32* %6, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 17
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %63, %64
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %52
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:72:                                     ; preds = %52
  br label %73

; <label>:73:                                     ; preds = %72, %71
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %73
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:83:                                     ; preds = %73
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %84
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:94:                                     ; preds = %84
  br label %95

; <label>:95:                                     ; preds = %94, %93
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
!3 = !{i32 324, i32 335, i32 365, i32 395, i32 437, i32 467, i32 497, i32 521}
!4 = !{i32 900, i32 911, i32 941, i32 971, i32 1013, i32 1043, i32 1073, i32 1097}
