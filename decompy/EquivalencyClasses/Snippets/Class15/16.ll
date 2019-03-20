%1 = alloca i32, align 4
  
%2 = alloca i32, align 4
  
%3 = alloca i32, align 4
  
%4 = alloca i32, align 4
  
%5 = alloca i32, align 4
  
store i32 0, i32* %1, align 4
  
store i32 10, i32* %2, align 4
  
store i32 0, i32* %3, align 4
  
store i32 1, i32* %4, align 4
  
br label %6

;                                      
preds = %13, %0
  
%7 = load i32, i32* %4, align 4
  
%8 = load i32, i32* %2, align 4
  
%9 = icmp sle i32 %7, %8
  
br i1 %9, label %10, label %16

;                            
preds = %6
  
%11 = load i32, i32* %3, align 4
  
%12 = add nsw i32 %11, 1
  
store i32 %12, i32* %3, align 4
  
br label %13

;                                 
preds = %10
  
%14 = load i32, i32* %4, align 4
  
%15 = add nsw i32 %14, 1
  
store i32 %15, i32* %4, align 4
  
br label %6

;
preds = %6
  
%17 = load i32, i32* %3, align 4
  
store i32 %17, i32* %5, align 4
  
ret i32 0
