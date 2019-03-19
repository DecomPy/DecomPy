%1 = alloca i32, align 4
%x = alloca i32, align 4
store i32 0, i32* %1, align 4
store i32 0, i32* %x, align 4
%2 = load i32, i32* %x, align 4
%3 = add nsw i32 %2, 1
store i32 %3, i32* %x, align 4
