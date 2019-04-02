%6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

store i32 5, i32* %4, align 4
  
store i32 10, i32* %4, align 4
  
%10 = load i32, i32* %4, align 4
  
ret i32 %10
