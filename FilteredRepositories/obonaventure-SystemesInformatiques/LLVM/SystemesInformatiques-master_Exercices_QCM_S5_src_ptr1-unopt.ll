; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr1.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global i32 1, align 4
@b = global i32 2, align 4
@c = global i32 3, align 4
@ptr = common global i32* null, align 8

; Function Attrs: nounwind ssp uwtable
define void @f1() #0 {
  store i32* @a, i32** @ptr, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f3() #0 {
  %1 = load i32, i32* @a, align 4, !tbaa !7
  %2 = load i32*, i32** @ptr, align 8, !tbaa !3
  store i32 %1, i32* %2, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f4() #0 {
  %1 = load i32, i32* @a, align 4, !tbaa !7
  %2 = sext i32 %1 to i64
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** @ptr, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f5() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  %3 = load i32, i32* @a, align 4, !tbaa !7
  store i32 %3, i32* %1, align 4, !tbaa !7
  store i32* %1, i32** @ptr, align 8, !tbaa !3
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @f6() #0 {
  store i32* getelementptr inbounds (i32, i32* @a, i64 1), i32** @ptr, align 8, !tbaa !3
  ret void
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
