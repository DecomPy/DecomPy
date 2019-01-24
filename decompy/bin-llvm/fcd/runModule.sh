#!/bin/bash

./fcd -p -n -e 0x400480 test.out > test.ll
./fcd -m -cc=x86_64/sysv -O SimpleModule.py test.ll
