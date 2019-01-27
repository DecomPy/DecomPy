; ModuleID = 'Repositories/xethyrion-c-ipfs/Unfiltered/c-ipfs-master_datastore_key.c'
source_filename = "Repositories/xethyrion-c-ipfs/Unfiltered/c-ipfs-master_datastore_key.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ipfs_datastore_key_new(i8*, i8*, i64, i64*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add i64 %11, 1
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %25

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add i64 %20, 1
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @llvm.objectsize.i64.p0i8(i8* %22, i1 false, i1 true)
  %24 = call i8* @__memcpy_chk(i8* %17, i8* %18, i64 %21, i64 %23) #4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:25:                                     ; preds = %16, %15
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
