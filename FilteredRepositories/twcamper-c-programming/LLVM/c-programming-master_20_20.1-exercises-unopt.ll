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

; Function Attrs: nounwind ssp uwtable
define void @ex_1() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %4) #3
  %5 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5) #3
  %6 = bitcast i16* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %6) #3
  store i16 0, i16* %3, align 2, !tbaa !3
  store i16 8, i16* %1, align 2, !tbaa !3
  store i16 9, i16* %2, align 2, !tbaa !3
  %7 = load i16, i16* %1, align 2, !tbaa !3
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* %2, align 2, !tbaa !3
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 1, %10
  %12 = ashr i32 %8, %11
  %13 = ashr i32 %12, 1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %13)
  %15 = load i16, i16* %1, align 2, !tbaa !3
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 1
  %18 = load i16, i16* %2, align 2, !tbaa !3
  %19 = zext i16 %18 to i32
  %20 = ashr i32 %19, 1
  %21 = add nsw i32 %17, %20
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %21)
  store i16 1, i16* %1, align 2, !tbaa !3
  %23 = load i16, i16* %1, align 2, !tbaa !3
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %1, align 2, !tbaa !3
  %26 = zext i16 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  store i16 2, i16* %1, align 2, !tbaa !3
  store i16 1, i16* %2, align 2, !tbaa !3
  store i16 0, i16* %3, align 2, !tbaa !3
  %30 = load i16, i16* %1, align 2, !tbaa !3
  %31 = zext i16 %30 to i32
  %32 = xor i32 %31, -1
  %33 = load i16, i16* %2, align 2, !tbaa !3
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = load i16, i16* %3, align 2, !tbaa !3
  %37 = zext i16 %36 to i32
  %38 = xor i32 %35, %37
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %38)
  %40 = load i16, i16* %1, align 2, !tbaa !3
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i16, i16* %2, align 2, !tbaa !3
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = load i16, i16* %3, align 2, !tbaa !3
  %47 = zext i16 %46 to i32
  %48 = xor i32 %45, %47
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %48)
  store i16 7, i16* %1, align 2, !tbaa !3
  store i16 1, i16* %2, align 2, !tbaa !3
  store i16 9, i16* %3, align 2, !tbaa !3
  %50 = load i16, i16* %1, align 2, !tbaa !3
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %2, align 2, !tbaa !3
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* %3, align 2, !tbaa !3
  %55 = zext i16 %54 to i32
  %56 = and i32 %53, %55
  %57 = xor i32 %51, %56
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %57)
  %59 = load i16, i16* %1, align 2, !tbaa !3
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %2, align 2, !tbaa !3
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %3, align 2, !tbaa !3
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = xor i32 %60, %65
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %66)
  %68 = bitcast i16* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %68) #3
  %69 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %69) #3
  %70 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %70) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @toggle(i16 zeroext, i16 zeroext) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2, !tbaa !3
  store i16 %1, i16* %4, align 2, !tbaa !3
  %5 = load i16, i16* %4, align 2, !tbaa !3
  %6 = zext i16 %5 to i32
  %7 = shl i32 1, %6
  %8 = load i16, i16* %3, align 2, !tbaa !3
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, %7
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %3, align 2, !tbaa !3
  ret i16 %11
}

; Function Attrs: nounwind ssp uwtable
define void @ex_2() #0 {
  %1 = alloca i16, align 2
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %3 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %3) #3
  store i16 9, i16* %1, align 2, !tbaa !3
  %4 = load i16, i16* %1, align 2, !tbaa !3
  %5 = call zeroext i16 @toggle(i16 zeroext %4, i16 zeroext 4)
  store i16 %5, i16* %1, align 2, !tbaa !3
  %6 = zext i16 %5 to i32
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  %8 = load i16, i16* %1, align 2, !tbaa !3
  %9 = call zeroext i16 @toggle(i16 zeroext %8, i16 zeroext 4)
  store i16 %9, i16* %1, align 2, !tbaa !3
  %10 = zext i16 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  %12 = load i16, i16* %1, align 2, !tbaa !3
  %13 = call zeroext i16 @toggle(i16 zeroext %12, i16 zeroext 7)
  store i16 %13, i16* %1, align 2, !tbaa !3
  %14 = zext i16 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  %16 = load i16, i16* %1, align 2, !tbaa !3
  %17 = call zeroext i16 @toggle(i16 zeroext %16, i16 zeroext 7)
  store i16 %17, i16* %1, align 2, !tbaa !3
  %18 = zext i16 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %18)
  %20 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %20) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @ex_4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 6299903)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @ex_5() #0 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  store i64 6299673, i64* %1, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 255
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %5)
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = lshr i64 %7, 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 255
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %10)
  %12 = load i64, i64* %1, align 8, !tbaa !7
  %13 = lshr i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 255
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %15)
  %17 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @ex_1()
  call void @ex_2()
  call void @ex_4()
  call void @ex_5()
  ret i32 0
}

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
!4 = !{!"short", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
