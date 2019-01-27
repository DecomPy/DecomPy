; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_decimalToRoman.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_decimalToRoman.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@roman = global [7 x i8] c"IVXLCDM", align 1
@decimal = global [7 x i32] [i32 1, i32 5, i32 10, i32 50, i32 100, i32 500, i32 1000], align 16
@.str = private unnamed_addr constant [10 x i8] c"Enter n: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"You entered a negative number!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"You entered Zero or Nulla!\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"This code has a limit from 1 to 3999.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %191

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %190

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = icmp sge i32 %22, 4000
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %189

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %187, %26
  %28 = load i32, i32* %2, align 4, !tbaa !3
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %188

; <label>:30:                                     ; preds = %27
  store i32 6, i32* %3, align 4, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %43, %30
  %32 = load i32, i32* %3, align 4, !tbaa !3
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %2, align 4, !tbaa !3
  %36 = load i32, i32* %3, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !3
  %40 = icmp sge i32 %35, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %34
  br label %46

; <label>:42:                                     ; preds = %34
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %3, align 4, !tbaa !3
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4, !tbaa !3
  br label %31

; <label>:46:                                     ; preds = %41, %31
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %47

; <label>:47:                                     ; preds = %59, %46
  %48 = load i32, i32* %4, align 4, !tbaa !3
  %49 = icmp slt i32 %48, 7
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = load i32, i32* %4, align 4, !tbaa !3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !3
  %56 = icmp sle i32 %51, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %50
  br label %62

; <label>:58:                                     ; preds = %50
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %4, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4, !tbaa !3
  br label %47

; <label>:62:                                     ; preds = %57, %47
  %63 = load i32, i32* %2, align 4, !tbaa !3
  store i32 %63, i32* %5, align 4, !tbaa !3
  br label %64

; <label>:64:                                     ; preds = %73, %62
  %65 = load i32, i32* %5, align 4, !tbaa !3
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %5, align 4, !tbaa !3
  %69 = sdiv i32 %68, 10
  store i32 %69, i32* %5, align 4, !tbaa !3
  %70 = load i32, i32* %5, align 4, !tbaa !3
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %67
  br label %74

; <label>:73:                                     ; preds = %67
  br label %64

; <label>:74:                                     ; preds = %72, %64
  %75 = load i32, i32* %2, align 4, !tbaa !3
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %92

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %2, align 4, !tbaa !3
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %92

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %3, align 4, !tbaa !3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !7
  %85 = sext i8 %84 to i32
  %86 = load i32, i32* %4, align 4, !tbaa !3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !7
  %90 = sext i8 %89 to i32
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %85, i32 %90)
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %187

; <label>:92:                                     ; preds = %77, %74
  %93 = load i32, i32* %2, align 4, !tbaa !3
  %94 = icmp sgt i32 %93, 10
  br i1 %94, label %95, label %121

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %5, align 4, !tbaa !3
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %121

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* %3, align 4, !tbaa !3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !7
  %103 = sext i8 %102 to i32
  %104 = load i32, i32* %4, align 4, !tbaa !3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1, !tbaa !7
  %108 = sext i8 %107 to i32
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %103, i32 %108)
  %110 = load i32, i32* %4, align 4, !tbaa !3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4, !tbaa !3
  %114 = load i32, i32* %3, align 4, !tbaa !3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4, !tbaa !3
  %118 = sub nsw i32 %113, %117
  %119 = load i32, i32* %2, align 4, !tbaa !3
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %2, align 4, !tbaa !3
  br label %186

; <label>:121:                                    ; preds = %95, %92
  %122 = load i32, i32* %2, align 4, !tbaa !3
  %123 = icmp slt i32 %122, 10
  br i1 %123, label %124, label %140

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %2, align 4, !tbaa !3
  %126 = icmp eq i32 %125, 9
  br i1 %126, label %127, label %140

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %3, align 4, !tbaa !3
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1, !tbaa !7
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* %4, align 4, !tbaa !3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1, !tbaa !7
  %138 = sext i8 %137 to i32
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %133, i32 %138)
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %185

; <label>:140:                                    ; preds = %124, %121
  %141 = load i32, i32* %2, align 4, !tbaa !3
  %142 = icmp sgt i32 %141, 10
  br i1 %142, label %143, label %171

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* %5, align 4, !tbaa !3
  %145 = icmp eq i32 %144, 9
  br i1 %145, label %146, label %171

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %3, align 4, !tbaa !3
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1, !tbaa !7
  %152 = sext i8 %151 to i32
  %153 = load i32, i32* %4, align 4, !tbaa !3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1, !tbaa !7
  %157 = sext i8 %156 to i32
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %152, i32 %157)
  %159 = load i32, i32* %4, align 4, !tbaa !3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !3
  %163 = load i32, i32* %3, align 4, !tbaa !3
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4, !tbaa !3
  %168 = sub nsw i32 %162, %167
  %169 = load i32, i32* %2, align 4, !tbaa !3
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %2, align 4, !tbaa !3
  br label %184

; <label>:171:                                    ; preds = %143, %140
  %172 = load i32, i32* %3, align 4, !tbaa !3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1, !tbaa !7
  %176 = sext i8 %175 to i32
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %176)
  %178 = load i32, i32* %3, align 4, !tbaa !3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4, !tbaa !3
  %182 = load i32, i32* %2, align 4, !tbaa !3
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %2, align 4, !tbaa !3
  br label %184

; <label>:184:                                    ; preds = %171, %146
  br label %185

; <label>:185:                                    ; preds = %184, %127
  br label %186

; <label>:186:                                    ; preds = %185, %98
  br label %187

; <label>:187:                                    ; preds = %186, %80
  br label %27

; <label>:188:                                    ; preds = %27
  br label %189

; <label>:189:                                    ; preds = %188, %24
  br label %190

; <label>:190:                                    ; preds = %189, %19
  br label %191

; <label>:191:                                    ; preds = %190, %14
  %192 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %192) #3
  %193 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %193) #3
  %194 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %194) #3
  %195 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %195) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
!7 = !{!5, !5, i64 0}
