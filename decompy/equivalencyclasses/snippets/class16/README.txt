using modulus has a bitwise equivalence.
For example:
x % 2 == x & 1,
x % 4 == x & 3,
x % 8 == x & 7

int main()
{

    // when people do n % 2 it is semantically equivalent to n & 1
    int n = 10;
    // int a = n % 2;
    int b = n & 1;

    return 0;
}