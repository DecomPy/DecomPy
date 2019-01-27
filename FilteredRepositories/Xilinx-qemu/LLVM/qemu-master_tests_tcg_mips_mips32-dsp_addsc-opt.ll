; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addsc.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addsc.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addsc.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"((dsp >> 13) & 0x01) == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 15, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 16, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 asm "addsc $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %7, i32 %8) #2, !srcloc !3
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:19:                                     ; preds = %0
  br label %20

; <label>:20:                                     ; preds = %19, %18
  store i32 -61441, i32* %3, align 4
  store i32 65809, i32* %4, align 4
  store i32 4368, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call { i32, i32 } asm "addsc $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %21, i32 %22) #2, !srcloc !4
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  store i32 %24, i32* %2, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %20
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:35:                                     ; preds = %20
  br label %36

; <label>:36:                                     ; preds = %35, %34
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 13
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 1
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %36
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:47:                                     ; preds = %36
  br label %48

; <label>:48:                                     ; preds = %47, %46
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
!3 = !{i32 197, i32 216}
!4 = !{i32 400, i32 419, i32 443}
