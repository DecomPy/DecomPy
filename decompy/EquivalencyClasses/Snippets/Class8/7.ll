%6 = load i32, i32* %3, align 4
  
%7 = icmp slt i32 %6, 10
   
%9 = load i32, i32* %4, align 4
  
%10 = add nsw i32 %9, 1
   
%12 = load i32, i32* %3, align 4
  
%13 = add nsw i32 %12, 1
   
%15 = load i32, i32* %4, align 4
  
ret i32 %15


