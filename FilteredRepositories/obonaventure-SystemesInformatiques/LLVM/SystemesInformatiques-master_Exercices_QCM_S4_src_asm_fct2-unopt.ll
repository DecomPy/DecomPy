; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_fct2.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_fct2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global i32 1, align 4
@b = global i32 2, align 4
@c = global i32 3, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @f1(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* @a, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4, !tbaa !3
  %5 = sub nsw i32 %4, 1
  %6 = call i32 @f1(i32 %5)
  %7 = add nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @f2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = sub nsw i32 %5, 1
  %7 = call i32 @f2(i32 %6)
  store i32 %7, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* @a, align 4, !tbaa !3
  %10 = add nsw i32 %8, %9
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @f3(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* @a, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4, !tbaa !3
  %5 = call i32 @f3(i32 %4)
  %6 = add nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @f4(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* @a, align 4, !tbaa !3
  %5 = add nsw i32 %3, %4
  %6 = call i32 @f4(i32 %5)
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @f5(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = sub nsw i32 %5, 1
  %7 = call i32 @f5(i32 %6)
  store i32 %7, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* @a, align 4, !tbaa !3
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define signext i8 @f6(i8 signext) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !7
  %3 = load i32, i32* @a, align 4, !tbaa !3
  %4 = load i8, i8* %2, align 1, !tbaa !7
  %5 = sext i8 %4 to i32
  %6 = sub nsw i32 %5, 1
  %7 = trunc i32 %6 to i8
  %8 = call signext i8 @f6(i8 signext %7)
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %3, %9
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
