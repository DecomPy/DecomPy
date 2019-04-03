; $SWAP=Snippets/Class11/1.ll
; $POSITIVE_INTEGERS=3,20
; $RESULTS=-21,NEGATE,20,C1 ;TODO: does this work? want to do -20 - 1
; $RESULTS=-18,MINUS,3,20,C1
%3 = add i32 %X, -21
%4 = icmp ult i32 %3, -19 ;3 - 20 - 1
br i1 %4, label %L, label %E