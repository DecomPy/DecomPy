; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex35_ex35.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex35_ex35.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Variant = type { i32, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"INT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FLOAT: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"STRING: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"UNKNOWN TYPE: %d\00", align 1
@main.a_int = private unnamed_addr constant { i32, [4 x i8], { i32, [4 x i8] } } { i32 0, [4 x i8] undef, { i32, [4 x i8] } { i32 100, [4 x i8] undef } }, align 8
@main.a_float = private unnamed_addr constant { i32, [4 x i8], { float, [4 x i8] } } { i32 1, [4 x i8] undef, { float, [4 x i8] } { float 0x405915C280000000, [4 x i8] undef } }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"YO DUDE!\00", align 1
@main.a_string = private unnamed_addr constant %struct.Variant { i32 2, %union.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0) } }, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"Hi there.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Variant_print(%struct.Variant*) #0 {
  %2 = alloca %struct.Variant*, align 8
  store %struct.Variant* %0, %struct.Variant** %2, align 8
  %3 = load %struct.Variant*, %struct.Variant** %2, align 8
  %4 = getelementptr inbounds %struct.Variant, %struct.Variant* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %25 [
    i32 0, label %6
    i32 1, label %12
    i32 2, label %19
  ]

; <label>:6:                                      ; preds = %1
  %7 = load %struct.Variant*, %struct.Variant** %2, align 8
  %8 = getelementptr inbounds %struct.Variant, %struct.Variant* %7, i32 0, i32 1
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %10)
  br label %30

; <label>:12:                                     ; preds = %1
  %13 = load %struct.Variant*, %struct.Variant** %2, align 8
  %14 = getelementptr inbounds %struct.Variant, %struct.Variant* %13, i32 0, i32 1
  %15 = bitcast %union.anon* %14 to float*
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), double %17)
  br label %30

; <label>:19:                                     ; preds = %1
  %20 = load %struct.Variant*, %struct.Variant** %2, align 8
  %21 = getelementptr inbounds %struct.Variant, %struct.Variant* %20, i32 0, i32 1
  %22 = bitcast %union.anon* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %23)
  br label %30

; <label>:25:                                     ; preds = %1
  %26 = load %struct.Variant*, %struct.Variant** %2, align 8
  %27 = getelementptr inbounds %struct.Variant, %struct.Variant* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %28)
  br label %30

; <label>:30:                                     ; preds = %25, %19, %12, %6
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Variant, align 8
  %7 = alloca %struct.Variant, align 8
  %8 = alloca %struct.Variant, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.Variant* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast ({ i32, [4 x i8], { i32, [4 x i8] } }* @main.a_int to i8*), i64 16, i1 false)
  %10 = bitcast %struct.Variant* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast ({ i32, [4 x i8], { float, [4 x i8] } }* @main.a_float to i8*), i64 16, i1 false)
  %11 = bitcast %struct.Variant* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.Variant* @main.a_string to i8*), i64 16, i1 false)
  call void @Variant_print(%struct.Variant* %6)
  call void @Variant_print(%struct.Variant* %7)
  call void @Variant_print(%struct.Variant* %8)
  %12 = getelementptr inbounds %struct.Variant, %struct.Variant* %6, i32 0, i32 1
  %13 = bitcast %union.anon* %12 to i32*
  store i32 200, i32* %13, align 8
  %14 = getelementptr inbounds %struct.Variant, %struct.Variant* %7, i32 0, i32 1
  %15 = bitcast %union.anon* %14 to float*
  store float 0x4002C28F60000000, float* %15, align 8
  %16 = getelementptr inbounds %struct.Variant, %struct.Variant* %8, i32 0, i32 1
  %17 = bitcast %union.anon* %16 to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %17, align 8
  call void @Variant_print(%struct.Variant* %6)
  call void @Variant_print(%struct.Variant* %7)
  call void @Variant_print(%struct.Variant* %8)
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
