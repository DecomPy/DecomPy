
// order of operations (try to achieve PEMDAS?)
int main() {

    int test2 = 2;
    int test3 = 3;
    int test4 = 4;
    int test5 = 5;

    // what we get:  2 - 3 + 4 * 5
    int result1 = test2 - test3 + test4 * test5;

    // what we want: 5 * 4 + 2 - 3
    int result2 = test5 * test4 + test2 - test3;


    // (for smaller snippets we really want the below examples)


    // what we get: 2 - 3 + 4;
    int result_smaller1 = test2 - test3 + test4;

    // what we want: 4 + 2 - 3;
    int result_smaller2 = test4 + test2 - test3;

    //TODO: implement bottom once approved if this is a worthy cause

    // what we get: 2 + 4 * 5
    int result_smaller4 = test2 + test4 * test5;

    // what we want: 5 * 4 + 2
    int result_smaller3 = test5 * test4 + test2;

}