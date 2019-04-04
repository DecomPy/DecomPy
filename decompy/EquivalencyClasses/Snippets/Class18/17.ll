switch i32 %5, label %8 [
    i32 1, label %6
    i32 0, label %7
  ]
store i32 5, i32* %4, align 4
  
store i32 10, i32* %4, align 4
  
store i32 0, i32* %4, align 4
  
%10 = load i32, i32* %4, align 4
  
ret i32 %10
