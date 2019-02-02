int test() {
    return 12;
}

int main() {
    int x = 4;
    while(x < 10) {
        x += test();
        x++;
        x -= 12;
    }
    return 0;
}