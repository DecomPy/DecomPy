%1 = add i32 %0, [N2: Abs Value]-1
%2 = icmp ult i32 %1, [N1]+[N2: Abs Value]-1
br i1 %2, label %3, label %4

