; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [86 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_addq_s_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"result == rd\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"((dsp >> 20) & 0x01) == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %3, align 4
  store i32 269488144, i32* %4, align 4
  store i32 269422607, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %7, i32 %8) #2, !srcloc !3
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %10, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:19:                                     ; preds = %0
  br label %20

; <label>:20:                                     ; preds = %19, %18
  store i32 923960445, i32* %3, align 4
  store i32 3256109, i32* %4, align 4
  store i32 927170560, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %21, i32 %22) #2, !srcloc !4
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %24, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %20
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:33:                                     ; preds = %20
  br label %34

; <label>:34:                                     ; preds = %33, %32
  %35 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 20
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 1
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %34
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:46:                                     ; preds = %34
  br label %47

; <label>:47:                                     ; preds = %46, %45
  store i32 2147452029, i32* %3, align 4
  store i32 3256109, i32* %4, align 4
  store i32 2147450880, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %48, i32 %49) #2, !srcloc !6
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %51, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %47
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %47
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 20
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 1
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %61
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %74

; <label>:73:                                     ; preds = %61
  br label %74

; <label>:74:                                     ; preds = %73, %72
  store i32 -2144304003, i32* %3, align 4
  store i32 -1979666643, i32* %4, align 4
  store i32 -2147450880, i32* %6, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 asm "addq_s.ph   $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %75, i32 %76) #2, !srcloc !8
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp eq i32 %78, %79
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %74
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %88

; <label>:87:                                     ; preds = %74
  br label %88

; <label>:88:                                     ; preds = %87, %86
  %89 = call i32 asm "rddsp $0\0A\09", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 20
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 1
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %88
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:100:                                    ; preds = %88
  br label %101

; <label>:101:                                    ; preds = %100, %99
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
!3 = !{i32 197, i32 222}
!4 = !{i32 406, i32 431}
!5 = !{i32 540, i32 551}
!6 = !{i32 721, i32 746}
!7 = !{i32 855, i32 866}
!8 = !{i32 1036, i32 1061}
!9 = !{i32 1170, i32 1181}
