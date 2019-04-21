
// order of operations (try to achieve PEMDAS?)
int main() {

    int test2 = 2;
    int test4 = 4;
    int test5 = 5;

    // what we get: 2 / 4 * 5
    int result_smaller1 = test2 / test4 * test5;

    // what we want: 5 * 4 / 2
    int result_smaller2 = test5 * test4 / test2;

}