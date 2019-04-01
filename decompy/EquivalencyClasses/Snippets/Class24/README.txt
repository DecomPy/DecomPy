https://llvm.org/docs/Passes.html#constprop-simple-constant-propagation
merges two constant operands and replaces them with a constant value instead of an instruction such as addition.
For example (in C; not llvm)

    int x = 2 + 3;
    int x = 5;