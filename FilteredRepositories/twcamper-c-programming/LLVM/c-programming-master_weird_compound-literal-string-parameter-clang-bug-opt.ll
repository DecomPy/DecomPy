; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_compound-literal-string-parameter-clang-bug.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_compound-literal-string-parameter-clang-bug.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @write_dos_newline() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  store i8 13, i8* %2, align 1
  %3 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 10, i8* %3, align 1
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i32 0, i32 0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %4)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  store i8 13, i8* %3, align 1
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 10, i8* %4, align 1
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i32 0, i32 0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %5)
  call void @write_dos_newline()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
