//The LLVM IR of this code will be transformed so that `a + 3` is transformed into `a * 3`

int example(int a) {
    int b = a + 3;
    b = a + 4;
    b = b + 1;
    b++;
    ++b;

    float c = 1.0;
    float d = c + 234.34;

    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            for (int k = 0; k < 10; k++) {
                b++;
            }
        }
    }

     for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            b++;
        }
    }

    for (int i = 0; i < 10; i++) {
        b++;
    }

    return b;
}