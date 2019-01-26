#!/bin/bash

clang test.c -o test.out
./fcd -p -n -e 0x`objdump -M intel -d test.out | grep "<main>:" | sed 's/[^0-9]//g'` test.out > test.ll
./fcd -m -cc=x86_64/sysv -O SimpleModule.py test.ll
