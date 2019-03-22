#!/usr/bin/env bash

clang++-8 -S -emit-llvm example.cpp
clang++-8 -O0 -emit-llvm -o example.bc -c example.cpp
#clang++-8 -S -O0 -emit-llvm -o example.ll -c example.cpp
#clang++-8 -S -O1 -emit-llvm -o example_1.ll -c example.cpp
#clang++-8 -S -O2 -emit-llvm -o example_2.ll -c example.cpp
#clang++-8 -S -O3 -emit-llvm -o example_3.ll -c example.cpp
clang++-8 -g Transform.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o Transform.out && ./Transform.out