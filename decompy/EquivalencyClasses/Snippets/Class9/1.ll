; $SWAP=Snippets/Class9/2.ll
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=-10
%1 = load i32, i32* %0, align 4
%2 = icmp slt i32 %1, 0
br i1 %2, label %7, label %4

; <label>:7:                                      ; preds = %2
%5 = load i32, i32* %0, align 4
%6 = icmp sgt i32 %5, -10
br i1 %6, label %3, label %4