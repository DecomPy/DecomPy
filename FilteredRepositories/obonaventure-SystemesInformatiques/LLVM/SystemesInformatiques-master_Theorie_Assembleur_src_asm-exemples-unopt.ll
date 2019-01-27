; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_asm-exemples.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_asm-exemples.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@g = global i32 1, align 4
@h = global i32 2, align 4
@j = common global i32 0, align 4
@k = common global i32 0, align 4
@r = common global i32 0, align 4
@l = common global i32 0, align 4
@j2 = common global i32 0, align 4
@m = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @a() #0 {
  %1 = load i32, i32* @j, align 4, !tbaa !3
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @j, align 4, !tbaa !3
  %3 = load i32, i32* @g, align 4, !tbaa !3
  %4 = load i32, i32* @h, align 4, !tbaa !3
  %5 = sub nsw i32 %3, %4
  store i32 %5, i32* @k, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cmp() #0 {
  %1 = load i32, i32* @h, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i32
  store i32 %3, i32* @r, align 4, !tbaa !3
  %4 = load i32, i32* @j, align 4, !tbaa !3
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  store i32 %6, i32* @r, align 4, !tbaa !3
  %7 = load i32, i32* @g, align 4, !tbaa !3
  %8 = load i32, i32* @h, align 4, !tbaa !3
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* @r, align 4, !tbaa !3
  %11 = load i32, i32* @j, align 4, !tbaa !3
  %12 = load i32, i32* @h, align 4, !tbaa !3
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* @r, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jump() #0 {
  %1 = load i32, i32* @j, align 4, !tbaa !3
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  store i32 1, i32* @r, align 4, !tbaa !3
  br label %4

; <label>:4:                                      ; preds = %3, %0
  %5 = load i32, i32* @j, align 4, !tbaa !3
  %6 = load i32, i32* @g, align 4, !tbaa !3
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %4
  store i32 2, i32* @r, align 4, !tbaa !3
  br label %10

; <label>:9:                                      ; preds = %4
  store i32 3, i32* @r, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* @j, align 4, !tbaa !3
  %12 = load i32, i32* @g, align 4, !tbaa !3
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  store i32 4, i32* @r, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @while_loop() #0 {
  br label %1

; <label>:1:                                      ; preds = %4, %0
  %2 = load i32, i32* @j, align 4, !tbaa !3
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @j, align 4, !tbaa !3
  %6 = sub nsw i32 %5, 3
  store i32 %6, i32* @j, align 4, !tbaa !3
  br label %1

; <label>:7:                                      ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @for_loop() #0 {
  store i32 0, i32* @j, align 4, !tbaa !3
  br label %1

; <label>:1:                                      ; preds = %8, %0
  %2 = load i32, i32* @j, align 4, !tbaa !3
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @g, align 4, !tbaa !3
  %6 = load i32, i32* @h, align 4, !tbaa !3
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* @g, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @j, align 4, !tbaa !3
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @j, align 4, !tbaa !3
  br label %1

; <label>:11:                                     ; preds = %1
  store i32 9, i32* @j, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %19, %11
  %13 = load i32, i32* @j, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* @g, align 4, !tbaa !3
  %17 = load i32, i32* @h, align 4, !tbaa !3
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* @g, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* @j, align 4, !tbaa !3
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* @j, align 4, !tbaa !3
  br label %12

; <label>:22:                                     ; preds = %12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @increase() #0 {
  %1 = load i32, i32* @g, align 4, !tbaa !3
  %2 = load i32, i32* @h, align 4, !tbaa !3
  %3 = add nsw i32 %1, %2
  store i32 %3, i32* @g, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init_g() #0 {
  store i32 1252, i32* @g, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %3, i32* @g, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sumg(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !3
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* @g, align 4, !tbaa !3
  ret void
}

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
define void @b() #0 {
  %1 = load i32, i32* @g, align 4, !tbaa !3
  %2 = load i32, i32* @j, align 4, !tbaa !3
  %3 = xor i32 %1, %2
  store i32 %3, i32* @l, align 4, !tbaa !3
  %4 = load i32, i32* @j, align 4, !tbaa !3
  %5 = load i32, i32* @k, align 4, !tbaa !3
  %6 = or i32 %4, %5
  store i32 %6, i32* @j, align 4, !tbaa !3
  %7 = load i32, i32* @l, align 4, !tbaa !3
  %8 = shl i32 %7, 6
  store i32 %8, i32* @g, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @test() #0 {
  %1 = load i32, i32* @h, align 4, !tbaa !3
  %2 = xor i32 %1, -1
  store i32 %2, i32* @h, align 4, !tbaa !3
  %3 = load i32, i32* @j, align 4, !tbaa !3
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @j, align 4, !tbaa !3
  %5 = load i32, i32* @j, align 4, !tbaa !3
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @j, align 4, !tbaa !3
  %7 = load i32, i32* @g, align 4, !tbaa !3
  %8 = load i32, i32* @h, align 4, !tbaa !3
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* @j, align 4, !tbaa !3
  %10 = load i32, i32* @g, align 4, !tbaa !3
  %11 = load i32, i32* @h, align 4, !tbaa !3
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* @j2, align 4, !tbaa !3
  %13 = load i32, i32* @g, align 4, !tbaa !3
  %14 = load i32, i32* @h, align 4, !tbaa !3
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* @k, align 4, !tbaa !3
  %16 = load i32, i32* @g, align 4, !tbaa !3
  %17 = ashr i32 %16, 4
  store i32 %17, i32* @l, align 4, !tbaa !3
  %18 = load i32, i32* @l, align 4, !tbaa !3
  %19 = shl i32 %18, 6
  store i32 %19, i32* @g, align 4, !tbaa !3
  %20 = load i32, i32* @h, align 4, !tbaa !3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %0
  %23 = load i32, i32* @g, align 4, !tbaa !3
  %24 = icmp ne i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %22, %0
  %26 = phi i1 [ false, %0 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @m, align 4, !tbaa !3
  %28 = load i32, i32* @m, align 4, !tbaa !3
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define i32 @add() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 1252, i32* %1, align 4, !tbaa !3
  %3 = load i32, i32* @g, align 4, !tbaa !3
  %4 = load i32, i32* @h, align 4, !tbaa !3
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
define i32 @factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @factorial(i32 %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i8** %1, i8*** %4, align 8, !tbaa !7
  call void @init_g()
  call void @increase()
  call void @init(i32 1252)
  call void @sumg(i32 6, i32 7)
  %5 = load i8**, i8*** %4, align 8, !tbaa !7
  %6 = getelementptr inbounds i8*, i8** %5, i64 1
  %7 = load i8*, i8** %6, align 8, !tbaa !7
  %8 = call i32 @atoi(i8* %7)
  %9 = call i32 @factorial(i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %9)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

declare i32 @atoi(i8*) #2

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
