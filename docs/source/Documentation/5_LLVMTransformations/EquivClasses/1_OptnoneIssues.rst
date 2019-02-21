Optnone issues
**************
One small issue is that compiling with "clang -O0", while producing
valid, unoptimized llvm IR adds "optnone" tags to the llvm basic
blocks. This means that further optimizations (for instance passes
run through opt) will have no change on the code. Optnone is not
easily manually removed, not should it be since often optnone is
used for code that really should not be optimized (as in code can
be generated that opt will not deal well with and removing it might
break the llvm module if further optimizations run). This is an
easy issue to avoid now that we are aware, since clang provides
a "-disable-llvm-optzns" flag that works for what we want instead.
It simply caused headaches prior to figuring it out and will be
useful to note for future capstone members.
