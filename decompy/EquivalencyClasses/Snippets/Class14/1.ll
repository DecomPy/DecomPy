; $SWAP=Snippets/Class14/2.ll
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=10
; TODO: confirm with Vatricia
%1 = load i32, i32* %0, align 4
%6 = icmp slt i32 %5, 0
br i1 %6, label %7, label %E

; <label>:7:                                      ; preds = %2
%8 = load i32, i32* %11, align 4
%9 = icmp sgt i32 %8, -10
br i1 %9, label %B, label %E