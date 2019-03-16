
// combine redundant instructionsB
int main() {

    int test = 5;

    int test1 = 1;

    int test2 = 1 + test;

    // vs

    int test3 = 5;

    int test3 = 2 + test3;
}