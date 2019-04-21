
  %1 = alloca i32, align 4
  %test = alloca i32, align 4
  %test2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %test, align 4
  %2 = load i32, i32* %test, align 4
  %3 = load i32, i32* %test, align 4
  %4 = add nsw i32 %2, %3
  store i32 %4, i32* %test2, align 4
