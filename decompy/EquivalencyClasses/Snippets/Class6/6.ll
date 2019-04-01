%5 = load i32, i32* %3, align 4
  
%6 = icmp eq i32 %5, 1
    
store i32 5, i32* %4, align 4
  
store i32 10, i32* %4, align 4
   
%10 = load i32, i32* %4, align 4
  
ret i32 %10
