; $SWAP=Class13/1.ll
; $POSITIVE_INTEGERS=0,8,3,1,24,16,32
; $NEGATIVE_INTEGERS=8,4,1
define void @fnc(i32* nocapture, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %L, 0 ;IF LENGTH IS 0
  br i1 %3, label %4, label %E ;BRANCH TO THE END OTHERWISE CONTINUE

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %L to i64
  %6 = icmp ult i32 %L, 8
  br i1 %6, label %69, label %7

; <label>:7:                                      ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %9, 24
  br i1 %13, label %50, label %14

; <label>:14:                                     ; preds = %7
  %15 = sub nsw i64 %11, %12
  br label %16

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %46, %16 ]
  %18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %14 ], [ %47, %16 ]
  %19 = phi i64 [ %15, %14 ], [ %48, %16 ]
  %20 = getelementptr inbounds i32, i32* %AR, i64 %17
  %21 = add <4 x i32> %18, <i32 4, i32 4, i32 4, i32 4>
  %22 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %22, align 4, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %20, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  store <4 x i32> %21, <4 x i32>* %24, align 4, !tbaa !3
  %25 = or i64 %17, 8
  %26 = add <4 x i32> %18, <i32 8, i32 8, i32 8, i32 8>
  %27 = getelementptr inbounds i32, i32* %AR, i64 %25
  %28 = add <4 x i32> %18, <i32 12, i32 12, i32 12, i32 12>
  %29 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %29, align 4, !tbaa !3
  %30 = getelementptr inbounds i32, i32* %27, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %31, align 4, !tbaa !3
  %32 = or i64 %17, 16
  %33 = add <4 x i32> %18, <i32 16, i32 16, i32 16, i32 16>
  %34 = getelementptr inbounds i32, i32* %AR, i64 %32
  %35 = add <4 x i32> %18, <i32 20, i32 20, i32 20, i32 20>
  %36 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %36, align 4, !tbaa !3
  %37 = getelementptr inbounds i32, i32* %34, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %38, align 4, !tbaa !3
  %39 = or i64 %17, 24
  %40 = add <4 x i32> %18, <i32 24, i32 24, i32 24, i32 24>
  %41 = getelementptr inbounds i32, i32* %AR, i64 %39
  %42 = add <4 x i32> %18, <i32 28, i32 28, i32 28, i32 28>
  %43 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 4, !tbaa !3
  %44 = getelementptr inbounds i32, i32* %41, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %45, align 4, !tbaa !3
  %46 = add i64 %17, 32
  %47 = add <4 x i32> %18, <i32 32, i32 32, i32 32, i32 32>
  %48 = add i64 %19, -4
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %16, !llvm.loop !7

; <label>:50:                                     ; preds = %16, %7
  %51 = phi i64 [ 0, %7 ], [ %46, %16 ]
  %52 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %47, %16 ]
  %53 = icmp eq i64 %12, 0
  br i1 %53, label %67, label %54

; <label>:54:                                     ; preds = %50, %54
  %55 = phi i64 [ %63, %54 ], [ %51, %50 ]
  %56 = phi <4 x i32> [ %64, %54 ], [ %52, %50 ]
  %57 = phi i64 [ %65, %54 ], [ %12, %50 ]
  %58 = getelementptr inbounds i32, i32* %AR, i64 %55
  %59 = add <4 x i32> %56, <i32 4, i32 4, i32 4, i32 4>
  %60 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %60, align 4, !tbaa !3
  %61 = getelementptr inbounds i32, i32* %58, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %59, <4 x i32>* %62, align 4, !tbaa !3
  %63 = add i64 %55, 8
  %64 = add <4 x i32> %56, <i32 8, i32 8, i32 8, i32 8>
  %65 = add i64 %57, -1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %54, !llvm.loop !9

; <label>:67:                                     ; preds = %54, %50
  %68 = icmp eq i64 %8, %5
  br i1 %68, label %77, label %69

; <label>:69:                                     ; preds = %67, %4
  %70 = phi i64 [ 0, %4 ], [ %8, %67 ]
  br label %71

; <label>:71:                                     ; preds = %69, %71
  %72 = phi i64 [ %75, %71 ], [ %70, %69 ]
  %73 = getelementptr inbounds i32, i32* %AR, i64 %72
  %74 = trunc i64 %72 to i32
  store i32 %74, i32* %73, align 4, !tbaa !3
  %75 = add nuw nsw i64 %72, 1
  %76 = icmp eq i64 %75, %5
  br i1 %76, label %77, label %71, !llvm.loop !11

; <label>:E:                                     ; preds = %71, %67, %2
