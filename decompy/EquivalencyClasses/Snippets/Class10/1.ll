%1 = icmp slt i32 %0, [N1: Positive]
br i1 %1, label %2, label %5

; <label>:2:
%4 = icmp sgt i32 %0, [N2: Negative]
br i1 %4, label %3, label %5
