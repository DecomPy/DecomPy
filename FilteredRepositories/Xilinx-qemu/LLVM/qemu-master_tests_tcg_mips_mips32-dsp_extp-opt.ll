; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [81 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsp == 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dsp == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 12, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %8, i32 %9, i32 %7) #2, !srcloc !3
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  store i32 %11, i32* %2, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 14
  %15 = and i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:24:                                     ; preds = %0
  br label %25

; <label>:25:                                     ; preds = %24, %23
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %26, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %25
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:35:                                     ; preds = %25
  br label %36

; <label>:36:                                     ; preds = %35, %34
  store i32 5, i32* %3, align 4
  store i32 46283, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %38, i32 %39, i32 %37) #2, !srcloc !4
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = extractvalue { i32, i32 } %40, 1
  store i32 %41, i32* %2, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 14
  %45 = and i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 1
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %36
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:54:                                     ; preds = %36
  br label %55

; <label>:55:                                     ; preds = %54, %53
  store i32 0, i32* %3, align 4
  store i32 -2147483647, i32* %4, align 4
  store i32 31, i32* %5, align 4
  store i32 -2147483647, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call { i32, i32 } asm "wrdsp $1\0A\09mthi $2, $$ac2\0A\09mtlo $3, $$ac2\0A\09extp $0, $$ac2, 0x1F\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %57, i32 %58, i32 %56) #2, !srcloc !5
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = extractvalue { i32, i32 } %59, 1
  store i32 %60, i32* %2, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 14
  %64 = and i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %55
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %74

; <label>:73:                                     ; preds = %55
  br label %74

; <label>:74:                                     ; preds = %73, %72
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %75, %76
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

; <label>:82:                                     ; preds = %74
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:84:                                     ; preds = %74
  br label %85

; <label>:85:                                     ; preds = %84, %83
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
!3 = !{i32 188, i32 205, i32 234, i32 263, i32 298, i32 322}
!4 = !{i32 547, i32 564, i32 593, i32 622, i32 657, i32 681}
!5 = !{i32 906, i32 917, i32 946, i32 975, i32 1010, i32 1034}
