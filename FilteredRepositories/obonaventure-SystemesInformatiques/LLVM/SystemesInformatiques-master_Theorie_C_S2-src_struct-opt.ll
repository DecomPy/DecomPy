; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_struct.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_struct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.coord = type { i32, i32, i32 }
%struct.fraction = type { i32, i32 }
%struct.student = type { i32, [20 x i8], [30 x i8] }

@point = global %struct.coord { i32 1, i32 2, i32 3 }, align 4
@demi = global %struct.fraction { i32 1, i32 2 }, align 4
@s = global %struct.student { i32 1, [20 x i8] c"Linus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"Torvalds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str = private unnamed_addr constant [23 x i8] c"equal(tiers,quart)=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"equalptr(&tiers,&quart)=%d\0A\00", align 1
@f = common global %struct.fraction zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"sizeof int[3]=%ld, sizeof coord=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"sizeof student : %ld\0A\00", align 1
@p = common global %struct.coord zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @init(i32, i32) #0 {
  %3 = alloca %struct.fraction, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.fraction, %struct.fraction* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.fraction, %struct.fraction* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.fraction* %3 to i64*
  %11 = load i64, i64* %10, align 4
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @equal(i64, i64) #0 {
  %3 = alloca %struct.fraction, align 4
  %4 = alloca %struct.fraction, align 4
  %5 = bitcast %struct.fraction* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.fraction* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.fraction, %struct.fraction* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.fraction, %struct.fraction* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.fraction, %struct.fraction* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.fraction, %struct.fraction* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

; <label>:18:                                     ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @equalptr(%struct.fraction*, %struct.fraction*) #0 {
  %3 = alloca %struct.fraction*, align 8
  %4 = alloca %struct.fraction*, align 8
  store %struct.fraction* %0, %struct.fraction** %3, align 8
  store %struct.fraction* %1, %struct.fraction** %4, align 8
  %5 = load %struct.fraction*, %struct.fraction** %3, align 8
  %6 = getelementptr inbounds %struct.fraction, %struct.fraction* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fraction*, %struct.fraction** %4, align 8
  %9 = getelementptr inbounds %struct.fraction, %struct.fraction* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %2
  %13 = load %struct.fraction*, %struct.fraction** %3, align 8
  %14 = getelementptr inbounds %struct.fraction, %struct.fraction* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fraction*, %struct.fraction** %4, align 8
  %17 = getelementptr inbounds %struct.fraction, %struct.fraction* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

; <label>:20:                                     ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initptr(%struct.fraction*, i32, i32) #0 {
  %4 = alloca %struct.fraction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fraction* %0, %struct.fraction** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.fraction*, %struct.fraction** %4, align 8
  %9 = getelementptr inbounds %struct.fraction, %struct.fraction* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.fraction*, %struct.fraction** %4, align 8
  %12 = getelementptr inbounds %struct.fraction, %struct.fraction* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.fraction, align 4
  %8 = alloca %struct.fraction, align 4
  %9 = alloca %struct.fraction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.coord, %struct.coord* @point, i32 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.coord, %struct.coord* @point, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.coord, %struct.coord* @point, i32 0, i32 2), align 4
  %11 = call i64 @init(i32 1, i32 4)
  %12 = bitcast %struct.fraction* %9 to i64*
  store i64 %11, i64* %12, align 4
  %13 = bitcast %struct.fraction* %7 to i8*
  %14 = bitcast %struct.fraction* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  call void @initptr(%struct.fraction* %8, i32 1, i32 3)
  %15 = bitcast %struct.fraction* %8 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = bitcast %struct.fraction* %7 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @equal(i64 %16, i64 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %19)
  %21 = call i32 @equalptr(%struct.fraction* %8, %struct.fraction* %7)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %21)
  store i32 1, i32* getelementptr inbounds (%struct.fraction, %struct.fraction* @f, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.fraction, %struct.fraction* @f, i32 0, i32 1), align 4
  %23 = load i8, i8* getelementptr inbounds (%struct.student, %struct.student* @s, i32 0, i32 1, i64 2), align 2
  %24 = sext i8 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i64 12, i64 12)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 56)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
