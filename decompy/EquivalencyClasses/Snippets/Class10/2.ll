; $SWAP=NONE
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=10
; $RESULTS=10,ABS,-10,C0
; $RESULTS=9,MINUS,10,C1
; $RESULTS=9,PLUS,0,9
%1 = add i32 %0, 9
%2 = icmp ult i32 %1, 9
br i1 %2, label %3, label %4
