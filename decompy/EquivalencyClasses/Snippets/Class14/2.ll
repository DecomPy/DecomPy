; $SWAP=Snippets/Class14/1.ll
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=10
; $RESULTS=10,ABS,-10,C0
; $RESULTS=9,MINUS,10,1
; $RESULTS=9,PLUS,0,9
%1 = load i32, i32* %0, align 4
%3 = add i32 %1, 9
%4 = icmp ult i32 %3, 9
br i1 %4, label %B, label %E