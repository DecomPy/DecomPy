; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_scanf-clobbers-adjacent-var.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_scanf-clobbers-adjacent-var.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c"Win!\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Lose.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Play again? \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Wins: %d\09Losses: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @play_game() #0 {
  %1 = call i32 @rand()
  %2 = srem i32 %1, 2
  ret i32 %2
}

declare i32 @rand() #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %29, %0
  %8 = call i32 @play_game()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4, !tbaa !3
  br label %18

; <label>:14:                                     ; preds = %7
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %14, %10
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  %20 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %2)
  br label %21

; <label>:21:                                     ; preds = %18
  %22 = load i8, i8* %2, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 121
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %21
  %26 = load i8, i8* %2, align 1, !tbaa !7
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 89
  br label %29

; <label>:29:                                     ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  br i1 %30, label %7, label %31

; <label>:31:                                     ; preds = %29
  %32 = load i32, i32* %3, align 4, !tbaa !3
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %32, i32 %33)
  store i32 0, i32* %1, align 4
  %35 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #3
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
