; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [89 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_maq_sa_w_phl.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"resulth == acho\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"resultl == aclo\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"((dsp >> 17) & 0x01) == 0x01\00", align 1

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
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 46283, i32* %5, align 4
  store i32 -16384000, i32* %3, align 4
  store i32 -889192448, i32* %2, align 4
  store i32 0, i32* %9, align 4
  store i32 6830283, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09maq_sa.w.phl $$ac1, $4, $5\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09", "=r,=r,r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13, i32 %14, i32 %15) #2, !srcloc !3
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, i32* %7, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:28:                                     ; preds = %0
  br label %29

; <label>:29:                                     ; preds = %28, %27
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %29
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:39:                                     ; preds = %29
  br label %40

; <label>:40:                                     ; preds = %39, %38
  store i32 0, i32* %4, align 4
  store i32 46283, i32* %5, align 4
  store i32 -2147483648, i32* %3, align 4
  store i32 -2147483648, i32* %2, align 4
  store i32 0, i32* %9, align 4
  store i32 2147483647, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call { i32, i32, i32 } asm "mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09maq_sa.w.phl $$ac1, $5, $6\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %41, i32 %42, i32 %43, i32 %44) #2, !srcloc !4
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = extractvalue { i32, i32, i32 } %45, 1
  %48 = extractvalue { i32, i32, i32 } %45, 2
  store i32 %46, i32* %7, align 4
  store i32 %47, i32* %8, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %40
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:58:                                     ; preds = %40
  br label %59

; <label>:59:                                     ; preds = %58, %57
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %59
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:69:                                     ; preds = %59
  br label %70

; <label>:70:                                     ; preds = %69, %68
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 17
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 1
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %70
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %82

; <label>:81:                                     ; preds = %70
  br label %82

; <label>:82:                                     ; preds = %81, %80
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
!3 = !{i32 325, i32 341, i32 370, i32 411, i32 440, i32 469}
!4 = !{i32 802, i32 818, i32 847, i32 888, i32 917, i32 946, i32 970}
