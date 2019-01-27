; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [81 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extp.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsp == 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dsp == 1\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 7, i32* %5, align 4, !tbaa !3
  store i32 12, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %13, i32 %14, i32 %12) #2, !srcloc !7
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, i32* %2, align 4, !tbaa !3
  store i32 %17, i32* %5, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = ashr i32 %18, 14
  %20 = and i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = icmp eq i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = call i64 @llvm.expect.i64(i64 %25, i64 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:30:                                     ; preds = %0
  br label %31

; <label>:31:                                     ; preds = %30, %29
  %32 = load i32, i32* %6, align 4, !tbaa !3
  %33 = load i32, i32* %2, align 4, !tbaa !3
  %34 = icmp eq i32 %32, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = call i64 @llvm.expect.i64(i64 %37, i64 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %31
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:42:                                     ; preds = %31
  br label %43

; <label>:43:                                     ; preds = %42, %41
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 1, i32* %5, align 4, !tbaa !3
  %44 = load i32, i32* %5, align 4, !tbaa !3
  %45 = load i32, i32* %3, align 4, !tbaa !3
  %46 = load i32, i32* %4, align 4, !tbaa !3
  %47 = call { i32, i32 } asm "wrdsp $1, 0x01\0A\09mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extp $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %45, i32 %46, i32 %44) #2, !srcloc !8
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = extractvalue { i32, i32 } %47, 1
  store i32 %48, i32* %2, align 4, !tbaa !3
  store i32 %49, i32* %5, align 4, !tbaa !3
  %50 = load i32, i32* %5, align 4, !tbaa !3
  %51 = ashr i32 %50, 14
  %52 = and i32 %51, 1
  store i32 %52, i32* %5, align 4, !tbaa !3
  %53 = load i32, i32* %5, align 4, !tbaa !3
  %54 = icmp eq i32 %53, 1
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i64 @llvm.expect.i64(i64 %57, i64 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %43
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:62:                                     ; preds = %43
  br label %63

; <label>:63:                                     ; preds = %62, %61
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 -2147483647, i32* %4, align 4, !tbaa !3
  store i32 31, i32* %5, align 4, !tbaa !3
  store i32 -2147483647, i32* %6, align 4, !tbaa !3
  %64 = load i32, i32* %5, align 4, !tbaa !3
  %65 = load i32, i32* %3, align 4, !tbaa !3
  %66 = load i32, i32* %4, align 4, !tbaa !3
  %67 = call { i32, i32 } asm "wrdsp $1\0A\09mthi $2, $$ac2\0A\09mtlo $3, $$ac2\0A\09extp $0, $$ac2, 0x1F\0A\09rddsp $1\0A\09", "=r,=r,r,r,1,~{dirflag},~{fpsr},~{flags}"(i32 %65, i32 %66, i32 %64) #2, !srcloc !9
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = extractvalue { i32, i32 } %67, 1
  store i32 %68, i32* %2, align 4, !tbaa !3
  store i32 %69, i32* %5, align 4, !tbaa !3
  %70 = load i32, i32* %5, align 4, !tbaa !3
  %71 = ashr i32 %70, 14
  %72 = and i32 %71, 1
  store i32 %72, i32* %5, align 4, !tbaa !3
  %73 = load i32, i32* %5, align 4, !tbaa !3
  %74 = icmp eq i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = call i64 @llvm.expect.i64(i64 %77, i64 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %63
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:82:                                     ; preds = %63
  br label %83

; <label>:83:                                     ; preds = %82, %81
  %84 = load i32, i32* %6, align 4, !tbaa !3
  %85 = load i32, i32* %2, align 4, !tbaa !3
  %86 = icmp eq i32 %84, %85
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = call i64 @llvm.expect.i64(i64 %89, i64 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %83
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:94:                                     ; preds = %83
  br label %95

; <label>:95:                                     ; preds = %94, %93
  %96 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #4
  %97 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #4
  %98 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #4
  %99 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4
  %100 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 188, i32 205, i32 234, i32 263, i32 298, i32 322}
!8 = !{i32 547, i32 564, i32 593, i32 622, i32 657, i32 681}
!9 = !{i32 906, i32 917, i32 946, i32 975, i32 1010, i32 1034}
