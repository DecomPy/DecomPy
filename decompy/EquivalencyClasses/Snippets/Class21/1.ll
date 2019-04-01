; 1.ll TODO: change 0 to variable?
%1 = load i32, i32* %x, align 4
%2 = icmp ne i32 %1, 0
br i1 %2, label %3, label %4

; <label>:4                                       ; preds = %0
store i32 0, i32* %x, align 4
br label %4
