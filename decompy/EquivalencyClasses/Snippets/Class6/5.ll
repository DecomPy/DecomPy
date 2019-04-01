; ModuleID = '5.c'
;  %1 = alloca i32, align 4
;  %2 = alloca [4 x i32], align 16
;  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 0
  %4 = getelementptr inbounds i32, i32* %3, i64 4
  store i32 5, i32* %4, align 4
