; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [83 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extpdp.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pos == 3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"efi == 0\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"efi == 1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dsp == 0x3F\00", align 1

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
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 12, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %10, i32 %11, i32 %9) #2, !srcloc !3
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  store i32 %13, i32* %2, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 14
  %19 = and i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 3
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:28:                                     ; preds = %0
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %29
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:38:                                     ; preds = %29
  br label %39

; <label>:39:                                     ; preds = %38, %37
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %40, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %39
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:49:                                     ; preds = %39
  br label %50

; <label>:50:                                     ; preds = %49, %48
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %52, i32 %53, i32 %51) #2, !srcloc !4
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = extractvalue { i32, i32 } %54, 1
  store i32 %55, i32* %2, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 14
  %59 = and i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %50
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:68:                                     ; preds = %50
  br label %69

; <label>:69:                                     ; preds = %68, %67
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call { i32, i32 } asm "wrdsp $1\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extpdp $0, $$ac1, 0x00\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %71, i32 %72, i32 %70) #2, !srcloc !5
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = extractvalue { i32, i32 } %73, 1
  store i32 %74, i32* %2, align 4
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 63
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

; <label>:82:                                     ; preds = %69
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:84:                                     ; preds = %69
  br label %85

; <label>:85:                                     ; preds = %84, %83
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp eq i32 %86, %87
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %85
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0), i32 61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %96

; <label>:95:                                     ; preds = %85
  br label %96

; <label>:96:                                     ; preds = %95, %94
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
!3 = !{i32 198, i32 215, i32 244, i32 273, i32 310, i32 334}
!4 = !{i32 604, i32 621, i32 650, i32 679, i32 716, i32 740}
!5 = !{i32 945, i32 956, i32 985, i32 1014, i32 1051, i32 1075}
