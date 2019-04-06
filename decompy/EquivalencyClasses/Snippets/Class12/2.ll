; $SWAPS=NONE;
; $NEGATIVE_INTEGERS=3,20
; $RESULTS=-21,MINUS,-20,C1
; $RESULTS=-18,PLUS,3,-21
%3 = add i32 %1, -21
%4 = icmp ult i32 %3, -18
br i1 %4, label %L, label %E