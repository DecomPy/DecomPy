; $SWAP=Snippets/Class11/1.ll
; $POSITIVE_INTEGERS=3,20
%6 = icmp slt i32 %X, 3
br i1 %6, label %7, label %E

; <label>:7:
%9 = icmp sgt i32 %X, 20
br i1 %9, label %L, label %E