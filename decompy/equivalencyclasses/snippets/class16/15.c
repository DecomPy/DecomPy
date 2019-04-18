
int main()
{
    // when people do n % 2 it is semantically equivalent to n & 1
    int n = 10;
    // int a = n % 2;
    int b = n & 1;

    return 0;
}
