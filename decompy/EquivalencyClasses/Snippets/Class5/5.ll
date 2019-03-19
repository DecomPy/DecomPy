%1 = alloca i32, align 4
  
%2 = alloca i32, align 4
  
%3 = alloca i32, align 4
  
%4 = alloca i32, align 4
  
store i32 0, i32* %1, align 4
  
store i32 1, i32* %2, align 4
  
store i32 0, i32* %3, align 4
  
%5 = load i32, i32* %2, align 4
  
%6 = icmp ne i32 %5, 1
  
br i1 %6, label %7, label %8

;
preds = %0
  
store i32 10, i32* %3, align 4
  
br label %9

;
preds = %0
  
store i32 5, i32* %3, align 4
  
br label %9

;
preds = %8, %7
  
%10 = load i32, i32* %3, align 4
  
store i32 %10, i32* %4, align 4
  
ret i32 0
