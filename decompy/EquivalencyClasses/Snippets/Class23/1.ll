; $SWAP=Snippets/Class24/2.ll
; $POSITIVE_INTEGERS=2,3,5
%1 = sub nsw i32 2, 3
%2 = load i32, i32* 5, align 4
%3 = add nsw i32 %1, %2