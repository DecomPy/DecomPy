; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpax_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpax_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [88 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpax_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ach == resulth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"acl == resultl\00", align 1

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
  store i32 5, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 16711935, i32* %2, align 4
  store i32 65538, i32* %3, align 4
  store i32 5, i32* %6, align 4
  store i32 770, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call { i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpax.w.ph $$ac1, $2, $3\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09", "=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %10, i32 %11, i32 %8, i32 %9) #2, !srcloc !3
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  store i32 %13, i32* %4, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:24:                                     ; preds = %0
  br label %25

; <label>:25:                                     ; preds = %24, %23
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %25
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:35:                                     ; preds = %25
  br label %36

; <label>:36:                                     ; preds = %35, %34
  store i32 6, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 -65281, i32* %2, align 4
  store i32 -65534, i32* %3, align 4
  store i32 5, i32* %6, align 4
  store i32 -250, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call { i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpax.w.ph $$ac1, $2, $3\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09", "=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %39, i32 %40, i32 %37, i32 %38) #2, !srcloc !4
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  store i32 %42, i32* %4, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %36
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %54

; <label>:53:                                     ; preds = %36
  br label %54

; <label>:54:                                     ; preds = %53, %52
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %54
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:64:                                     ; preds = %54
  br label %65

; <label>:65:                                     ; preds = %64, %63
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
!3 = !{i32 233, i32 250, i32 280, i32 318, i32 348, i32 378}
!4 = !{i32 647, i32 664, i32 694, i32 732, i32 762, i32 792}
