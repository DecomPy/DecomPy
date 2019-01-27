; ModuleID = 'Repositories/stevedekorte-vertexdb/Unfiltered/vertexdb-master_source_basekit_source_Hash_murmur.c'
source_filename = "Repositories/stevedekorte-vertexdb/Unfiltered/vertexdb-master_source_basekit_source_Hash_murmur.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @MurmurHash2(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 1540483477, i32* %7, align 4, !tbaa !7
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  store i32 24, i32* %8, align 4, !tbaa !7
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = xor i32 %15, %16
  store i32 %17, i32* %9, align 4, !tbaa !7
  %18 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #2
  %19 = load i8*, i8** %4, align 8, !tbaa !3
  store i8* %19, i8** %10, align 8, !tbaa !3
  br label %20

; <label>:20:                                     ; preds = %23, %3
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %46

; <label>:23:                                     ; preds = %20
  %24 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #2
  %25 = load i8*, i8** %10, align 8, !tbaa !3
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !7
  store i32 %27, i32* %11, align 4, !tbaa !7
  %28 = load i32, i32* %11, align 4, !tbaa !7
  %29 = mul i32 %28, 1540483477
  store i32 %29, i32* %11, align 4, !tbaa !7
  %30 = load i32, i32* %11, align 4, !tbaa !7
  %31 = lshr i32 %30, 24
  %32 = load i32, i32* %11, align 4, !tbaa !7
  %33 = xor i32 %32, %31
  store i32 %33, i32* %11, align 4, !tbaa !7
  %34 = load i32, i32* %11, align 4, !tbaa !7
  %35 = mul i32 %34, 1540483477
  store i32 %35, i32* %11, align 4, !tbaa !7
  %36 = load i32, i32* %9, align 4, !tbaa !7
  %37 = mul i32 %36, 1540483477
  store i32 %37, i32* %9, align 4, !tbaa !7
  %38 = load i32, i32* %11, align 4, !tbaa !7
  %39 = load i32, i32* %9, align 4, !tbaa !7
  %40 = xor i32 %39, %38
  store i32 %40, i32* %9, align 4, !tbaa !7
  %41 = load i8*, i8** %10, align 8, !tbaa !3
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %42, i8** %10, align 8, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %5, align 4, !tbaa !7
  %45 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #2
  br label %20

; <label>:46:                                     ; preds = %20
  %47 = load i32, i32* %5, align 4, !tbaa !7
  switch i32 %47, label %73 [
    i32 3, label %48
    i32 2, label %56
    i32 1, label %64
  ]

; <label>:48:                                     ; preds = %46
  %49 = load i8*, i8** %10, align 8, !tbaa !3
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %9, align 4, !tbaa !7
  %55 = xor i32 %54, %53
  store i32 %55, i32* %9, align 4, !tbaa !7
  br label %56

; <label>:56:                                     ; preds = %46, %48
  %57 = load i8*, i8** %10, align 8, !tbaa !3
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %9, align 4, !tbaa !7
  %63 = xor i32 %62, %61
  store i32 %63, i32* %9, align 4, !tbaa !7
  br label %64

; <label>:64:                                     ; preds = %46, %56
  %65 = load i8*, i8** %10, align 8, !tbaa !3
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %9, align 4, !tbaa !7
  %70 = xor i32 %69, %68
  store i32 %70, i32* %9, align 4, !tbaa !7
  %71 = load i32, i32* %9, align 4, !tbaa !7
  %72 = mul i32 %71, 1540483477
  store i32 %72, i32* %9, align 4, !tbaa !7
  br label %73

; <label>:73:                                     ; preds = %64, %46
  %74 = load i32, i32* %9, align 4, !tbaa !7
  %75 = lshr i32 %74, 13
  %76 = load i32, i32* %9, align 4, !tbaa !7
  %77 = xor i32 %76, %75
  store i32 %77, i32* %9, align 4, !tbaa !7
  %78 = load i32, i32* %9, align 4, !tbaa !7
  %79 = mul i32 %78, 1540483477
  store i32 %79, i32* %9, align 4, !tbaa !7
  %80 = load i32, i32* %9, align 4, !tbaa !7
  %81 = lshr i32 %80, 15
  %82 = load i32, i32* %9, align 4, !tbaa !7
  %83 = xor i32 %82, %81
  store i32 %83, i32* %9, align 4, !tbaa !7
  %84 = load i32, i32* %9, align 4, !tbaa !7
  %85 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #2
  %86 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #2
  %87 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #2
  %88 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #2
  ret i32 %84
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
