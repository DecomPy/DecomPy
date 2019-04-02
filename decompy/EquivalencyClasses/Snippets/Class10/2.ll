; $SWAP=NONE
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=-10
; $RESULTS=9,ABS,-9,C0
; $RESULTS=9,PLUS,0,9
; TODO: confirm this is correct
; before we had
; %1 = add i32 %0, [N2: Abs Value]-1
; %2 = icmp ult i32 %1, [N1]+[N2: Abs Value]-1
%1 = add i32 %0, 9
%2 = icmp ult i32 %1, 9
br i1 %2, label %3, label %4

