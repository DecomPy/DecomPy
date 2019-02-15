#!/bin/bash

rm -rf out
mkdir out
clang -o test.out test.c

./llvm-mctoll -d test.out -o out/test.llvm-mctoll.ll
./fcd -p -n -e 0x`objdump -M intel -d test.out | grep "<main>:" | sed 's/[^0-9]//g'` test.out > out/test.fcd.ll

shift
for file in `ls out/test.*.ll`; do
    opt -S "$@" -o ${file%???}.prime.ll ${file}
done;

rm test.out
