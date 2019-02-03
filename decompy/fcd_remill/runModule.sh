#!/bin/bash
export LD_LIBRARY_PATH=.
./fcd-4.0 -arch x86 -partial -other-entry 0x`objdump -M intel -d test.out | grep "<main>:" | sed 's/[^0-9]//g'` test.out > test.ll

