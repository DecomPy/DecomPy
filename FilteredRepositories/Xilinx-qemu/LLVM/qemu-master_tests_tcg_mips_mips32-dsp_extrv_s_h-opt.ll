; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extrv_s_h.c\00", align 1
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
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %4, align 4
  store i32 46283, i32* %5, align 4
  store i32 7, i32* %6, align 4
  store i32 3, i32* %3, align 4
  store i32 32767, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %9, i32 %10, i32 %11, i32 %8) #2, !srcloc !3
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  store i32 %13, i32* %2, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 23
  %17 = and i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:26:                                     ; preds = %0
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %27
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:37:                                     ; preds = %27
  br label %38

; <label>:38:                                     ; preds = %37, %36
  store i32 8, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 305414945, i32* %5, align 4
  store i32 -32768, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %40, i32 %41, i32 %42, i32 %39) #2, !srcloc !4
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = extractvalue { i32, i32 } %43, 1
  store i32 %44, i32* %2, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 23
  %48 = and i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %38
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %58

; <label>:57:                                     ; preds = %38
  br label %58

; <label>:58:                                     ; preds = %57, %56
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %59, %60
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %58
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:68:                                     ; preds = %58
  br label %69

; <label>:69:                                     ; preds = %68, %67
  store i32 0, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %70) #4, !srcloc !5
  store i32 4, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 17185, i32* %5, align 4
  store i32 1074, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %72, i32 %73, i32 %74, i32 %71) #2, !srcloc !6
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = extractvalue { i32, i32 } %75, 1
  store i32 %76, i32* %2, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 23
  %80 = and i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %69
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:89:                                     ; preds = %69
  br label %90

; <label>:90:                                     ; preds = %89, %88
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %2, align 4
  %93 = icmp eq i32 %91, %92
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %90
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:100:                                    ; preds = %90
  br label %101

; <label>:101:                                    ; preds = %100, %99
  store i32 28, i32* %3, align 4
  store i32 291, i32* %4, align 4
  store i32 -2023406815, i32* %5, align 4
  store i32 4664, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $3, $$ac1\0A\09mtlo $4, $$ac1\0A\09extrv_s.h $0, $$ac1, $2\0A\09rddsp $1\0A\09", "=r,=r,r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %103, i32 %104, i32 %105, i32 %102) #2, !srcloc !7
  %107 = extractvalue { i32, i32 } %106, 0
  %108 = extractvalue { i32, i32 } %106, 1
  store i32 %107, i32* %2, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 23
  %111 = and i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

; <label>:118:                                    ; preds = %101
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:120:                                    ; preds = %101
  br label %121

; <label>:121:                                    ; preds = %120, %119
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %2, align 4
  %124 = icmp eq i32 %122, %123
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

; <label>:129:                                    ; preds = %121
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %132

; <label>:131:                                    ; preds = %121
  br label %132

; <label>:132:                                    ; preds = %131, %130
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
!3 = !{i32 212, i32 229, i32 258, i32 287, i32 325, i32 349}
!4 = !{i32 616, i32 633, i32 662, i32 691, i32 729, i32 753}
!5 = !{i32 969, i32 980}
!6 = !{i32 1115, i32 1132, i32 1161, i32 1190, i32 1228, i32 1252}
!7 = !{i32 1510, i32 1527, i32 1556, i32 1585, i32 1623, i32 1647}
