; $SWAP=Class4/2.ll
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=10
%1 = icmp slt i32 %0, 0
br i1 %1, label %5, label %3

; <label>:5:                                      ; preds = %2
%4 = icmp sgt i32 %0, -10
br i1 %4, label %2, label %3