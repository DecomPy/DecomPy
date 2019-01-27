; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex02_main.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex02_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.str = private unnamed_addr constant [22 x i8] c"bonjaur, tu va bien ?\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"la repond : %s\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca [22 x i8], align 16
  %2 = alloca [1 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = bitcast [22 x i8]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 22, i8* %4) #3
  %5 = bitcast [22 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @main.str, i32 0, i32 0), i64 22, i1 false)
  %6 = bitcast [1 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #3
  %7 = bitcast [1 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 1, i1 false)
  %8 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = getelementptr inbounds [22 x i8], [22 x i8]* %1, i32 0, i32 0
  %10 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i32 0, i32 0
  %11 = call i8* @ft_strstr(i8* %9, i8* %10)
  store i8* %11, i8** %3, align 8, !tbaa !3
  %12 = load i8*, i8** %3, align 8, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %12)
  %14 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
  %15 = bitcast [1 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #3
  %16 = bitcast [22 x i8]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 22, i8* %16) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i8* @ft_strstr(i8*, i8*) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
