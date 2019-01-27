; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.17.magic-square.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.17.magic-square.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [106 x i8] c"This program creates a magic square of a specified size.\0AThe size must be an odd number between 1 and 99\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Enter the size of the magic square: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Enter an ODD number between 1 and 99\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %13 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

; <label>:26:                                     ; preds = %0
  %27 = load i32, i32* %2, align 4, !tbaa !3
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %2, align 4, !tbaa !3
  %31 = icmp sgt i32 %30, 99
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29, %26, %0
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %34 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %158

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %2, align 4, !tbaa !3
  %37 = zext i32 %36 to i64
  %38 = load i32, i32* %2, align 4, !tbaa !3
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = mul nuw i64 %37, %39
  %42 = alloca i32, i64 %41, align 16
  store i64 %37, i64* %11, align 8
  store i64 %39, i64* %12, align 8
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %64, %35
  %44 = load i32, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

; <label>:47:                                     ; preds = %43
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %48

; <label>:48:                                     ; preds = %60, %47
  %49 = load i32, i32* %8, align 4, !tbaa !3
  %50 = load i32, i32* %2, align 4, !tbaa !3
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %63

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %7, align 4, !tbaa !3
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %39
  %56 = getelementptr inbounds i32, i32* %42, i64 %55
  %57 = load i32, i32* %8, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4, !tbaa !3
  br label %60

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %8, align 4, !tbaa !3
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4, !tbaa !3
  br label %48

; <label>:63:                                     ; preds = %48
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %7, align 4, !tbaa !3
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4, !tbaa !3
  br label %43

; <label>:67:                                     ; preds = %43
  store i32 0, i32* %7, align 4, !tbaa !3
  %68 = load i32, i32* %2, align 4, !tbaa !3
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %8, align 4, !tbaa !3
  %70 = load i32, i32* %2, align 4, !tbaa !3
  %71 = load i32, i32* %2, align 4, !tbaa !3
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %3, align 4, !tbaa !3
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %73

; <label>:73:                                     ; preds = %125, %67
  %74 = load i32, i32* %4, align 4, !tbaa !3
  %75 = load i32, i32* %3, align 4, !tbaa !3
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %128

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %4, align 4, !tbaa !3
  %79 = load i32, i32* %7, align 4, !tbaa !3
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %39
  %82 = getelementptr inbounds i32, i32* %42, i64 %81
  %83 = load i32, i32* %8, align 4, !tbaa !3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %78, i32* %85, align 4, !tbaa !3
  %86 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %86, i32* %5, align 4, !tbaa !3
  %87 = load i32, i32* %8, align 4, !tbaa !3
  store i32 %87, i32* %6, align 4, !tbaa !3
  %88 = load i32, i32* %5, align 4, !tbaa !3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %77
  %91 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %91, i32* %5, align 4, !tbaa !3
  br label %92

; <label>:92:                                     ; preds = %90, %77
  %93 = load i32, i32* %5, align 4, !tbaa !3
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4, !tbaa !3
  %95 = load i32, i32* %6, align 4, !tbaa !3
  %96 = load i32, i32* %2, align 4, !tbaa !3
  %97 = sub nsw i32 %96, 1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %92
  store i32 -1, i32* %6, align 4, !tbaa !3
  br label %100

; <label>:100:                                    ; preds = %99, %92
  %101 = load i32, i32* %6, align 4, !tbaa !3
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4, !tbaa !3
  %103 = load i32, i32* %5, align 4, !tbaa !3
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %39
  %106 = getelementptr inbounds i32, i32* %42, i64 %105
  %107 = load i32, i32* %6, align 4, !tbaa !3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

; <label>:112:                                    ; preds = %100
  %113 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %113, i32* %7, align 4, !tbaa !3
  %114 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %114, i32* %8, align 4, !tbaa !3
  br label %124

; <label>:115:                                    ; preds = %100
  %116 = load i32, i32* %7, align 4, !tbaa !3
  %117 = load i32, i32* %2, align 4, !tbaa !3
  %118 = sub nsw i32 %117, 1
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %115
  store i32 -1, i32* %7, align 4, !tbaa !3
  br label %121

; <label>:121:                                    ; preds = %120, %115
  %122 = load i32, i32* %7, align 4, !tbaa !3
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4, !tbaa !3
  br label %124

; <label>:124:                                    ; preds = %121, %112
  br label %125

; <label>:125:                                    ; preds = %124
  %126 = load i32, i32* %4, align 4, !tbaa !3
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4, !tbaa !3
  br label %73

; <label>:128:                                    ; preds = %73
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %129

; <label>:129:                                    ; preds = %153, %128
  %130 = load i32, i32* %7, align 4, !tbaa !3
  %131 = load i32, i32* %2, align 4, !tbaa !3
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %156

; <label>:133:                                    ; preds = %129
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %134

; <label>:134:                                    ; preds = %148, %133
  %135 = load i32, i32* %8, align 4, !tbaa !3
  %136 = load i32, i32* %2, align 4, !tbaa !3
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %7, align 4, !tbaa !3
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, %39
  %142 = getelementptr inbounds i32, i32* %42, i64 %141
  %143 = load i32, i32* %8, align 4, !tbaa !3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !3
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %146)
  br label %148

; <label>:148:                                    ; preds = %138
  %149 = load i32, i32* %8, align 4, !tbaa !3
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4, !tbaa !3
  br label %134

; <label>:151:                                    ; preds = %134
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %153

; <label>:153:                                    ; preds = %151
  %154 = load i32, i32* %7, align 4, !tbaa !3
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4, !tbaa !3
  br label %129

; <label>:156:                                    ; preds = %129
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  br label %158

; <label>:158:                                    ; preds = %156, %32
  %159 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #3
  %160 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #3
  %161 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %161) #3
  %162 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %162) #3
  %163 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %163) #3
  %164 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %164) #3
  %165 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %165) #3
  %166 = load i32, i32* %1, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
