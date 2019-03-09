#!/usr/bin/env bash

clang++-8 -S -emit-llvm example.cpp
clang++-8 -O0 -emit-llvm -o example.bc -c example.cpp
clang++-8 -g Transform.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o Transform.out && ./Transform.out