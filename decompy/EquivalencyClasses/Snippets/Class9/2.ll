%1 = load i32, i32* %0, align 4
%2 = icmp ugt i32 %1, -10
br i1 %2, label %3, label %4