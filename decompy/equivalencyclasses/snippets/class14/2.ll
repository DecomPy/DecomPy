; $SWAP=NONE
; $RESULTS=10,ABS,-10,C0
; $RESULTS=9,MINUS,10,C1
; $RESULTS=17,PLUS,8,9
%1 = load i32, i32* %0, align 4
%3 = add i32 %1, 9
%4 = icmp ult i32 %3, 17
br i1 %4, label %B, label %E