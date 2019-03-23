%1 = alloca i32, align 4
  
%2 = alloca i32, align 4
  
%3 = alloca i32, align 4
  
%4 = alloca i32, align 4
  
store i32 0, i32* %1, align 4
  
store i32 0, i32* %2, align 4
  
store i32 0, i32* %3, align 4
  
store i32 0, i32* %2, align 4
                                      
preds = %11, %0
  
%6 = load i32, i32* %2, align 4

%7 = icmp slt i32 %6, 10
  
br i1 %7, label %8, label %14

;     
preds = %5
  
%9 = load i32, i32* %3, align 4
  
%10 = add nsw i32 %9, 1
  
store i32 %10, i32* %3, align 4
preds = %8
  
%12 = load i32, i32* %2, align 4
  
%13 = add nsw i32 %12, 1
  
store i32 %13, i32* %2, align 4
                                       
preds = %5
  
%15 = load i32, i32* %3, align 4
  
store i32 %15, i32* %4, align 4
  
%16 = load i32, i32* %1, align 4
  
ret i32 %16
