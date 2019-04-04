; $SWAP=Snippets/Class9/2.ll
; $POSITIVE_INTEGERS=0
; $NEGATIVE_INTEGERS=-0
%1 = load i32, i32* %0, align 4
%2 = icmp ugt i32 %1, -10
br i1 %2, label %3, label %4