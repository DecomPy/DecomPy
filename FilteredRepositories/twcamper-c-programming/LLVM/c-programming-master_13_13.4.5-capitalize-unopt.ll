; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.5-capitalize.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.4.5-capitalize.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.s = private unnamed_addr constant [33 x i8] c"what is wrong with you, lucille?\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"before:\0B%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"after:\0B%s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [33 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [33 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 33, i8* %3) #4
  %4 = bitcast [33 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([33 x i8], [33 x i8]* @main.s, i32 0, i32 0), i64 33, i1 false)
  %5 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i32 0, i32 0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %5)
  %7 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i32 0, i32 0
  call void @capitalize(i8* %7)
  %8 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i32 0, i32 0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  %10 = bitcast [33 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 33, i8* %10) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @capitalize(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4
  %5 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %5, i8** %3, align 8, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %18, %1
  %7 = load i8*, i8** %3, align 8, !tbaa !3
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %3, align 8, !tbaa !3
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  %15 = call i32 @toupper(i32 %14) #5
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8, !tbaa !3
  store i8 %16, i8* %17, align 1, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %3, align 8, !tbaa !3
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8, !tbaa !3
  br label %6

; <label>:21:                                     ; preds = %6
  %22 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

declare i32 @__toupper(i32) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
