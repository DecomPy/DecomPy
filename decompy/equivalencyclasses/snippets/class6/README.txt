
In this directory, pointer arithmetic is performed. I'm unsure of how useful this will actually be, but LLVM IR does represent it in different ways.

For example:
    // int a[4];
    * (a + 4) = 5;

    // is the same as, however the lower does fewer operations

    // int a[4];
    a[3] = 5;