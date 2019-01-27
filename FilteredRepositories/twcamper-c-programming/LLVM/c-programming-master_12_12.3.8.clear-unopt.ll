; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.8.clear.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.8.clear.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @store_zeroes(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = load i32*, i32** %3, align 8, !tbaa !3
  store i32* %7, i32** %5, align 8, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %17, %2
  %9 = load i32*, i32** %5, align 8, !tbaa !3
  %10 = load i32*, i32** %3, align 8, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = icmp ult i32* %9, %13
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %8
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 0, i32* %16, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %15
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8, !tbaa !3
  br label %8

; <label>:20:                                     ; preds = %8
  %21 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [76 x i32], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [76 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 304, i8* %3) #2
  %4 = getelementptr inbounds [76 x i32], [76 x i32]* %2, i32 0, i32 0
  call void @store_zeroes(i32* %4, i32 76)
  %5 = bitcast [76 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 304, i8* %5) #2
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
