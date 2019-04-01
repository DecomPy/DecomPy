; ModuleID = 'example.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define i32 @main() #0 {
  %a = alloca i32, align 4
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1)
  store volatile i32 4, i32* %a, align 4
  %2 = load volatile i32, i32* %a, align 4
  %3 = icmp slt i32 %2, 5
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load volatile i32, i32* %a, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %4
  store volatile i32 5, i32* %a, align 4
  br label %8

; <label>:8                                       ; preds = %7, %4, %0
  %9 = load volatile i32, i32* %a, align 4
  call void @llvm.lifetime.end(i64 4, i8* %1)
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
