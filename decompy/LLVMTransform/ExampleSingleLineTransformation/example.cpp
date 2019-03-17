//The LLVM IR of this code will be transformed so that `a + 3` is transformed into `a * 3`

int example(int a) {
    int b = a + 3;
    b *= b;
    b /= 14;
    if (a < b + 4) {
        a /= b;
        b += b + a;
    } else if (b > 56) {
        b *= a;
        a -= b + a;
        b = ++a;
    } else {
        b = 42;
    }
    return b;
}