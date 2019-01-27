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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @push_one(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @sp_one, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @sp_one, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_one, i64 0, i64 %6
  store i32 %3, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pop_one() #0 {
  %1 = load i32, i32* @sp_one, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp_one, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_one, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @empty_one() #0 {
  %1 = load i32, i32* @sp_one, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @full_one() #0 {
  %1 = load i32, i32* @sp_one, align 4
  %2 = icmp eq i32 %1, 99
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @push_two(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @sp_two, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @sp_two, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_two, i64 0, i64 %6
  store i32 %3, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pop_two() #0 {
  %1 = load i32, i32* @sp_two, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp_two, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* @stack_two, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @empty_two() #0 {
  %1 = load i32, i32* @sp_two, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @full_two() #0 {
  %1 = load i32, i32* @sp_two, align 4
  %2 = icmp eq i32 %1, 99
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @enqueue(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
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
  %11 = load i32, i32* %2, align 4
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
  %25 = load i32, i32* %2, align 4
  call void @push_one(i32 %25)
  br label %26

; <label>:26:                                     ; preds = %5, %24, %10
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @dequeue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @empty_two()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %0
  br label %6

; <label>:6:                                      ; preds = %10, %5
  %7 = call i32 @empty_one()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %6
  %11 = call i32 @pop_one()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  call void @push_two(i32 %12)
  br label %6

; <label>:13:                                     ; preds = %6
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = call i32 @empty_two()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %23

; <label>:19:                                     ; preds = %14
  %20 = call i32 @pop_two()
  store i32 %20, i32* %2, align 4
  br label %21

; <label>:21:                                     ; preds = %19
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([10 x i32]* @main.data to i8*), i64 40, i1 false)
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %13, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  call void @enqueue(i32 %18)
  br label %10

; <label>:19:                                     ; preds = %10
  br label %20

; <label>:20:                                     ; preds = %24, %19
  %21 = call i32 @empty_queue()
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  %25 = call i32 @dequeue()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %20

; <label>:27:                                     ; preds = %20
  br label %28

; <label>:28:                                     ; preds = %32, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  call void @enqueue(i32 %37)
  br label %28

; <label>:38:                                     ; preds = %28
  br label %39

; <label>:39:                                     ; preds = %43, %38
  %40 = call i32 @empty_queue()
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %39
  %44 = call i32 @dequeue()
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %44)
  br label %39

; <label>:46:                                     ; preds = %39
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
