#!/usr/bin/env bash

clang++-8 -S -emit-llvm example.cpp
opt -stats -analyze -instcount example.ll &> analysis_output_instcount.txt
opt -stats -analyze -loops example.ll &> analysis_output_loops.txt
opt -stats -analyze -aa-eval example.ll &> analysis_output_aa-eval.txt
opt -stats -analyze -basicaa example.ll &> analysis_output_basicaa.txt
opt -stats -analyze -count-aa example.ll &> analysis_output_count-aa.txt
opt -stats -analyze -da example.ll &> analysis_output_da.txt
opt -stats -analyze -domfrontier example.ll &> analysis_output_domfrontier.txt
opt -stats -analyze -domtree example.ll &> analysis_output_domtree.txt
opt -stats -analyze -dot-cfg example.ll &> analysis_output_dot-cfg.txt
opt -stats -analyze -globals-aa example.ll &> analysis_output_globals-aa.txt
opt -stats -analyze -intervals example.ll &> analysis_output_intervals.txt
opt -stats -analyze -iv-users example.ll &> analysis_output_iv-users.txt
opt -stats -analyze -lazy-value-info example.ll &> analysis_output_lazy-value-info.txt
opt -stats -analyze -libcall-aa example.ll &> analysis_output_libcall-aa.txt
opt -stats -analyze -lint example.ll &> analysis_output_lint.txt