; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [83 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_mthlip.c\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"dsp == result\00", align 1
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
  store i32 0, i32* %1, align 4
  store i32 7, i32* %5, align 4
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 16759722, i32* %2, align 4
  store i32 46283, i32* %7, align 4
  store i32 16759722, i32* %8, align 4
  store i32 39, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call { i32, i32, i32 } asm "wrdsp $0, 0x01\0A\09mthi $1, $$ac1\0A\09mtlo $2, $$ac1\0A\09mthlip $3, $$ac1\0A\09mfhi $1, $$ac1\0A\09mflo $2, $$ac1\0A\09rddsp $0\0A\09", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %9, i32 %10, i32 %11) #2, !srcloc !3
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = extractvalue { i32, i32, i32 } %13, 1
  %16 = extractvalue { i32, i32, i32 } %13, 2
  store i32 %14, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 63
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:28:                                     ; preds = %0
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %29
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:39:                                     ; preds = %29
  br label %40

; <label>:40:                                     ; preds = %39, %38
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %40
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:50:                                     ; preds = %40
  br label %51

; <label>:51:                                     ; preds = %50, %49
  store i32 31, i32* %5, align 4
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 16759722, i32* %2, align 4
  store i32 46283, i32* %7, align 4
  store i32 16759722, i32* %8, align 4
  store i32 63, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call { i32, i32, i32 } asm "wrdsp $0, 0x01\0A\09mthi $1, $$ac1\0A\09mtlo $2, $$ac1\0A\09mthlip $3, $$ac1\0A\09mfhi $1, $$ac1\0A\09mflo $2, $$ac1\0A\09rddsp $0\0A\09", "=r,=r,=r,r,0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %55, i32 %52, i32 %53, i32 %54) #2, !srcloc !4
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = extractvalue { i32, i32, i32 } %56, 1
  %59 = extractvalue { i32, i32, i32 } %56, 2
  store i32 %57, i32* %5, align 4
  store i32 %58, i32* %3, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 63
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %51
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %72

; <label>:71:                                     ; preds = %51
  br label %72

; <label>:72:                                     ; preds = %71, %70
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %72
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:82:                                     ; preds = %72
  br label %83

; <label>:83:                                     ; preds = %82, %81
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %83
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:93:                                     ; preds = %83
  br label %94

; <label>:94:                                     ; preds = %93, %92
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
!3 = !{i32 275, i32 292, i32 321, i32 350, i32 381, i32 410, i32 439, i32 463}
!4 = !{i32 806, i32 823, i32 852, i32 881, i32 912, i32 941, i32 970, i32 994}
