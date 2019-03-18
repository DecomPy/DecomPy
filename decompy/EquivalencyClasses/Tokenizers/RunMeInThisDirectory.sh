#!/usr/bin/env bash

file="$1"

clang++-8 -g ExtractInstructions.cpp `llvm-config-8 --cxxflags --ldflags --libs core` -lpthread -o ExtractInstructions.out
./ExtractInstructions.out