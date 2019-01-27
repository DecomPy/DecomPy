; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_logic.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_openrisc_test_logic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"sll error\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"slli error\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"srli error\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ror error\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rori error\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sra error\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"srai error\0A\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 38723, i32* %3, align 4, !tbaa !3
  store i32 2, i32* %4, align 4, !tbaa !3
  store i32 154892, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = call i32 asm "l.sll    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %11, i32 %12) #4, !srcloc !7
  store i32 %13, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:19:                                     ; preds = %0
  store i32 38723, i32* %3, align 4, !tbaa !3
  store i32 154892, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = call i32 asm "l.slli   $0, $1, 0x2\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %20) #4, !srcloc !8
  store i32 %21, i32* %2, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %19
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:27:                                     ; preds = %19
  store i32 30292, i32* %3, align 4, !tbaa !3
  store i32 3, i32* %4, align 4, !tbaa !3
  store i32 3786, i32* %5, align 4, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = call i32 asm "l.srl    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %28, i32 %29) #4, !srcloc !9
  store i32 %30, i32* %2, align 4, !tbaa !3
  store i32 30292, i32* %3, align 4, !tbaa !3
  store i32 3786, i32* %5, align 4, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = call i32 asm "l.srli   $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %31) #4, !srcloc !10
  store i32 %32, i32* %2, align 4, !tbaa !3
  %33 = load i32, i32* %2, align 4, !tbaa !3
  %34 = load i32, i32* %5, align 4, !tbaa !3
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:38:                                     ; preds = %27
  store i32 -2147483647, i32* %3, align 4, !tbaa !3
  store i32 4, i32* %4, align 4, !tbaa !3
  store i32 402653184, i32* %5, align 4, !tbaa !3
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = load i32, i32* %4, align 4, !tbaa !3
  %41 = call i32 asm "l.ror    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %39, i32 %40) #4, !srcloc !11
  store i32 %41, i32* %2, align 4, !tbaa !3
  %42 = load i32, i32* %2, align 4, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !3
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %38
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:47:                                     ; preds = %38
  store i32 -2147483647, i32* %3, align 4, !tbaa !3
  store i32 402653184, i32* %5, align 4, !tbaa !3
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = call i32 asm "l.rori   $0, $1, 0x4\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %48) #4, !srcloc !12
  store i32 %49, i32* %2, align 4, !tbaa !3
  %50 = load i32, i32* %2, align 4, !tbaa !3
  %51 = load i32, i32* %5, align 4, !tbaa !3
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:55:                                     ; preds = %47
  store i32 -2147483647, i32* %3, align 4, !tbaa !3
  store i32 3, i32* %4, align 4, !tbaa !3
  store i32 -268435456, i32* %5, align 4, !tbaa !3
  %56 = load i32, i32* %3, align 4, !tbaa !3
  %57 = load i32, i32* %4, align 4, !tbaa !3
  %58 = call i32 asm "l.sra    $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %56, i32 %57) #4, !srcloc !13
  store i32 %58, i32* %2, align 4, !tbaa !3
  %59 = load i32, i32* %2, align 4, !tbaa !3
  %60 = load i32, i32* %5, align 4, !tbaa !3
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %55
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:64:                                     ; preds = %55
  store i32 -2147483647, i32* %3, align 4, !tbaa !3
  store i32 -268435456, i32* %5, align 4, !tbaa !3
  %65 = load i32, i32* %3, align 4, !tbaa !3
  %66 = call i32 asm "l.srai   $0, $1, 0x3\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %65) #4, !srcloc !14
  store i32 %66, i32* %2, align 4, !tbaa !3
  %67 = load i32, i32* %2, align 4, !tbaa !3
  %68 = load i32, i32* %5, align 4, !tbaa !3
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %64
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:72:                                     ; preds = %64
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

; <label>:73:                                     ; preds = %72, %70, %62, %53, %45, %36, %25, %17
  %74 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3
  %75 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3
  %76 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  %77 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 139, i32 161}
!8 = !{i32 342, i32 365}
!9 = !{i32 551, i32 573}
!10 = !{i32 673, i32 696}
!11 = !{i32 890, i32 912}
!12 = !{i32 1100, i32 1123}
!13 = !{i32 1318, i32 1340}
!14 = !{i32 1528, i32 1551}
