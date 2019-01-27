; ModuleID = 'Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_rmtmps2.c'
source_filename = "Repositories/samee-obliv-c/Unfiltered/obliv-c-master_test_small1_rmtmps2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.mm_struct = type { %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }

; Function Attrs: inlinehint nounwind ssp uwtable
define void @__mmdrop(%struct.mm_struct*) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mmput(%struct.mm_struct*) #1 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8, !tbaa !3
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i32 0, i32 0
  %5 = call i32 @atomic_dec_and_test(%struct.atomic_t* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8, !tbaa !3
  call void @mmdrop(%struct.mm_struct* %8)
  br label %9

; <label>:9:                                      ; preds = %7, %1
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @atomic_dec_and_test(%struct.atomic_t*) #0 {
  %2 = alloca %struct.atomic_t*, align 8
  %3 = alloca i8, align 1
  store %struct.atomic_t* %0, %struct.atomic_t** %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #3
  %4 = load %struct.atomic_t*, %struct.atomic_t** %2, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %4, i32 0, i32 0
  %6 = load %struct.atomic_t*, %struct.atomic_t** %2, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %6, i32 0, i32 0
  call void asm sideeffect "decl $0; sete $1", "=*m,=*qm,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %5, i8* %3, i32* %7) #3, !srcloc !7
  %8 = load i8, i8* %3, align 1, !tbaa !8
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #3
  ret i32 %11
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @mmdrop(%struct.mm_struct*) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8, !tbaa !3
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i32 0, i32 1
  %5 = call i32 @atomic_dec_and_test(%struct.atomic_t* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8, !tbaa !3
  call void @__mmdrop(%struct.mm_struct* %8)
  br label %9

; <label>:9:                                      ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 198}
!8 = !{!5, !5, i64 0}
