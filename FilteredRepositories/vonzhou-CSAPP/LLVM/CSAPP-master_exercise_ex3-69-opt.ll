; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-69.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-69.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.ELE = type { %struct.ELE*, %struct.ELE*, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @trace(%struct.ELE*) #0 {
  %2 = alloca %struct.ELE*, align 8
  %3 = alloca i64, align 8
  store %struct.ELE* %0, %struct.ELE** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct.ELE*, %struct.ELE** %2, align 8
  %6 = icmp ne %struct.ELE* %5, null
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %4
  %8 = load %struct.ELE*, %struct.ELE** %2, align 8
  %9 = getelementptr inbounds %struct.ELE, %struct.ELE* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.ELE*, %struct.ELE** %2, align 8
  %12 = getelementptr inbounds %struct.ELE, %struct.ELE* %11, i32 0, i32 0
  %13 = load %struct.ELE*, %struct.ELE** %12, align 8
  store %struct.ELE* %13, %struct.ELE** %2, align 8
  br label %4

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
