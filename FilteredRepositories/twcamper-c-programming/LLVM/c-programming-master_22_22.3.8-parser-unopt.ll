; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c" #%[0123456789,]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" #123\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.3.8-parser.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"strcmp(sales_rank, \22123\22) == 0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" #999,999,901 \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"999,999,901\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"strcmp(sales_rank, \22999,999,901\22) == 0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" #24,675\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"24,675\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"strcmp(sales_rank, \2224,675\22) == 0\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"strcmp(sales_rank, \221\22) == 0\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [255 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %2, align 8, !tbaa !3
  %5 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %5) #5
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %6, [255 x i8]* %3)
  %8 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = call i64 @llvm.expect.i64(i64 %13, i64 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:18:                                     ; preds = %0
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i8*, i8** %2, align 8, !tbaa !3
  %21 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %20, [255 x i8]* %3)
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %24 = icmp eq i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = call i64 @llvm.expect.i64(i64 %27, i64 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %19
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:32:                                     ; preds = %19
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load i8*, i8** %2, align 8, !tbaa !3
  %35 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %34, [255 x i8]* %3)
  %36 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %38 = icmp eq i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = call i64 @llvm.expect.i64(i64 %41, i64 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %33
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:46:                                     ; preds = %33
  br label %47

; <label>:47:                                     ; preds = %46, %45
  %48 = load i8*, i8** %2, align 8, !tbaa !3
  %49 = call i32 (i8*, i8*, ...) @sscanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %48, [255 x i8]* %3)
  %50 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i32 0, i32 0
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = call i64 @llvm.expect.i64(i64 %55, i64 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %47
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %47
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %62) #5
  %63 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @sscanf(i8*, i8*, ...) #2

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
