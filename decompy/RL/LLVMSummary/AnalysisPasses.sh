#!/usr/bin/env bash

clang++-8 -S -emit-llvm example.cpp
opt -stats -analyze -instcount example.ll &> analysis_output_instcount.txt
opt -stats -analyze -loops example.ll &> analysis_output_loops.txt