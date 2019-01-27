; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_structptr.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_structptr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.fraction = type { i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fraction, align 4
  %7 = alloca %struct.fraction, align 4
  %8 = alloca %struct.fraction*, align 8
  %9 = alloca %struct.fraction*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.fraction* %6, %struct.fraction** %8, align 8
  store %struct.fraction* %7, %struct.fraction** %9, align 8
  %10 = load %struct.fraction*, %struct.fraction** %8, align 8
  %11 = getelementptr inbounds %struct.fraction, %struct.fraction* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.fraction*, %struct.fraction** %8, align 8
  %13 = getelementptr inbounds %struct.fraction, %struct.fraction* %12, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = load %struct.fraction*, %struct.fraction** %9, align 8
  %15 = getelementptr inbounds %struct.fraction, %struct.fraction* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.fraction*, %struct.fraction** %9, align 8
  %17 = getelementptr inbounds %struct.fraction, %struct.fraction* %16, i32 0, i32 1
  store i32 4, i32* %17, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
