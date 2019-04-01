%test2 = alloca i32, align 4
%test3 = alloca i32, align 4
%test4 = alloca i32, align 4
%result_smaller1 = alloca i32, align 4
store i32 2, i32* %test2, align 4
store i32 3, i32* %test3, align 4
store i32 4, i32* %test4, align 4
%1 = load i32, i32* %test2, align 4
%2 = load i32, i32* %test3, align 4
%3 = sub nsw i32 %1, %2
%4 = load i32, i32* %test4, align 4
%5 = add nsw i32 %3, %4
store i32 %5, i32* %result_smaller1, align 4