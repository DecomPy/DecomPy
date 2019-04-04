; $SWAP=Snipets/Class21/2.ll
; $POSITIVE_INTEGERS=3,2
; $RESULTS=2,PLUS,2,C0
%1 = sub nsw i32 3, 2
%3 = sub nsw i32 3, %1
store i32 2, i32* %3, align 4
