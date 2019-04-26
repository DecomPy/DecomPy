; $SWAP=Class13/2.ll
; $POSITIVE_INTEGERS=1
%BOOL = icmp slt i32 %C, %L ;COMPARE
br i1 %BOOL, label %B, label %E ;BRANCH
%IND = sext i32 %C to i64
%PNT = getelementptr inbounds i32, i32* %AR, i64 %IND
store i32 %C, i32* %PNT, align 4
%C1 = add nsw i32 %C, 1
store i32 %C1, i32* %C, align 4
br label %W