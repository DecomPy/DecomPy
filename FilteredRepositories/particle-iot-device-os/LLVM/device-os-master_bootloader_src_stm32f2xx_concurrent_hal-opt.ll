; ModuleID = 'Repositories/particle-iot-device-os/Unfiltered/device-os-master_bootloader_src_stm32f2xx_concurrent_hal.c'
source_filename = "Repositories/particle-iot-device-os/Unfiltered/device-os-master_bootloader_src_stm32f2xx_concurrent_hal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @os_thread_yield() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @__flash_acquire() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @__flash_release() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @periph_lock() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @periph_unlock() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
