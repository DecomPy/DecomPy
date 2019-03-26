//The LLVM IR of this code will be transformed so that `a + 3` is transformed into `a * 3`

int example(int a) {
    int b = a + 3;
    return b;
}