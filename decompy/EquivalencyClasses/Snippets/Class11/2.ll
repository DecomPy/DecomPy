%6 = icmp slt i32 %X, [N1:Poitive]
br i1 %6, label %7, label %E

; <label>:7:
%9 = icmp sgt i32 %X, [N2:Poitive]
br i1 %9, label %L, label %E