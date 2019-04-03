%1 = load i32, i32* %0, align 4
%6 = icmp slt i32 %5, [N1: Positive]
br i1 %6, label %7, label %E

; <label>:7:                                      ; preds = %2
%8 = load i32, i32* %11, align 4
%9 = icmp sgt i32 %8, [N2: Negative]
br i1 %9, label %B, label %E