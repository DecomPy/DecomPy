; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_union.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_union.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.s_t = type { i32, i8 }
%union.u_t = type { i32 }
%struct.Value = type { i32, %union.anon }
%union.anon = type { i32 }

@s = common global %struct.s_t zeroinitializer, align 4
@u = common global %union.u_t zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"sizeof(s_t) : %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sizeof(u_t) : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"char : %c\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Value, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  store i32 1252, i32* getelementptr inbounds (%struct.s_t, %struct.s_t* @s, i32 0, i32 0), align 4, !tbaa !9
  store i8 65, i8* getelementptr inbounds (%struct.s_t, %struct.s_t* @s, i32 0, i32 1), align 4, !tbaa !11
  store i32 1252, i32* getelementptr inbounds (%union.u_t, %union.u_t* @u, i32 0, i32 0), align 4, !tbaa !12
  store i8 90, i8* bitcast (%union.u_t* @u to i8*), align 4, !tbaa !12
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i64 8)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i64 4)
  store i32 1252, i32* getelementptr inbounds (%union.u_t, %union.u_t* @u, i32 0, i32 0), align 4, !tbaa !12
  %9 = load i8, i8* bitcast (%union.u_t* @u to i8*), align 4, !tbaa !12
  %10 = sext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  %12 = bitcast %struct.Value* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = getelementptr inbounds %struct.Value, %struct.Value* %6, i32 0, i32 0
  store i32 0, i32* %13, align 4, !tbaa !13
  %14 = getelementptr inbounds %struct.Value, %struct.Value* %6, i32 0, i32 1
  %15 = bitcast %union.anon* %14 to i32*
  store i32 1252, i32* %15, align 4, !tbaa !12
  %16 = bitcast %struct.Value* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
!9 = !{!10, !4, i64 0}
!10 = !{!"s_t", !4, i64 0, !5, i64 4}
!11 = !{!10, !5, i64 4}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4}
