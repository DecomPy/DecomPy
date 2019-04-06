#!/usr/bin/env bash

clang -S -emit-llvm example.cpp
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
opt -stats -analyze -print-externalfnconstants example.ll &> analysis_output_print-externalfnconstants.txt
opt -stats -analyze -print-function example.ll &> analysis_output_print-function.txt
opt -stats -analyze -print-module example.ll &> analysis_output_print-module.txt
opt -stats -analyze -print-used-types example.ll &> analysis_output_print-used-types.txt
opt -stats -analyze -regions example.ll &> analysis_output_regions.txt
opt -stats -analyze -scalar-evolution example.ll &> analysis_output_scalar-evolution.txt
opt -stats -analyze -scev-aa example.ll &> analysis_output_scev-aa.txt
opt -stats -analyze -stack-safety example.ll &> analysis_output_stack-safety.txt
opt -stats -analyze -targetdata example.ll &> analysis_output_targetdata.txt
opt -stats -analyze -memdep example.ll &> analysis_output_memdep.txt
opt -stats -analyze -module-debuginfo example.ll &> analysis_output_module-debuginfo.txt
opt -stats -analyze -postdomfrontier example.ll &> analysis_output_postdomfrontier.txt
opt -stats -analyze -print-alias-sets example.ll &> analysis_output_print-alias-sets.txt
opt -stats -analyze -print-callgraph example.ll &> analysis_print-callgraph.txt
opt -stats -analyze -print-callgraph-sccs example.ll &> analysis_print-callgraph-sccs.txt
opt -stats -analyze -print-cfg-sccs example.ll &> analysis_print-cfg-sccs.txt
opt -stats -analyze -print-dom-info example.ll &> analysis_print-dom-info.txt