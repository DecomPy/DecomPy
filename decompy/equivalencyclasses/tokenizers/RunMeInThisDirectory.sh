#!/usr/bin/env bash

clang++-8 -g ExtractInstructions.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o ExtractInstructions.out
./makeSO.sh
#./ExtractInstructions.out