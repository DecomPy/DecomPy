; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsp == 1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dsp == 0\00", align 1

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
  store i32 32767, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %7, i32 %8) #2, !srcloc !3
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, i32* %2, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 23
  %14 = and i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:23:                                     ; preds = %0
  br label %24

; <label>:24:                                     ; preds = %23, %22
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %25, %26
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %24
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:34:                                     ; preds = %24
  br label %35

; <label>:35:                                     ; preds = %34, %33
  store i32 -1, i32* %3, align 4
  store i32 305414945, i32* %4, align 4
  store i32 -32768, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x08\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %36, i32 %37) #2, !srcloc !4
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, i32* %2, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 23
  %43 = and i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %35
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:52:                                     ; preds = %35
  br label %53

; <label>:53:                                     ; preds = %52, %51
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %54, %55
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %53
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:63:                                     ; preds = %53
  br label %64

; <label>:64:                                     ; preds = %63, %62
  store i32 0, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %65) #4, !srcloc !5
  store i32 0, i32* %3, align 4
  store i32 17185, i32* %4, align 4
  store i32 1074, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x04\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %66, i32 %67) #2, !srcloc !6
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = extractvalue { i32, i32 } %68, 1
  store i32 %69, i32* %2, align 4
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 23
  %73 = and i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %64
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:82:                                     ; preds = %64
  br label %83

; <label>:83:                                     ; preds = %82, %81
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp eq i32 %84, %85
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %83
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:93:                                     ; preds = %83
  br label %94

; <label>:94:                                     ; preds = %93, %92
  store i32 0, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %95) #4, !srcloc !7
  store i32 291, i32* %3, align 4
  store i32 -2023406815, i32* %4, align 4
  store i32 4664, i32* %6, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 28\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %96, i32 %97) #2, !srcloc !8
  %99 = extractvalue { i32, i32 } %98, 0
  %100 = extractvalue { i32, i32 } %98, 1
  store i32 %99, i32* %2, align 4
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = ashr i32 %101, 23
  %103 = and i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %94
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:112:                                    ; preds = %94
  br label %113

; <label>:113:                                    ; preds = %112, %111
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %2, align 4
  %116 = icmp eq i32 %114, %115
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

; <label>:121:                                    ; preds = %113
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %124

; <label>:123:                                    ; preds = %113
  br label %124

; <label>:124:                                    ; preds = %123, %122
  ret i32 0
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{i32 175, i32 191, i32 220, i32 259, i32 283}
!4 = !{i32 526, i32 542, i32 571, i32 610, i32 634}
!5 = !{i32 841, i32 852}
!6 = !{i32 972, i32 988, i32 1017, i32 1056, i32 1080}
!7 = !{i32 1287, i32 1298}
!8 = !{i32 1424, i32 1440, i32 1469, i32 1506, i32 1530}
