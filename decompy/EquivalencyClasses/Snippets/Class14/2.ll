%1 = load i32, i32* %0, align 4
%3 = add i32 %1, [N2: Abs Value]-1
%4 = icmp ult i32 %3, [N1]+[N2: Abs Value]-1
br i1 %4, label %B, label %E