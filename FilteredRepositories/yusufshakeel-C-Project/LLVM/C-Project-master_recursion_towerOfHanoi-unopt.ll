; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_recursion_towerOfHanoi.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_recursion_towerOfHanoi.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [7 x i8] c"Moves\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%c --> %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  call void @t(i32 3, i8 signext 97, i8 signext 98, i8 signext 99)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @t(i32, i8 signext, i8 signext, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i8 %1, i8* %6, align 1, !tbaa !7
  store i8 %2, i8* %7, align 1, !tbaa !7
  store i8 %3, i8* %8, align 1, !tbaa !7
  %9 = load i32, i32* %5, align 4, !tbaa !3
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %4
  %12 = load i8, i8* %6, align 1, !tbaa !7
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %8, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %13, i32 %15)
  br label %31

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = sub nsw i32 %18, 1
  %20 = load i8, i8* %6, align 1, !tbaa !7
  %21 = load i8, i8* %8, align 1, !tbaa !7
  %22 = load i8, i8* %7, align 1, !tbaa !7
  call void @t(i32 %19, i8 signext %20, i8 signext %21, i8 signext %22)
  %23 = load i8, i8* %6, align 1, !tbaa !7
  %24 = load i8, i8* %7, align 1, !tbaa !7
  %25 = load i8, i8* %8, align 1, !tbaa !7
  call void @t(i32 1, i8 signext %23, i8 signext %24, i8 signext %25)
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = sub nsw i32 %26, 1
  %28 = load i8, i8* %7, align 1, !tbaa !7
  %29 = load i8, i8* %6, align 1, !tbaa !7
  %30 = load i8, i8* %8, align 1, !tbaa !7
  call void @t(i32 %27, i8 signext %28, i8 signext %29, i8 signext %30)
  br label %31

; <label>:31:                                     ; preds = %17, %11
  ret void
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
