; $RESULTS=-21,NEGATE,20,C1 ;TODO: does this work? want to do -20 - 1
; TODO: how to do -N1+N2-1???
%3 = add i32 %1, -N1-1
%4 = icmp ult i32 %3, -N1+N2-1
br i1 %4, label %L, label %E