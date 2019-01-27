; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpa_w_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpa_w_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [87 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_dpa_w_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ach == resulth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"acl == resultl\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  store i32 5, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  store i32 5, i32* %5, align 4, !tbaa !3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  store i32 16711935, i32* %2, align 4, !tbaa !3
  store i32 65538, i32* %3, align 4, !tbaa !3
  store i32 5, i32* %6, align 4, !tbaa !3
  store i32 770, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = call { i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpa.w.ph $$ac1, $2, $3\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09", "=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %16, i32 %17, i32 %14, i32 %15) #2, !srcloc !7
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, i32* %4, align 4, !tbaa !3
  store i32 %20, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = icmp eq i32 %21, %22
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = call i64 @llvm.expect.i64(i64 %26, i64 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:31:                                     ; preds = %0
  br label %32

; <label>:32:                                     ; preds = %31, %30
  %33 = load i32, i32* %5, align 4, !tbaa !3
  %34 = load i32, i32* %7, align 4, !tbaa !3
  %35 = icmp eq i32 %33, %34
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = call i64 @llvm.expect.i64(i64 %38, i64 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %32
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:43:                                     ; preds = %32
  br label %44

; <label>:44:                                     ; preds = %43, %42
  store i32 6, i32* %4, align 4, !tbaa !3
  store i32 7, i32* %5, align 4, !tbaa !3
  store i32 -65281, i32* %2, align 4, !tbaa !3
  store i32 -65534, i32* %3, align 4, !tbaa !3
  store i32 6, i32* %6, align 4, !tbaa !3
  store i32 518, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = load i32, i32* %5, align 4, !tbaa !3
  %47 = load i32, i32* %2, align 4, !tbaa !3
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = call { i32, i32 } asm "mthi  $0, $$ac1\0A\09mtlo  $1, $$ac1\0A\09dpa.w.ph $$ac1, $2, $3\0A\09mfhi  $0, $$ac1\0A\09mflo  $1, $$ac1\0A\09", "=r,=r,r,r,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %47, i32 %48, i32 %45, i32 %46) #2, !srcloc !8
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = extractvalue { i32, i32 } %49, 1
  store i32 %50, i32* %4, align 4, !tbaa !3
  store i32 %51, i32* %5, align 4, !tbaa !3
  %52 = load i32, i32* %4, align 4, !tbaa !3
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = icmp eq i32 %52, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i64 @llvm.expect.i64(i64 %57, i64 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %44
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:62:                                     ; preds = %44
  br label %63

; <label>:63:                                     ; preds = %62, %61
  %64 = load i32, i32* %5, align 4, !tbaa !3
  %65 = load i32, i32* %7, align 4, !tbaa !3
  %66 = icmp eq i32 %64, %65
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = call i64 @llvm.expect.i64(i64 %69, i64 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %63
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %75

; <label>:74:                                     ; preds = %63
  br label %75

; <label>:75:                                     ; preds = %74, %73
  %76 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #4
  %77 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #4
  %78 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4
  %79 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4
  %80 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4
  %81 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4
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
!7 = !{i32 233, i32 250, i32 280, i32 317, i32 347, i32 377}
!8 = !{i32 641, i32 658, i32 688, i32 725, i32 755, i32 785}
