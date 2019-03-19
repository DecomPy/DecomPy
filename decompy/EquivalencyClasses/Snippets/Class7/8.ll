%1 = alloca i32, align 4

%2 = alloca i32, align 4
  
%3 = alloca i32, align 4
  
%4 = alloca i32, align 4
  
store i32 0, i32* %1, align 4
  
store i32 0, i32* %2, align 4
  
store i32 0, i32* %3, align 4
  
br label %5

;
preds = %8, %0
  
%6 = load i32, i32* %2, align 4
  
%7 = icmp slt i32 %6, 10
  
br i1 %7, label %8, label %13

;                                     
preds = %5

%9 = load i32, i32* %2, align 4
  
%10 = add nsw i32 %9, 1
  
store i32 %10, i32* %2, align 4
  
%11 = load i32, i32* %3, align 4
  
%12 = add nsw i32 %11, 1
  
store i32 %12, i32* %3, align 4
  
br label %5

;                                     
preds = %5
  
%14 = load i32, i32* %3, align 4
  
store i32 %14, i32* %4, align 4
  
%15 = load i32, i32* %1, align 4
  
ret i32 %15