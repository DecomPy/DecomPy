; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_time-converter.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_time-converter.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.meridian = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"Enter a 24-hour time: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Equivalent 12-hour time: %d:%.2d %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8], align 1
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %7) #3
  %8 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @main.meridian, i32 0, i32 0), i64 3, i1 false)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %2, i32* %3)
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = icmp sge i32 %11, 12
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %0
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  store i8 80, i8* %14, align 1, !tbaa !7
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = sub nsw i32 %15, 12
  store i32 %16, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %13, %0
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 12, i32* %2, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %20, %17
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i32 0, i32 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %22, i32 %23, i8* %24)
  %26 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %26) #3
  %27 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
