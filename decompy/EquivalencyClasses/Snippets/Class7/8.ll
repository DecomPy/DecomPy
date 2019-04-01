%6 = load i32, i32* %3, align 4
  
%7 = icmp slt i32 %6, 10
   
%9 = load i32, i32* %3, align 4
  
%10 = add nsw i32 %9, 1
  
store i32 %10, i32* %3, align 4
  
%11 = load i32, i32* %4, align 4
  
%12 = add nsw i32 %11, 1
  
store i32 %12, i32* %4, align 4
   
%14 = load i32, i32* %4, align 4
  
ret i32 %14


