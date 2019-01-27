; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Hungary.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Hungary.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Node = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%d,%d)=>(%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"counter=%d\0A\00", align 1
@main.pset = private unnamed_addr constant [10 x %struct.Node] [%struct.Node { i32 5, i32 2 }, %struct.Node { i32 4, i32 1 }, %struct.Node { i32 5, i32 2 }, %struct.Node { i32 2, i32 1 }, %struct.Node { i32 2, i32 3 }, %struct.Node { i32 1, i32 2 }, %struct.Node { i32 5, i32 3 }, %struct.Node { i32 4, i32 5 }, %struct.Node { i32 2, i32 6 }, %struct.Node { i32 2, i32 2 }], align 16
@main.qset = private unnamed_addr constant [10 x %struct.Node] [%struct.Node { i32 3, i32 5 }, %struct.Node { i32 1, i32 1 }, %struct.Node { i32 5, i32 3 }, %struct.Node { i32 2, i32 3 }, %struct.Node { i32 2, i32 4 }, %struct.Node { i32 4, i32 1 }, %struct.Node { i32 3, i32 1 }, %struct.Node { i32 1, i32 3 }, %struct.Node { i32 3, i32 2 }, %struct.Node { i32 3, i32 2 }], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @available(%struct.Node*, %struct.Node*) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %3, align 8
  store %struct.Node* %1, %struct.Node** %4, align 8
  %5 = load %struct.Node*, %struct.Node** %3, align 8
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.Node*, %struct.Node** %4, align 8
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %2
  %13 = load %struct.Node*, %struct.Node** %3, align 8
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Node*, %struct.Node** %4, align 8
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br label %20

; <label>:20:                                     ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @showresult(i32*, %struct.Node*, i32, %struct.Node*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Node*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.Node* %1, %struct.Node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.Node* %3, %struct.Node** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %56, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

; <label>:14:                                     ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %55

; <label>:21:                                     ; preds = %14
  %22 = load %struct.Node*, %struct.Node** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Node, %struct.Node* %22, i64 %28
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.Node*, %struct.Node** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %38
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.Node*, %struct.Node** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Node, %struct.Node* %42, i64 %44
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.Node*, %struct.Node** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %48, i64 %50
  %52 = getelementptr inbounds %struct.Node, %struct.Node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %31, i32 %41, i32 %47, i32 %53)
  br label %55

; <label>:55:                                     ; preds = %21, %14
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %10

; <label>:59:                                     ; preds = %10
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @findout(i32*, %struct.Node*, %struct.Node*, i32, i32*, i32, i32) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Node*, align 8
  %11 = alloca %struct.Node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.Node* %1, %struct.Node** %10, align 8
  store %struct.Node* %2, %struct.Node** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  store i32 %18, i32* %17, align 4
  br label %19

; <label>:19:                                     ; preds = %68, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %71

; <label>:23:                                     ; preds = %19
  %24 = load %struct.Node*, %struct.Node** %10, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 %26
  %28 = load %struct.Node*, %struct.Node** %11, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 %30
  %32 = call i32 @available(%struct.Node* %27, %struct.Node* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

; <label>:34:                                     ; preds = %23
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 1, i32* %38, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %60, label %45

; <label>:45:                                     ; preds = %34
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.Node*, %struct.Node** %10, align 8
  %48 = load %struct.Node*, %struct.Node** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @findout(i32* %46, %struct.Node* %47, %struct.Node* %48, i32 %49, i32* %50, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %45, %34
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  store i32 1, i32* %8, align 4
  br label %72

; <label>:66:                                     ; preds = %45
  br label %67

; <label>:67:                                     ; preds = %66, %23
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %19

; <label>:71:                                     ; preds = %19
  store i32 0, i32* %8, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %60
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hungary(%struct.Node*, i32, %struct.Node*, i32) #0 {
  %5 = alloca %struct.Node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Node* %0, %struct.Node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.Node* %2, %struct.Node** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = bitcast i32* %18 to i8*
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = bitcast i32* %18 to i8*
  %27 = call i64 @llvm.objectsize.i64.p0i8(i8* %26, i1 false, i1 true)
  %28 = call i8* @__memset_chk(i8* %22, i32 0, i64 %25, i64 %27) #2
  store i32 0, i32* %13, align 4
  br label %29

; <label>:29:                                     ; preds = %37, %4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %21, i64 %35
  store i32 -1, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %29

; <label>:40:                                     ; preds = %29
  store i32 0, i32* %14, align 4
  br label %41

; <label>:41:                                     ; preds = %56, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

; <label>:45:                                     ; preds = %41
  %46 = load %struct.Node*, %struct.Node** %5, align 8
  %47 = load %struct.Node*, %struct.Node** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @findout(i32* %21, %struct.Node* %46, %struct.Node* %47, i32 %48, i32* %18, i32 %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

; <label>:55:                                     ; preds = %52, %45
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %41

; <label>:59:                                     ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %60)
  %62 = load %struct.Node*, %struct.Node** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.Node*, %struct.Node** %7, align 8
  call void @showresult(i32* %21, %struct.Node* %62, i32 %63, %struct.Node* %64)
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca [10 x %struct.Node], align 16
  %2 = alloca [10 x %struct.Node], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [10 x %struct.Node]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([10 x %struct.Node]* @main.pset to i8*), i64 80, i1 false)
  %6 = bitcast [10 x %struct.Node]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([10 x %struct.Node]* @main.qset to i8*), i64 80, i1 false)
  store i32 10, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %7 = getelementptr inbounds [10 x %struct.Node], [10 x %struct.Node]* %1, i32 0, i32 0
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [10 x %struct.Node], [10 x %struct.Node]* %2, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  call void @hungary(%struct.Node* %7, i32 %8, %struct.Node* %9, i32 %10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
