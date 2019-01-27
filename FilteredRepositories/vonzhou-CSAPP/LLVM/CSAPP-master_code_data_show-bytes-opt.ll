; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_code_data_show-bytes.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_code_data_show-bytes.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"For x = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"calling test_show_bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"calling show_twocomp\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Calling simple_show_a\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Calling simple_show_b\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Calling float_eg\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Calling string_ueg\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Calling string_leg\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @show_bytes(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

; <label>:21:                                     ; preds = %6
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @show_int(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = bitcast i32* %2 to i8*
  call void @show_bytes(i8* %3, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @show_float(float) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = bitcast float* %2 to i8*
  call void @show_bytes(i8* %3, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @show_pointer(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = bitcast i8** %2 to i8*
  call void @show_bytes(i8* %3, i32 8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @test_show_bytes(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to float
  store float %8, float* %4, align 4
  store i32* %3, i32** %5, align 8
  %9 = load i32, i32* %3, align 4
  call void @show_int(i32 %9)
  %10 = load float, float* %4, align 4
  call void @show_float(float %10)
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8*
  call void @show_pointer(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @simple_show_a() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 -2023406815, i32* %1, align 4
  %3 = bitcast i32* %1 to i8*
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %4, i32 1)
  %5 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %5, i32 2)
  %6 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %6, i32 3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @simple_show_b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 305419896, i32* %1, align 4
  %3 = bitcast i32* %1 to i8*
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %4, i32 1)
  %5 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %5, i32 2)
  %6 = load i8*, i8** %2, align 8
  call void @show_bytes(i8* %6, i32 3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @float_eg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 3490593, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = sitofp i32 %3 to float
  store float %4, float* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  %7 = load i32, i32* %1, align 4
  call void @show_int(i32 %7)
  %8 = load float, float* %2, align 4
  call void @show_float(float %8)
  store i32 3510593, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sitofp i32 %9 to float
  store float %10, float* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %11)
  %13 = load i32, i32* %1, align 4
  call void @show_int(i32 %13)
  %14 = load float, float* %2, align 4
  call void @show_float(float %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @string_ueg() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = trunc i64 %4 to i32
  call void @show_bytes(i8* %2, i32 %5)
  ret void
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @string_leg() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = trunc i64 %4 to i32
  call void @show_bytes(i8* %2, i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @show_twocomp() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 12345, i16* %1, align 2
  %3 = load i16, i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = sub nsw i32 0, %4
  %6 = trunc i32 %5 to i16
  store i16 %6, i16* %2, align 2
  %7 = bitcast i16* %1 to i8*
  call void @show_bytes(i8* %7, i32 2)
  %8 = bitcast i16* %2 to i8*
  call void @show_bytes(i8* %8, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 12345, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %9
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strtol(i8* %15, i8** null, i32 0)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %12, %9
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %20 = load i32, i32* %6, align 4
  call void @test_show_bytes(i32 %20)
  br label %28

; <label>:21:                                     ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  call void @show_twocomp()
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  call void @simple_show_a()
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  call void @simple_show_b()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  call void @float_eg()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  call void @string_ueg()
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  call void @string_leg()
  br label %28

; <label>:28:                                     ; preds = %21, %18
  ret i32 0
}

declare i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
