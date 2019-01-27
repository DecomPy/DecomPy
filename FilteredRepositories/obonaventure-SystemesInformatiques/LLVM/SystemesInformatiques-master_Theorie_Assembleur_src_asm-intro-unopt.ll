; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_asm-intro.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_asm-intro.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@global_int = global i32 1, align 4
@global_i = global i32 1, align 4
@global_j = global i32 1, align 4
@global_float = global float 1.000000e+00, align 4
@global_char = global i8 99, align 1
@.str = private unnamed_addr constant [11 x i8] c"while0=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"add=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sumn(3)=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @add() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = load i32, i32* @global_i, align 4, !tbaa !3
  %4 = load i32, i32* @global_j, align 4, !tbaa !3
  %5 = add nsw i32 %3, %4
  store i32 %5, i32* %1, align 4, !tbaa !3
  %6 = load i32, i32* %1, align 4, !tbaa !3
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3
  ret i32 %6
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sum(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !3
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @sumn(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @sumn(i32 %9)
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* %2, align 4
  br label %14

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %13, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %12, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @while_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 1, i32* %1, align 4, !tbaa !3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 17, i32* %2, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %9, %0
  %6 = load i32, i32* %1, align 4, !tbaa !3
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !tbaa !3
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %1, align 4, !tbaa !3
  br label %5

; <label>:12:                                     ; preds = %5
  %13 = load i32, i32* %1, align 4, !tbaa !3
  %14 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 1, i32* %6, align 4, !tbaa !3
  %10 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store float 1.000000e+00, float* %7, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #3
  store i8 99, i8* %8, align 1, !tbaa !11
  %11 = call i32 @while_loop()
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %11)
  %13 = call i32 @add()
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  %15 = call i32 @sumn(i32 3)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %8) #3
  %17 = bitcast float* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!5, !5, i64 0}
