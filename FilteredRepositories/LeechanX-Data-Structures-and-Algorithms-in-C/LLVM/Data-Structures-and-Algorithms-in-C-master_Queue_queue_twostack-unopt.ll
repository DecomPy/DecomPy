; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Queue_queue_twostack.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Queue_queue_twostack.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@sp_one = global i32 -1, align 4
@stack_one = common global [100 x i32] zeroinitializer, align 16
@sp_two = global i32 -1, align 4
@stack_two = common global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"Full!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Queue empty.\0A\00", align 1
@main.data = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @push_one(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* @sp_one, align 4, !tbaa !3
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @sp_one, align 4, !tbaa !3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_one, i64 0, i64 %6
  store i32 %3, i32* %7, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @pop_one() #0 {
  %1 = load i32, i32* @sp_one, align 4, !tbaa !3
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp_one, align 4, !tbaa !3
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_one, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !3
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @empty_one() #0 {
  %1 = load i32, i32* @sp_one, align 4, !tbaa !3
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @full_one() #0 {
  %1 = load i32, i32* @sp_one, align 4, !tbaa !3
  %2 = icmp eq i32 %1, 99
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define void @push_two(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* @sp_two, align 4, !tbaa !3
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @sp_two, align 4, !tbaa !3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_two, i64 0, i64 %6
  store i32 %3, i32* %7, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @pop_two() #0 {
  %1 = load i32, i32* @sp_two, align 4, !tbaa !3
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp_two, align 4, !tbaa !3
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_two, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !3
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @empty_two() #0 {
  %1 = load i32, i32* @sp_two, align 4, !tbaa !3
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @full_two() #0 {
  %1 = load i32, i32* @sp_two, align 4, !tbaa !3
  %2 = icmp eq i32 %1, 99
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define void @enqueue(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = call i32 @full_queue()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  br label %26

; <label>:7:                                      ; preds = %1
  %8 = call i32 @full_one()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %2, align 4, !tbaa !3
  call void @push_one(i32 %11)
  br label %26

; <label>:12:                                     ; preds = %7
  br label %13

; <label>:13:                                     ; preds = %22, %12
  %14 = call i32 @full_two()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  %17 = call i32 @empty_one()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

; <label>:20:                                     ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %20
  %23 = call i32 @pop_one()
  call void @push_two(i32 %23)
  br label %13

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %2, align 4, !tbaa !3
  call void @push_one(i32 %25)
  br label %26

; <label>:26:                                     ; preds = %5, %24, %10
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @dequeue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = call i32 @empty_two()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %0
  br label %8

; <label>:8:                                      ; preds = %12, %7
  %9 = call i32 @empty_one()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %8
  %13 = call i32 @pop_one()
  store i32 %13, i32* %2, align 4, !tbaa !3
  %14 = load i32, i32* %2, align 4, !tbaa !3
  call void @push_two(i32 %14)
  br label %8

; <label>:15:                                     ; preds = %8
  br label %16

; <label>:16:                                     ; preds = %15, %0
  %17 = call i32 @empty_two()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %25

; <label>:21:                                     ; preds = %16
  %22 = call i32 @pop_two()
  store i32 %22, i32* %2, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %24, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %23, %19
  %26 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define i32 @empty_queue() #0 {
  %1 = call i32 @empty_one()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = call i32 @empty_two()
  %5 = icmp ne i32 %4, 0
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @full_queue() #0 {
  %1 = call i32 @full_one()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = call i32 @full_two()
  %5 = icmp ne i32 %4, 0
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %9 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %9) #3
  %10 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x i32]* @main.data to i8*), i64 40, i1 false)
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 10, i32* %7, align 4, !tbaa !3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %16, %2
  %14 = load i32, i32* %8, align 4, !tbaa !3
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %8, align 4, !tbaa !3
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4, !tbaa !3
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !3
  call void @enqueue(i32 %21)
  br label %13

; <label>:22:                                     ; preds = %13
  br label %23

; <label>:23:                                     ; preds = %27, %22
  %24 = call i32 @empty_queue()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = call i32 @dequeue()
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  br label %23

; <label>:30:                                     ; preds = %23
  br label %31

; <label>:31:                                     ; preds = %35, %30
  %32 = load i32, i32* %8, align 4, !tbaa !3
  %33 = load i32, i32* %7, align 4, !tbaa !3
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %8, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4, !tbaa !3
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !3
  call void @enqueue(i32 %40)
  br label %31

; <label>:41:                                     ; preds = %31
  br label %42

; <label>:42:                                     ; preds = %46, %41
  %43 = call i32 @empty_queue()
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %42
  %47 = call i32 @dequeue()
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %47)
  br label %42

; <label>:49:                                     ; preds = %42
  %50 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %52) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
