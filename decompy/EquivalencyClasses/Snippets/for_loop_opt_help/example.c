
// example usage, remove redundant (or add?) for loop (combine for loop if they are iterating over same things.
int main() {

    // general thought
    int test = 0;
    int test2 = 0;
    for(int i = 0; i < 100; i++) {
        test = test + i;
        test = test - i;
    }

    // as opposed to
    int test3 = 0;
    for(int i = 0; i < 100; i++) {
        test3 = test3 + i;
    }

    // and
    int test4 = 0;
    for(int i = 0; i < 100; i++) {
        test4 = test4 + i;
    }

    return 0;
}