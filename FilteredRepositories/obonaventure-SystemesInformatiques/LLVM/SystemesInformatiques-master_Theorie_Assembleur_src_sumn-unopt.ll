; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumn.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumn.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@g = global i32 0, align 4
@h = global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @sumn_iter(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 0, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %17, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #2
  br label %20

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #2
  ret i32 %21
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sumn(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %7, i32* %2, align 4
  br label %14

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @sumn(i32 %11)
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %8, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %6 = call i32 @sumn(i32 3)
  store i32 %6, i32* @g, align 4, !tbaa !3
  %7 = call i32 @sumn_iter(i32 3)
  store i32 %7, i32* @h, align 4, !tbaa !3
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
