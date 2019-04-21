; $SWAP=NONE
; $RESULTS=-20,NEGATE,20,C0
; $RESULTS=-21,MINUS,-20,C1
; $RESULTS=-18,PLUS,-21,3
%3 = add i32 %X, -21
%4 = icmp ult i32 %3, -19
br i1 %4, label %L, label %E