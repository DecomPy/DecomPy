; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_20_20.1-exercises.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_20_20.1-exercises.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [23 x i8] c"ex 1a) Precedence! %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ex 1b) %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ex 1c) %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"   ==) %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ex 1d) %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0AEx. 2\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.4X\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Red: %.4X\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Blue: %.4X\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Green: %.4X\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ex_1() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 0, i16* %3, align 2
  store i16 8, i16* %1, align 2
  store i16 9, i16* %2, align 2
  %4 = load i16, i16* %1, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* %2, align 2
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 1, %7
  %9 = ashr i32 %5, %8
  %10 = ashr i32 %9, 1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %10)
  %12 = load i16, i16* %1, align 2
  %13 = zext i16 %12 to i32
  %14 = ashr i32 %13, 1
  %15 = load i16, i16* %2, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 1
  %18 = add nsw i32 %14, %17
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %18)
  store i16 1, i16* %1, align 2
  %20 = load i16, i16* %1, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %1, align 2
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  store i16 2, i16* %1, align 2
  store i16 1, i16* %2, align 2
  store i16 0, i16* %3, align 2
  %27 = load i16, i16* %1, align 2
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = load i16, i16* %2, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %32, %34
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %35)
  %37 = load i16, i16* %1, align 2
  %38 = zext i16 %37 to i32
  %39 = xor i32 %38, -1
  %40 = load i16, i16* %2, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %39, %41
  %43 = load i16, i16* %3, align 2
  %44 = zext i16 %43 to i32
  %45 = xor i32 %42, %44
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %45)
  store i16 7, i16* %1, align 2
  store i16 1, i16* %2, align 2
  store i16 9, i16* %3, align 2
  %47 = load i16, i16* %1, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %2, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %3, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = xor i32 %48, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %54)
  %56 = load i16, i16* %1, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* %2, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* %3, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %59, %61
  %63 = xor i32 %57, %62
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %63)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i16 @toggle(i16 zeroext, i16 zeroext) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = shl i32 1, %6
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, %7
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %3, align 2
  ret i16 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ex_2() #0 {
  %1 = alloca i16, align 2
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  store i16 9, i16* %1, align 2
  %3 = load i16, i16* %1, align 2
  %4 = call zeroext i16 @toggle(i16 zeroext %3, i16 zeroext 4)
  store i16 %4, i16* %1, align 2
  %5 = zext i16 %4 to i32
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  %7 = load i16, i16* %1, align 2
  %8 = call zeroext i16 @toggle(i16 zeroext %7, i16 zeroext 4)
  store i16 %8, i16* %1, align 2
  %9 = zext i16 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %9)
  %11 = load i16, i16* %1, align 2
  %12 = call zeroext i16 @toggle(i16 zeroext %11, i16 zeroext 7)
  store i16 %12, i16* %1, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  %15 = load i16, i16* %1, align 2
  %16 = call zeroext i16 @toggle(i16 zeroext %15, i16 zeroext 7)
  store i16 %16, i16* %1, align 2
  %17 = zext i16 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %17)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ex_4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 6299903)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ex_5() #0 {
  %1 = alloca i64, align 8
  store i64 6299673, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 255
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %4)
  %6 = load i64, i64* %1, align 8
  %7 = lshr i64 %6, 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 255
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %9)
  %11 = load i64, i64* %1, align 8
  %12 = lshr i64 %11, 16
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @ex_1()
  call void @ex_2()
  call void @ex_4()
  call void @ex_5()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
