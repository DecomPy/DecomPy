; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_exercism_acronym_acronym.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_exercism_acronym_acronym.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@abbreviate.acr = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define i8* @abbreviate(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %11 = bitcast [80 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %11) #3
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  %13 = load i8*, i8** %2, align 8, !tbaa !3
  %14 = call i8* @__strcpy_chk(i8* %12, i8* %13, i64 80) #3
  %15 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  store i8* %16, i8** %4, align 8, !tbaa !3
  %17 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 80) #3
  %18 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  %19 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  store i32 0, i32* %6, align 4, !tbaa !7
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %45, %1
  %22 = load i8*, i8** %4, align 8, !tbaa !3
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %7, align 4, !tbaa !7
  %26 = icmp slt i32 %25, 80
  br label %27

; <label>:27:                                     ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %27
  %30 = load i8*, i8** %4, align 8, !tbaa !3
  %31 = load i8, i8* %30, align 1, !tbaa !9
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %5, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %34, %29
  %38 = load i32, i32* %7, align 4, !tbaa !7
  %39 = icmp slt i32 %38, 80
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %4, align 8, !tbaa !3
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8, !tbaa !3
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4, !tbaa !7
  br label %45

; <label>:45:                                     ; preds = %40, %37
  br label %21

; <label>:46:                                     ; preds = %27
  store i32 0, i32* %7, align 4, !tbaa !7
  %47 = load i32, i32* %5, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4, !tbaa !7
  %49 = load i32, i32* %5, align 4, !tbaa !7
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %8, align 8
  %52 = alloca [80 x i8], i64 %50, align 16
  store i64 %50, i64* %9, align 8
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %68, %46
  %54 = load i32, i32* %7, align 4, !tbaa !7
  %55 = load i32, i32* %5, align 4, !tbaa !7
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %7, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %59
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %63
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %64, i32 0, i32 0
  %66 = call i64 @llvm.objectsize.i64.p0i8(i8* %65, i1 false, i1 true)
  %67 = call i8* @__strcpy_chk(i8* %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 %66) #3
  br label %68

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %7, align 4, !tbaa !7
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4, !tbaa !7
  br label %53

; <label>:71:                                     ; preds = %53
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i32 0, i32 0
  store i8* %72, i8** %4, align 8, !tbaa !3
  %73 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #3
  %74 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %74, i8** %10, align 8, !tbaa !3
  br label %75

; <label>:75:                                     ; preds = %113, %71
  %76 = load i8*, i8** %4, align 8, !tbaa !3
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %7, align 4, !tbaa !7
  %80 = icmp sle i32 %79, 80
  br label %81

; <label>:81:                                     ; preds = %78, %75
  %82 = phi i1 [ false, %75 ], [ %80, %78 ]
  br i1 %82, label %83, label %114

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %4, align 8, !tbaa !3
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %105

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %4, align 8, !tbaa !3
  store i8 0, i8* %89, align 1, !tbaa !9
  %90 = load i32, i32* %6, align 4, !tbaa !7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %91
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %92, i32 0, i32 0
  %94 = load i8*, i8** %10, align 8, !tbaa !3
  %95 = load i32, i32* %6, align 4, !tbaa !7
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %96
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %97, i32 0, i32 0
  %99 = call i64 @llvm.objectsize.i64.p0i8(i8* %98, i1 false, i1 true)
  %100 = call i8* @__strncat_chk(i8* %93, i8* %94, i64 80, i64 %99) #3
  %101 = load i32, i32* %6, align 4, !tbaa !7
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4, !tbaa !7
  %103 = load i8*, i8** %4, align 8, !tbaa !3
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %10, align 8, !tbaa !3
  br label %105

; <label>:105:                                    ; preds = %88, %83
  %106 = load i32, i32* %7, align 4, !tbaa !7
  %107 = icmp sle i32 %106, 80
  br i1 %107, label %108, label %113

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %4, align 8, !tbaa !3
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8, !tbaa !3
  %111 = load i32, i32* %7, align 4, !tbaa !7
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4, !tbaa !7
  br label %113

; <label>:113:                                    ; preds = %108, %105
  br label %75

; <label>:114:                                    ; preds = %81
  %115 = load i8*, i8** %4, align 8, !tbaa !3
  store i8 0, i8* %115, align 1, !tbaa !9
  %116 = load i32, i32* %6, align 4, !tbaa !7
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %117
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* %118, i32 0, i32 0
  %120 = load i8*, i8** %10, align 8, !tbaa !3
  %121 = load i32, i32* %6, align 4, !tbaa !7
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %122
  %124 = getelementptr inbounds [80 x i8], [80 x i8]* %123, i32 0, i32 0
  %125 = call i64 @llvm.objectsize.i64.p0i8(i8* %124, i1 false, i1 true)
  %126 = call i8* @__strncat_chk(i8* %119, i8* %120, i64 80, i64 %125) #3
  %127 = load i32, i32* %6, align 4, !tbaa !7
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %129

; <label>:129:                                    ; preds = %155, %114
  %130 = load i32, i32* %7, align 4, !tbaa !7
  %131 = load i32, i32* %6, align 4, !tbaa !7
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %158

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* %7, align 4, !tbaa !7
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %135
  %137 = getelementptr inbounds [80 x i8], [80 x i8]* %136, i64 0, i64 0
  %138 = load i8, i8* %137, align 16, !tbaa !9
  %139 = sext i8 %138 to i32
  %140 = call i32 @toupper(i32 %139) #7
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* %7, align 4, !tbaa !7
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %143
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %144, i64 0, i64 0
  store i8 %141, i8* %145, align 16, !tbaa !9
  %146 = load i32, i32* %7, align 4, !tbaa !7
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %147
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* %148, i64 0, i64 1
  store i8 0, i8* %149, align 1, !tbaa !9
  %150 = load i32, i32* %7, align 4, !tbaa !7
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %52, i64 %151
  %153 = getelementptr inbounds [80 x i8], [80 x i8]* %152, i32 0, i32 0
  %154 = call i8* @__strcat_chk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0), i8* %153, i64 80) #3
  br label %155

; <label>:155:                                    ; preds = %133
  %156 = load i32, i32* %7, align 4, !tbaa !7
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4, !tbaa !7
  br label %129

; <label>:158:                                    ; preds = %129
  %159 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %159) #3
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %161) #3
  %162 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %162) #3
  %163 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %163) #3
  %164 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %164) #3
  %165 = bitcast [80 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %165) #3
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @abbreviate.acr, i32 0, i32 0)
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #4

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #5 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8*, i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare i32 @__toupper(i32) #6

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
