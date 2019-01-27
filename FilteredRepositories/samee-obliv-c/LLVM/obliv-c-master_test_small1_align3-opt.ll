; ModuleID = 'Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_align3.c'
source_filename = "Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_align3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.s1 = type { i16, i8, i16 }
%struct.s4 = type { i16, i8 }
%struct.s5 = type { i16, i8, [13 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@s1_1 = common global %struct.s1 zeroinitializer, align 1
@s1_2 = common global %struct.s1 zeroinitializer, align 2
@s1_4 = common global %struct.s1 zeroinitializer, align 4
@s1_128 = common global %struct.s1 zeroinitializer, align 128
@s4_4 = common global %struct.s4 zeroinitializer, align 16
@s4_int = common global %struct.s4 zeroinitializer, align 4
@s4_db = common global %struct.s4 zeroinitializer, align 4
@foo = common global %struct.s5 zeroinitializer, align 16
@s5_4 = common global %struct.s5 zeroinitializer, align 16
@i = common global i32 0, align 4
@i_1 = common global i32 0, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 4, i64 4)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 4, i64 1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 4, i64 16)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
