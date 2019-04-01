
// example usage, remove redundant (or add?) for loop (combine for loop if they are iterating over same things.
int main() {

    // general thought
    int test = 0;
    int test2 = 0;
    for(int i = 0; i < 100; i++) {
        test = test + i;
        test = test - i;
    }
    return 0;
}