%3 = add i32 %1, -N1-1
%4 = icmp ult i32 %3, -N1+N2-1
br i1 %4, label %L, label %E