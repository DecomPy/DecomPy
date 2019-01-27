; ModuleID = 'Repositories/yuvadm-tiva-c/Unfiltered/tiva-c-master_third_party_windows_fltk-1.1.10_src_dump_compose.c'
source_filename = "Repositories/yuvadm-tiva-c/Unfiltered/tiva-c-master_third_party_windows_fltk-1.1.10_src_dump_compose.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [193 x i8] c"  ! @ # $ y=| & : c a <<~ - r _ * +-2 3 ' u p . , 1 o >>141234? A`A'A^A~A:A*AEC,E`E'E^E:I`I'I^I:D-N~O`O'O^O~O:x O/U`U'U^U:Y'DDssa`a'a^a~a:a*aec,e`e'e^e:i`i'i^i:d-n~o`o'o^o~o:-:o/u`u'u^u:y'ddy:\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"<td><code>%c&nbsp</code>&nbsp&nbsp&nbsp%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"<td><code>%c%c</code>&nbsp&nbsp&nbsp%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %61, %0
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %64

; <label>:10:                                     ; preds = %7
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %56, %10
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %59

; <label>:14:                                     ; preds = %11
  %15 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = mul nsw i32 16, %16
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = add nsw i32 %17, %18
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str, i32 0, i32 0), i64 %21
  store i8* %22, i8** %4, align 8, !tbaa !7
  %23 = load i8*, i8** %4, align 8, !tbaa !7
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %14
  %29 = load i8*, i8** %4, align 8, !tbaa !7
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1, !tbaa !9
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %4, align 8, !tbaa !7
  %34 = ptrtoint i8* %33 to i64
  %35 = sub i64 %34, ptrtoint ([193 x i8]* @.str to i64)
  %36 = sdiv i64 %35, 2
  %37 = add nsw i64 %36, 160
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %32, i64 %37)
  br label %54

; <label>:39:                                     ; preds = %14
  %40 = load i8*, i8** %4, align 8, !tbaa !7
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1, !tbaa !9
  %43 = sext i8 %42 to i32
  %44 = load i8*, i8** %4, align 8, !tbaa !7
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = load i8*, i8** %4, align 8, !tbaa !7
  %49 = ptrtoint i8* %48 to i64
  %50 = sub i64 %49, ptrtoint ([193 x i8]* @.str to i64)
  %51 = sdiv i64 %50, 2
  %52 = add nsw i64 %51, 160
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %43, i32 %47, i64 %52)
  br label %54

; <label>:54:                                     ; preds = %39, %28
  %55 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #3
  br label %56

; <label>:56:                                     ; preds = %54
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4, !tbaa !3
  br label %11

; <label>:59:                                     ; preds = %11
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %59
  %62 = load i32, i32* %2, align 4, !tbaa !3
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4, !tbaa !3
  br label %7

; <label>:64:                                     ; preds = %7
  %65 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3
  %66 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

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
!9 = !{!5, !5, i64 0}
