When performing an action such as: "ar[0] = a;", unoptimized LLVM will first index to the 0th index in the point type,
then store that index, then load the value "a" into that index. Since it is the 0th index, loading the address of that
index is unnecessary. The address of the 0th index is the address of the pointer itself. So optimized LLVM changes this
to a simple store instruction. This equiv class represents that.