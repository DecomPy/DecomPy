; $SWAP=Snipets/Class19/2.ll
; $POSITIVE_INTEGERS=3,3
; $RESULTS=6,PLUS,3,3
; TODO: ask about duplicate numbers (this is a special case)
%1 = load i32, i32* 3, align 4
%2 = load i32, i32* 3, align 4
%3 = add nsw i32 %1, %2