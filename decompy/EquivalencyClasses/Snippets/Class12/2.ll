; $SWAP=NONE
; $RESULTS=3,NEGATE,-3,C0
; $RESULTS=2,MINUS,3,C1
; $RESULTS=-18,PLUS,-20,2

%3 = add i32 %1, -21
%4 = icmp ult i32 %3, -18
br i1 %4, label %L, label %E