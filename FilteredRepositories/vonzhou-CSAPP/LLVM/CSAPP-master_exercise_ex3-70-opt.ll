; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-70.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-70.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.ELE = type { %struct.ELE*, %struct.ELE*, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @traverse(%struct.ELE*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ELE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ELE* %0, %struct.ELE** %3, align 8
  %7 = load %struct.ELE*, %struct.ELE** %3, align 8
  %8 = icmp ne %struct.ELE* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %35

; <label>:10:                                     ; preds = %1
  %11 = load %struct.ELE*, %struct.ELE** %3, align 8
  %12 = getelementptr inbounds %struct.ELE, %struct.ELE* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ELE*, %struct.ELE** %3, align 8
  %15 = getelementptr inbounds %struct.ELE, %struct.ELE* %14, i32 0, i32 0
  %16 = load %struct.ELE*, %struct.ELE** %15, align 8
  %17 = call i64 @traverse(%struct.ELE* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.ELE*, %struct.ELE** %3, align 8
  %19 = getelementptr inbounds %struct.ELE, %struct.ELE* %18, i32 0, i32 1
  %20 = load %struct.ELE*, %struct.ELE** %19, align 8
  %21 = call i64 @traverse(%struct.ELE* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %10
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %6, align 8
  br label %27

; <label>:27:                                     ; preds = %25, %10
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %4, align 8
  br label %33

; <label>:33:                                     ; preds = %31, %27
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %9
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
