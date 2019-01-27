; ModuleID = 'Repositories/sumatrapdfreader-sumatrapdf/Unfiltered/sumatrapdf-master_ext_bzip2_bz_internal_error.c'
source_filename = "Repositories/sumatrapdfreader-sumatrapdf/Unfiltered/sumatrapdf-master_ext_bzip2_bz_internal_error.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.bz_internal_error = private unnamed_addr constant [18 x i8] c"bz_internal_error\00", align 1
@.str = private unnamed_addr constant [100 x i8] c"Repositories/sumatrapdfreader-sumatrapdf/Unfiltered/sumatrapdf-master_ext_bzip2_bz_internal_error.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bz_internal_error(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @__assert_rtn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.bz_internal_error, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #2
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
