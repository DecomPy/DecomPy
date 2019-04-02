; $SWAP=Snippets/Class2/2.ll
; POSITIVE_INTEGERS=12,22
; $RESULTS=34,PLUS,12,22
store i32 12, i32* %x, align 4
%0 = load i32* %x, align 4
%add = add nsw i32 %0, 22
