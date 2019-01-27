; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [91 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpaqx_s_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dsp == resultdsp\00", align 1
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
  store i32 -2147483393, i32* %2, align 4
  store i32 98304, i32* %3, align 4
  store i32 5, i32* %7, align 4
  store i32 -2147483134, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13, i32 %10, i32 %11) #2, !srcloc !3
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = extractvalue { i32, i32, i32 } %14, 1
  %17 = extractvalue { i32, i32, i32 } %14, 2
  store i32 %15, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 17
  %20 = and i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:30:                                     ; preds = %0
  br label %31

; <label>:31:                                     ; preds = %30, %29
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %31
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:41:                                     ; preds = %31
  br label %42

; <label>:42:                                     ; preds = %41, %40
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %42
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:52:                                     ; preds = %42
  br label %53

; <label>:53:                                     ; preds = %52, %51
  store i32 5, i32* %5, align 4
  store i32 5, i32* %6, align 4
  store i32 16711935, i32* %2, align 4
  store i32 65538, i32* %3, align 4
  store i32 5, i32* %7, align 4
  store i32 1535, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %56, i32 %57, i32 %54, i32 %55) #2, !srcloc !4
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = extractvalue { i32, i32, i32 } %58, 1
  %61 = extractvalue { i32, i32, i32 } %58, 2
  store i32 %59, i32* %5, align 4
  store i32 %60, i32* %6, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 17
  %64 = and i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %53
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %75

; <label>:74:                                     ; preds = %53
  br label %75

; <label>:75:                                     ; preds = %74, %73
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %75
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:85:                                     ; preds = %75
  br label %86

; <label>:86:                                     ; preds = %85, %84
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %87, %88
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %86
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:96:                                     ; preds = %86
  br label %97

; <label>:97:                                     ; preds = %96, %95
  store i32 5, i32* %5, align 4
  store i32 5, i32* %6, align 4
  store i32 -2147483393, i32* %2, align 4
  store i32 163840, i32* %3, align 4
  store i32 5, i32* %7, align 4
  store i32 -2147482624, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call { i32, i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpaqx_s.w.ph $$ac1, $3, $4\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09rddsp $2\0A\09", "=r,=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %100, i32 %101, i32 %98, i32 %99) #2, !srcloc !5
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = extractvalue { i32, i32, i32 } %102, 1
  %105 = extractvalue { i32, i32, i32 } %102, 2
  store i32 %103, i32* %5, align 4
  store i32 %104, i32* %6, align 4
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = ashr i32 %106, 17
  %108 = and i32 %107, 1
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %109, %110
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

; <label>:116:                                    ; preds = %97
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %119

; <label>:118:                                    ; preds = %97
  br label %119

; <label>:119:                                    ; preds = %118, %117
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

; <label>:127:                                    ; preds = %119
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %130

; <label>:129:                                    ; preds = %119
  br label %130

; <label>:130:                                    ; preds = %129, %128
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %131, %132
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %130
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %141

; <label>:140:                                    ; preds = %130
  br label %141

; <label>:141:                                    ; preds = %140, %139
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
!3 = !{i32 275, i32 292, i32 322, i32 363, i32 393, i32 423, i32 447}
!4 = !{i32 1070, i32 1087, i32 1117, i32 1158, i32 1188, i32 1218, i32 1242}
!5 = !{i32 1614, i32 1631, i32 1661, i32 1702, i32 1732, i32 1762, i32 1786}
