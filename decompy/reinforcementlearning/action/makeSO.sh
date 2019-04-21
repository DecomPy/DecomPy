#!/usr/bin/env bash

clang++-8 -shared -fpic `llvm-config-8 --cxxflags --ldflags --libs core` MakeLLFile.cpp -o MakeLLFile.so
