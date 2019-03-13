llc
***

The goal of the decompy project is essentially to make
decompiled code more accurate by using machine learning
to "move" the program through possible representations
to an easily understandable state.

The current working method of the team is to use swaps
performed by do what is essentially a code equivalence
recognition against a known database of snippets. Using
these "equivalencies" the idea is to swap for improved
versions.

Our team is looking into various ways to
generate these equivalencies, but has often settled
on using opt, since that is essentially the root of
what we are trying to undo (kind of similar to taking
a function, plugging in a huge amount of inputs,
generating the outputs and infering the inverse
function from the results). One issue with this is
that many of the issues we would be able to fix with
minimal work using this method are isolated changes. 
I.E. the infamous fcd problem

::
    c = b - a;
    if (c != 0 && (c & 9223372036854775808) == (((b ^ c) & (b ^ a) & 9223372036854775808))) 

to

::
    if (b > a)
    
Unfortunately, these changes mostly occur not in
the llvm itself during opt transformations, but at
the level of target specific optimizations which
occur during llc's passes and which do not produce
llvm.
