#!/usr/bin/env bash

clang++-8 -shared -fpic `llvm-config-8 --cxxflags --ldflags --libs core` ExtractInstructions.cpp -o libExtractInstructions.so
