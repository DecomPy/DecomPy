; $SWAP=Class21/2.ll
; $POSITIVE_INTEGERS=5
%2 = icmp ne i32 %1, 5
br i1 %2, label %3, label %4

store i32 5, i32* %x, align 4
br label %4