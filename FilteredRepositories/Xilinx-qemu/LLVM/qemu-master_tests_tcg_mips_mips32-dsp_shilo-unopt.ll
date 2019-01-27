; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shilo.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shilo.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shilo.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ach == resulth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"acl == resultl\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  store i32 -1146434305, i32* %2, align 4, !tbaa !3
  store i32 473628701, i32* %3, align 4, !tbaa !3
  store i32 96085, i32* %4, align 4, !tbaa !3
  store i32 -1711392650, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = call { i32, i32 } asm "mthi $0, $$ac1\0A\09mtlo $1, $$ac1\0A\09shilo $$ac1, 0x0F\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %10, i32 %11) #2, !srcloc !7
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  store i32 %13, i32* %2, align 4, !tbaa !3
  store i32 %14, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = icmp eq i32 %15, %16
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = call i64 @llvm.expect.i64(i64 %20, i64 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:25:                                     ; preds = %0
  br label %26

; <label>:26:                                     ; preds = %25, %24
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = load i32, i32* %5, align 4, !tbaa !3
  %29 = icmp eq i32 %27, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = call i64 @llvm.expect.i64(i64 %32, i64 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %26
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:37:                                     ; preds = %26
  br label %38

; <label>:38:                                     ; preds = %37, %36
  store i32 1, i32* %2, align 4, !tbaa !3
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 3, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  %39 = load i32, i32* %2, align 4, !tbaa !3
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = call { i32, i32 } asm "mthi $0, $$ac1\0A\09mtlo $1, $$ac1\0A\09shilo $$ac1, -1\0A\09mfhi $0, $$ac1\0A\09mflo $1, $$ac1\0A\09", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %39, i32 %40) #2, !srcloc !8
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  store i32 %42, i32* %2, align 4, !tbaa !3
  store i32 %43, i32* %3, align 4, !tbaa !3
  %44 = load i32, i32* %2, align 4, !tbaa !3
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = icmp eq i32 %44, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = call i64 @llvm.expect.i64(i64 %49, i64 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %38
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:54:                                     ; preds = %38
  br label %55

; <label>:55:                                     ; preds = %54, %53
  %56 = load i32, i32* %3, align 4, !tbaa !3
  %57 = load i32, i32* %5, align 4, !tbaa !3
  %58 = icmp eq i32 %56, %57
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = call i64 @llvm.expect.i64(i64 %61, i64 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %55
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %67

; <label>:66:                                     ; preds = %55
  br label %67

; <label>:67:                                     ; preds = %66, %65
  %68 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #4
  %69 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #4
  %70 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4
  %71 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4
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
!7 = !{i32 212, i32 228, i32 257, i32 289, i32 318, i32 347}
!8 = !{i32 548, i32 564, i32 593, i32 623, i32 652, i32 681}
