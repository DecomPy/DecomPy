%7 = load i32, i32* %4, align 4
  
%8 = load i32, i32* %2, align 4
  
%9 = icmp slt i32 %7, %8
  
%11 = load i32, i32* %3, align 4
  
%12 = add nsw i32 %11, 1
  
store i32 %12, i32* %3, align 4
  
%14 = load i32, i32* %4, align 4
  
%15 = add nsw i32 %14, 1
  
store i32 %15, i32* %4, align 4
  
%17 = load i32, i32* %3, align 4
  
store i32 %17, i32* %5, align 4
