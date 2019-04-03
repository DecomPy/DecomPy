; ModuleID = '6.c'
;  %1 = alloca i32, align 4
;  %2 = alloca i32, align 4
;  %3 = alloca i32, align 4
;  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %4, align 4
